.class public Lcom/kahuna/sdk/location/KahunaGeofenceRemover;
.super Ljava/lang/Object;
.source "KahunaGeofenceRemover.java"

# interfaces
.implements Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;
.implements Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentGeofenceIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentIntent:Landroid/app/PendingIntent;

.field private mInProgress:Z

.field private mLocationClient:Lcom/google/android/gms/location/LocationClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/kahuna/sdk/location/KahunaGeofenceRemover;->mContext:Landroid/content/Context;

    .line 51
    iput-object v0, p0, Lcom/kahuna/sdk/location/KahunaGeofenceRemover;->mCurrentGeofenceIds:Ljava/util/List;

    .line 52
    iput-object v0, p0, Lcom/kahuna/sdk/location/KahunaGeofenceRemover;->mLocationClient:Lcom/google/android/gms/location/LocationClient;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kahuna/sdk/location/KahunaGeofenceRemover;->mInProgress:Z

    .line 54
    return-void
.end method

.method private getLocationClient()Lcom/google/android/gms/common/GooglePlayServicesClient;
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/kahuna/sdk/location/KahunaGeofenceRemover;->mLocationClient:Lcom/google/android/gms/location/LocationClient;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lcom/google/android/gms/location/LocationClient;

    iget-object v1, p0, Lcom/kahuna/sdk/location/KahunaGeofenceRemover;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p0}, Lcom/google/android/gms/location/LocationClient;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    iput-object v0, p0, Lcom/kahuna/sdk/location/KahunaGeofenceRemover;->mLocationClient:Lcom/google/android/gms/location/LocationClient;

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/kahuna/sdk/location/KahunaGeofenceRemover;->mLocationClient:Lcom/google/android/gms/location/LocationClient;

    return-object v0
.end method

.method private requestConnection()V
    .locals 1

    .prologue
    .line 112
    :try_start_0
    invoke-direct {p0}, Lcom/kahuna/sdk/location/KahunaGeofenceRemover;->getLocationClient()Lcom/google/android/gms/common/GooglePlayServicesClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/GooglePlayServicesClient;->connect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private requestDisconnection()V
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/kahuna/sdk/location/KahunaGeofenceRemover;->mInProgress:Z

    .line 191
    invoke-direct {p0}, Lcom/kahuna/sdk/location/KahunaGeofenceRemover;->getLocationClient()Lcom/google/android/gms/common/GooglePlayServicesClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/GooglePlayServicesClient;->disconnect()V

    .line 198
    iget-object v0, p0, Lcom/kahuna/sdk/location/KahunaGeofenceRemover;->mCurrentIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/kahuna/sdk/location/KahunaGeofenceRemover;->mCurrentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 202
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getInProgressFlag()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/kahuna/sdk/location/KahunaGeofenceRemover;->mInProgress:Z

    return v0
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 215
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    const-string v1, "KahunaEngine"

    const-string v2, "Location Services client connected."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/kahuna/sdk/location/KahunaGeofenceRemover;->mLocationClient:Lcom/google/android/gms/location/LocationClient;

    iget-object v2, p0, Lcom/kahuna/sdk/location/KahunaGeofenceRemover;->mCurrentGeofenceIds:Ljava/util/List;

    invoke-virtual {v1, v2, p0}, Lcom/google/android/gms/location/LocationClient;->removeGeofences(Ljava/util/List;Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :cond_1
    :goto_0
    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 225
    const-string v1, "KahunaEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught exception in Geofence Remover onConnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3
    .param p1, "connectionResult"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    .line 256
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kahuna/sdk/location/KahunaGeofenceRemover;->mInProgress:Z

    .line 259
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    const-string v0, "KahunaEngine"

    const-string v1, "Removal: Received connection failed event while attempt geofencing connection."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const-string v0, "KahunaEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error Code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_0
    return-void
.end method

.method public onDisconnected()V
    .locals 2

    .prologue
    .line 236
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kahuna/sdk/location/KahunaGeofenceRemover;->mInProgress:Z

    .line 239
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    const-string v0, "KahunaEngine"

    const-string v1, "Location Services client disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kahuna/sdk/location/KahunaGeofenceRemover;->mLocationClient:Lcom/google/android/gms/location/LocationClient;

    .line 245
    return-void
.end method

.method public onRemoveGeofencesByPendingIntentResult(ILandroid/app/PendingIntent;)V
    .locals 2
    .param p1, "statusCode"    # I
    .param p2, "requestIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 144
    if-nez p1, :cond_1

    .line 145
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const-string v0, "KahunaEngine"

    const-string v1, "Geofences removed successfully!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/kahuna/sdk/location/KahunaGeofenceRemover;->requestDisconnection()V

    .line 156
    return-void

    .line 149
    :cond_1
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const-string v0, "KahunaEngine"

    const-string v1, "Failure attempting to remove Geofences."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onRemoveGeofencesByRequestIdsResult(I[Ljava/lang/String;)V
    .locals 3
    .param p1, "statusCode"    # I
    .param p2, "geofenceRequestIds"    # [Ljava/lang/String;

    .prologue
    .line 169
    if-nez p1, :cond_1

    .line 170
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    const-string v0, "KahunaEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Geofences removed successfully: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/kahuna/sdk/location/KahunaGeofenceRemover;->requestDisconnection()V

    .line 181
    return-void

    .line 174
    :cond_1
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    const-string v0, "KahunaEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure removing Geofences: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeGeofencesById(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "geofenceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 91
    :cond_0
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    const-string v0, "KahunaEngine"

    const-string v1, "No valid geofences, ignoring."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_1
    :goto_0
    return-void

    .line 98
    :cond_2
    iget-boolean v0, p0, Lcom/kahuna/sdk/location/KahunaGeofenceRemover;->mInProgress:Z

    if-nez v0, :cond_1

    .line 99
    iput-object p1, p0, Lcom/kahuna/sdk/location/KahunaGeofenceRemover;->mCurrentGeofenceIds:Ljava/util/List;

    .line 100
    invoke-direct {p0}, Lcom/kahuna/sdk/location/KahunaGeofenceRemover;->requestConnection()V

    goto :goto_0
.end method

.method public setInProgressFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/kahuna/sdk/location/KahunaGeofenceRemover;->mInProgress:Z

    .line 66
    return-void
.end method
