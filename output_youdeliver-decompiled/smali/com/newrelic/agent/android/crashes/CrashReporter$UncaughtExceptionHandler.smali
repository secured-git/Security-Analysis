.class public Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;
.super Ljava/lang/Object;
.source "CrashReporter.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newrelic/agent/android/crashes/CrashReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UncaughtExceptionHandler"
.end annotation


# instance fields
.field private final handledException:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;


# direct methods
.method public constructor <init>(Lcom/newrelic/agent/android/crashes/CrashReporter;)V
    .locals 2

    .prologue
    .line 134
    iput-object p1, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->handledException:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private chainExceptionHandler(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-static {v0}, Lcom/newrelic/agent/android/crashes/CrashReporter;->access$400(Lcom/newrelic/agent/android/crashes/CrashReporter;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-static {v0}, Lcom/newrelic/agent/android/crashes/CrashReporter;->access$000(Lcom/newrelic/agent/android/crashes/CrashReporter;)Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Chaining crash reporting duties to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-static {v2}, Lcom/newrelic/agent/android/crashes/CrashReporter;->access$400(Lcom/newrelic/agent/android/crashes/CrashReporter;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-static {v0}, Lcom/newrelic/agent/android/crashes/CrashReporter;->access$400(Lcom/newrelic/agent/android/crashes/CrashReporter;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 200
    :cond_0
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    const/4 v5, 0x0

    .line 141
    iget-object v3, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->handledException:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v3, v5, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-nez v3, :cond_0

    .line 142
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v3

    const-string v4, "Supportability/AgentHealth/Recursion/UncaughtExceptionHandler"

    invoke-virtual {v3, v4}, Lcom/newrelic/agent/android/stats/StatsEngine;->inc(Ljava/lang/String;)V

    .line 192
    :goto_0
    return-void

    .line 148
    :cond_0
    :try_start_0
    sget-object v3, Lcom/newrelic/agent/android/crashes/CrashReporter;->instance:Lcom/newrelic/agent/android/crashes/CrashReporter;

    iget-boolean v3, v3, Lcom/newrelic/agent/android/crashes/CrashReporter;->isEnabled:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/newrelic/agent/android/FeatureFlag;->CrashReporting:Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {v3}, Lcom/newrelic/agent/android/FeatureFlag;->featureEnabled(Lcom/newrelic/agent/android/FeatureFlag;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 149
    :cond_1
    iget-object v3, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-static {v3}, Lcom/newrelic/agent/android/crashes/CrashReporter;->access$000(Lcom/newrelic/agent/android/crashes/CrashReporter;)Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v3

    const-string v4, "A crash has been detected but crash reporting is disabled!"

    invoke-interface {v3, v4}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 150
    invoke-direct {p0, p1, p2}, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->chainExceptionHandler(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    iget-object v3, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-virtual {v3}, Lcom/newrelic/agent/android/crashes/CrashReporter;->storeSupportabilityMetrics()V

    .line 189
    invoke-direct {p0, p1, p2}, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->chainExceptionHandler(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 154
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-static {v3}, Lcom/newrelic/agent/android/crashes/CrashReporter;->access$000(Lcom/newrelic/agent/android/crashes/CrashReporter;)Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "A crash has been detected in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and will be reported ASAP."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 155
    iget-object v3, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-static {v3}, Lcom/newrelic/agent/android/crashes/CrashReporter;->access$000(Lcom/newrelic/agent/android/crashes/CrashReporter;)Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Analytics data is currently "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/newrelic/agent/android/crashes/CrashReporter;->access$100()Lcom/newrelic/agent/android/AgentConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/newrelic/agent/android/AgentConfiguration;->getEnableAnalyticsEvents()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "enabled "

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 157
    new-instance v0, Lcom/newrelic/agent/android/harvest/crash/Crash;

    invoke-static {}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getInstance()Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getSessionAttributes()Ljava/util/Set;

    move-result-object v3

    invoke-static {}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getInstance()Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getEventManager()Lcom/newrelic/agent/android/analytics/EventManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/newrelic/agent/android/analytics/EventManager;->getQueuedEvents()Ljava/util/Collection;

    move-result-object v4

    invoke-static {}, Lcom/newrelic/agent/android/crashes/CrashReporter;->access$100()Lcom/newrelic/agent/android/AgentConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lcom/newrelic/agent/android/AgentConfiguration;->getEnableAnalyticsEvents()Z

    move-result v5

    invoke-direct {v0, p2, v3, v4, v5}, Lcom/newrelic/agent/android/harvest/crash/Crash;-><init>(Ljava/lang/Throwable;Ljava/util/Set;Ljava/util/Collection;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    .local v0, "crash":Lcom/newrelic/agent/android/harvest/crash/Crash;
    :try_start_2
    iget-object v3, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-static {v3}, Lcom/newrelic/agent/android/crashes/CrashReporter;->access$200(Lcom/newrelic/agent/android/crashes/CrashReporter;)Lcom/newrelic/agent/android/crashes/CrashStore;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/newrelic/agent/android/crashes/CrashStore;->store(Lcom/newrelic/agent/android/harvest/crash/Crash;)V

    .line 166
    iget-object v3, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-virtual {v3, v0}, Lcom/newrelic/agent/android/crashes/CrashReporter;->reportCrash(Lcom/newrelic/agent/android/harvest/crash/Crash;)Ljava/util/concurrent/Future;

    .line 169
    invoke-static {}, Lcom/newrelic/agent/android/crashes/CrashReporter;->access$300()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 173
    invoke-static {}, Lcom/newrelic/agent/android/crashes/CrashReporter;->access$300()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    const-wide/16 v4, 0x1388

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v6}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 174
    iget-object v3, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;

    const-string v4, "Crash upload thread(s) timed-out before completion"

    invoke-virtual {v3, v4}, Lcom/newrelic/agent/android/crashes/CrashReporter;->recordFailedUpload(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 186
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-virtual {v3}, Lcom/newrelic/agent/android/crashes/CrashReporter;->storeSupportabilityMetrics()V

    .line 189
    invoke-direct {p0, p1, p2}, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->chainExceptionHandler(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 155
    .end local v0    # "crash":Lcom/newrelic/agent/android/harvest/crash/Crash;
    :cond_4
    :try_start_3
    const-string v3, "disabled"

    goto :goto_1

    .line 177
    .restart local v0    # "crash":Lcom/newrelic/agent/android/harvest/crash/Crash;
    :catch_0
    move-exception v1

    .line 178
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception caught while sending crash: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/newrelic/agent/android/crashes/CrashReporter;->recordFailedUpload(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 181
    .end local v0    # "crash":Lcom/newrelic/agent/android/harvest/crash/Crash;
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 182
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_4
    iget-object v3, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error encountered while preparing crash for New Relic! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/newrelic/agent/android/crashes/CrashReporter;->recordFailedUpload(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 186
    iget-object v3, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-virtual {v3}, Lcom/newrelic/agent/android/crashes/CrashReporter;->storeSupportabilityMetrics()V

    .line 189
    invoke-direct {p0, p1, p2}, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->chainExceptionHandler(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 186
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-virtual {v4}, Lcom/newrelic/agent/android/crashes/CrashReporter;->storeSupportabilityMetrics()V

    .line 189
    invoke-direct {p0, p1, p2}, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->chainExceptionHandler(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    throw v3
.end method
