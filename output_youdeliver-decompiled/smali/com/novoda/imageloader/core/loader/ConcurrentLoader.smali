.class public Lcom/novoda/imageloader/core/loader/ConcurrentLoader;
.super Ljava/lang/Object;
.source "ConcurrentLoader.java"

# interfaces
.implements Lcom/novoda/imageloader/core/loader/Loader;


# instance fields
.field private final loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

.field private onImageLoadedListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/novoda/imageloader/core/OnImageLoadedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/novoda/imageloader/core/LoaderSettings;)V
    .locals 0
    .param p1, "loaderSettings"    # Lcom/novoda/imageloader/core/LoaderSettings;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/novoda/imageloader/core/loader/ConcurrentLoader;->loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

    .line 38
    return-void
.end method

.method private createTask(Lcom/novoda/imageloader/core/model/ImageWrapper;)Lcom/novoda/imageloader/core/loader/util/LoaderTask;
    .locals 3
    .param p1, "imageWrapper"    # Lcom/novoda/imageloader/core/model/ImageWrapper;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/novoda/imageloader/core/loader/ConcurrentLoader;->onImageLoadedListener:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    new-instance v0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;

    iget-object v1, p0, Lcom/novoda/imageloader/core/loader/ConcurrentLoader;->loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-direct {v0, p1, v1}, Lcom/novoda/imageloader/core/loader/util/LoaderTask;-><init>(Lcom/novoda/imageloader/core/model/ImageWrapper;Lcom/novoda/imageloader/core/LoaderSettings;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;

    iget-object v1, p0, Lcom/novoda/imageloader/core/loader/ConcurrentLoader;->loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

    iget-object v2, p0, Lcom/novoda/imageloader/core/loader/ConcurrentLoader;->onImageLoadedListener:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1, v1, v2}, Lcom/novoda/imageloader/core/loader/util/LoaderTask;-><init>(Lcom/novoda/imageloader/core/model/ImageWrapper;Lcom/novoda/imageloader/core/LoaderSettings;Ljava/lang/ref/WeakReference;)V

    goto :goto_0
.end method

