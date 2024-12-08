.class Lcom/yopeso/lieferando/SplashActivity$DrawSplashTask;
.super Landroid/os/AsyncTask;
.source "SplashActivity.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawSplashTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field private drawableName:Ljava/lang/String;

.field private fps:I

.field private frame:I

.field private running:Z

.field final synthetic this$0:Lcom/yopeso/lieferando/SplashActivity;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/SplashActivity;)V
    .locals 1

    .prologue
    .line 124
    iput-object p1, p0, Lcom/yopeso/lieferando/SplashActivity$DrawSplashTask;->this$0:Lcom/yopeso/lieferando/SplashActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yopeso/lieferando/SplashActivity$DrawSplashTask;->running:Z

    .line 126
    const/16 v0, 0x7d

    iput v0, p0, Lcom/yopeso/lieferando/SplashActivity$DrawSplashTask;->fps:I

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lcom/yopeso/lieferando/SplashActivity$DrawSplashTask;->frame:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/SplashActivity;Lcom/yopeso/lieferando/SplashActivity$DrawSplashTask;)V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/SplashActivity$DrawSplashTask;-><init>(Lcom/yopeso/lieferando/SplashActivity;)V

    return-void
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/yopeso/lieferando/SplashActivity$DrawSplashTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/yopeso/lieferando/SplashActivity$DrawSplashTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "SplashActivity$DrawSplashTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1
    :goto_0
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/SplashActivity$DrawSplashTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "SplashActivity$DrawSplashTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 155
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/SplashActivity$DrawSplashTask;->publishProgress([Ljava/lang/Object;)V

    .line 156
    const/4 v0, 0x0

    return-object v0
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .param p1, "frame"    # [Ljava/lang/Integer;

    .prologue
    .line 168
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/yopeso/lieferando/SplashActivity$DrawSplashTask;->this$0:Lcom/yopeso/lieferando/SplashActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/SplashActivity;->access$0(Lcom/yopeso/lieferando/SplashActivity;Z)V

    .line 170
    iget-object v0, p0, Lcom/yopeso/lieferando/SplashActivity$DrawSplashTask;->this$0:Lcom/yopeso/lieferando/SplashActivity;

    invoke-static {v0}, Lcom/yopeso/lieferando/SplashActivity;->access$1(Lcom/yopeso/lieferando/SplashActivity;)V

    .line 173
    :cond_0
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/SplashActivity$DrawSplashTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
