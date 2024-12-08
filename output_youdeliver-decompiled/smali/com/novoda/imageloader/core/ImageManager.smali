.class public Lcom/novoda/imageloader/core/ImageManager;
.super Ljava/lang/Object;
.source "ImageManager.java"


# instance fields
.field private final loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

.field private final onImageLoadedListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/novoda/imageloader/core/OnImageLoadedListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/novoda/imageloader/core/LoaderSettings;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settings"    # Lcom/novoda/imageloader/core/LoaderSettings;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    if-eqz p1, :cond_0

    .line 55
    invoke-direct {p0, p1}, Lcom/novoda/imageloader/core/ImageManager;->verifyPermissions(Landroid/content/Context;)V

    .line 57
    :cond_0
    iput-object p2, p0, Lcom/novoda/imageloader/core/ImageManager;->loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/novoda/imageloader/core/ImageManager;->onImageLoadedListeners:Ljava/util/Map;

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/novoda/imageloader/core/LoaderSettings;)V
    .locals 1
    .param p1, "settings"    # Lcom/novoda/imageloader/core/LoaderSettings;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/novoda/imageloader/core/ImageManager;-><init>(Landroid/content/Context;Lcom/novoda/imageloader/core/LoaderSettings;)V

    .line 51
    return-void
.end method

.method private verifyPermission(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 68
    .local v0, "p":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 69
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImageLoader : please add the permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to the manifest"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    :cond_0
    return-void
.end method

.method private verifyPermissions(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-direct {p0, p1, v0}, Lcom/novoda/imageloader/core/ImageManager;->verifyPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 63
    const-string v0, "android.permission.INTERNET"

    invoke-direct {p0, p1, v0}, Lcom/novoda/imageloader/core/ImageManager;->verifyPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 64
    return-void
.end method


# virtual methods
.method public cacheImage(Ljava/lang/String;II)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 114
    iget-object v4, p0, Lcom/novoda/imageloader/core/ImageManager;->loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v4}, Lcom/novoda/imageloader/core/LoaderSettings;->getCacheManager()Lcom/novoda/imageloader/core/cache/CacheManager;

    move-result-object v4

    invoke-interface {v4, p1, p2, p3}, Lcom/novoda/imageloader/core/cache/CacheManager;->get(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 115
    .local v1, "bm":Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    .line 118
    :try_start_0
    iget-object v4, p0, Lcom/novoda/imageloader/core/ImageManager;->loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v4}, Lcom/novoda/imageloader/core/LoaderSettings;->getFileManager()Lcom/novoda/imageloader/core/file/FileManager;

    move-result-object v4

    invoke-interface {v4, p1, p2, p3}, Lcom/novoda/imageloader/core/file/FileManager;->getFile(Ljava/lang/String;II)Ljava/io/File;

    move-result-object v2

    .line 119
    .local v2, "imageFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 120
    iget-object v4, p0, Lcom/novoda/imageloader/core/ImageManager;->loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v4}, Lcom/novoda/imageloader/core/LoaderSettings;->getNetworkManager()Lcom/novoda/imageloader/core/network/NetworkManager;

    move-result-object v4

    invoke-interface {v4, p1, v2}, Lcom/novoda/imageloader/core/network/NetworkManager;->retrieveImage(Ljava/lang/String;Ljava/io/File;)V

    .line 123
    :cond_0
    iget-object v4, p0, Lcom/novoda/imageloader/core/ImageManager;->loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v4}, Lcom/novoda/imageloader/core/LoaderSettings;->isAlwaysUseOriginalSize()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 124
    iget-object v4, p0, Lcom/novoda/imageloader/core/ImageManager;->loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v4}, Lcom/novoda/imageloader/core/LoaderSettings;->getBitmapUtil()Lcom/novoda/imageloader/core/bitmap/BitmapUtil;

    move-result-object v4

    invoke-virtual {v4, v2, p2, p3}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->decodeFile(Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 129
    .local v0, "b":Landroid/graphics/Bitmap;
    :goto_0
    if-nez v0, :cond_1

    .line 131
    iget-object v4, p0, Lcom/novoda/imageloader/core/ImageManager;->loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v4}, Lcom/novoda/imageloader/core/LoaderSettings;->getCacheManager()Lcom/novoda/imageloader/core/cache/CacheManager;

    move-result-object v4

    invoke-interface {v4, p1, v0}, Lcom/novoda/imageloader/core/cache/CacheManager;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 141
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v2    # "imageFile":Ljava/io/File;
    :cond_1
    :goto_1
    return-void

    .line 126
    .restart local v2    # "imageFile":Ljava/io/File;
    :cond_2
    iget-object v4, p0, Lcom/novoda/imageloader/core/ImageManager;->loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v4}, Lcom/novoda/imageloader/core/LoaderSettings;->getBitmapUtil()Lcom/novoda/imageloader/core/bitmap/BitmapUtil;

    move-result-object v4

    iget-object v5, p0, Lcom/novoda/imageloader/core/ImageManager;->loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v5}, Lcom/novoda/imageloader/core/LoaderSettings;->isAllowUpsampling()Z

    move-result v5

    invoke-virtual {v4, v2, p2, p3, v5}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->decodeFileAndScale(Ljava/io/File;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Lcom/novoda/imageloader/core/exception/ImageNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .restart local v0    # "b":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 135
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v2    # "imageFile":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 137
    .local v3, "inf":Lcom/novoda/imageloader/core/exception/ImageNotFoundException;
    invoke-virtual {v3}, Lcom/novoda/imageloader/core/exception/ImageNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public getCacheManager()Lcom/novoda/imageloader/core/cache/CacheManager;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/novoda/imageloader/core/ImageManager;->loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v0}, Lcom/novoda/imageloader/core/LoaderSettings;->getCacheManager()Lcom/novoda/imageloader/core/cache/CacheManager;

    move-result-object v0

    return-object v0