.method private getCachedBitmap(Lcom/novoda/imageloader/core/model/ImageWrapper;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "w"    # Lcom/novoda/imageloader/core/model/ImageWrapper;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/novoda/imageloader/core/loader/ConcurrentLoader;->loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v0}, Lcom/novoda/imageloader/core/LoaderSettings;->getCacheManager()Lcom/novoda/imageloader/core/cache/CacheManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/novoda/imageloader/core/model/ImageWrapper;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/novoda/imageloader/core/model/ImageWrapper;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Lcom/novoda/imageloader/core/model/ImageWrapper;->getWidth()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/novoda/imageloader/core/cache/CacheManager;->get(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getPreviewCachedBitmap(Lcom/novoda/imageloader/core/model/ImageWrapper;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "w"    # Lcom/novoda/imageloader/core/model/ImageWrapper;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/novoda/imageloader/core/loader/ConcurrentLoader;->loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v0}, Lcom/novoda/imageloader/core/LoaderSettings;->getCacheManager()Lcom/novoda/imageloader/core/cache/CacheManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/novoda/imageloader/core/model/ImageWrapper;->getPreviewUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/novoda/imageloader/core/model/ImageWrapper;->getPreviewHeight()I

    move-result v2

    invoke-virtual {p1}, Lcom/novoda/imageloader/core/model/ImageWrapper;->getPreviewWidth()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/novoda/imageloader/core/cache/CacheManager;->get(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getResourceAsBitmap(Lcom/novoda/imageloader/core/model/ImageWrapper;I)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "w"    # Lcom/novoda/imageloader/core/model/ImageWrapper;
    .param p2, "resId"    # I

    .prologue
    .line 104
    iget-object v2, p0, Lcom/novoda/imageloader/core/loader/ConcurrentLoader;->loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v2}, Lcom/novoda/imageloader/core/LoaderSettings;->getResCacheManager()Lcom/novoda/imageloader/core/cache/CacheManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/novoda/imageloader/core/model/ImageWrapper;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/novoda/imageloader/core/model/ImageWrapper;->getHeight()I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Lcom/novoda/imageloader/core/cache/CacheManager;->get(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 105
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 110
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .local v1, "b":Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .line 108
    .end local v1    # "b":Landroid/graphics/Bitmap;
    .restart local v0    # "b":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v2, p0, Lcom/novoda/imageloader/core/loader/ConcurrentLoader;->loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v2}, Lcom/novoda/imageloader/core/LoaderSettings;->getBitmapUtil()Lcom/novoda/imageloader/core/bitmap/BitmapUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/novoda/imageloader/core/loader/ConcurrentLoader;->loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v3}, Lcom/novoda/imageloader/core/LoaderSettings;->isAllowUpsampling()Z

    move-result v3

    invoke-virtual {v2, p1, p2, v3}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->decodeResourceBitmapAndScale(Lcom/novoda/imageloader/core/model/ImageWrapper;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 109
    iget-object v2, p0, Lcom/novoda/imageloader/core/loader/ConcurrentLoader;->loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v2}, Lcom/novoda/imageloader/core/LoaderSettings;->getResCacheManager()Lcom/novoda/imageloader/core/cache/CacheManager;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/novoda/imageloader/core/cache/CacheManager;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    move-object v1, v0

    .line 110
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .restart local v1    # "b":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private hasPreviewUrl(Ljava/lang/String;)Z
    .locals 1
    .param p1, "previewUrl"    # Ljava/lang/String;

    .prologue
    .line 114
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBitmapAlreadyInCache(Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 68
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isTaskAlreadyRunning(Lcom/novoda/imageloader/core/model/ImageWrapper;)Z
    .locals 5
    .param p0, "imageWrapper"    # Lcom/novoda/imageloader/core/model/ImageWrapper;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 136
    invoke-virtual {p0}, Lcom/novoda/imageloader/core/model/ImageWrapper;->getLoaderTask()Lcom/novoda/imageloader/core/loader/util/LoaderTask;

    move-result-object v0

    .line 137
    .local v0, "oldTask":Lcom/novoda/imageloader/core/loader/util/LoaderTask;
    if-nez v0, :cond_0

    .line 145
    :goto_0
    return v1

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/novoda/imageloader/core/model/ImageWrapper;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    .line 142
    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {v0, v2}, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->cancel(Z)Z

    goto :goto_0
.end method

.method private isValidImageView(Landroid/widget/ImageView;)Z
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 50
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadBitmap(Lcom/novoda/imageloader/core/model/ImageWrapper;)V
    .locals 2
    .param p1, "w"    # Lcom/novoda/imageloader/core/model/ImageWrapper;

    .prologue
    .line 54
    invoke-static {p1}, Lcom/novoda/imageloader/core/loader/ConcurrentLoader;->isTaskAlreadyRunning(Lcom/novoda/imageloader/core/model/ImageWrapper;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    invoke-direct {p0, p1}, Lcom/novoda/imageloader/core/loader/ConcurrentLoader;->getCachedBitmap(Lcom/novoda/imageloader/core/model/ImageWrapper;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/novoda/imageloader/core/loader/ConcurrentLoader;->isBitmapAlreadyInCache(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    invoke-direct {p0, p1}, Lcom/novoda/imageloader/core/loader/ConcurrentLoader;->getCachedBitmap(Lcom/novoda/imageloader/core/model/ImageWrapper;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 57
    .local v0, "cachedBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1, v0}, Lcom/novoda/imageloader/core/model/ImageWrapper;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 65
    .end local v0    # "cachedBitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    invoke-direct {p0, p1}, Lcom/novoda/imageloader/core/loader/ConcurrentLoader;->setDefaultImage(Lcom/novoda/imageloader/core/model/ImageWrapper;)V

    .line 61
    invoke-virtual {p1}, Lcom/novoda/imageloader/core/model/ImageWrapper;->isUseCacheOnly()Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    invoke-direct {p0, p1}, Lcom/novoda/imageloader/core/loader/ConcurrentLoader;->startTask(Lcom/novoda/imageloader/core/model/ImageWrapper;)V

    goto :goto_0
.end method

.method private setDefaultImage(Lcom/novoda/imageloader/core/model/ImageWrapper;)V
    .locals 1
    .param p1, "w"    # Lcom/novoda/imageloader/core/model/ImageWrapper;

    .prologue
    .line 76
    invoke-virtual {p1}, Lcom/novoda/imageloader/core/model/ImageWrapper;->getPreviewUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/novoda/imageloader/core/loader/ConcurrentLoader;->hasPreviewUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    invoke-direct {p0, p1}, Lcom/novoda/imageloader/core/loader/ConcurrentLoader;->getPreviewCachedBitmap(Lcom/novoda/imageloader/core/model/ImageWrapper;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/novoda/imageloader/core/loader/ConcurrentLoader;->isBitmapAlreadyInCache(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-direct {p0, p1}, Lcom/novoda/imageloader/core/loader/ConcurrentLoader;->getPreviewCachedBitmap(Lcom/novoda/imageloader/core/model/ImageWrapper;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/novoda/imageloader/core/model/ImageWrapper;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 85
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-virtual {p1}, Lcom/novoda/imageloader/core/model/ImageWrapper;->getLoadingResourceId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/novoda/imageloader/core/loader/ConcurrentLoader;->getResourceAsBitmap(Lcom/novoda/imageloader/core/model/ImageWrapper;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/novoda/imageloader/core/model/ImageWrapper;->setResourceBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {p1}, Lcom/novoda/imageloader/core/model/ImageWrapper;->getLoadingResourceId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/novoda/imageloader/core/loader/ConcurrentLoader;->getResourceAsBitmap(Lcom/novoda/imageloader/core/model/ImageWrapper;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/novoda/imageloader/core/model/ImageWrapper;->setResourceBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private startTask(Lcom/novoda/imageloader/core/model/ImageWrapper;)V
    .locals 4
    .param p1, "w"    # Lcom/novoda/imageloader/core/model/ImageWrapper;

    .prologue
    .line 93
    :try_start_0
    invoke-direct {p0, p1}, Lcom/novoda/imageloader/core/loader/ConcurrentLoader;->createTask(Lcom/novoda/imageloader/core/model/ImageWrapper;)Lcom/novoda/imageloader/core/loader/util/LoaderTask;

    move-result-object v2

    .line 94
    .local v2, "task":Lcom/novoda/imageloader/core/loader/util/LoaderTask;
    invoke-virtual {p1, v2}, Lcom/novoda/imageloader/core/model/ImageWrapper;->setLoaderTask(Lcom/novoda/imageloader/core/loader/util/LoaderTask;)V

    .line 95
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->execute([Ljava/lang/Object;)Lcom/novoda/imageloader/core/loader/util/AsyncTask;
    :try_end_0
    .catch Lcom/novoda/imageloader/core/exception/ImageNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 101
    .end local v2    # "task":Lcom/novoda/imageloader/core/loader/util/LoaderTask;
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "inf":Lcom/novoda/imageloader/core/exception/ImageNotFoundException;
    invoke-virtual {p1}, Lcom/novoda/imageloader/core/model/ImageWrapper;->getNotFoundResourceId()I

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/novoda/imageloader/core/loader/ConcurrentLoader;->getResourceAsBitmap(Lcom/novoda/imageloader/core/model/ImageWrapper;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/novoda/imageloader/core/model/ImageWrapper;->setResourceBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 98
    .end local v0    # "inf":Lcom/novoda/imageloader/core/exception/ImageNotFoundException;
    :catch_1
    move-exception v1

    .line 99
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {p1}, Lcom/novoda/imageloader/core/model/ImageWrapper;->getNotFoundResourceId()I

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/novoda/imageloader/core/loader/ConcurrentLoader;->getResourceAsBitmap(Lcom/novoda/imageloader/core/model/ImageWrapper;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/novoda/imageloader/core/model/ImageWrapper;->setResourceBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public load(Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/novoda/imageloader/core/loader/ConcurrentLoader;->isValidImageView(Landroid/widget/ImageView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    const-string v0, "ImageLoader"

    const-string v1, "You should never call load if you don\'t set a ImageTag on the view"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :goto_0
    return-void

    .line 46
    :cond_0
    new-instance v0, Lcom/novoda/imageloader/core/model/ImageWrapper;

    invoke-direct {v0, p1}, Lcom/novoda/imageloader/core/model/ImageWrapper;-><init>(Landroid/widget/ImageView;)V

    invoke-direct {p0, v0}, Lcom/novoda/imageloader/core/loader/ConcurrentLoader;->loadBitmap(Lcom/novoda/imageloader/core/model/ImageWrapper;)V

    goto :goto_0
.end method

.method public setLoadListener(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/novoda/imageloader/core/OnImageLoadedListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, "onImageLoadedListener":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/novoda/imageloader/core/OnImageLoadedListener;>;"
    iput-object p1, p0, Lcom/novoda/imageloader/core/loader/ConcurrentLoader;->onImageLoadedListener:Ljava/lang/ref/WeakReference;

    .line 125
    return-void
.end method
