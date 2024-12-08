.class public Lcom/novoda/imageloader/core/loader/SimpleLoader;
.super Ljava/lang/Object;
.source "SimpleLoader.java"

# interfaces
.implements Lcom/novoda/imageloader/core/loader/Loader;


# instance fields
.field private loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

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

.field private singleThreadedLoader:Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;


# direct methods
.method public constructor <init>(Lcom/novoda/imageloader/core/LoaderSettings;)V
    .locals 1
    .param p1, "loaderSettings"    # Lcom/novoda/imageloader/core/LoaderSettings;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/novoda/imageloader/core/loader/SimpleLoader;->loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

    .line 39
    new-instance v0, Lcom/novoda/imageloader/core/loader/SimpleLoader$1;

    invoke-direct {v0, p0}, Lcom/novoda/imageloader/core/loader/SimpleLoader$1;-><init>(Lcom/novoda/imageloader/core/loader/SimpleLoader;)V

    iput-object v0, p0, Lcom/novoda/imageloader/core/loader/SimpleLoader;->singleThreadedLoader:Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/novoda/imageloader/core/loader/SimpleLoader;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/novoda/imageloader/core/loader/SimpleLoader;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/novoda/imageloader/core/loader/SimpleLoader;->getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/novoda/imageloader/core/loader/SimpleLoader;)Lcom/novoda/imageloader/core/LoaderSettings;
    .locals 1
    .param p0, "x0"    # Lcom/novoda/imageloader/core/loader/SimpleLoader;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/novoda/imageloader/core/loader/SimpleLoader;->loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

    return-object v0
.end method

