.class Lcom/novoda/imageloader/core/loader/util/AsyncTask$2;
.super Lcom/novoda/imageloader/core/loader/util/AsyncTask$WorkerRunnable;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novoda/imageloader/core/loader/util/AsyncTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/novoda/imageloader/core/loader/util/AsyncTask$WorkerRunnable",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novoda/imageloader/core/loader/util/AsyncTask;


# direct methods
.method constructor <init>(Lcom/novoda/imageloader/core/loader/util/AsyncTask;)V
    .locals 1

    .prologue
    .line 197
    .local p0, "this":Lcom/novoda/imageloader/core/loader/util/AsyncTask$2;, "Lcom/novoda/imageloader/core/loader/util/AsyncTask.2;"
    iput-object p1, p0, Lcom/novoda/imageloader/core/loader/util/AsyncTask$2;->this$0:Lcom/novoda/imageloader/core/loader/util/AsyncTask;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/novoda/imageloader/core/loader/util/AsyncTask$WorkerRunnable;-><init>(Lcom/novoda/imageloader/core/loader/util/AsyncTask$1;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 199
    .local p0, "this":Lcom/novoda/imageloader/core/loader/util/AsyncTask$2;, "Lcom/novoda/imageloader/core/loader/util/AsyncTask.2;"
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 200
    iget-object v0, p0, Lcom/novoda/imageloader/core/loader/util/AsyncTask$2;->this$0:Lcom/novoda/imageloader/core/loader/util/AsyncTask;

    iget-object v1, p0, Lcom/novoda/imageloader/core/loader/util/AsyncTask$2;->mParams:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
