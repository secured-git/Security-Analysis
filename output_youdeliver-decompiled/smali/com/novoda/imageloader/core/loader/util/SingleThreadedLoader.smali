.class public abstract Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;
.super Ljava/lang/Object;
.source "SingleThreadedLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader$BitmapLoader;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageLoader"


# instance fields
.field private notFoundImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private stack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/novoda/imageloader/core/model/ImageWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private thread:Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader$BitmapLoader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader$BitmapLoader;

    invoke-direct {v0, p0}, Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader$BitmapLoader;-><init>(Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;)V

    iput-object v0, p0, Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;->thread:Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader$BitmapLoader;

    .line 33
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;->stack:Ljava/util/Stack;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;->notFoundImages:Ljava/util/List;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;)Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader$BitmapLoader;
    .locals 1
    .param p0, "x0"    # Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;->thread:Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader$BitmapLoader;

    return-object v0
.end method

.method static synthetic access$100(Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;Lcom/novoda/imageloader/core/model/ImageWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;
    .param p1, "x1"    # Lcom/novoda/imageloader/core/model/ImageWrapper;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;->clean(Lcom/novoda/imageloader/core/model/ImageWrapper;)V

    return-void
.end method

.method static synthetic access$200(Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;->notFoundImages:Ljava/util/List;

    return-object v0
.end method

.method private clean(Lcom/novoda/imageloader/core/model/ImageWrapper;)V
    .locals 4
    .param p1, "p"    # Lcom/novoda/imageloader/core/model/ImageWrapper;

    .prologue
    .line 65
    iget-object v2, p0, Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;->stack:Ljava/util/Stack;

    monitor-enter v2

    .line 66
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;->stack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/novoda/imageloader/core/model/ImageWrapper;

    invoke-virtual {v1}, Lcom/novoda/imageloader/core/model/ImageWrapper;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;->stack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/novoda/imageloader/core/model/ImageWrapper;

    invoke-virtual {v1}, Lcom/novoda/imageloader/core/model/ImageWrapper;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/novoda/imageloader/core/model/ImageWrapper;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;->stack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->remove(I)Ljava/lang/Object;

    .line 70
    add-int/lit8 v0, v0, -0x1

    .line 66
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_1
    monitor-exit v2

    .line 74
    return-void

    .line 73
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private pushOnStack(Lcom/novoda/imageloader/core/model/ImageWrapper;)V
    .locals 2
    .param p1, "p"    # Lcom/novoda/imageloader/core/model/ImageWrapper;

    .prologue
    .line 77
    iget-object v1, p0, Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;->stack:Ljava/util/Stack;

    monitor-enter v1

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    monitor-exit v1

    .line 80
    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private startThread()V
    .locals 5

    .prologue
    .line 135
    iget-object v1, p0, Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;->thread:Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader$BitmapLoader;

    invoke-virtual {v1}, Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader$BitmapLoader;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    sget-object v2, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v1, v2, :cond_0

    .line 136
    iget-object v1, p0, Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;->thread:Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader$BitmapLoader;

    invoke-virtual {v1}, Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader$BitmapLoader;->start()V

    .line 149
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v2, p0, Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;->thread:Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader$BitmapLoader;

    monitor-enter v2

    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;->thread:Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader$BitmapLoader;

    iget-boolean v1, v1, Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader$BitmapLoader;->isWaiting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 142
    :try_start_1
    iget-object v1, p0, Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;->thread:Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader$BitmapLoader;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader$BitmapLoader;->isWaiting:Z

    .line 143
    iget-object v1, p0, Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;->thread:Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader$BitmapLoader;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "ie":Ljava/lang/Exception;
    :try_start_3
    const-string v1, "ImageLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Check and resume the thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method protected abstract loadMissingBitmap(Lcom/novoda/imageloader/core/model/ImageWrapper;)Landroid/graphics/Bitmap;
.end method

.method protected abstract onBitmapLoaded(Lcom/novoda/imageloader/core/model/ImageWrapper;Landroid/graphics/Bitmap;)V
.end method

.method public pop()Lcom/novoda/imageloader/core/model/ImageWrapper;
    .locals 3

    .prologue
    .line 51
    iget-object v2, p0, Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;->stack:Ljava/util/Stack;

    monitor-enter v2

    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/novoda/imageloader/core/model/ImageWrapper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v2

    .line 55
    :goto_0
    return-object v1

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 57
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public push(Lcom/novoda/imageloader/core/model/ImageWrapper;)V
    .locals 1
    .param p1, "image"    # Lcom/novoda/imageloader/core/model/ImageWrapper;

    .prologue
    .line 37
    invoke-virtual {p1}, Lcom/novoda/imageloader/core/model/ImageWrapper;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-direct {p0, p1}, Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;->pushOnStack(Lcom/novoda/imageloader/core/model/ImageWrapper;)V

    .line 41
    invoke-direct {p0}, Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;->startThread()V

    goto :goto_0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 45
    iget-object v1, p0, Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;->stack:Ljava/util/Stack;

    monitor-enter v1

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
