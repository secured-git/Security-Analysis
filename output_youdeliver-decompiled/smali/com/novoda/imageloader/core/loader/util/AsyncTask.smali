.class public abstract Lcom/novoda/imageloader/core/loader/util/AsyncTask;
.super Ljava/lang/Object;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/novoda/imageloader/core/loader/util/AsyncTask$4;,
        Lcom/novoda/imageloader/core/loader/util/AsyncTask$AsyncTaskResult;,
        Lcom/novoda/imageloader/core/loader/util/AsyncTask$WorkerRunnable;,
        Lcom/novoda/imageloader/core/loader/util/AsyncTask$InternalHandler;,
        Lcom/novoda/imageloader/core/loader/util/AsyncTask$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0x4

.field private static final KEEP_ALIVE:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "AsyncTask"

.field private static final MAXIMUM_POOL_SIZE:I = 0x4

.field private static final MESSAGE_POST_CANCEL:I = 0x3

.field private static final MESSAGE_POST_PROGRESS:I = 0x2

.field private static final MESSAGE_POST_RESULT:I = 0x1

.field private static final sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final sHandler:Lcom/novoda/imageloader/core/loader/util/AsyncTask$InternalHandler;

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;

.field private static final sWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mFuture:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private volatile mStatus:Lcom/novoda/imageloader/core/loader/util/AsyncTask$Status;

