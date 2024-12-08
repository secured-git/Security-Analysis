.class Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader$BitmapLoader;
.super Ljava/lang/Thread;
.source "SingleThreadedLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapLoader"
.end annotation


# instance fields
.field isWaiting:Z

.field final synthetic this$0:Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;


# direct methods
.method public constructor <init>(Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;)V
    .locals 1

    .prologue
    .line 85
    iput-object p1, p0, Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader$BitmapLoader;->this$0:Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader$BitmapLoader;->isWaiting:Z

    .line 86
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader$BitmapLoader;->setPriority(I)V

    .line 87
    return-void
.end method

.method private loadAndShowImage(Lcom/novoda/imageloader/core/model/ImageWrapper;)V
    .locals 6
    .param p1, "iw"    # Lcom/novoda/imageloader/core/model/ImageWrapper;

    .prologue
    .line 116
    :try_start_0
    invoke-virtual {p1}, Lcom/novoda/imageloader/core/model/ImageWrapper;->isUrlChanged()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 131
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v3, p0, Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader$BitmapLoader;->this$0:Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;

    invoke-virtual {v3, p1}, Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;->loadMissingBitmap(Lcom/novoda/imageloader/core/model/ImageWrapper;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 120
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 121
    iget-object v3, p0, Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader$BitmapLoader;->this$0:Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;

    invoke-static {v3, p1}, Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;->access$100(Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;Lcom/novoda/imageloader/core/model/ImageWrapper;)V

    .line 122
    iget-object v3, p0, Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader$BitmapLoader;->this$0:Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;

    invoke-virtual {v3, p1, v0}, Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;->onBitmapLoaded(Lcom/novoda/imageloader/core/model/ImageWrapper;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Lcom/novoda/imageloader/core/exception/ImageNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 126
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 127
    .local v2, "inf":Lcom/novoda/imageloader/core/exception/ImageNotFoundException;
    iget-object v3, p0, Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader$BitmapLoader;->this$0:Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;

    invoke-static {v3}, Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;->access$200(Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Lcom/novoda/imageloader/core/model/ImageWrapper;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 125
    .end local v2    # "inf":Lcom/novoda/imageloader/core/exception/ImageNotFoundException;
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader$BitmapLoader;->this$0:Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;

    invoke-virtual {v3, p1, v0}, Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;->onBitmapLoaded(Lcom/novoda/imageloader/core/model/ImageWrapper;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Lcom/novoda/imageloader/core/exception/ImageNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 128
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v1

    .line 129
    .local v1, "e":Ljava/lang/Throwable;
    const-string v3, "ImageLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Throwable : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private pauseThreadIfnecessary()V
    .locals 5

    .prologue
    .line 101
    iget-object v1, p0, Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader$BitmapLoader;->this$0:Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;

    invoke-virtual {v1}, Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader$BitmapLoader;->this$0:Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;

    invoke-static {v1}, Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;->access$000(Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;)Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader$BitmapLoader;

    move-result-object v2

    monitor-enter v2

    .line 106
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader$BitmapLoader;->isWaiting:Z

    .line 107
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :goto_1
    :try_start_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "ImageLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pausing the thread error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 92
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader$BitmapLoader;->pauseThreadIfnecessary()V

    .line 93
    iget-object v1, p0, Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader$BitmapLoader;->this$0:Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;

    invoke-virtual {v1}, Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;->pop()Lcom/novoda/imageloader/core/model/ImageWrapper;

    move-result-object v0

    .line 94
    .local v0, "image":Lcom/novoda/imageloader/core/model/ImageWrapper;
    if-eqz v0, :cond_0

    .line 95
    invoke-direct {p0, v0}, Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader$BitmapLoader;->loadAndShowImage(Lcom/novoda/imageloader/core/model/ImageWrapper;)V

    goto :goto_0
.end method
