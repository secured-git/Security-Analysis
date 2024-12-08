.class final Lcom/kahuna/sdk/KahunaAnalytics$2;
.super Ljava/lang/Object;
.source "KahunaAnalytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kahuna/sdk/KahunaAnalytics;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 353
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getSharedInstance()Lcom/kahuna/sdk/KahunaAnalytics;

    move-result-object v13

    .line 354
    .local v13, "instance":Lcom/kahuna/sdk/KahunaAnalytics;
    invoke-static {v13}, Lcom/kahuna/sdk/KahunaAnalytics;->access$100(Lcom/kahuna/sdk/KahunaAnalytics;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 355
    invoke-static {v13}, Lcom/kahuna/sdk/KahunaAnalytics;->access$200(Lcom/kahuna/sdk/KahunaAnalytics;)V

    .line 357
    :cond_0
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->access$300()Ljava/lang/Object;

    move-result-object v21

    monitor-enter v21

    .line 358
    :try_start_0
    invoke-static {v13}, Lcom/kahuna/sdk/KahunaAnalytics;->access$400(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    .line 361
    invoke-static {v13}, Lcom/kahuna/sdk/KahunaAnalytics;->access$500(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 364
    :try_start_1
    invoke-static {v13}, Lcom/kahuna/sdk/KahunaAnalytics;->access$600(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 365
    invoke-static {v13}, Lcom/kahuna/sdk/KahunaAnalytics;->access$000(Lcom/kahuna/sdk/KahunaAnalytics;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/kahuna/sdk/KahunaPreferences;->getSavedEvents(Landroid/content/Context;)Ljava/util/List;

    move-result-object v19

    .line 366
    .local v19, "savedEvents":Ljava/util/List;, "Ljava/util/List<Lcom/kahuna/sdk/KAEvent;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v17

    .line 367
    .local v17, "numSavedEvents":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move/from16 v0, v17

    if-ge v12, v0, :cond_3

    .line 368
    invoke-static {v13}, Lcom/kahuna/sdk/KahunaAnalytics;->access$600(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 369
    invoke-static {v13}, Lcom/kahuna/sdk/KahunaAnalytics;->access$600(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 374
    .end local v12    # "i":I
    .end local v17    # "numSavedEvents":I
    .end local v19    # "savedEvents":Ljava/util/List;, "Ljava/util/List<Lcom/kahuna/sdk/KAEvent;>;"
    :cond_2
    invoke-static {v13}, Lcom/kahuna/sdk/KahunaAnalytics;->access$000(Lcom/kahuna/sdk/KahunaAnalytics;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/kahuna/sdk/KahunaPreferences;->getSavedEvents(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-static {v13, v3}, Lcom/kahuna/sdk/KahunaAnalytics;->access$602(Lcom/kahuna/sdk/KahunaAnalytics;Ljava/util/List;)Ljava/util/List;

    .line 376
    :cond_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 379
    :try_start_2
    invoke-static {}, Lcom/kahuna/sdk/KahunaFindMyDeviceManager;->getShouldSentMonitorRequest()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 380
    invoke-static {v13}, Lcom/kahuna/sdk/KahunaAnalytics;->access$700(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v13}, Lcom/kahuna/sdk/KahunaAnalytics;->access$800(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v13}, Lcom/kahuna/sdk/KahunaAnalytics;->access$900(Lcom/kahuna/sdk/KahunaAnalytics;)Z

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/kahuna/sdk/KahunaFindMyDeviceManager;->requestSendMonitorRequest(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 384
    :cond_4
    invoke-static {v13}, Lcom/kahuna/sdk/KahunaAnalytics;->access$1000(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/util/Timer;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 385
    invoke-static {v13}, Lcom/kahuna/sdk/KahunaAnalytics;->access$1000(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/util/Timer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    .line 386
    const/4 v3, 0x0

    invoke-static {v13, v3}, Lcom/kahuna/sdk/KahunaAnalytics;->access$1002(Lcom/kahuna/sdk/KahunaAnalytics;Ljava/util/Timer;)Ljava/util/Timer;

    .line 387
    monitor-exit v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 447
    :goto_1
    return-void

    .line 376
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3

    .line 444
    :catchall_1
    move-exception v3

    monitor-exit v21
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 392
    :cond_5
    :try_start_5
    invoke-static {v13}, Lcom/kahuna/sdk/KahunaAnalytics;->access$1100(Lcom/kahuna/sdk/KahunaAnalytics;)Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Lcom/kahuna/sdk/KahunaAnalytics;->senderId:Ljava/lang/String;

    invoke-static {v3}, Lcom/kahuna/sdk/KahunaUtils;->isNullOrEmptyString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 393
    invoke-static {v13}, Lcom/kahuna/sdk/KahunaAnalytics;->access$000(Lcom/kahuna/sdk/KahunaAnalytics;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/kahuna/sdk/GCMRegistrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    .line 394
    .local v18, "regId":Ljava/lang/String;
    const-string v3, ""

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 395
    sget-boolean v3, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v3, :cond_6

    .line 396
    const-string v3, "KahunaAnalytics"

    const-string v4, "Device not registered yet, will now register with GCM"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_6
    const-string v3, ""

    invoke-static {v3}, Lcom/kahuna/sdk/KahunaAnalytics;->setPushToken(Ljava/lang/String;)V

    .line 399
    invoke-static {v13}, Lcom/kahuna/sdk/KahunaAnalytics;->access$000(Lcom/kahuna/sdk/KahunaAnalytics;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    sget-object v6, Lcom/kahuna/sdk/KahunaAnalytics;->senderId:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/kahuna/sdk/GCMRegistrar;->register(Landroid/content/Context;[Ljava/lang/String;)V

    .line 408
    .end local v18    # "regId":Ljava/lang/String;
    :cond_7
    :goto_2
    const/4 v3, 0x1

    invoke-static {v13, v3}, Lcom/kahuna/sdk/KahunaAnalytics;->access$1202(Lcom/kahuna/sdk/KahunaAnalytics;Z)Z

    .line 410
    new-instance v2, Lcom/kahuna/sdk/KAEvent;

    const-string v3, "Start"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/kahuna/sdk/KAEvent;-><init>(Ljava/lang/String;JLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    .line 411
    .local v2, "event":Lcom/kahuna/sdk/KAEvent;
    invoke-static {v13, v2}, Lcom/kahuna/sdk/KahunaAnalytics;->access$1300(Lcom/kahuna/sdk/KahunaAnalytics;Lcom/kahuna/sdk/KAEvent;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 414
    :try_start_6
    invoke-static {v13}, Lcom/kahuna/sdk/KahunaAnalytics;->access$000(Lcom/kahuna/sdk/KahunaAnalytics;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v0, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v16, v0

    .line 416
    .local v16, "locale":Ljava/util/Locale;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v10

    .line 417
    .local v10, "currTimeZone":Ljava/util/TimeZone;
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v3}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v10, v3, v4}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v20

    .line 418
    .local v20, "timeZone":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v15

    .line 419
    .local v15, "language":Ljava/lang/String;
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 420
    .local v14, "internalAtts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "kahuna_tz"

    move-object/from16 v0, v20

    invoke-virtual {v14, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    const-string v3, "kahuna_lang"

    invoke-virtual {v14, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    invoke-static {v14}, Lcom/kahuna/sdk/KahunaAnalytics;->access$1400(Ljava/util/Map;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 430
    .end local v10    # "currTimeZone":Ljava/util/TimeZone;
    .end local v14    # "internalAtts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15    # "language":Ljava/lang/String;
    .end local v16    # "locale":Ljava/util/Locale;
    .end local v20    # "timeZone":Ljava/lang/String;
    :cond_8
    :goto_3
    :try_start_7
    invoke-static {v13}, Lcom/kahuna/sdk/KahunaAnalytics;->access$1500(Lcom/kahuna/sdk/KahunaAnalytics;)V

    .line 444
    .end local v2    # "event":Lcom/kahuna/sdk/KAEvent;
    :cond_9
    monitor-exit v21
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 446
    invoke-static {}, Lcom/kahuna/sdk/KahunaInAppManager;->hostAppNewActivityStarted()V

    goto/16 :goto_1

    .line 401
    .restart local v18    # "regId":Ljava/lang/String;
    :cond_a
    :try_start_8
    invoke-static/range {v18 .. v18}, Lcom/kahuna/sdk/KahunaAnalytics;->setPushToken(Ljava/lang/String;)V

    .line 402
    sget-boolean v3, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v3, :cond_7

    .line 403
    const-string v3, "KahunaAnalytics"

    const-string v4, "Device already registered"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 424
    .end local v18    # "regId":Ljava/lang/String;
    .restart local v2    # "event":Lcom/kahuna/sdk/KAEvent;
    :catch_0
    move-exception v11

    .line 425
    .local v11, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v3, :cond_8

    .line 426
    const-string v3, "KahunaAnalytics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception occured trying to retrieve app language or timezone:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_3
.end method
