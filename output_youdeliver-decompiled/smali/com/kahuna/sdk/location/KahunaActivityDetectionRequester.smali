.class public Lcom/kahuna/sdk/location/KahunaActivityDetectionRequester;
.super Ljava/lang/Object;
.source "KahunaActivityDetectionRequester.java"

# interfaces
.implements Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;


# instance fields
.field private mActivityRecognitionClient:Lcom/google/android/gms/location/ActivityRecognitionClient;

.field private mActivityRecognitionPendingIntent:Landroid/app/PendingIntent;

.field private mContext:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/kahuna/sdk/location/KahunaActivityDetectionRequester;->mContext:Landroid/content/Context;

    .line 60
    iput-object v0, p0, Lcom/kahuna/sdk/location/KahunaActivityDetectionRequester;->mActivityRecognitionPendingIntent:Landroid/app/PendingIntent;

    .line 61
    iput-object v0, p0, Lcom/kahuna/sdk/location/KahunaActivityDetectionRequester;->mActivityRecognitionClient:Lcom/google/android/gms/location/ActivityRecognitionClient;

    .line 63
    return-void
.end method

.method private continueRequestActivityUpdates()V
    .locals 4

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/kahuna/sdk/location/KahunaActivityDetectionRequester;->getActivityRecognitionClient()Lcom/google/android/gms/location/ActivityRecognitionClient;

    move-result-object v0

    const-wide/16 v2, 0x3a98

    invoke-direct {p0}, Lcom/kahuna/sdk/location/KahunaActivityDetectionRequester;->createRequestPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/location/ActivityRecognitionClient;->requestActivityUpdates(JLandroid/app/PendingIntent;)V

    .line 103
    invoke-direct {p0}, Lcom/kahuna/sdk/location/KahunaActivityDetectionRequester;->requestDisconnection()V

    .line 104
    return-void
.end method

.method private createRequestPendingIntent()Landroid/app/PendingIntent;
    .locals 5

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/kahuna/sdk/location/KahunaActivityDetectionRequester;->getRequestPendingIntent()Landroid/app/PendingIntent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 187
    iget-object v1, p0, Lcom/kahuna/sdk/location/KahunaActivityDetectionRequester;->mActivityRecognitionPendingIntent:Landroid/app/PendingIntent;

    .line 203
    :goto_0
    return-object v1

    .line 192
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/kahuna/sdk/location/KahunaActivityDetectionRequester;->mContext:Landroid/content/Context;

    const-class v3, Lcom/kahuna/sdk/KahunaCoreReceiver;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 201
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/kahuna/sdk/location/KahunaActivityDetectionRequester;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 202
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    invoke-direct {p0, v1}, Lcom/kahuna/sdk/location/KahunaActivityDetectionRequester;->setRequestPendingIntent(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private getActivityRecognitionClient()Lcom/google/android/gms/location/ActivityRecognitionClient;
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/kahuna/sdk/location/KahunaActivityDetectionRequester;->mActivityRecognitionClient:Lcom/google/android/gms/location/ActivityRecognitionClient;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lcom/google/android/gms/location/ActivityRecognitionClient;

    iget-object v1, p0, Lcom/kahuna/sdk/location/KahunaActivityDetectionRequester;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p0}, Lcom/google/android/gms/location/ActivityRecognitionClient;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    iput-object v0, p0, Lcom/kahuna/sdk/location/KahunaActivityDetectionRequester;->mActivityRecognitionClient:Lcom/google/android/gms/location/ActivityRecognitionClient;

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/kahuna/sdk/location/KahunaActivityDetectionRequester;->mActivityRecognitionClient:Lcom/google/android/gms/location/ActivityRecognitionClient;

    return-object v0
.end method

.method private requestConnection()V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/kahuna/sdk/location/KahunaActivityDetectionRequester;->getActivityRecognitionClient()Lcom/google/android/gms/location/ActivityRecognitionClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/location/ActivityRecognitionClient;->connect()V

    .line 112
    return-void
.end method

.method private requestDisconnection()V
    .locals 1

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/kahuna/sdk/location/KahunaActivityDetectionRequester;->getActivityRecognitionClient()Lcom/google/android/gms/location/ActivityRecognitionClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/location/ActivityRecognitionClient;->disconnect()V

    .line 135
    return-void
.end method

.method private setRequestPendingIntent(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/kahuna/sdk/location/KahunaActivityDetectionRequester;->mActivityRecognitionPendingIntent:Landroid/app/PendingIntent;

    .line 79
    return-void
.end method


# virtual methods
.method protected getRequestPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/kahuna/sdk/location/KahunaActivityDetectionRequester;->mActivityRecognitionPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 145
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    const-string v1, "KahunaEngine"

    const-string v2, "Activity Recognition Requester Play Services Connected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/kahuna/sdk/location/KahunaActivityDetectionRequester;->continueRequestActivityUpdates()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :cond_1
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    const-string v1, "KahunaEngine"

    const-string v2, "caught exception attempting to request for activity updates: "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3
    .param p1, "connectionResult"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    .line 214
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    const-string v0, "KahunaEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity Recognition Requester Play Services connection failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_0
    return-void
.end method

.method public onDisconnected()V
    .locals 2

    .prologue
    .line 166
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    const-string v0, "KahunaEngine"

    const-string v1, "Activity Recognition Requester Play Services Disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kahuna/sdk/location/KahunaActivityDetectionRequester;->mActivityRecognitionClient:Lcom/google/android/gms/location/ActivityRecognitionClient;

    .line 172
    return-void
.end method

.method protected requestUpdates()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method
