.class public Lcom/newrelic/agent/android/util/ActivityLifecycleBackgroundListener;
.super Lcom/newrelic/agent/android/util/UiBackgroundListener;
.source "ActivityLifecycleBackgroundListener.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;


# instance fields
.field private isInBackground:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/util/ActivityLifecycleBackgroundListener;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/newrelic/agent/android/util/UiBackgroundListener;-><init>()V

    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/newrelic/agent/android/util/ActivityLifecycleBackgroundListener;->isInBackground:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$000()Lcom/newrelic/agent/android/logging/AgentLog;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/newrelic/agent/android/util/ActivityLifecycleBackgroundListener;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    sget-object v0, Lcom/newrelic/agent/android/util/ActivityLifecycleBackgroundListener;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "ActivityLifecycleBackgroundListener.onActivityCreated"

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/newrelic/agent/android/util/ActivityLifecycleBackgroundListener;->isInBackground:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 44
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 48
    sget-object v0, Lcom/newrelic/agent/android/util/ActivityLifecycleBackgroundListener;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "ActivityLifecycleBackgroundListener.onActivityDestroyed"

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/newrelic/agent/android/util/ActivityLifecycleBackgroundListener;->isInBackground:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 50
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 69
    iget-object v1, p0, Lcom/newrelic/agent/android/util/ActivityLifecycleBackgroundListener;->isInBackground:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    new-instance v0, Lcom/newrelic/agent/android/util/ActivityLifecycleBackgroundListener$3;

    invoke-direct {v0, p0}, Lcom/newrelic/agent/android/util/ActivityLifecycleBackgroundListener$3;-><init>(Lcom/newrelic/agent/android/util/ActivityLifecycleBackgroundListener;)V

    .line 77
    .local v0, "runner":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/newrelic/agent/android/util/ActivityLifecycleBackgroundListener;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 79
    .end local v0    # "runner":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 20
    sget-object v1, Lcom/newrelic/agent/android/util/ActivityLifecycleBackgroundListener;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "ActivityLifecycleBackgroundListener.onActivityResumed"

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 21
    iget-object v1, p0, Lcom/newrelic/agent/android/util/ActivityLifecycleBackgroundListener;->isInBackground:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22
    new-instance v0, Lcom/newrelic/agent/android/util/ActivityLifecycleBackgroundListener$1;

    invoke-direct {v0, p0}, Lcom/newrelic/agent/android/util/ActivityLifecycleBackgroundListener$1;-><init>(Lcom/newrelic/agent/android/util/ActivityLifecycleBackgroundListener;)V

    .line 28
    .local v0, "runner":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/newrelic/agent/android/util/ActivityLifecycleBackgroundListener;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 30
    .end local v0    # "runner":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 55
    iget-object v1, p0, Lcom/newrelic/agent/android/util/ActivityLifecycleBackgroundListener;->isInBackground:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    new-instance v0, Lcom/newrelic/agent/android/util/ActivityLifecycleBackgroundListener$2;

    invoke-direct {v0, p0}, Lcom/newrelic/agent/android/util/ActivityLifecycleBackgroundListener$2;-><init>(Lcom/newrelic/agent/android/util/ActivityLifecycleBackgroundListener;)V

    .line 63
    .local v0, "runner":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/newrelic/agent/android/util/ActivityLifecycleBackgroundListener;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 65
    .end local v0    # "runner":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 84
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 34
    sget-object v0, Lcom/newrelic/agent/android/util/ActivityLifecycleBackgroundListener;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActivityLifecycleBackgroundListener.onTrimMemory level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 35
    const/16 v0, 0x14

    if-ne v0, p1, :cond_0

    .line 36
    iget-object v0, p0, Lcom/newrelic/agent/android/util/ActivityLifecycleBackgroundListener;->isInBackground:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 37
    :cond_0
    invoke-super {p0, p1}, Lcom/newrelic/agent/android/util/UiBackgroundListener;->onTrimMemory(I)V

    .line 38
    return-void
.end method
