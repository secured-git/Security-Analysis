.class public Lcom/newrelic/agent/android/util/UiBackgroundListener;
.super Ljava/lang/Object;
.source "UiBackgroundListener.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# instance fields
.field protected final executor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/newrelic/agent/android/util/NamedThreadFactory;

    const-string v1, "UiBackgroundListener"

    invoke-direct {v0, v1}, Lcom/newrelic/agent/android/util/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/util/UiBackgroundListener;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 17
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 21
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 26
    packed-switch p1, :pswitch_data_0

    .line 39
    :goto_0
    return-void

    .line 28
    :pswitch_0
    new-instance v0, Lcom/newrelic/agent/android/util/UiBackgroundListener$1;

    invoke-direct {v0, p0}, Lcom/newrelic/agent/android/util/UiBackgroundListener$1;-><init>(Lcom/newrelic/agent/android/util/UiBackgroundListener;)V

    .line 34
    .local v0, "runner":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/newrelic/agent/android/util/UiBackgroundListener;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 26
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method
