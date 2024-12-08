.class Lcom/novoda/imageloader/core/loader/util/AsyncTask$AsyncTaskResult;
.super Ljava/lang/Object;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/novoda/imageloader/core/loader/util/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncTaskResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field

.field final mTask:Lcom/novoda/imageloader/core/loader/util/AsyncTask;


# direct methods
.method varargs constructor <init>(Lcom/novoda/imageloader/core/loader/util/AsyncTask;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "task"    # Lcom/novoda/imageloader/core/loader/util/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/novoda/imageloader/core/loader/util/AsyncTask;",
            "[TData;)V"
        }
    .end annotation

    .prologue
    .line 477
    .local p0, "this":Lcom/novoda/imageloader/core/loader/util/AsyncTask$AsyncTaskResult;, "Lcom/novoda/imageloader/core/loader/util/AsyncTask$AsyncTaskResult<TData;>;"
    .local p2, "data":[Ljava/lang/Object;, "[TData;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    iput-object p1, p0, Lcom/novoda/imageloader/core/loader/util/AsyncTask$AsyncTaskResult;->mTask:Lcom/novoda/imageloader/core/loader/util/AsyncTask;

    .line 479
    iput-object p2, p0, Lcom/novoda/imageloader/core/loader/util/AsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    .line 480
    return-void
.end method
