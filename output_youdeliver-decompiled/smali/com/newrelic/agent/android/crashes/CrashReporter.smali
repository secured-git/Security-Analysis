.class public Lcom/newrelic/agent/android/crashes/CrashReporter;
.super Ljava/lang/Object;
.source "CrashReporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newrelic/agent/android/crashes/CrashReporter$CrashSender;,
        Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;
    }
.end annotation


# static fields
.field private static final CRASH_COLLECTOR_PATH:Ljava/lang/String; = "/mobile_crash"

.field private static final CRASH_COLLECTOR_TIMEOUT:I = 0x1388

.field private static agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

.field private static executor:Ljava/util/concurrent/ExecutorService;

.field protected static final initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected static instance:Lcom/newrelic/agent/android/crashes/CrashReporter;


# instance fields
.field private crashStore:Lcom/newrelic/agent/android/crashes/CrashStore;

.field protected isEnabled:Z

.field private final log:Lcom/newrelic/agent/android/logging/AgentLog;

.field private previousExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private reportCrashes:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-direct {v0}, Lcom/newrelic/agent/android/crashes/CrashReporter;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->instance:Lcom/newrelic/agent/android/crashes/CrashReporter;

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/crashes/CrashReporter;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/newrelic/agent/android/crashes/CrashReporter;->isEnabled:Z

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/newrelic/agent/android/crashes/CrashReporter;->reportCrashes:Z

    .line 229
    return-void
.end method

.method static synthetic access$000(Lcom/newrelic/agent/android/crashes/CrashReporter;)Lcom/newrelic/agent/android/logging/AgentLog;
    .locals 1
    .param p0, "x0"    # Lcom/newrelic/agent/android/crashes/CrashReporter;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/newrelic/agent/android/crashes/CrashReporter;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-object v0
.end method

.method static synthetic access$100()Lcom/newrelic/agent/android/AgentConfiguration;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    return-object v0
.end method

.method static synthetic access$200(Lcom/newrelic/agent/android/crashes/CrashReporter;)Lcom/newrelic/agent/android/crashes/CrashStore;
    .locals 1
    .param p0, "x0"    # Lcom/newrelic/agent/android/crashes/CrashReporter;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/newrelic/agent/android/crashes/CrashReporter;->crashStore:Lcom/newrelic/agent/android/crashes/CrashStore;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->executor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$400(Lcom/newrelic/agent/android/crashes/CrashReporter;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1
    .param p0, "x0"    # Lcom/newrelic/agent/android/crashes/CrashReporter;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/newrelic/agent/android/crashes/CrashReporter;->previousExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method public static clear()V
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->instance:Lcom/newrelic/agent/android/crashes/CrashReporter;

    iget-object v0, v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->crashStore:Lcom/newrelic/agent/android/crashes/CrashStore;

    invoke-interface {v0}, Lcom/newrelic/agent/android/crashes/CrashStore;->clear()V

    .line 97
    return-void
.end method

.method public static fetchAllCrashes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/newrelic/agent/android/harvest/crash/Crash;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    sget-object v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->instance:Lcom/newrelic/agent/android/crashes/CrashReporter;

    iget-object v0, v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->crashStore:Lcom/newrelic/agent/android/crashes/CrashStore;

    invoke-interface {v0}, Lcom/newrelic/agent/android/crashes/CrashStore;->fetchAll()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getAgentConfiguration()Lcom/newrelic/agent/android/AgentConfiguration;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    return-object v0
.end method

.method public static getInstanceHandler()Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->instance:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/crashes/CrashReporter;->getHandler()Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;

    move-result-object v0

    return-object v0
.end method

.method public static getStoredCrashCount()I
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->instance:Lcom/newrelic/agent/android/crashes/CrashReporter;

    iget-object v0, v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->crashStore:Lcom/newrelic/agent/android/crashes/CrashStore;

    invoke-interface {v0}, Lcom/newrelic/agent/android/crashes/CrashStore;->count()I

    move-result v0

    return v0
.end method

.method public static initialize(Lcom/newrelic/agent/android/AgentConfiguration;)V
    .locals 3
    .param p0, "_agentConfiguration"    # Lcom/newrelic/agent/android/AgentConfiguration;

    .prologue
    .line 54
    sget-object v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    new-instance v0, Lcom/newrelic/agent/android/util/NamedThreadFactory;

    const-string v1, "CrashUploader"

    invoke-direct {v0, v1}, Lcom/newrelic/agent/android/util/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->executor:Ljava/util/concurrent/ExecutorService;

    .line 58
    sput-object p0, Lcom/newrelic/agent/android/crashes/CrashReporter;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    .line 60
    sget-object v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->instance:Lcom/newrelic/agent/android/crashes/CrashReporter;

    sget-object v1, Lcom/newrelic/agent/android/crashes/CrashReporter;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/AgentConfiguration;->getReportCrashes()Z

    move-result v1

    iput-boolean v1, v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->isEnabled:Z

    .line 61
    sget-object v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->instance:Lcom/newrelic/agent/android/crashes/CrashReporter;

    sget-object v1, Lcom/newrelic/agent/android/crashes/CrashReporter;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/AgentConfiguration;->getCrashStore()Lcom/newrelic/agent/android/crashes/CrashStore;

    move-result-object v1

    iput-object v1, v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->crashStore:Lcom/newrelic/agent/android/crashes/CrashStore;

    .line 63
    sget-object v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->instance:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/crashes/CrashReporter;->reportSavedCrashes()V

    .line 64
    sget-object v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->instance:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/crashes/CrashReporter;->reportSupportabilityMetrics()V

    .line 66
    sget-object v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->instance:Lcom/newrelic/agent/android/crashes/CrashReporter;

    iget-boolean v0, v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 67
    sget-object v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->instance:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-direct {v0}, Lcom/newrelic/agent/android/crashes/CrashReporter;->installCrashHandler()V

    goto :goto_0
