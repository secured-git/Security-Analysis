.class public Lcom/kahuna/sdk/location/KahunaActivityDetectionRemover;
.super Ljava/lang/Object;
.source "KahunaActivityDetectionRemover.java"

# interfaces
.implements Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;


# instance fields
.field private mActivityRecognitionClient:Lcom/google/android/gms/location/ActivityRecognitionClient;

.field private mContext:Landroid/content/Context;

.field private mCurrentIntent:Landroid/app/PendingIntent;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/kahuna/sdk/location/KahunaActivityDetectionRemover;->mContext:Landroid/content/Context;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kahuna/sdk/location/KahunaActivityDetectionRemover;->mActivityRecognitionClient:Lcom/google/android/gms/location/ActivityRecognitionClient;

    .line 66
    return-void
.end method

.method private continueRemoveUpdates()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/kahuna/sdk/location/KahunaActivityDetectionRemover;->mActivityRecognitionClient:Lcom/google/android/gms/location/ActivityRecognitionClient;

    iget-object v1, p0, Lcom/kahuna/sdk/location/KahunaActivityDetectionRemover;->mCurrentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/ActivityRecognitionClient;->removeActivityUpdates(Landroid/app/PendingIntent;)V

    .line 150
    invoke-direct {p0}, Lcom/kahuna/sdk/location/KahunaActivityDetectionRemover;->requestDisconnection()V

    .line 151
    return-void
.end method

.method private getActivityRecognitionClient()Lcom/google/android/gms/location/ActivityRecognitionClient;
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/kahuna/sdk/location/KahunaActivityDetectionRemover;->mActivityRecognitionClient:Lcom/google/android/gms/location/ActivityRecognitionClient;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/google/android/gms/location/ActivityRecognitionClient;

    iget-object v1, p0, Lcom/kahuna/sdk/location/KahunaActivityDetectionRemover;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p0}, Lcom/google/android/gms/location/ActivityRecognitionClient;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    iput-object v0, p0, Lcom/kahuna/sdk/location/KahunaActivityDetectionRemover;->mActivityRecognitionClient:Lcom/google/android/gms/location/ActivityRecognitionClient;

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/kahuna/sdk/location/KahunaActivityDetectionRemover;->mActivityRecognitionClient:Lcom/google/android/gms/location/ActivityRecognitionClient;

    return-object v0
.end method

.method private requestConnection()V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/kahuna/sdk/location/KahunaActivityDetectionRemover;->getActivityRecognitionClient()Lcom/google/android/gms/location/ActivityRecognitionClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/location/ActivityRecognitionClient;->connect()V

    .line 90
    return-void
.end method

.method private requestDisconnection()V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/kahuna/sdk/location/KahunaActivityDetectionRemover;->getActivityRecognitionClient()Lcom/google/android/gms/location/ActivityRecognitionClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/location/ActivityRecognitionClient;->disconnect()V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kahuna/sdk/location/KahunaActivityDetectionRemover;->mActivityRecognitionClient:Lcom/google/android/gms/location/ActivityRecognitionClient;

    .line 115
    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "connectionData"    # Landroid/os/Bundle;

    .prologue
    .line 125
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    const-string v1, "KahunaEngine"

    const-string v2, "Activity Recognition Remover Play Services Connected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/kahuna/sdk/location/KahunaActivityDetectionRemover;->continueRemoveUpdates()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :cond_1
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    const-string v1, "KahunaEngine"

    const-string v2, "caught exception attempting to remove activity updates: "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3
    .param p1, "connectionResult"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    .line 173
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    const-string v0, "KahunaEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity Recognition Remover Play Services connection failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_0
    return-void
.end method

.method public onDisconnected()V
    .locals 2

    .prologue
    .line 158
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    const-string v0, "KahunaEngine"

    const-string v1, "Activity Recognition Remover Play Services Disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kahuna/sdk/location/KahunaActivityDetectionRemover;->mActivityRecognitionClient:Lcom/google/android/gms/location/ActivityRecognitionClient;

    .line 164
    return-void
.end method

.method protected removeUpdates(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "requestIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/kahuna/sdk/location/KahunaActivityDetectionRemover;->mCurrentIntent:Landroid/app/PendingIntent;

    .line 77
    iget-object v0, p0, Lcom/kahuna/sdk/location/KahunaActivityDetectionRemover;->mCurrentIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-direct {p0}, Lcom/kahuna/sdk/location/KahunaActivityDetectionRemover;->requestConnection()V

    goto :goto_0
.end method
