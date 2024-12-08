.class public Lcom/novoda/imageloader/core/loader/util/LoaderTask;
.super Lcom/novoda/imageloader/core/loader/util/AsyncTask;
.source "LoaderTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/novoda/imageloader/core/loader/util/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private height:I

.field private final imageWrapper:Lcom/novoda/imageloader/core/model/ImageWrapper;

.field private final loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

.field private notFoundResourceId:I

.field private final onImageLoadedListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/novoda/imageloader/core/OnImageLoadedListener;",
            ">;"
        }
    .end annotation
.end field

.field private saveScaledImage:Z

.field private url:Ljava/lang/String;

.field private useCacheOnly:Z

.field private width:I


# direct methods
.method public constructor <init>(Lcom/novoda/imageloader/core/model/ImageWrapper;Lcom/novoda/imageloader/core/LoaderSettings;)V
    .locals 1
    .param p1, "imageWrapper"    # Lcom/novoda/imageloader/core/model/ImageWrapper;
    .param p2, "loaderSettings"    # Lcom/novoda/imageloader/core/LoaderSettings;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/novoda/imageloader/core/loader/util/LoaderTask;-><init>(Lcom/novoda/imageloader/core/model/ImageWrapper;Lcom/novoda/imageloader/core/LoaderSettings;Ljava/lang/ref/WeakReference;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/novoda/imageloader/core/model/ImageWrapper;Lcom/novoda/imageloader/core/LoaderSettings;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .param p1, "imageWrapper"    # Lcom/novoda/imageloader/core/model/ImageWrapper;
    .param p2, "loaderSettings"    # Lcom/novoda/imageloader/core/LoaderSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/novoda/imageloader/core/model/ImageWrapper;",
            "Lcom/novoda/imageloader/core/LoaderSettings;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/novoda/imageloader/core/OnImageLoadedListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p3, "onImageLoadedListener":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/novoda/imageloader/core/OnImageLoadedListener;>;"
    invoke-direct {p0}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->imageWrapper:Lcom/novoda/imageloader/core/model/ImageWrapper;

    .line 48
    iput-object p2, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

    .line 49
    iput-object p3, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->onImageLoadedListener:Ljava/lang/ref/WeakReference;

    .line 50
    return-void
.end method

.method private getImageFile(Lcom/novoda/imageloader/core/model/ImageWrapper;)Ljava/io/File;
    .locals 5
    .param p1, "imageWrapper"    # Lcom/novoda/imageloader/core/model/ImageWrapper;

    .prologue
    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "imageFile":Ljava/io/File;
    invoke-virtual {p1}, Lcom/novoda/imageloader/core/model/ImageWrapper;->isSaveThumbnail()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v1}, Lcom/novoda/imageloader/core/LoaderSettings;->getFileManager()Lcom/novoda/imageloader/core/file/FileManager;

    move-result-object v1

    iget-object v2, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->url:Ljava/lang/String;

    iget v3, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->width:I

    iget v4, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->height:I

    invoke-interface {v1, v2, v3, v4}, Lcom/novoda/imageloader/core/file/FileManager;->getFile(Ljava/lang/String;II)Ljava/io/File;

    move-result-object v0

    .line 122
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v1}, Lcom/novoda/imageloader/core/LoaderSettings;->getFileManager()Lcom/novoda/imageloader/core/file/FileManager;

    move-result-object v1

    iget-object v2, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->url:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/novoda/imageloader/core/file/FileManager;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 124
    invoke-virtual {p1}, Lcom/novoda/imageloader/core/model/ImageWrapper;->isSaveThumbnail()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 125
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->saveScaledImage:Z

    .line 128
    :cond_2
    return-object v0
.end method