.method static synthetic access$200(Lcom/novoda/imageloader/core/loader/SimpleLoader;Landroid/widget/ImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/novoda/imageloader/core/loader/SimpleLoader;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/novoda/imageloader/core/loader/SimpleLoader;->onImageLoaded(Landroid/widget/ImageView;)V

    return-void
.end method

.method private getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 98
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ltz v2, :cond_1

    .line 99
    iget-object v2, p0, Lcom/novoda/imageloader/core/loader/SimpleLoader;->loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v2}, Lcom/novoda/imageloader/core/LoaderSettings;->getFileManager()Lcom/novoda/imageloader/core/file/FileManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/novoda/imageloader/core/file/FileManager;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 100
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    iget-object v2, p0, Lcom/novoda/imageloader/core/loader/SimpleLoader;->loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v2}, Lcom/novoda/imageloader/core/LoaderSettings;->getBitmapUtil()Lcom/novoda/imageloader/core/bitmap/BitmapUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/novoda/imageloader/core/loader/SimpleLoader;->loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v3}, Lcom/novoda/imageloader/core/LoaderSettings;->isAllowUpsampling()Z

    move-result v3

    invoke-virtual {v2, v1, p2, p3, v3}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->decodeFileAndScale(Ljava/io/File;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 102
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v1    # "f":Ljava/io/File;
    :goto_0
    return-object v0

    .line 106
    .restart local v1    # "f":Ljava/io/File;
    :cond_0
    iget-object v2, p0, Lcom/novoda/imageloader/core/loader/SimpleLoader;->loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v2}, Lcom/novoda/imageloader/core/LoaderSettings;->getNetworkManager()Lcom/novoda/imageloader/core/network/NetworkManager;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/novoda/imageloader/core/network/NetworkManager;->retrieveImage(Ljava/lang/String;Ljava/io/File;)V

    .line 107
    iget-object v2, p0, Lcom/novoda/imageloader/core/loader/SimpleLoader;->loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v2}, Lcom/novoda/imageloader/core/LoaderSettings;->getBitmapUtil()Lcom/novoda/imageloader/core/bitmap/BitmapUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/novoda/imageloader/core/loader/SimpleLoader;->loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v3}, Lcom/novoda/imageloader/core/LoaderSettings;->isAllowUpsampling()Z

    move-result v3

    invoke-virtual {v2, v1, p2, p3, v3}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->decodeFileAndScale(Ljava/io/File;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 109
    .end local v1    # "f":Ljava/io/File;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onImageLoaded(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/novoda/imageloader/core/loader/SimpleLoader;->onImageLoadedListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/novoda/imageloader/core/loader/SimpleLoader;->onImageLoadedListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/novoda/imageloader/core/OnImageLoadedListener;

    invoke-interface {v0, p1}, Lcom/novoda/imageloader/core/OnImageLoadedListener;->onImageLoaded(Landroid/widget/ImageView;)V

    .line 58
    :cond_0
    return-void
.end method

.method private setResource(Lcom/novoda/imageloader/core/model/ImageWrapper;I)V
    .locals 5
    .param p1, "w"    # Lcom/novoda/imageloader/core/model/ImageWrapper;
    .param p2, "resId"    # I

    .prologue
    .line 113
    iget-object v1, p0, Lcom/novoda/imageloader/core/loader/SimpleLoader;->loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v1}, Lcom/novoda/imageloader/core/LoaderSettings;->getResCacheManager()Lcom/novoda/imageloader/core/cache/CacheManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/novoda/imageloader/core/model/ImageWrapper;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/novoda/imageloader/core/model/ImageWrapper;->getHeight()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lcom/novoda/imageloader/core/cache/CacheManager;->get(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 114
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p1, v0}, Lcom/novoda/imageloader/core/model/ImageWrapper;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 121
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/novoda/imageloader/core/loader/SimpleLoader;->loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v1}, Lcom/novoda/imageloader/core/LoaderSettings;->getBitmapUtil()Lcom/novoda/imageloader/core/bitmap/BitmapUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/novoda/imageloader/core/loader/SimpleLoader;->loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v2}, Lcom/novoda/imageloader/core/LoaderSettings;->isAllowUpsampling()Z

    move-result v2

    invoke-virtual {v1, p1, p2, v2}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->decodeResourceBitmapAndScale(Lcom/novoda/imageloader/core/model/ImageWrapper;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/novoda/imageloader/core/loader/SimpleLoader;->loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v1}, Lcom/novoda/imageloader/core/LoaderSettings;->getResCacheManager()Lcom/novoda/imageloader/core/cache/CacheManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/novoda/imageloader/core/cache/CacheManager;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 120
    invoke-virtual {p1, v0}, Lcom/novoda/imageloader/core/model/ImageWrapper;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public load(Landroid/widget/ImageView;)V
    .locals 9
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 62
    new-instance v4, Lcom/novoda/imageloader/core/model/ImageWrapper;

    invoke-direct {v4, p1}, Lcom/novoda/imageloader/core/model/ImageWrapper;-><init>(Landroid/widget/ImageView;)V

    .line 65
    .local v4, "w":Lcom/novoda/imageloader/core/model/ImageWrapper;
    :try_start_0
    iget-object v5, p0, Lcom/novoda/imageloader/core/loader/SimpleLoader;->loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v5}, Lcom/novoda/imageloader/core/LoaderSettings;->getCacheManager()Lcom/novoda/imageloader/core/cache/CacheManager;

    move-result-object v5

    invoke-virtual {v4}, Lcom/novoda/imageloader/core/model/ImageWrapper;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/novoda/imageloader/core/model/ImageWrapper;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Lcom/novoda/imageloader/core/model/ImageWrapper;->getHeight()I

    move-result v8

    invoke-interface {v5, v6, v7, v8}, Lcom/novoda/imageloader/core/cache/CacheManager;->get(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 66
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 67
    invoke-virtual {v4, v0}, Lcom/novoda/imageloader/core/model/ImageWrapper;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 90
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 70
    .restart local v0    # "b":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {v4}, Lcom/novoda/imageloader/core/model/ImageWrapper;->getPreviewUrl()Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "thumbUrl":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 72
    iget-object v5, p0, Lcom/novoda/imageloader/core/loader/SimpleLoader;->loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v5}, Lcom/novoda/imageloader/core/LoaderSettings;->getCacheManager()Lcom/novoda/imageloader/core/cache/CacheManager;

    move-result-object v5

    invoke-virtual {v4}, Lcom/novoda/imageloader/core/model/ImageWrapper;->getPreviewHeight()I

    move-result v6

    invoke-virtual {v4}, Lcom/novoda/imageloader/core/model/ImageWrapper;->getPreviewWidth()I

    move-result v7

    invoke-interface {v5, v3, v6, v7}, Lcom/novoda/imageloader/core/cache/CacheManager;->get(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_2

    .line 74
    invoke-virtual {v4, v0}, Lcom/novoda/imageloader/core/model/ImageWrapper;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 81
    :goto_1
    invoke-virtual {v4}, Lcom/novoda/imageloader/core/model/ImageWrapper;->isUseCacheOnly()Z

    move-result v5

    if-nez v5, :cond_0

    .line 84
    iget-object v5, p0, Lcom/novoda/imageloader/core/loader/SimpleLoader;->singleThreadedLoader:Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;

    invoke-virtual {v5, v4}, Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;->push(Lcom/novoda/imageloader/core/model/ImageWrapper;)V
    :try_end_0
    .catch Lcom/novoda/imageloader/core/exception/ImageNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 85
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v3    # "thumbUrl":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 86
    .local v1, "inf":Lcom/novoda/imageloader/core/exception/ImageNotFoundException;
    invoke-virtual {v4}, Lcom/novoda/imageloader/core/model/ImageWrapper;->getNotFoundResourceId()I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/novoda/imageloader/core/loader/SimpleLoader;->setResource(Lcom/novoda/imageloader/core/model/ImageWrapper;I)V

    goto :goto_0

    .line 76
    .end local v1    # "inf":Lcom/novoda/imageloader/core/exception/ImageNotFoundException;
    .restart local v0    # "b":Landroid/graphics/Bitmap;
    .restart local v3    # "thumbUrl":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-virtual {v4}, Lcom/novoda/imageloader/core/model/ImageWrapper;->getLoadingResourceId()I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/novoda/imageloader/core/loader/SimpleLoader;->setResource(Lcom/novoda/imageloader/core/model/ImageWrapper;I)V
    :try_end_1
    .catch Lcom/novoda/imageloader/core/exception/ImageNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 87
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v3    # "thumbUrl":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 88
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v4}, Lcom/novoda/imageloader/core/model/ImageWrapper;->getNotFoundResourceId()I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/novoda/imageloader/core/loader/SimpleLoader;->setResource(Lcom/novoda/imageloader/core/model/ImageWrapper;I)V

    goto :goto_0

    .line 79
    .end local v2    # "t":Ljava/lang/Throwable;
    .restart local v0    # "b":Landroid/graphics/Bitmap;
    .restart local v3    # "thumbUrl":Ljava/lang/String;
    :cond_3
    :try_start_2
    invoke-virtual {v4}, Lcom/novoda/imageloader/core/model/ImageWrapper;->getLoadingResourceId()I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/novoda/imageloader/core/loader/SimpleLoader;->setResource(Lcom/novoda/imageloader/core/model/ImageWrapper;I)V
    :try_end_2
    .catch Lcom/novoda/imageloader/core/exception/ImageNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
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
    .line 94
    .local p1, "onImageLoadedListener":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/novoda/imageloader/core/OnImageLoadedListener;>;"
    iput-object p1, p0, Lcom/novoda/imageloader/core/loader/SimpleLoader;->onImageLoadedListener:Ljava/lang/ref/WeakReference;

    .line 95
    return-void
.end method