.end method

.method public getFileManager()Lcom/novoda/imageloader/core/file/FileManager;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/novoda/imageloader/core/ImageManager;->loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v0}, Lcom/novoda/imageloader/core/LoaderSettings;->getFileManager()Lcom/novoda/imageloader/core/file/FileManager;

    move-result-object v0

    return-object v0
.end method

.method public getLoader()Lcom/novoda/imageloader/core/loader/Loader;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/novoda/imageloader/core/ImageManager;->loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v0}, Lcom/novoda/imageloader/core/LoaderSettings;->getLoader()Lcom/novoda/imageloader/core/loader/Loader;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkManager()Lcom/novoda/imageloader/core/network/NetworkManager;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/novoda/imageloader/core/ImageManager;->loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v0}, Lcom/novoda/imageloader/core/LoaderSettings;->getNetworkManager()Lcom/novoda/imageloader/core/network/NetworkManager;

    move-result-object v0

    return-object v0
.end method

.method public setOnImageLoadedListener(Lcom/novoda/imageloader/core/OnImageLoadedListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/novoda/imageloader/core/OnImageLoadedListener;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/novoda/imageloader/core/ImageManager;->onImageLoadedListeners:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/novoda/imageloader/core/ImageManager;->loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v0}, Lcom/novoda/imageloader/core/LoaderSettings;->getLoader()Lcom/novoda/imageloader/core/loader/Loader;

    move-result-object v1

    iget-object v0, p0, Lcom/novoda/imageloader/core/ImageManager;->onImageLoadedListeners:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-interface {v1, v0}, Lcom/novoda/imageloader/core/loader/Loader;->setLoadListener(Ljava/lang/ref/WeakReference;)V

    .line 92
    return-void
.end method

.method public unRegisterOnImageLoadedListener(Lcom/novoda/imageloader/core/OnImageLoadedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/novoda/imageloader/core/OnImageLoadedListener;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/novoda/imageloader/core/ImageManager;->onImageLoadedListeners:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    return-void
.end method
