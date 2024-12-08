.class public Lcom/yopeso/lieferando/service/SyncUserDataTask;
.super Landroid/os/AsyncTask;
.source "SyncUserDataTask.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yopeso/lieferando/service/SyncUserDataTask$DiscountsListner;,
        Lcom/yopeso/lieferando/service/SyncUserDataTask$StampsListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final TIME_SEEP:J

.field private final TIME_UNTIL:I

.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field private mRequestQueue:Lcom/android/volley/RequestQueue;

.field private myContext:Landroid/content/Context;

.field private synced:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/yopeso/lieferando/service/SyncUserDataTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yopeso/lieferando/service/SyncUserDataTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 27
    const/16 v0, 0xa

    iput v0, p0, Lcom/yopeso/lieferando/service/SyncUserDataTask;->TIME_UNTIL:I

    .line 28
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/yopeso/lieferando/service/SyncUserDataTask;->TIME_SEEP:J

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yopeso/lieferando/service/SyncUserDataTask;->synced:Z

    .line 23
    return-void
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/yopeso/lieferando/service/SyncUserDataTask;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/yopeso/lieferando/service/SyncUserDataTask;Z)V
    .locals 0

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/yopeso/lieferando/service/SyncUserDataTask;->synced:Z

    return-void
.end method

.method static synthetic access$3(Lcom/yopeso/lieferando/service/SyncUserDataTask;)Lcom/android/volley/RequestQueue;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/yopeso/lieferando/service/SyncUserDataTask;->mRequestQueue:Lcom/android/volley/RequestQueue;

    return-object v0
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/yopeso/lieferando/service/SyncUserDataTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
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
    iget-object v0, p0, Lcom/yopeso/lieferando/service/SyncUserDataTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "SyncUserDataTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1
    :goto_0
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/service/SyncUserDataTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "SyncUserDataTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 40
    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/yopeso/lieferando/service/SyncUserDataTask;->myContext:Landroid/content/Context;

    .line 41
    iget-object v2, p0, Lcom/yopeso/lieferando/service/SyncUserDataTask;->myContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v2

    iput-object v2, p0, Lcom/yopeso/lieferando/service/SyncUserDataTask;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 42
    iget-object v2, p0, Lcom/yopeso/lieferando/service/SyncUserDataTask;->mRequestQueue:Lcom/android/volley/RequestQueue;

    new-instance v3, Lcom/yopeso/lieferando/net/requests/GetUserDataRequest;

    new-instance v4, Lcom/yopeso/lieferando/service/SyncUserDataTask$1;

    invoke-direct {v4, p0}, Lcom/yopeso/lieferando/service/SyncUserDataTask$1;-><init>(Lcom/yopeso/lieferando/service/SyncUserDataTask;)V

    invoke-direct {v3, v4}, Lcom/yopeso/lieferando/net/requests/GetUserDataRequest;-><init>(Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    .line 55
    invoke-virtual {v3}, Lcom/yopeso/lieferando/net/requests/GetUserDataRequest;->withAuth()Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v3

    .line 42
    invoke-virtual {v2, v3}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "count":I
    :goto_0
    iget-boolean v2, p0, Lcom/yopeso/lieferando/service/SyncUserDataTask;->synced:Z

    if-nez v2, :cond_0

    const/16 v2, 0xa

    if-lt v0, v2, :cond_1

    .line 66
    :cond_0
    iget-object v2, p0, Lcom/yopeso/lieferando/service/SyncUserDataTask;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2}, Lcom/android/volley/RequestQueue;->stop()V

    .line 67
    sget-object v2, Lcom/yopeso/lieferando/service/SyncUserDataTask;->TAG:Ljava/lang/String;

    const-string v3, "Syncing user data... onHandleIntent DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 v2, 0x0

    return-object v2

    .line 59
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 61
    const-wide/16 v2, 0x7d0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 62
    :catch_0
    move-exception v1

    .line 63
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 35
    sget-object v0, Lcom/yopeso/lieferando/service/SyncUserDataTask;->TAG:Ljava/lang/String;

    const-string v1, "started ..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 37
    return-void
.end method