.method private getImageFromFile(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "imageFile"    # Ljava/io/File;

    .prologue
    .line 87
    iget-object v1, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v1}, Lcom/novoda/imageloader/core/LoaderSettings;->isAlwaysUseOriginalSize()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v1}, Lcom/novoda/imageloader/core/LoaderSettings;->getBitmapUtil()Lcom/novoda/imageloader/core/bitmap/BitmapUtil;

    move-result-object v1

    iget v2, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->width:I

    iget v3, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->height:I

    invoke-virtual {v1, p1, v2, v3}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->decodeFile(Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 93
    .local v0, "b":Landroid/graphics/Bitmap;
    :goto_0
    if-nez v0, :cond_1

    .line 102
    :goto_1
    return-object v0

    .line 90
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v1, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v1}, Lcom/novoda/imageloader/core/LoaderSettings;->getBitmapUtil()Lcom/novoda/imageloader/core/bitmap/BitmapUtil;

    move-result-object v1

    iget v2, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->width:I

    iget v3, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->height:I

    iget-object v4, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v4}, Lcom/novoda/imageloader/core/LoaderSettings;->isAllowUpsampling()Z

    move-result v4

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->decodeFileAndScale(Ljava/io/File;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "b":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 98
    :cond_1
    iget-boolean v1, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->saveScaledImage:Z

    if-eqz v1, :cond_2

    .line 99
    invoke-direct {p0, p1, v0}, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->saveScaledImage(Ljava/io/File;Landroid/graphics/Bitmap;)V

    .line 101
    :cond_2
    iget-object v1, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v1}, Lcom/novoda/imageloader/core/LoaderSettings;->getCacheManager()Lcom/novoda/imageloader/core/cache/CacheManager;

    move-result-object v1

    iget-object v2, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->url:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/novoda/imageloader/core/cache/CacheManager;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method private getNotFoundImage(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resource"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->notFoundResourceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 170
    .local v8, "key":Ljava/lang/String;
    iget-object v0, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v0}, Lcom/novoda/imageloader/core/LoaderSettings;->getResCacheManager()Lcom/novoda/imageloader/core/cache/CacheManager;

    move-result-object v0

    iget v1, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->width:I

    iget v2, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->height:I

    invoke-interface {v0, v8, v1, v2}, Lcom/novoda/imageloader/core/cache/CacheManager;->get(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 171
    .local v6, "b":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_0

    move-object v7, v6

    .line 180
    .end local v6    # "b":Landroid/graphics/Bitmap;
    .local v7, "b":Landroid/graphics/Bitmap;
    :goto_0
    return-object v7

    .line 174
    .end local v7    # "b":Landroid/graphics/Bitmap;
    .restart local v6    # "b":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v0, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v0}, Lcom/novoda/imageloader/core/LoaderSettings;->isAlwaysUseOriginalSize()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v0}, Lcom/novoda/imageloader/core/LoaderSettings;->getBitmapUtil()Lcom/novoda/imageloader/core/bitmap/BitmapUtil;

    move-result-object v0

    iget v1, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->width:I

    iget v2, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->height:I

    iget v3, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->notFoundResourceId:I

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->decodeResourceBitmap(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 179
    :goto_1
    iget-object v0, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v0}, Lcom/novoda/imageloader/core/LoaderSettings;->getResCacheManager()Lcom/novoda/imageloader/core/cache/CacheManager;

    move-result-object v0

    invoke-interface {v0, v8, v6}, Lcom/novoda/imageloader/core/cache/CacheManager;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    move-object v7, v6

    .line 180
    .end local v6    # "b":Landroid/graphics/Bitmap;
    .restart local v7    # "b":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 177
    .end local v7    # "b":Landroid/graphics/Bitmap;
    .restart local v6    # "b":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v0, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v0}, Lcom/novoda/imageloader/core/LoaderSettings;->getBitmapUtil()Lcom/novoda/imageloader/core/bitmap/BitmapUtil;

    move-result-object v0

    iget v2, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->width:I

    iget v3, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->height:I

    iget v4, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->notFoundResourceId:I

    iget-object v1, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v1}, Lcom/novoda/imageloader/core/LoaderSettings;->isAllowUpsampling()Z

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->decodeResourceBitmapAndScale(Landroid/content/Context;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_1
.end method

.method private hasImageViewUrlChanged(Lcom/novoda/imageloader/core/model/ImageWrapper;)Z
    .locals 3
    .param p1, "imageWrapper"    # Lcom/novoda/imageloader/core/model/ImageWrapper;

    .prologue
    const/4 v0, 0x0

    .line 132
    iget-object v1, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->url:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 135
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->url:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/novoda/imageloader/core/model/ImageWrapper;->getCurrentUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private listenerCallback(Lcom/novoda/imageloader/core/model/ImageWrapper;)V
    .locals 2
    .param p1, "imageWrapper"    # Lcom/novoda/imageloader/core/model/ImageWrapper;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->onImageLoadedListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->onImageLoadedListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->onImageLoadedListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/novoda/imageloader/core/OnImageLoadedListener;

    invoke-virtual {p1}, Lcom/novoda/imageloader/core/model/ImageWrapper;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/novoda/imageloader/core/OnImageLoadedListener;->onImageLoaded(Landroid/widget/ImageView;)V

    .line 166
    :cond_0
    return-void
.end method

.method private saveScaledImage(Ljava/io/File;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "imageFile"    # Ljava/io/File;
    .param p2, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v0}, Lcom/novoda/imageloader/core/LoaderSettings;->getFileManager()Lcom/novoda/imageloader/core/file/FileManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->width:I

    iget v3, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->height:I

    invoke-interface {v0, v1, p2, v2, v3}, Lcom/novoda/imageloader/core/file/FileManager;->saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;II)V

    .line 115
    return-void
.end method

