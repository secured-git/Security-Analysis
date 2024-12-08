.class public Lcom/novoda/imageloader/core/loader/util/AsyncResult;
.super Ljava/lang/Object;
.source "AsyncResult.java"


# instance fields
.field public exception:Ljava/lang/Throwable;

.field public result:Ljava/lang/Object;

.field public userObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "uo"    # Ljava/lang/Object;
    .param p2, "r"    # Ljava/lang/Object;
    .param p3, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/novoda/imageloader/core/loader/util/AsyncResult;->userObj:Ljava/lang/Object;

    .line 57
    iput-object p2, p0, Lcom/novoda/imageloader/core/loader/util/AsyncResult;->result:Ljava/lang/Object;

    .line 58
    iput-object p3, p0, Lcom/novoda/imageloader/core/loader/util/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 59
    return-void
.end method

.method public static forMessage(Landroid/os/Message;)Lcom/novoda/imageloader/core/loader/util/AsyncResult;
    .locals 3
    .param p0, "m"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 47
    new-instance v0, Lcom/novoda/imageloader/core/loader/util/AsyncResult;

    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v2}, Lcom/novoda/imageloader/core/loader/util/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 49
    .local v0, "ret":Lcom/novoda/imageloader/core/loader/util/AsyncResult;
    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 51
    return-object v0
.end method

.method public static forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/novoda/imageloader/core/loader/util/AsyncResult;
    .locals 2
    .param p0, "m"    # Landroid/os/Message;
    .param p1, "r"    # Ljava/lang/Object;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 36
    new-instance v0, Lcom/novoda/imageloader/core/loader/util/AsyncResult;

    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {v0, v1, p1, p2}, Lcom/novoda/imageloader/core/loader/util/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 38
    .local v0, "ret":Lcom/novoda/imageloader/core/loader/util/AsyncResult;
    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 40
    return-object v0
.end method
