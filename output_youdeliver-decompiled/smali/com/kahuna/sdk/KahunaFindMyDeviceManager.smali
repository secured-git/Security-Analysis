.class public Lcom/kahuna/sdk/KahunaFindMyDeviceManager;
.super Ljava/lang/Object;
.source "KahunaFindMyDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kahuna/sdk/KahunaFindMyDeviceManager$1;,
        Lcom/kahuna/sdk/KahunaFindMyDeviceManager$SendMonitorRequestsTask;,
        Lcom/kahuna/sdk/KahunaFindMyDeviceManager$FindMyDeviceBroadcastReceiver;
    }
.end annotation


# static fields
.field protected static final DEVICE_ID:Ljava/lang/String; = "dev_id"

.field protected static final ENVIRONMENT:Ljava/lang/String; = "env"

.field private static final FIND_MY_DEVICE_ACTION:Ljava/lang/String; = "com.kahuna.sdk.broadcast.FIND_MY_DEVICE"

.field protected static final MONITORING_KEY:Ljava/lang/String; = "monitoring_key"

.field private static final MONITOR_API_ENDPOINT:Ljava/lang/String; = "https://tap-nexus.appspot.com/monitor_device"

.field private static final ONE_HOUR_SECONDS:J = 0xe10L

.field protected static final SECRET_KEY:Ljava/lang/String; = "key"

.field private static final TWENTY_FOUR_HOURS_SECONDS:J = 0x15180L

.field private static mSharedInstance:Lcom/kahuna/sdk/KahunaFindMyDeviceManager;


# instance fields
.field private mBroadcastRegistered:Z

.field private mConnectionProgressLock:Ljava/lang/Object;

.field private mFindMyDeviceReceiver:Lcom/kahuna/sdk/KahunaFindMyDeviceManager$FindMyDeviceBroadcastReceiver;

.field private mHttpClient:Lcom/kahuna/sdk/http/AsyncHttpClient;

.field private mRequestTimer:Ljava/util/Timer;

.field private mTimestampLastBroadcast:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/kahuna/sdk/KahunaFindMyDeviceManager$FindMyDeviceBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kahuna/sdk/KahunaFindMyDeviceManager$FindMyDeviceBroadcastReceiver;-><init>(Lcom/kahuna/sdk/KahunaFindMyDeviceManager;Lcom/kahuna/sdk/KahunaFindMyDeviceManager$1;)V

    iput-object v0, p0, Lcom/kahuna/sdk/KahunaFindMyDeviceManager;->mFindMyDeviceReceiver:Lcom/kahuna/sdk/KahunaFindMyDeviceManager$FindMyDeviceBroadcastReceiver;

    .line 56
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kahuna/sdk/KahunaFindMyDeviceManager;->mTimestampLastBroadcast:J

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kahuna/sdk/KahunaFindMyDeviceManager;->mBroadcastRegistered:Z

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kahuna/sdk/KahunaFindMyDeviceManager;->mConnectionProgressLock:Ljava/lang/Object;

    .line 64
    return-void
.end method

.method static synthetic access$100()Lcom/kahuna/sdk/KahunaFindMyDeviceManager;
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/kahuna/sdk/KahunaFindMyDeviceManager;->getSharedInstance()Lcom/kahuna/sdk/KahunaFindMyDeviceManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Lcom/kahuna/sdk/KahunaFindMyDeviceManager;J)J
    .locals 1
    .param p0, "x0"    # Lcom/kahuna/sdk/KahunaFindMyDeviceManager;
    .param p1, "x1"    # J

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/kahuna/sdk/KahunaFindMyDeviceManager;->mTimestampLastBroadcast:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/kahuna/sdk/KahunaFindMyDeviceManager;)Lcom/kahuna/sdk/http/AsyncHttpClient;
    .locals 1
    .param p0, "x0"    # Lcom/kahuna/sdk/KahunaFindMyDeviceManager;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/kahuna/sdk/KahunaFindMyDeviceManager;->mHttpClient:Lcom/kahuna/sdk/http/AsyncHttpClient;

    return-object v0
.end method

.method private static getSharedInstance()Lcom/kahuna/sdk/KahunaFindMyDeviceManager;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/kahuna/sdk/KahunaFindMyDeviceManager;->mSharedInstance:Lcom/kahuna/sdk/KahunaFindMyDeviceManager;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/kahuna/sdk/KahunaFindMyDeviceManager;

    invoke-direct {v0}, Lcom/kahuna/sdk/KahunaFindMyDeviceManager;-><init>()V

    sput-object v0, Lcom/kahuna/sdk/KahunaFindMyDeviceManager;->mSharedInstance:Lcom/kahuna/sdk/KahunaFindMyDeviceManager;

    .line 71
    :cond_0
    sget-object v0, Lcom/kahuna/sdk/KahunaFindMyDeviceManager;->mSharedInstance:Lcom/kahuna/sdk/KahunaFindMyDeviceManager;

    return-object v0
.end method