.method private setTagInformation(Lcom/novoda/imageloader/core/model/ImageWrapper;)V
    .locals 1
    .param p1, "imageWrapper"    # Lcom/novoda/imageloader/core/model/ImageWrapper;

    .prologue
    .line 106
    invoke-virtual {p1}, Lcom/novoda/imageloader/core/model/ImageWrapper;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->url:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Lcom/novoda/imageloader/core/model/ImageWrapper;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->width:I

    .line 108
    invoke-virtual {p1}, Lcom/novoda/imageloader/core/model/ImageWrapper;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->height:I

    .line 109
    invoke-virtual {p1}, Lcom/novoda/imageloader/core/model/ImageWrapper;->getNotFoundResourceId()I

    move-result v0

    iput v0, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->notFoundResourceId:I

    .line 110
    invoke-virtual {p1}, Lcom/novoda/imageloader/core/model/ImageWrapper;->isUseCacheOnly()Z

    move-result v0

    iput-boolean v0, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->useCacheOnly:Z

    .line 111
    return-void
.end method

.method private validateImageView(Lcom/novoda/imageloader/core/model/ImageWrapper;)Z
    .locals 1
    .param p1, "imageWrapper"    # Lcom/novoda/imageloader/core/model/ImageWrapper;

    .prologue
    .line 156
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->hasImageViewUrlChanged(Lcom/novoda/imageloader/core/model/ImageWrapper;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/novoda/imageloader/core/model/ImageWrapper;->getLoaderTask()Lcom/novoda/imageloader/core/loader/util/LoaderTask;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 157
    :cond_0
    const/4 v0, 0x0

    .line 159
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 54
    iget-object v3, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->imageWrapper:Lcom/novoda/imageloader/core/model/ImageWrapper;

    if-nez v3, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-object v2

    .line 58
    :cond_1
    iget-object v3, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->imageWrapper:Lcom/novoda/imageloader/core/model/ImageWrapper;

    invoke-direct {p0, v3}, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->setTagInformation(Lcom/novoda/imageloader/core/model/ImageWrapper;)V

    .line 60
    iget-object v3, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->url:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->url:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->url:Ljava/lang/String;

    const-string v4, "_url_error"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 61
    :cond_2
    iget-object v2, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->imageWrapper:Lcom/novoda/imageloader/core/model/ImageWrapper;

    invoke-virtual {v2}, Lcom/novoda/imageloader/core/model/ImageWrapper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->getNotFoundImage(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    .line 64
    :cond_3
    iget-object v3, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->imageWrapper:Lcom/novoda/imageloader/core/model/ImageWrapper;

    invoke-direct {p0, v3}, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->hasImageViewUrlChanged(Lcom/novoda/imageloader/core/model/ImageWrapper;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 68
    iget-object v3, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->imageWrapper:Lcom/novoda/imageloader/core/model/ImageWrapper;

    invoke-direct {p0, v3}, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->getImageFile(Lcom/novoda/imageloader/core/model/ImageWrapper;)Ljava/io/File;

    move-result-object v0

    .line 69
    .local v0, "imageFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    .line 70
    iget-boolean v3, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->useCacheOnly:Z

    if-nez v3, :cond_0

    .line 74
    :try_start_0
    iget-object v3, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v3}, Lcom/novoda/imageloader/core/LoaderSettings;->getNetworkManager()Lcom/novoda/imageloader/core/network/NetworkManager;

    move-result-object v3

    iget-object v4, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->url:Ljava/lang/String;

    invoke-interface {v3, v4, v0}, Lcom/novoda/imageloader/core/network/NetworkManager;->retrieveImage(Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catch Lcom/novoda/imageloader/core/exception/ImageNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :cond_4
    iget-object v3, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->imageWrapper:Lcom/novoda/imageloader/core/model/ImageWrapper;

    invoke-direct {p0, v3}, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->hasImageViewUrlChanged(Lcom/novoda/imageloader/core/model/ImageWrapper;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 82
    invoke-direct {p0, v0}, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->getImageFromFile(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    .line 75
    :catch_0
    move-exception v1

    .line 76
    .local v1, "inf":Lcom/novoda/imageloader/core/exception/ImageNotFoundException;
    iget-object v2, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->imageWrapper:Lcom/novoda/imageloader/core/model/ImageWrapper;

    invoke-virtual {v2}, Lcom/novoda/imageloader/core/model/ImageWrapper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->getNotFoundImage(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 29
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->url:Ljava/lang/String;

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 141
    if-nez p1, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    invoke-virtual {p0}, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    const/4 p1, 0x0

    .line 146
    goto :goto_0

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->imageWrapper:Lcom/novoda/imageloader/core/model/ImageWrapper;

    invoke-direct {p0, v0}, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->validateImageView(Lcom/novoda/imageloader/core/model/ImageWrapper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->imageWrapper:Lcom/novoda/imageloader/core/model/ImageWrapper;

    invoke-direct {p0, v0}, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->listenerCallback(Lcom/novoda/imageloader/core/model/ImageWrapper;)V

    .line 151
    iget-object v0, p0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->imageWrapper:Lcom/novoda/imageloader/core/model/ImageWrapper;

    invoke-virtual {v0, p1}, Lcom/novoda/imageloader/core/model/ImageWrapper;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 29
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/novoda/imageloader/core/loader/util/LoaderTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
