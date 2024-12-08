.class public Lcom/kahuna/sdk/location/KahunaGeofenceRequester;
.super Ljava/lang/Object;
.source "KahunaGeofenceRequester.java"

# interfaces
.implements Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;
.implements Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentGeofences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/Geofence;",
            ">;"
        }
    .end annotation
.end field

.field private mGeofencePendingIntent:Landroid/app/PendingIntent;

.field private mInProgress:Z

.field private mLocationClient:Lcom/google/android/gms/location/LocationClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/kahuna/sdk/location/KahunaGeofenceRequester;->mContext:Landroid/content/Context;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kahuna/sdk/location/KahunaGeofenceRequester;->mLocationClient:Lcom/google/android/gms/location/LocationClient;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kahuna/sdk/location/KahunaGeofenceRequester;->mInProgress:Z

    .line 40
    return-void
.end method

.method private continueAddGeofences()V
    .locals 3

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/kahuna/sdk/location/KahunaGeofenceRequester;->createRequestPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/kahuna/sdk/location/KahunaGeofenceRequester;->mGeofencePendingIntent:Landroid/app/PendingIntent;

    .line 135
    iget-object v0, p0, Lcom/kahuna/sdk/location/KahunaGeofenceRequester;->mLocationClient:Lcom/google/android/gms/location/LocationClient;

    iget-object v1, p0, Lcom/kahuna/sdk/location/KahunaGeofenceRequester;->mCurrentGeofences:Ljava/util/List;

    iget-object v2, p0, Lcom/kahuna/sdk/location/KahunaGeofenceRequester;->mGeofencePendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/android/gms/location/LocationClient;->addGeofences(Ljava/util/List;Landroid/app/PendingIntent;Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;)V

    .line 136
    return-void
.end method

.method private createRequestPendingIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 222
    iget-object v1, p0, Lcom/kahuna/sdk/location/KahunaGeofenceRequester;->mGeofencePendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/kahuna/sdk/location/KahunaGeofenceRequester;->mGeofencePendingIntent:Landroid/app/PendingIntent;

    .line 236
    :goto_0
    return-object v1

    .line 233
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/kahuna/sdk/location/KahunaGeofenceRequester;->mContext:Landroid/content/Context;

    const-class v2, Lcom/kahuna/sdk/KahunaCoreReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 234
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "KAHUNA_GEOFENCES_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    iget-object v1, p0, Lcom/kahuna/sdk/location/KahunaGeofenceRequester;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    goto :goto_0
.end method

.method private getLocationClient()Lcom/google/android/gms/common/GooglePlayServicesClient;
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/kahuna/sdk/location/KahunaGeofenceRequester;->mLocationClient:Lcom/google/android/gms/location/LocationClient;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcom/google/android/gms/location/LocationClient;

    iget-object v1, p0, Lcom/kahuna/sdk/location/KahunaGeofenceRequester;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p0}, Lcom/google/android/gms/location/LocationClient;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    iput-object v0, p0, Lcom/kahuna/sdk/location/KahunaGeofenceRequester;->mLocationClient:Lcom/google/android/gms/location/LocationClient;

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/kahuna/sdk/location/KahunaGeofenceRequester;->mLocationClient:Lcom/google/android/gms/location/LocationClient;

    return-object v0
.end method

.method private requestConnection()V
    .locals 1

    .prologue
    .line 107
    :try_start_0
    invoke-direct {p0}, Lcom/kahuna/sdk/location/KahunaGeofenceRequester;->getLocationClient()Lcom/google/android/gms/common/GooglePlayServicesClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/GooglePlayServicesClient;->connect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private requestDisconnection()V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kahuna/sdk/location/KahunaGeofenceRequester;->mInProgress:Z

    .line 166
    :try_start_0
    invoke-direct {p0}, Lcom/kahuna/sdk/location/KahunaGeofenceRequester;->getLocationClient()Lcom/google/android/gms/common/GooglePlayServicesClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/GooglePlayServicesClient;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public addGeofences(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/Geofence;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "geofences":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/location/Geofence;>;"
    iput-object p1, p0, Lcom/kahuna/sdk/location/KahunaGeofenceRequester;->mCurrentGeofences:Ljava/util/List;

    .line 86
    iget-boolean v0, p0, Lcom/kahuna/sdk/location/KahunaGeofenceRequester;->mInProgress:Z

    if-nez v0, :cond_1

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kahuna/sdk/location/KahunaGeofenceRequester;->mInProgress:Z

    .line 92
    invoke-direct {p0}, Lcom/kahuna/sdk/location/KahunaGeofenceRequester;->requestConnection()V

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const-string v0, "KahunaEngine"

    const-string v1, "Error attempting to register geofences while previous registration in progess"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getInProgressFlag()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/kahuna/sdk/location/KahunaGeofenceRequester;->mInProgress:Z

    return v0
.end method

.method public getRequestPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/kahuna/sdk/location/KahunaGeofenceRequester;->createRequestPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public onAddGeofencesResult(I[Ljava/lang/String;)V
    .locals 3
    .param p1, "statusCode"    # I
    .param p2, "geofenceRequestIds"    # [Ljava/lang/String;

    .prologue
    .line 144
    if-nez p1, :cond_1

    .line 145
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const-string v0, "KahunaEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Geofences added successfully: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/kahuna/sdk/location/KahunaGeofenceRequester;->requestDisconnection()V

    .line 156
    return-void

    .line 149
    :cond_1
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const-string v0, "KahunaEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure adding Geofences: "

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

.method public onConnected(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 181
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    const-string v1, "KahunaEngine"

    const-string v2, "Location Services client connected."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/kahuna/sdk/location/KahunaGeofenceRequester;->continueAddGeofences()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :cond_1
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
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
    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kahuna/sdk/location/KahunaGeofenceRequester;->mInProgress:Z

    .line 251
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    const-string v0, "KahunaEngine"

    const-string v1, "Adding: Received connection failed event while attempt geofencing connection."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
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

    .line 255
    :cond_0
    return-void
.end method

.method public onDisconnected()V
    .locals 2

    .prologue
    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kahuna/sdk/location/KahunaGeofenceRequester;->mInProgress:Z

    .line 205
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    const-string v0, "KahunaEngine"

    const-string v1, "Location Services client disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kahuna/sdk/location/KahunaGeofenceRequester;->mLocationClient:Lcom/google/android/gms/location/LocationClient;

    .line 211
    return-void
.end method

.method public setInProgressFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/kahuna/sdk/location/KahunaGeofenceRequester;->mInProgress:Z

    .line 51
    return-void
.end method
