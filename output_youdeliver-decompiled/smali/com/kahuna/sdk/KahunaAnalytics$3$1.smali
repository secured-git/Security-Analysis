.class Lcom/kahuna/sdk/KahunaAnalytics$3$1;
.super Ljava/util/TimerTask;
.source "KahunaAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kahuna/sdk/KahunaAnalytics$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kahuna/sdk/KahunaAnalytics$3;


# direct methods
.method constructor <init>(Lcom/kahuna/sdk/KahunaAnalytics$3;)V
    .locals 0

    .prologue
    .line 483
    iput-object p1, p0, Lcom/kahuna/sdk/KahunaAnalytics$3$1;->this$0:Lcom/kahuna/sdk/KahunaAnalytics$3;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 487
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->access$300()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 489
    :try_start_0
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getSharedInstance()Lcom/kahuna/sdk/KahunaAnalytics;

    move-result-object v1

    .line 490
    .local v1, "instance":Lcom/kahuna/sdk/KahunaAnalytics;
    invoke-static {v1}, Lcom/kahuna/sdk/KahunaAnalytics;->access$1000(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/util/Timer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 491
    invoke-static {v1}, Lcom/kahuna/sdk/KahunaAnalytics;->access$1000(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/util/Timer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 492
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/kahuna/sdk/KahunaAnalytics;->access$1002(Lcom/kahuna/sdk/KahunaAnalytics;Ljava/util/Timer;)Ljava/util/Timer;

    .line 495
    :cond_0
    invoke-static {v1}, Lcom/kahuna/sdk/KahunaAnalytics;->access$400(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-lez v2, :cond_1

    .line 496
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 515
    .end local v1    # "instance":Lcom/kahuna/sdk/KahunaAnalytics;
    :goto_0
    return-void

    .line 499
    .restart local v1    # "instance":Lcom/kahuna/sdk/KahunaAnalytics;
    :cond_1
    :try_start_2
    invoke-static {v1}, Lcom/kahuna/sdk/KahunaAnalytics;->access$1600(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 500
    :try_start_3
    invoke-static {v1}, Lcom/kahuna/sdk/KahunaAnalytics;->access$1700(Lcom/kahuna/sdk/KahunaAnalytics;)Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 501
    invoke-static {v1}, Lcom/kahuna/sdk/KahunaAnalytics;->access$1700(Lcom/kahuna/sdk/KahunaAnalytics;)Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;->cancel()V

    .line 502
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/kahuna/sdk/KahunaAnalytics;->access$1702(Lcom/kahuna/sdk/KahunaAnalytics;Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;)Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;

    .line 504
    :cond_2
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 507
    :try_start_4
    const-string v2, "k_app_bg"

    invoke-static {v1, v2}, Lcom/kahuna/sdk/KahunaAnalytics;->access$1800(Lcom/kahuna/sdk/KahunaAnalytics;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 514
    .end local v1    # "instance":Lcom/kahuna/sdk/KahunaAnalytics;
    :cond_3
    :goto_1
    :try_start_5
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v2

    .line 504
    .restart local v1    # "instance":Lcom/kahuna/sdk/KahunaAnalytics;
    :catchall_1
    move-exception v2

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 509
    .end local v1    # "instance":Lcom/kahuna/sdk/KahunaAnalytics;
    :catch_0
    move-exception v0

    .line 511
    .local v0, "e":Ljava/lang/Exception;
    :try_start_8
    sget-boolean v2, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v2, :cond_3

    .line 512
    const-string v2, "KahunaAnalytics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Handled exception in KahunaAnalytics.stop() timer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1
.end method