.end method

.method private installCrashHandler()V
    .locals 4

    .prologue
    .line 101
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 103
    .local v0, "currentExceptionHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    if-eqz v0, :cond_1

    .line 104
    instance-of v1, v0, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/newrelic/agent/android/crashes/CrashReporter;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "New Relic crash handler already installed."

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 117
    :goto_0
    return-void

    .line 109
    :cond_0
    iput-object v0, p0, Lcom/newrelic/agent/android/crashes/CrashReporter;->previousExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 111
    iget-object v1, p0, Lcom/newrelic/agent/android/crashes/CrashReporter;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Installing New Relic crash handler and chaining "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/newrelic/agent/android/crashes/CrashReporter;->previousExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 116
    :goto_1
    new-instance v1, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;

    invoke-direct {v1, p0}, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;-><init>(Lcom/newrelic/agent/android/crashes/CrashReporter;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    goto :goto_0

    .line 113
    :cond_1
    iget-object v1, p0, Lcom/newrelic/agent/android/crashes/CrashReporter;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "Installing New Relic crash handler."

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static setReportCrashes(Z)V
    .locals 1
    .param p0, "reportCrashes"    # Z

    .prologue
    .line 84
    sget-object v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->instance:Lcom/newrelic/agent/android/crashes/CrashReporter;

    iput-boolean p0, v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->reportCrashes:Z

    .line 85
    return-void
.end method


# virtual methods
.method public getHandler()Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;

    invoke-direct {v0, p0}, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;-><init>(Lcom/newrelic/agent/android/crashes/CrashReporter;)V

    return-object v0
.end method

.method protected recordFailedUpload(Ljava/lang/String;)V
    .locals 2
    .param p1, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/newrelic/agent/android/crashes/CrashReporter;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    invoke-interface {v0, p1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 205
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v0

    const-string v1, "Supportability/AgentHealth/Crash/FailedUpload"

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/stats/StatsEngine;->inc(Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method protected reportCrash(Lcom/newrelic/agent/android/harvest/crash/Crash;)Ljava/util/concurrent/Future;
    .locals 3
    .param p1, "crash"    # Lcom/newrelic/agent/android/harvest/crash/Crash;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/newrelic/agent/android/harvest/crash/Crash;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, "crashSenderThread":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    iget-boolean v2, p0, Lcom/newrelic/agent/android/crashes/CrashReporter;->reportCrashes:Z

    if-eqz v2, :cond_0

    .line 128
    new-instance v1, Lcom/newrelic/agent/android/crashes/CrashReporter$CrashSender;

    invoke-direct {v1, p0, p1}, Lcom/newrelic/agent/android/crashes/CrashReporter$CrashSender;-><init>(Lcom/newrelic/agent/android/crashes/CrashReporter;Lcom/newrelic/agent/android/harvest/crash/Crash;)V

    .line 129
    .local v1, "sender":Lcom/newrelic/agent/android/crashes/CrashReporter$CrashSender;
    sget-object v2, Lcom/newrelic/agent/android/crashes/CrashReporter;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 131
    .end local v1    # "sender":Lcom/newrelic/agent/android/crashes/CrashReporter$CrashSender;
    :cond_0
    return-object v0
.end method

.method protected reportSavedCrashes()V
    .locals 3

    .prologue
    .line 120
    iget-object v2, p0, Lcom/newrelic/agent/android/crashes/CrashReporter;->crashStore:Lcom/newrelic/agent/android/crashes/CrashStore;

    invoke-interface {v2}, Lcom/newrelic/agent/android/crashes/CrashStore;->fetchAll()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/harvest/crash/Crash;

    .line 121
    .local v0, "crash":Lcom/newrelic/agent/android/harvest/crash/Crash;
    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/crashes/CrashReporter;->reportCrash(Lcom/newrelic/agent/android/harvest/crash/Crash;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 123
    .end local v0    # "crash":Lcom/newrelic/agent/android/harvest/crash/Crash;
    :cond_0
    return-void
.end method

.method protected reportSupportabilityMetrics()V
    .locals 0

    .prologue
    .line 226
    return-void
.end method

.method protected storeSupportabilityMetrics()V
    .locals 2

    .prologue
    .line 212
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newrelic/agent/android/stats/StatsEngine;->getStatsMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    .line 215
    .local v0, "statsMap":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/newrelic/agent/android/metric/Metric;>;"
    return-void
.end method
