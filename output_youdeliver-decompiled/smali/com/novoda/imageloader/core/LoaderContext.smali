.class public Lcom/novoda/imageloader/core/LoaderContext;
.super Ljava/lang/Object;
.source "LoaderContext.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final bitmapUtil:Lcom/novoda/imageloader/core/bitmap/BitmapUtil;

.field private cache:Lcom/novoda/imageloader/core/cache/CacheManager;

.field private fileManager:Lcom/novoda/imageloader/core/file/FileManager;

.field private listenerKey:I

.field private networkManager:Lcom/novoda/imageloader/core/network/NetworkManager;

.field private resBitmapCache:Lcom/novoda/imageloader/core/cache/CacheManager;

.field private settings:Lcom/novoda/imageloader/core/LoaderSettings;

.field private final weakListeners:Ljava/util/Map;
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
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;

    invoke-direct {v0}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;-><init>()V

    iput-object v0, p0, Lcom/novoda/imageloader/core/LoaderContext;->bitmapUtil:Lcom/novoda/imageloader/core/bitmap/BitmapUtil;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/novoda/imageloader/core/LoaderContext;->weakListeners:Ljava/util/Map;

    .line 46
    return-void
.end method


# virtual methods
.method public getBitmapUtil()Lcom/novoda/imageloader/core/bitmap/BitmapUtil;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/novoda/imageloader/core/LoaderContext;->bitmapUtil:Lcom/novoda/imageloader/core/bitmap/BitmapUtil;

    return-object v0
.end method

.method public getCache()Lcom/novoda/imageloader/core/cache/CacheManager;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/novoda/imageloader/core/LoaderContext;->cache:Lcom/novoda/imageloader/core/cache/CacheManager;

    return-object v0
.end method

.method public getFileManager()Lcom/novoda/imageloader/core/file/FileManager;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/novoda/imageloader/core/LoaderContext;->fileManager:Lcom/novoda/imageloader/core/file/FileManager;

    return-object v0
.end method

.method public getListener()Ljava/lang/ref/WeakReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/novoda/imageloader/core/OnImageLoadedListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/novoda/imageloader/core/LoaderContext;->weakListeners:Ljava/util/Map;

    iget v1, p0, Lcom/novoda/imageloader/core/LoaderContext;->listenerKey:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public getNetworkManager()Lcom/novoda/imageloader/core/network/NetworkManager;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/novoda/imageloader/core/LoaderContext;->networkManager:Lcom/novoda/imageloader/core/network/NetworkManager;

    return-object v0
.end method

.method public getResBitmapCache()Lcom/novoda/imageloader/core/cache/CacheManager;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/novoda/imageloader/core/LoaderContext;->resBitmapCache:Lcom/novoda/imageloader/core/cache/CacheManager;

    return-object v0
.end method

.method public getSettings()Lcom/novoda/imageloader/core/LoaderSettings;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/novoda/imageloader/core/LoaderContext;->settings:Lcom/novoda/imageloader/core/LoaderSettings;

    return-object v0
.end method

.method public removeOnImageLoadedListener(I)V
    .locals 2
    .param p1, "listenerKey"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lcom/novoda/imageloader/core/LoaderContext;->weakListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    return-void
.end method

.method public setCache(Lcom/novoda/imageloader/core/cache/CacheManager;)V
    .locals 0
    .param p1, "cache"    # Lcom/novoda/imageloader/core/cache/CacheManager;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/novoda/imageloader/core/LoaderContext;->cache:Lcom/novoda/imageloader/core/cache/CacheManager;

    .line 86
    return-void
.end method

.method public setFileManager(Lcom/novoda/imageloader/core/file/FileManager;)V
    .locals 0
    .param p1, "fileManager"    # Lcom/novoda/imageloader/core/file/FileManager;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/novoda/imageloader/core/LoaderContext;->fileManager:Lcom/novoda/imageloader/core/file/FileManager;

    .line 54
    return-void
.end method

.method public setListener(Lcom/novoda/imageloader/core/OnImageLoadedListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/novoda/imageloader/core/OnImageLoadedListener;

    .prologue
    .line 93
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, p0, Lcom/novoda/imageloader/core/LoaderContext;->listenerKey:I

    .line 94
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 95
    .local v0, "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/novoda/imageloader/core/OnImageLoadedListener;>;"
    iget-object v1, p0, Lcom/novoda/imageloader/core/LoaderContext;->weakListeners:Ljava/util/Map;

    iget v2, p0, Lcom/novoda/imageloader/core/LoaderContext;->listenerKey:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    return-void
.end method

.method public setNetworkManager(Lcom/novoda/imageloader/core/network/NetworkManager;)V
    .locals 0
    .param p1, "networkManager"    # Lcom/novoda/imageloader/core/network/NetworkManager;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/novoda/imageloader/core/LoaderContext;->networkManager:Lcom/novoda/imageloader/core/network/NetworkManager;

    .line 62
    return-void
.end method

.method public setResBitmapCache(Lcom/novoda/imageloader/core/cache/CacheManager;)V
    .locals 0
    .param p1, "resBitmapCache"    # Lcom/novoda/imageloader/core/cache/CacheManager;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/novoda/imageloader/core/LoaderContext;->resBitmapCache:Lcom/novoda/imageloader/core/cache/CacheManager;

    .line 78
    return-void
.end method

.method public setSettings(Lcom/novoda/imageloader/core/LoaderSettings;)V
    .locals 0
    .param p1, "settings"    # Lcom/novoda/imageloader/core/LoaderSettings;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/novoda/imageloader/core/LoaderContext;->settings:Lcom/novoda/imageloader/core/LoaderSettings;

    .line 70
    return-void
.end method