.method protected static getShouldSentMonitorRequest()Z
    .locals 8

    .prologue
    .line 96
    invoke-static {}, Lcom/kahuna/sdk/KahunaFindMyDeviceManager;->getSharedInstance()Lcom/kahuna/sdk/KahunaFindMyDeviceManager;

    move-result-object v2

    .line 97
    .local v2, "instance":Lcom/kahuna/sdk/KahunaFindMyDeviceManager;
    iget-wide v4, v2, Lcom/kahuna/sdk/KahunaFindMyDeviceManager;->mTimestampLastBroadcast:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v0, v4, v6

    .line 99
    .local v0, "currTimeSeconds":J
    iget-wide v4, v2, Lcom/kahuna/sdk/KahunaFindMyDeviceManager;->mTimestampLastBroadcast:J

    cmp-long v3, v0, v4

    if-gez v3, :cond_0

    .line 101
    const/4 v3, 0x1

    .line 104
    .end local v0    # "currTimeSeconds":J
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected static onAppCreate(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    :try_start_0
    invoke-static {}, Lcom/kahuna/sdk/KahunaFindMyDeviceManager;->getSharedInstance()Lcom/kahuna/sdk/KahunaFindMyDeviceManager;

    move-result-object v1

    .line 84
    .local v1, "instance":Lcom/kahuna/sdk/KahunaFindMyDeviceManager;
    iget-boolean v2, v1, Lcom/kahuna/sdk/KahunaFindMyDeviceManager;->mBroadcastRegistered:Z

    if-eqz v2, :cond_1

    .line 93
    .end local v1    # "instance":Lcom/kahuna/sdk/KahunaFindMyDeviceManager;
    :cond_0
    :goto_0
    return-void

    .line 86
    .restart local v1    # "instance":Lcom/kahuna/sdk/KahunaFindMyDeviceManager;
    :cond_1
    iget-object v2, v1, Lcom/kahuna/sdk/KahunaFindMyDeviceManager;->mFindMyDeviceReceiver:Lcom/kahuna/sdk/KahunaFindMyDeviceManager$FindMyDeviceBroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.kahuna.sdk.broadcast.FIND_MY_DEVICE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 87
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/kahuna/sdk/KahunaFindMyDeviceManager;->mBroadcastRegistered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    .end local v1    # "instance":Lcom/kahuna/sdk/KahunaFindMyDeviceManager;
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v2, :cond_0

    .line 91
    const-string v2, "KahunaAnalytics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handled exception in FindMyDevice "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static requestSendMonitorRequest(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .param p0, "secretKey"    # Ljava/lang/String;
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "isDebugBuild"    # Z

    .prologue
    .line 108
    invoke-static {}, Lcom/kahuna/sdk/KahunaFindMyDeviceManager;->getSharedInstance()Lcom/kahuna/sdk/KahunaFindMyDeviceManager;

    move-result-object v1

    .line 109
    .local v1, "instance":Lcom/kahuna/sdk/KahunaFindMyDeviceManager;
    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lcom/kahuna/sdk/KahunaFindMyDeviceManager;->mTimestampLastBroadcast:J

    .line 112
    :try_start_0
    iget-object v2, v1, Lcom/kahuna/sdk/KahunaFindMyDeviceManager;->mHttpClient:Lcom/kahuna/sdk/http/AsyncHttpClient;

    if-nez v2, :cond_0

    .line 113
    new-instance v2, Lcom/kahuna/sdk/http/AsyncHttpClient;

    invoke-direct {v2}, Lcom/kahuna/sdk/http/AsyncHttpClient;-><init>()V

    iput-object v2, v1, Lcom/kahuna/sdk/KahunaFindMyDeviceManager;->mHttpClient:Lcom/kahuna/sdk/http/AsyncHttpClient;

    .line 114
    iget-object v2, v1, Lcom/kahuna/sdk/KahunaFindMyDeviceManager;->mHttpClient:Lcom/kahuna/sdk/http/AsyncHttpClient;

    const/16 v3, 0x3a98

    invoke-virtual {v2, v3}, Lcom/kahuna/sdk/http/AsyncHttpClient;->setTimeout(I)V

    .line 117
    :cond_0
    iget-object v3, v1, Lcom/kahuna/sdk/KahunaFindMyDeviceManager;->mConnectionProgressLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :try_start_1
    iget-object v2, v1, Lcom/kahuna/sdk/KahunaFindMyDeviceManager;->mRequestTimer:Ljava/util/Timer;

    if-eqz v2, :cond_1

    .line 119
    iget-object v2, v1, Lcom/kahuna/sdk/KahunaFindMyDeviceManager;->mRequestTimer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 120
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/kahuna/sdk/KahunaFindMyDeviceManager;->mRequestTimer:Ljava/util/Timer;

    .line 123
    :cond_1
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, v1, Lcom/kahuna/sdk/KahunaFindMyDeviceManager;->mRequestTimer:Ljava/util/Timer;

    .line 124
    iget-object v2, v1, Lcom/kahuna/sdk/KahunaFindMyDeviceManager;->mRequestTimer:Ljava/util/Timer;

    new-instance v4, Lcom/kahuna/sdk/KahunaFindMyDeviceManager$SendMonitorRequestsTask;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v1, p0, p1, p2}, Lcom/kahuna/sdk/KahunaFindMyDeviceManager$SendMonitorRequestsTask;-><init>(Lcom/kahuna/sdk/KahunaFindMyDeviceManager;Ljava/lang/String;Ljava/lang/String;Z)V

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v4, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 125
    monitor-exit v3

    .line 131
    :cond_2
    :goto_0
    return-void

    .line 125
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v2, :cond_2

    .line 129
    const-string v2, "KahunaAnalytics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handled exception attempting to schedule monitor request "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
