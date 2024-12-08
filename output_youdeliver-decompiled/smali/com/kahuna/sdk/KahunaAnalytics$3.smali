.class final Lcom/kahuna/sdk/KahunaAnalytics$3;
.super Ljava/lang/Object;
.source "KahunaAnalytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kahuna/sdk/KahunaAnalytics;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 468
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->access$300()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 469
    :try_start_0
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getSharedInstance()Lcom/kahuna/sdk/KahunaAnalytics;

    move-result-object v0

    .line 470
    .local v0, "instance":Lcom/kahuna/sdk/KahunaAnalytics;
    invoke-static {v0}, Lcom/kahuna/sdk/KahunaAnalytics;->access$400(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    .line 472
    .local v1, "remainingActivites":I
    sget-boolean v2, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v2, :cond_0

    .line 473
    const-string v2, "KahunaAnalytics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Called stop, remaining activities in foreground is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_0
    if-nez v1, :cond_2

    .line 477
    invoke-static {v0}, Lcom/kahuna/sdk/KahunaAnalytics;->access$1000(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/util/Timer;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 478
    invoke-static {v0}, Lcom/kahuna/sdk/KahunaAnalytics;->access$1000(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/util/Timer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 479
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/kahuna/sdk/KahunaAnalytics;->access$1002(Lcom/kahuna/sdk/KahunaAnalytics;Ljava/util/Timer;)Ljava/util/Timer;

    .line 482
    :cond_1
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    invoke-static {v0, v2}, Lcom/kahuna/sdk/KahunaAnalytics;->access$1002(Lcom/kahuna/sdk/KahunaAnalytics;Ljava/util/Timer;)Ljava/util/Timer;

    .line 483
    invoke-static {v0}, Lcom/kahuna/sdk/KahunaAnalytics;->access$1000(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/util/Timer;

    move-result-object v2

    new-instance v4, Lcom/kahuna/sdk/KahunaAnalytics$3$1;

    invoke-direct {v4, p0}, Lcom/kahuna/sdk/KahunaAnalytics$3$1;-><init>(Lcom/kahuna/sdk/KahunaAnalytics$3;)V

    const-wide/16 v6, 0x1388

    invoke-virtual {v2, v4, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 520
    invoke-static {v0}, Lcom/kahuna/sdk/KahunaAnalytics;->access$500(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 521
    :try_start_1
    invoke-static {v0}, Lcom/kahuna/sdk/KahunaAnalytics;->access$600(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0}, Lcom/kahuna/sdk/KahunaAnalytics;->access$000(Lcom/kahuna/sdk/KahunaAnalytics;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/kahuna/sdk/KahunaPreferences;->saveEvents(Ljava/util/List;Landroid/content/Context;)V

    .line 522
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 525
    :try_start_2
    invoke-static {v0}, Lcom/kahuna/sdk/KahunaAnalytics;->access$1900(Lcom/kahuna/sdk/KahunaAnalytics;)J

    move-result-wide v4

    invoke-static {v0}, Lcom/kahuna/sdk/KahunaAnalytics;->access$000(Lcom/kahuna/sdk/KahunaAnalytics;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v4, v5, v2}, Lcom/kahuna/sdk/KahunaPreferences;->saveLastFlushTimestamp(JLandroid/content/Context;)V

    .line 527
    :cond_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 528
    return-void

    .line 522
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    .line 527
    .end local v0    # "instance":Lcom/kahuna/sdk/KahunaAnalytics;
    .end local v1    # "remainingActivites":I
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method
