.class public Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;
.super Ljava/lang/Object;
.source "KahunaActivityRecognitionManager.java"


# static fields
.field protected static final DETECTION_INTERVAL_MILLISECONDS:I = 0x3a98

.field private static final SUPPORTED_ACTIVITY_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final activityConfidence:I = 0x41

.field private static final instance:Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;

.field private static prevActivityType:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDetectionRemover:Lcom/kahuna/sdk/location/KahunaActivityDetectionRemover;

.field private mDetectionRequester:Lcom/kahuna/sdk/location/KahunaActivityDetectionRequester;

.field private mIsMonitoringActivites:Z

.field private readyForActivityMonitoring:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 39
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x3

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->SUPPORTED_ACTIVITY_TYPES:Ljava/util/List;

    .line 40
    const/4 v0, -0x1

    sput v0, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->prevActivityType:I

    .line 49
    new-instance v0, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;

    invoke-direct {v0}, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;-><init>()V

    sput-object v0, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->instance:Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean v0, p0, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->mIsMonitoringActivites:Z

    .line 47
    iput-boolean v0, p0, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->readyForActivityMonitoring:Z

    .line 53
    return-void
.end method

.method private static getActivityString(I)Ljava/lang/String;
    .locals 1
    .param p0, "activityType"    # I

    .prologue
    .line 243
    packed-switch p0, :pswitch_data_0

    .line 254
    :pswitch_0
    const-string v0, "unknown"

    :goto_0
    return-object v0

    .line 245
    :pswitch_1
    const-string v0, "running"

    goto :goto_0

    .line 247
    :pswitch_2
    const-string v0, "walking"

    goto :goto_0

    .line 249
    :pswitch_3
    const-string v0, "on foot"

    goto :goto_0

    .line 251
    :pswitch_4
    const-string v0, "standing"

    goto :goto_0

    .line 243
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static handleActivityRecognitionIntent(Lcom/kahuna/sdk/KahunaAnalytics;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p0, "analytics"    # Lcom/kahuna/sdk/KahunaAnalytics;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 175
    if-eqz p0, :cond_0

    instance-of v4, p0, Lcom/kahuna/sdk/KahunaAnalytics;

    if-nez v4, :cond_2

    .line 176
    :cond_0
    const-string v4, "KahunaEngine"

    const-string v5, "You cannot use the Activity Recognition Manager externally from the Kahuna SDK. Aborting!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_1
    :goto_0
    return-void

    .line 181
    :cond_2
    invoke-static {p2}, Lcom/google/android/gms/location/ActivityRecognitionResult;->extractResult(Landroid/content/Intent;)Lcom/google/android/gms/location/ActivityRecognitionResult;

    move-result-object v3

    .line 184
    .local v3, "result":Lcom/google/android/gms/location/ActivityRecognitionResult;
    invoke-virtual {v3}, Lcom/google/android/gms/location/ActivityRecognitionResult;->getMostProbableActivity()Lcom/google/android/gms/location/DetectedActivity;

    move-result-object v2

    .line 187
    .local v2, "mostProbableActivity":Lcom/google/android/gms/location/DetectedActivity;
    invoke-virtual {v2}, Lcom/google/android/gms/location/DetectedActivity;->getConfidence()I

    move-result v1

    .line 190
    .local v1, "confidence":I
    invoke-virtual {v2}, Lcom/google/android/gms/location/DetectedActivity;->getType()I

    move-result v0

    .line 191
    .local v0, "activityType":I
    const/16 v4, 0x41

    if-lt v1, v4, :cond_1

    sget v4, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->prevActivityType:I

    if-eq v4, v0, :cond_1

    .line 192
    sput v0, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->prevActivityType:I

    .line 194
    sget-object v4, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->SUPPORTED_ACTIVITY_TYPES:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 195
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 196
    const-string v4, "KahunaEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got supported Activity type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->getActivityString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_3
    invoke-static {p0}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->startScanning(Lcom/kahuna/sdk/KahunaAnalytics;)V

    goto :goto_0

    .line 201
    :cond_4
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 202
    const-string v4, "KahunaEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got unsupported Activity type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->getActivityString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_5
    invoke-static {p0}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->stopScanning(Lcom/kahuna/sdk/KahunaAnalytics;)V

    goto :goto_0
.end method

.method public static init(Lcom/kahuna/sdk/KahunaAnalytics;Landroid/content/Context;)V
    .locals 2
    .param p0, "analytics"    # Lcom/kahuna/sdk/KahunaAnalytics;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/kahuna/sdk/KahunaAnalytics;

    if-nez v0, :cond_1

    .line 64
    :cond_0
    const-string v0, "KahunaEngine"

    const-string v1, "You cannot init the Activity Recognition Manager externally from the Kahuna SDK. Aborting!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_1
    sget-object v0, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->instance:Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;

    iput-object p1, v0, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->mContext:Landroid/content/Context;

    .line 69
    sget-object v0, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->instance:Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;

    invoke-static {p1}, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->servicesConnected(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->readyForActivityMonitoring:Z

    goto :goto_0
.end method

.method private initRequestorRemover()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->mDetectionRequester:Lcom/kahuna/sdk/location/KahunaActivityDetectionRequester;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/kahuna/sdk/location/KahunaActivityDetectionRequester;

    iget-object v1, p0, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kahuna/sdk/location/KahunaActivityDetectionRequester;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->mDetectionRequester:Lcom/kahuna/sdk/location/KahunaActivityDetectionRequester;

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->mDetectionRemover:Lcom/kahuna/sdk/location/KahunaActivityDetectionRemover;

    if-nez v0, :cond_1

    .line 90
    new-instance v0, Lcom/kahuna/sdk/location/KahunaActivityDetectionRemover;

    iget-object v1, p0, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kahuna/sdk/location/KahunaActivityDetectionRemover;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->mDetectionRemover:Lcom/kahuna/sdk/location/KahunaActivityDetectionRemover;

    .line 92
    :cond_1
    return-void
.end method

.method public static isDeviceReadyForActivityRecognition()Z
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->instance:Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;

    iget-boolean v0, v0, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->readyForActivityMonitoring:Z

    return v0
.end method

.method protected static isInited()Z
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->instance:Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;

    iget-object v0, v0, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 74
    const/4 v0, 0x1

    .line 77
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static removeActivityUpdates(Lcom/kahuna/sdk/KahunaAnalytics;)V
    .locals 3
    .param p0, "analytics"    # Lcom/kahuna/sdk/KahunaAnalytics;

    .prologue
    .line 131
    if-eqz p0, :cond_0

    instance-of v1, p0, Lcom/kahuna/sdk/KahunaAnalytics;

    if-nez v1, :cond_2

    .line 132
    :cond_0
    const-string v1, "KahunaEngine"

    const-string v2, "You cannot use Activity Recognition Manager externally from the Kahuna SDK. Aborting!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_1
    :goto_0
    return-void

    .line 136
    :cond_2
    sget-object v1, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->instance:Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;

    iget-boolean v1, v1, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->readyForActivityMonitoring:Z

    if-nez v1, :cond_3

    .line 137
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    const-string v1, "KahunaEngine"

    const-string v2, "App doens\'t have required permissions for Activity Monitoring. Aborting request for removal of updates!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 143
    :cond_3
    sget-object v1, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->instance:Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;

    iget-boolean v1, v1, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->mIsMonitoringActivites:Z

    if-eqz v1, :cond_1

    .line 148
    :try_start_0
    invoke-static {p0}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->stopScanning(Lcom/kahuna/sdk/KahunaAnalytics;)V

    .line 150
    sget-object v1, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->instance:Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;

    invoke-direct {v1}, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->initRequestorRemover()V

    .line 151
    sget-object v1, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->instance:Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;

    iget-object v1, v1, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->mDetectionRequester:Lcom/kahuna/sdk/location/KahunaActivityDetectionRequester;

    invoke-virtual {v1}, Lcom/kahuna/sdk/location/KahunaActivityDetectionRequester;->getRequestPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 152
    sget-object v1, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->instance:Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;

    iget-object v1, v1, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->mDetectionRemover:Lcom/kahuna/sdk/location/KahunaActivityDetectionRemover;

    sget-object v2, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->instance:Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;

    iget-object v2, v2, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->mDetectionRequester:Lcom/kahuna/sdk/location/KahunaActivityDetectionRequester;

    invoke-virtual {v2}, Lcom/kahuna/sdk/location/KahunaActivityDetectionRequester;->getRequestPendingIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kahuna/sdk/location/KahunaActivityDetectionRemover;->removeUpdates(Landroid/app/PendingIntent;)V

    .line 153
    sget-object v1, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->instance:Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;

    iget-object v1, v1, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->mDetectionRequester:Lcom/kahuna/sdk/location/KahunaActivityDetectionRequester;

    invoke-virtual {v1}, Lcom/kahuna/sdk/location/KahunaActivityDetectionRequester;->getRequestPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    .line 156
    :cond_4
    sget-object v1, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->instance:Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->mDetectionRequester:Lcom/kahuna/sdk/location/KahunaActivityDetectionRequester;

    .line 157
    sget-object v1, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->instance:Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->mDetectionRemover:Lcom/kahuna/sdk/location/KahunaActivityDetectionRemover;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 171
    :cond_5
    :goto_1
    sget-object v1, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->instance:Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->mIsMonitoringActivites:Z

    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 161
    const-string v1, "KahunaEngine"

    const-string v2, "Caught error when attempting to remove ActivityMonitoring Updates."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string v1, "KahunaEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 165
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Error;
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 167
    const-string v1, "KahunaEngine"

    const-string v2, "Caught error when attempting to remove ActivityMonitoring Updates."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const-string v1, "KahunaEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static requestActivityUpdates(Lcom/kahuna/sdk/KahunaAnalytics;)V
    .locals 3
    .param p0, "analytics"    # Lcom/kahuna/sdk/KahunaAnalytics;

    .prologue
    .line 95
    if-eqz p0, :cond_0

    instance-of v1, p0, Lcom/kahuna/sdk/KahunaAnalytics;

    if-nez v1, :cond_2

    .line 96
    :cond_0
    const-string v1, "KahunaEngine"

    const-string v2, "You cannot use Activity Recognition Manager externally from the Kahuna SDK. Aborting!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_1
    :goto_0
    return-void

    .line 100
    :cond_2
    sget-object v1, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->instance:Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;

    iget-boolean v1, v1, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->readyForActivityMonitoring:Z

    if-nez v1, :cond_3

    .line 101
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    const-string v1, "KahunaEngine"

    const-string v2, "App doens\'t have required permissions for Activity Monitoring. Aborting request for updates!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 107
    :cond_3
    sget-object v1, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->instance:Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;

    iget-boolean v1, v1, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->mIsMonitoringActivites:Z

    if-nez v1, :cond_1

    .line 112
    :try_start_0
    sget-object v1, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->instance:Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;

    invoke-direct {v1}, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->initRequestorRemover()V

    .line 113
    sget-object v1, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->instance:Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;

    iget-object v1, v1, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->mDetectionRequester:Lcom/kahuna/sdk/location/KahunaActivityDetectionRequester;

    invoke-virtual {v1}, Lcom/kahuna/sdk/location/KahunaActivityDetectionRequester;->requestUpdates()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 127
    :cond_4
    :goto_1
    sget-object v1, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->instance:Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->mIsMonitoringActivites:Z

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 117
    const-string v1, "KahunaEngine"

    const-string v2, "Caught error when attempting to request for ActivityMonitoring Updates."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const-string v1, "KahunaEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 121
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Error;
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 123
    const-string v1, "KahunaEngine"

    const-string v2, "Caught error when attempting to request for ActivityMonitoring Updates."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-string v1, "KahunaEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static servicesConnected(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 215
    const/4 v1, 0x0

    .line 217
    .local v1, "readyForActivityRecognition":Z
    :try_start_0
    invoke-static {p0}, Lcom/kahuna/sdk/location/KahunaLocationUtils;->hasPlayServices(Landroid/content/Context;)Z

    move-result v1

    .line 219
    if-eqz v1, :cond_0

    .line 220
    const-string v2, "com.google.android.gms.permission.ACTIVITY_RECOGNITION"

    invoke-static {p0, v2}, Lcom/kahuna/sdk/location/KahunaLocationUtils;->checkManifestPermission(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 238
    :cond_0
    :goto_0
    return v1

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 225
    const-string v2, "KahunaEngine"

    const-string v3, "Caught error when checking for Activity Recognition. If you are NOT using iBeacons please ignore this warning: "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const-string v2, "KahunaEngine"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    :cond_1
    const/4 v1, 0x0

    .line 236
    goto :goto_0

    .line 230
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/Error;
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 232
    const-string v2, "KahunaEngine"

    const-string v3, "Caught error when checking for Activity Recognition. If you are NOT using iBeacons please ignore this warning: "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const-string v2, "KahunaEngine"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
