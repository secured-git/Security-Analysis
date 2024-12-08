.class public abstract Lcom/kahuna/sdk/GCMBaseIntentService;
.super Landroid/app/IntentService;
.source "GCMBaseIntentService.java"


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static final MAX_BACKOFF_MS:I

.field public static final TAG:Ljava/lang/String; = "GCMBaseIntentService"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "GCM_LIB"

.field private static sCounter:I

.field private static final sRandom:Ljava/util/Random;

.field private static sWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private final mLogger:Lcom/kahuna/sdk/KahunaLogger;

.field private final mSenderIds:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 58
    const-class v0, Lcom/kahuna/sdk/GCMBaseIntentService;

    sput-object v0, Lcom/kahuna/sdk/GCMBaseIntentService;->LOCK:Ljava/lang/Object;

    .line 63
    const/4 v0, 0x0

    sput v0, Lcom/kahuna/sdk/GCMBaseIntentService;->sCounter:I

    .line 65
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/kahuna/sdk/GCMBaseIntentService;->sRandom:Ljava/util/Random;

    .line 67
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xe10

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/kahuna/sdk/GCMBaseIntentService;->MAX_BACKOFF_MS:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 80
    const-string v0, "DynamicSenderIds"

    invoke-static {v0}, Lcom/kahuna/sdk/GCMBaseIntentService;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/kahuna/sdk/GCMBaseIntentService;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "senderIds"    # [Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 51
    new-instance v0, Lcom/kahuna/sdk/KahunaLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kahuna/sdk/KahunaLogger;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kahuna/sdk/GCMBaseIntentService;->mLogger:Lcom/kahuna/sdk/KahunaLogger;

    .line 92
    iput-object p2, p0, Lcom/kahuna/sdk/GCMBaseIntentService;->mSenderIds:[Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/kahuna/sdk/GCMBaseIntentService;->mLogger:Lcom/kahuna/sdk/KahunaLogger;

    const/4 v1, 0x2

    const-string v2, "Intent service name: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/kahuna/sdk/KahunaLogger;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 94
    return-void
.end method

.method protected varargs constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "senderIds"    # [Ljava/lang/String;

    .prologue
    .line 87
    invoke-static {p1}, Lcom/kahuna/sdk/GCMBaseIntentService;->getName([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/kahuna/sdk/GCMBaseIntentService;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method private static getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "senderId"    # Ljava/lang/String;

    .prologue
    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GCMIntentService-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/kahuna/sdk/GCMBaseIntentService;->sCounter:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/kahuna/sdk/GCMBaseIntentService;->sCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "name":Ljava/lang/String;
    return-object v0
.end method

.method private static getName([Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "senderIds"    # [Ljava/lang/String;

    .prologue
    .line 102
    invoke-static {p0}, Lcom/kahuna/sdk/GCMRegistrar;->getFlatSenderIds([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "flatSenderIds":Ljava/lang/String;
    invoke-static {v0}, Lcom/kahuna/sdk/GCMBaseIntentService;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private handleRegistration(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 282
    invoke-static {}, Lcom/kahuna/sdk/GCMRegistrar;->cancelAppPendingIntent()V

    .line 283
    const-string v12, "registration_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 284
    .local v7, "registrationId":Ljava/lang/String;
    const-string v12, "error"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 285
    .local v4, "error":Ljava/lang/String;
    const-string v12, "unregistered"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 286
    .local v11, "unregistered":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kahuna/sdk/GCMBaseIntentService;->mLogger:Lcom/kahuna/sdk/KahunaLogger;

    const/4 v13, 0x3

    const-string v14, "handleRegistration: registrationId = %s, error = %s, unregistered = %s"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v7, v15, v16

    const/16 v16, 0x1

    aput-object v4, v15, v16

    const/16 v16, 0x2

    aput-object v11, v15, v16

    invoke-virtual {v12, v13, v14, v15}, Lcom/kahuna/sdk/KahunaLogger;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 291
    if-eqz v7, :cond_1

    .line 292
    invoke-static/range {p1 .. p1}, Lcom/kahuna/sdk/GCMRegistrar;->resetBackoff(Landroid/content/Context;)V

    .line 293
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lcom/kahuna/sdk/GCMRegistrar;->setRegistrationId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 294
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7}, Lcom/kahuna/sdk/GCMBaseIntentService;->onRegistered(Landroid/content/Context;Ljava/lang/String;)V

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    if-eqz v11, :cond_2

    .line 301
    invoke-static/range {p1 .. p1}, Lcom/kahuna/sdk/GCMRegistrar;->resetBackoff(Landroid/content/Context;)V

    .line 302
    invoke-static/range {p1 .. p1}, Lcom/kahuna/sdk/GCMRegistrar;->clearRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 304
    .local v6, "oldRegistrationId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lcom/kahuna/sdk/GCMBaseIntentService;->onUnregistered(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 310
    .end local v6    # "oldRegistrationId":Ljava/lang/String;
    :cond_2
    const-string v12, "SERVICE_NOT_AVAILABLE"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 311
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/kahuna/sdk/GCMBaseIntentService;->onRecoverableError(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    .line 312
    .local v8, "retry":Z
    if-eqz v8, :cond_3

    .line 313
    invoke-static/range {p1 .. p1}, Lcom/kahuna/sdk/GCMRegistrar;->getBackoff(Landroid/content/Context;)I

    move-result v3

    .line 314
    .local v3, "backoffTimeMs":I
    div-int/lit8 v12, v3, 0x2

    sget-object v13, Lcom/kahuna/sdk/GCMBaseIntentService;->sRandom:Ljava/util/Random;

    invoke-virtual {v13, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v13

    add-int v5, v12, v13

    .line 316
    .local v5, "nextAttempt":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kahuna/sdk/GCMBaseIntentService;->mLogger:Lcom/kahuna/sdk/KahunaLogger;

    const/4 v13, 0x3

    const-string v14, "Scheduling registration retry, backoff = %d (%d)"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v12, v13, v14, v15}, Lcom/kahuna/sdk/KahunaLogger;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 319
    new-instance v9, Landroid/content/Intent;

    const-string v12, "com.google.android.gcm.intent.RETRY"

    invoke-direct {v9, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 321
    .local v9, "retryIntent":Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v12, v9, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 324
    .local v10, "retryPendingIntent":Landroid/app/PendingIntent;
    const-string v12, "alarm"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 326
    .local v2, "am":Landroid/app/AlarmManager;
    const/4 v12, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    int-to-long v0, v5

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    invoke-virtual {v2, v12, v14, v15, v10}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 330
    sget v12, Lcom/kahuna/sdk/GCMBaseIntentService;->MAX_BACKOFF_MS:I

    if-ge v3, v12, :cond_0

    mul-int/lit8 v12, v3, 0x2

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/kahuna/sdk/GCMRegistrar;->setBackoff(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 331
    .end local v2    # "am":Landroid/app/AlarmManager;
    .end local v3    # "backoffTimeMs":I
    .end local v5    # "nextAttempt":I
    .end local v9    # "retryIntent":Landroid/content/Intent;
    .end local v10    # "retryPendingIntent":Landroid/app/PendingIntent;
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kahuna/sdk/GCMBaseIntentService;->mLogger:Lcom/kahuna/sdk/KahunaLogger;

    const/4 v13, 0x2

    const-string v14, "Not retrying failed operation"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v12, v13, v14, v15}, Lcom/kahuna/sdk/KahunaLogger;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 333
    .end local v8    # "retry":Z
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/kahuna/sdk/GCMBaseIntentService;->onError(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static runIntentInService(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 261
    sget-object v3, Lcom/kahuna/sdk/GCMBaseIntentService;->LOCK:Ljava/lang/Object;

    monitor-enter v3

    .line 262
    :try_start_0
    sget-object v2, Lcom/kahuna/sdk/GCMBaseIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_0

    .line 264
    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 266
    .local v1, "pm":Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v4, "GCM_LIB"

    invoke-virtual {v1, v2, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    sput-object v2, Lcom/kahuna/sdk/GCMBaseIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 269
    .end local v1    # "pm":Landroid/os/PowerManager;
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    :try_start_1
    sget-object v2, Lcom/kahuna/sdk/GCMBaseIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 277
    :cond_1
    :goto_0
    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 279
    return-void

    .line 269
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/SecurityException;
    sget-boolean v2, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v2, :cond_1

    .line 275
    const-string v2, "KahunaAnalytics"

    const-string v3, "App does not have WAKE_LOCK permission"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected getSenderIds(Landroid/content/Context;)[Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/kahuna/sdk/GCMBaseIntentService;->mSenderIds:[Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "sender id not set on constructor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/kahuna/sdk/GCMBaseIntentService;->mSenderIds:[Ljava/lang/String;

    return-object v0
.end method

.method protected onDeletedMessages(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "total"    # I

    .prologue
    .line 135
    return-void
.end method

.method protected abstract onError(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public final onHandleIntent(Landroid/content/Intent;)V
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 182
    :try_start_0
    invoke-virtual {p0}, Lcom/kahuna/sdk/GCMBaseIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 183
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "action":Ljava/lang/String;
    const-string v8, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 185
    invoke-static {v1}, Lcom/kahuna/sdk/GCMRegistrar;->setRetryBroadcastReceiver(Landroid/content/Context;)V

    .line 186
    invoke-direct {p0, v1, p1}, Lcom/kahuna/sdk/GCMBaseIntentService;->handleRegistration(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 241
    :cond_0
    :goto_0
    sget-object v9, Lcom/kahuna/sdk/GCMBaseIntentService;->LOCK:Ljava/lang/Object;

    monitor-enter v9

    .line 243
    :try_start_1
    sget-object v8, Lcom/kahuna/sdk/GCMBaseIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v8, :cond_a

    sget-object v8, Lcom/kahuna/sdk/GCMBaseIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 244
    sget-object v8, Lcom/kahuna/sdk/GCMBaseIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 248
    :goto_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 250
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "context":Landroid/content/Context;
    :goto_2
    return-void

    .line 187
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "context":Landroid/content/Context;
    :cond_1
    :try_start_2
    const-string v8, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 189
    const-string v8, "message_type"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, "messageType":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 192
    const-string v8, "deleted_messages"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 193
    const-string v8, "total_deleted"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v5

    .line 195
    .local v5, "sTotal":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 196
    :try_start_3
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 197
    .local v7, "total":I
    iget-object v8, p0, Lcom/kahuna/sdk/GCMBaseIntentService;->mLogger:Lcom/kahuna/sdk/KahunaLogger;

    const/4 v9, 0x2

    const-string v10, "Received notification for %d deletedmessages"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v8, v9, v10, v11}, Lcom/kahuna/sdk/KahunaLogger;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 200
    invoke-virtual {p0, v1, v7}, Lcom/kahuna/sdk/GCMBaseIntentService;->onDeletedMessages(Landroid/content/Context;I)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 201
    .end local v7    # "total":I
    :catch_0
    move-exception v2

    .line 202
    .local v2, "e":Ljava/lang/NumberFormatException;
    :try_start_4
    iget-object v8, p0, Lcom/kahuna/sdk/GCMBaseIntentService;->mLogger:Lcom/kahuna/sdk/KahunaLogger;

    const/4 v9, 0x6

    const-string v10, "GCM returned invalid number of deleted messages (%d)"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v5, v11, v12

    invoke-virtual {v8, v9, v10, v11}, Lcom/kahuna/sdk/KahunaLogger;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 228
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "messageType":Ljava/lang/String;
    .end local v5    # "sTotal":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 229
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5
    sget-boolean v8, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v8, :cond_2

    .line 230
    const-string v8, "KahunaAnalytics"

    const-string v9, "Caught exception in GCM onHandleIntent, SDK might not be initialized correctly."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 241
    :cond_2
    sget-object v9, Lcom/kahuna/sdk/GCMBaseIntentService;->LOCK:Ljava/lang/Object;

    monitor-enter v9

    .line 243
    :try_start_6
    sget-object v8, Lcom/kahuna/sdk/GCMBaseIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v8, :cond_b

    sget-object v8, Lcom/kahuna/sdk/GCMBaseIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 244
    sget-object v8, Lcom/kahuna/sdk/GCMBaseIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 248
    :goto_3
    monitor-exit v9

    goto :goto_2

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v8

    .line 207
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v3    # "messageType":Ljava/lang/String;
    :cond_3
    :try_start_7
    iget-object v8, p0, Lcom/kahuna/sdk/GCMBaseIntentService;->mLogger:Lcom/kahuna/sdk/KahunaLogger;

    const/4 v9, 0x6

    const-string v10, "Received unknown special message: %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v3, v11, v12

    invoke-virtual {v8, v9, v10, v11}, Lcom/kahuna/sdk/KahunaLogger;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_0

    .line 241
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "messageType":Ljava/lang/String;
    :catchall_1
    move-exception v8

    sget-object v9, Lcom/kahuna/sdk/GCMBaseIntentService;->LOCK:Ljava/lang/Object;

    monitor-enter v9

    .line 243
    :try_start_8
    sget-object v10, Lcom/kahuna/sdk/GCMBaseIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v10, :cond_c

    sget-object v10, Lcom/kahuna/sdk/GCMBaseIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 244
    sget-object v10, Lcom/kahuna/sdk/GCMBaseIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 248
    :goto_4
    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v8

    .line 210
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v3    # "messageType":Ljava/lang/String;
    :cond_4
    :try_start_9
    invoke-virtual {p0, v1, p1}, Lcom/kahuna/sdk/GCMBaseIntentService;->onMessage(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 211
    .end local v3    # "messageType":Ljava/lang/String;
    :cond_5
    const-string v8, "com.google.android.gcm.intent.RETRY"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 212
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    .line 213
    .local v4, "packageOnIntent":Ljava/lang/String;
    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lcom/kahuna/sdk/GCMBaseIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 215
    :cond_6
    iget-object v8, p0, Lcom/kahuna/sdk/GCMBaseIntentService;->mLogger:Lcom/kahuna/sdk/KahunaLogger;

    const/4 v9, 0x6

    const-string v10, "Ignoring retry intent from another package (%s)"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v4, v11, v12

    invoke-virtual {v8, v9, v10, v11}, Lcom/kahuna/sdk/KahunaLogger;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 241
    sget-object v9, Lcom/kahuna/sdk/GCMBaseIntentService;->LOCK:Ljava/lang/Object;

    monitor-enter v9

    .line 243
    :try_start_a
    sget-object v8, Lcom/kahuna/sdk/GCMBaseIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v8, :cond_7

    sget-object v8, Lcom/kahuna/sdk/GCMBaseIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 244
    sget-object v8, Lcom/kahuna/sdk/GCMBaseIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 248
    :goto_5
    monitor-exit v9

    goto/16 :goto_2

    :catchall_2
    move-exception v8

    monitor-exit v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v8

    .line 247
    :cond_7
    :try_start_b
    iget-object v8, p0, Lcom/kahuna/sdk/GCMBaseIntentService;->mLogger:Lcom/kahuna/sdk/KahunaLogger;

    const/4 v10, 0x6

    const-string v11, "Wakelock reference is null or not held"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v8, v10, v11, v12}, Lcom/kahuna/sdk/KahunaLogger;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_5

    .line 221
    :cond_8
    :try_start_c
    invoke-static {v1}, Lcom/kahuna/sdk/GCMRegistrar;->isRegistered(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-static {v1}, Lcom/kahuna/sdk/GCMRegistrar;->internalUnregister(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 223
    :cond_9
    invoke-virtual {p0, v1}, Lcom/kahuna/sdk/GCMBaseIntentService;->getSenderIds(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v6

    .line 224
    .local v6, "senderIds":[Ljava/lang/String;
    invoke-static {v1, v6}, Lcom/kahuna/sdk/GCMRegistrar;->internalRegister(Landroid/content/Context;[Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_0

    .line 247
    .end local v4    # "packageOnIntent":Ljava/lang/String;
    .end local v6    # "senderIds":[Ljava/lang/String;
    :cond_a
    :try_start_d
    iget-object v8, p0, Lcom/kahuna/sdk/GCMBaseIntentService;->mLogger:Lcom/kahuna/sdk/KahunaLogger;

    const/4 v10, 0x6

    const-string v11, "Wakelock reference is null or not held"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v8, v10, v11, v12}, Lcom/kahuna/sdk/KahunaLogger;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 248
    :catchall_3
    move-exception v8

    monitor-exit v9
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    throw v8

    .line 247
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "context":Landroid/content/Context;
    .restart local v2    # "e":Ljava/lang/Exception;
    :cond_b
    :try_start_e
    iget-object v8, p0, Lcom/kahuna/sdk/GCMBaseIntentService;->mLogger:Lcom/kahuna/sdk/KahunaLogger;

    const/4 v10, 0x6

    const-string v11, "Wakelock reference is null or not held"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v8, v10, v11, v12}, Lcom/kahuna/sdk/KahunaLogger;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_3

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_c
    :try_start_f
    iget-object v10, p0, Lcom/kahuna/sdk/GCMBaseIntentService;->mLogger:Lcom/kahuna/sdk/KahunaLogger;

    const/4 v11, 0x6

    const-string v12, "Wakelock reference is null or not held"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual {v10, v11, v12, v13}, Lcom/kahuna/sdk/KahunaLogger;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 248
    :catchall_4
    move-exception v8

    monitor-exit v9
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    throw v8
.end method

.method protected abstract onMessage(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method protected onRecoverableError(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "errorId"    # Ljava/lang/String;

    .prologue
    .line 150
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract onRegistered(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method protected abstract onUnregistered(Landroid/content/Context;Ljava/lang/String;)V
.end method