.field private final mWorker:Lcom/novoda/imageloader/core/loader/util/AsyncTask$WorkerRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/novoda/imageloader/core/loader/util/AsyncTask$WorkerRunnable",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v2, 0x4

    .line 149
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->sWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 151
    new-instance v0, Lcom/novoda/imageloader/core/loader/util/AsyncTask$1;

    invoke-direct {v0}, Lcom/novoda/imageloader/core/loader/util/AsyncTask$1;-><init>()V

    sput-object v0, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 159
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->sWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    move v3, v2

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 166
    new-instance v0, Lcom/novoda/imageloader/core/loader/util/AsyncTask$InternalHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/novoda/imageloader/core/loader/util/AsyncTask$InternalHandler;-><init>(Lcom/novoda/imageloader/core/loader/util/AsyncTask$1;)V

    sput-object v0, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->sHandler:Lcom/novoda/imageloader/core/loader/util/AsyncTask$InternalHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 196
    .local p0, "this":Lcom/novoda/imageloader/core/loader/util/AsyncTask;, "Lcom/novoda/imageloader/core/loader/util/AsyncTask<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    sget-object v0, Lcom/novoda/imageloader/core/loader/util/AsyncTask$Status;->PENDING:Lcom/novoda/imageloader/core/loader/util/AsyncTask$Status;

    iput-object v0, p0, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->mStatus:Lcom/novoda/imageloader/core/loader/util/AsyncTask$Status;

    .line 197
    new-instance v0, Lcom/novoda/imageloader/core/loader/util/AsyncTask$2;

    invoke-direct {v0, p0}, Lcom/novoda/imageloader/core/loader/util/AsyncTask$2;-><init>(Lcom/novoda/imageloader/core/loader/util/AsyncTask;)V

    iput-object v0, p0, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->mWorker:Lcom/novoda/imageloader/core/loader/util/AsyncTask$WorkerRunnable;

    .line 204
    new-instance v0, Lcom/novoda/imageloader/core/loader/util/AsyncTask$3;

    iget-object v1, p0, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->mWorker:Lcom/novoda/imageloader/core/loader/util/AsyncTask$WorkerRunnable;

    invoke-direct {v0, p0, v1}, Lcom/novoda/imageloader/core/loader/util/AsyncTask$3;-><init>(Lcom/novoda/imageloader/core/loader/util/AsyncTask;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    .line 231
    return-void
.end method

.method static synthetic access$200()Lcom/novoda/imageloader/core/loader/util/AsyncTask$InternalHandler;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->sHandler:Lcom/novoda/imageloader/core/loader/util/AsyncTask$InternalHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/novoda/imageloader/core/loader/util/AsyncTask;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/novoda/imageloader/core/loader/util/AsyncTask;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->finish(Ljava/lang/Object;)V

    return-void
.end method

.method private finish(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 440
    .local p0, "this":Lcom/novoda/imageloader/core/loader/util/AsyncTask;, "Lcom/novoda/imageloader/core/loader/util/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    invoke-virtual {p0}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    const/4 p1, 0x0

    .line 443
    .end local p1    # "result":Ljava/lang/Object;, "TResult;"
    :cond_0
    invoke-virtual {p0, p1}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 444
    sget-object v0, Lcom/novoda/imageloader/core/loader/util/AsyncTask$Status;->FINISHED:Lcom/novoda/imageloader/core/loader/util/AsyncTask$Status;

    iput-object v0, p0, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->mStatus:Lcom/novoda/imageloader/core/loader/util/AsyncTask$Status;

    .line 445
    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .line 341
    .local p0, "this":Lcom/novoda/imageloader/core/loader/util/AsyncTask;, "Lcom/novoda/imageloader/core/loader/util/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public final varargs execute([Ljava/lang/Object;)Lcom/novoda/imageloader/core/loader/util/AsyncTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/novoda/imageloader/core/loader/util/AsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 403
    .local p0, "this":Lcom/novoda/imageloader/core/loader/util/AsyncTask;, "Lcom/novoda/imageloader/core/loader/util/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "params":[Ljava/lang/Object;, "[TParams;"
    iget-object v0, p0, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->mStatus:Lcom/novoda/imageloader/core/loader/util/AsyncTask$Status;

    sget-object v1, Lcom/novoda/imageloader/core/loader/util/AsyncTask$Status;->PENDING:Lcom/novoda/imageloader/core/loader/util/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 404
    sget-object v0, Lcom/novoda/imageloader/core/loader/util/AsyncTask$4;->$SwitchMap$com$novoda$imageloader$core$loader$util$AsyncTask$Status:[I

    iget-object v1, p0, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->mStatus:Lcom/novoda/imageloader/core/loader/util/AsyncTask$Status;

    invoke-virtual {v1}, Lcom/novoda/imageloader/core/loader/util/AsyncTask$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 413
    :cond_0
    sget-object v0, Lcom/novoda/imageloader/core/loader/util/AsyncTask$Status;->RUNNING:Lcom/novoda/imageloader/core/loader/util/AsyncTask$Status;

    iput-object v0, p0, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->mStatus:Lcom/novoda/imageloader/core/loader/util/AsyncTask$Status;

    .line 415
    invoke-virtual {p0}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->onPreExecute()V

    .line 417
    iget-object v0, p0, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->mWorker:Lcom/novoda/imageloader/core/loader/util/AsyncTask$WorkerRunnable;

    iput-object p1, v0, Lcom/novoda/imageloader/core/loader/util/AsyncTask$WorkerRunnable;->mParams:[Ljava/lang/Object;

    .line 418
    sget-object v0, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 420
    return-object p0

    .line 406
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 408
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 358
    .local p0, "this":Lcom/novoda/imageloader/core/loader/util/AsyncTask;, "Lcom/novoda/imageloader/core/loader/util/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 383
    .local p0, "this":Lcom/novoda/imageloader/core/loader/util/AsyncTask;, "Lcom/novoda/imageloader/core/loader/util/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getStatus()Lcom/novoda/imageloader/core/loader/util/AsyncTask$Status;
    .locals 1

    .prologue
    .line 239
    .local p0, "this":Lcom/novoda/imageloader/core/loader/util/AsyncTask;, "Lcom/novoda/imageloader/core/loader/util/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->mStatus:Lcom/novoda/imageloader/core/loader/util/AsyncTask$Status;

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 1

    .prologue
    .line 316
    .local p0, "this":Lcom/novoda/imageloader/core/loader/util/AsyncTask;, "Lcom/novoda/imageloader/core/loader/util/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    return v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 305
    .local p0, "this":Lcom/novoda/imageloader/core/loader/util/AsyncTask;, "Lcom/novoda/imageloader/core/loader/util/AsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 283
    .local p0, "this":Lcom/novoda/imageloader/core/loader/util/AsyncTask;, "Lcom/novoda/imageloader/core/loader/util/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 268
    .local p0, "this":Lcom/novoda/imageloader/core/loader/util/AsyncTask;, "Lcom/novoda/imageloader/core/loader/util/AsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 296
    .local p0, "this":Lcom/novoda/imageloader/core/loader/util/AsyncTask;, "Lcom/novoda/imageloader/core/loader/util/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "values":[Ljava/lang/Object;, "[TProgress;"
    return-void
.end method

.method protected final varargs publishProgress([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 436
    .local p0, "this":Lcom/novoda/imageloader/core/loader/util/AsyncTask;, "Lcom/novoda/imageloader/core/loader/util/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "values":[Ljava/lang/Object;, "[TProgress;"
    sget-object v0, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->sHandler:Lcom/novoda/imageloader/core/loader/util/AsyncTask$InternalHandler;

    const/4 v1, 0x2

    new-instance v2, Lcom/novoda/imageloader/core/loader/util/AsyncTask$AsyncTaskResult;

    invoke-direct {v2, p0, p1}, Lcom/novoda/imageloader/core/loader/util/AsyncTask$AsyncTaskResult;-><init>(Lcom/novoda/imageloader/core/loader/util/AsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/novoda/imageloader/core/loader/util/AsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 437
    return-void
.end method
