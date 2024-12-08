.class public Lcom/novoda/imageloader/core/LoaderSettings$SettingsBuilder;
.super Ljava/lang/Object;
.source "LoaderSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/novoda/imageloader/core/LoaderSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsBuilder"
.end annotation


# instance fields
.field private settings:Lcom/novoda/imageloader/core/LoaderSettings;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    new-instance v0, Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-direct {v0}, Lcom/novoda/imageloader/core/LoaderSettings;-><init>()V

    iput-object v0, p0, Lcom/novoda/imageloader/core/LoaderSettings$SettingsBuilder;->settings:Lcom/novoda/imageloader/core/LoaderSettings;

    .line 283
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/novoda/imageloader/core/LoaderSettings$SettingsBuilder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 319
    iget-object v0, p0, Lcom/novoda/imageloader/core/LoaderSettings$SettingsBuilder;->settings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v0, p1, p2}, Lcom/novoda/imageloader/core/LoaderSettings;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    return-object p0
.end method

.method public build(Landroid/content/Context;)Lcom/novoda/imageloader/core/LoaderSettings;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 389
    new-instance v1, Lcom/novoda/imageloader/core/file/util/FileUtil;

    invoke-direct {v1}, Lcom/novoda/imageloader/core/file/util/FileUtil;-><init>()V

    new-instance v2, Lcom/novoda/imageloader/core/file/util/AndroidFileContext;

    invoke-direct {v2, p1}, Lcom/novoda/imageloader/core/file/util/AndroidFileContext;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/novoda/imageloader/core/file/util/FileUtil;->prepareCacheDirectory(Lcom/novoda/imageloader/core/file/util/AndroidFileContext;)Ljava/io/File;

    move-result-object v0

    .line 390
    .local v0, "dir":Ljava/io/File;
    iget-object v1, p0, Lcom/novoda/imageloader/core/LoaderSettings$SettingsBuilder;->settings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v1, v0}, Lcom/novoda/imageloader/core/LoaderSettings;->setCacheDir(Ljava/io/File;)V

    .line 391
    iget-object v1, p0, Lcom/novoda/imageloader/core/LoaderSettings$SettingsBuilder;->settings:Lcom/novoda/imageloader/core/LoaderSettings;

    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/novoda/imageloader/core/LoaderSettings;->setSdkVersion(Ljava/lang/String;)V

    .line 392
    iget-object v1, p0, Lcom/novoda/imageloader/core/LoaderSettings$SettingsBuilder;->settings:Lcom/novoda/imageloader/core/LoaderSettings;

    return-object v1
.end method

.method public withAsyncTasks(Z)Lcom/novoda/imageloader/core/LoaderSettings$SettingsBuilder;
    .locals 1
    .param p1, "useAsyncTasks"    # Z

    .prologue
    .line 339
    iget-object v0, p0, Lcom/novoda/imageloader/core/LoaderSettings$SettingsBuilder;->settings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v0, p1}, Lcom/novoda/imageloader/core/LoaderSettings;->setUseAsyncTasks(Z)V

    .line 340
    return-object p0
.end method

.method public withCacheDir(Ljava/io/File;)Lcom/novoda/imageloader/core/LoaderSettings$SettingsBuilder;
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 344
    iget-object v0, p0, Lcom/novoda/imageloader/core/LoaderSettings$SettingsBuilder;->settings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v0, p1}, Lcom/novoda/imageloader/core/LoaderSettings;->setCacheDir(Ljava/io/File;)V

    .line 345
    return-object p0
.end method

.method public withCacheManager(Lcom/novoda/imageloader/core/cache/CacheManager;)Lcom/novoda/imageloader/core/LoaderSettings$SettingsBuilder;
    .locals 1
    .param p1, "cacheManager"    # Lcom/novoda/imageloader/core/cache/CacheManager;

    .prologue
    .line 329
    iget-object v0, p0, Lcom/novoda/imageloader/core/LoaderSettings$SettingsBuilder;->settings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v0, p1}, Lcom/novoda/imageloader/core/LoaderSettings;->setCacheManager(Lcom/novoda/imageloader/core/cache/CacheManager;)V

    .line 330
    return-object p0
.end method

.method public withConnectionTimeout(I)Lcom/novoda/imageloader/core/LoaderSettings$SettingsBuilder;
    .locals 1
    .param p1, "connectionTimeout"    # I

    .prologue
    .line 309
    iget-object v0, p0, Lcom/novoda/imageloader/core/LoaderSettings$SettingsBuilder;->settings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v0, p1}, Lcom/novoda/imageloader/core/LoaderSettings;->setConnectionTimeout(I)V

    .line 310
    return-object p0
.end method

.method public withDisconnectOnEveryCall(Z)Lcom/novoda/imageloader/core/LoaderSettings$SettingsBuilder;
    .locals 1
    .param p1, "disconnectOnEveryCall"    # Z

    .prologue
    .line 324
    iget-object v0, p0, Lcom/novoda/imageloader/core/LoaderSettings$SettingsBuilder;->settings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v0, p1}, Lcom/novoda/imageloader/core/LoaderSettings;->setDisconnectOnEveryCall(Z)V

    .line 325
    return-object p0
.end method

.method public withEnableQueryInHashGeneration(Z)Lcom/novoda/imageloader/core/LoaderSettings$SettingsBuilder;
    .locals 1
    .param p1, "enableQueryInHashGeneration"    # Z

    .prologue
    .line 304
    iget-object v0, p0, Lcom/novoda/imageloader/core/LoaderSettings$SettingsBuilder;->settings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v0, p1}, Lcom/novoda/imageloader/core/LoaderSettings;->setQueryIncludedInHash(Z)V

    .line 305
    return-object p0
.end method

.method public withExpirationPeriod(J)Lcom/novoda/imageloader/core/LoaderSettings$SettingsBuilder;
    .locals 1
    .param p1, "timePeriodInMillis"    # J

    .prologue
    .line 292
    iget-object v0, p0, Lcom/novoda/imageloader/core/LoaderSettings$SettingsBuilder;->settings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v0, p1, p2}, Lcom/novoda/imageloader/core/LoaderSettings;->setExpirationPeriod(J)V

    .line 293
    return-object p0
.end method

.method public withFileManager(Lcom/novoda/imageloader/core/file/FileManager;)Lcom/novoda/imageloader/core/LoaderSettings$SettingsBuilder;
    .locals 1
    .param p1, "fileManager"    # Lcom/novoda/imageloader/core/file/FileManager;

    .prologue
    .line 374
    iget-object v0, p0, Lcom/novoda/imageloader/core/LoaderSettings$SettingsBuilder;->settings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v0, p1}, Lcom/novoda/imageloader/core/LoaderSettings;->setFileManager(Lcom/novoda/imageloader/core/file/FileManager;)V

    .line 375
    return-object p0
.end method

.method public withLoader(Lcom/novoda/imageloader/core/loader/Loader;)Lcom/novoda/imageloader/core/LoaderSettings$SettingsBuilder;
    .locals 1
    .param p1, "loader"    # Lcom/novoda/imageloader/core/loader/Loader;

    .prologue
    .line 384
    iget-object v0, p0, Lcom/novoda/imageloader/core/LoaderSettings$SettingsBuilder;->settings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-static {v0, p1}, Lcom/novoda/imageloader/core/LoaderSettings;->access$000(Lcom/novoda/imageloader/core/LoaderSettings;Lcom/novoda/imageloader/core/loader/Loader;)V

    .line 385
    return-object p0
.end method

.method public withNetworkManager(Lcom/novoda/imageloader/core/network/NetworkManager;)Lcom/novoda/imageloader/core/LoaderSettings$SettingsBuilder;
    .locals 1
    .param p1, "networkManager"    # Lcom/novoda/imageloader/core/network/NetworkManager;

    .prologue
    .line 379
    iget-object v0, p0, Lcom/novoda/imageloader/core/LoaderSettings$SettingsBuilder;->settings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v0, p1}, Lcom/novoda/imageloader/core/LoaderSettings;->setNetworkManager(Lcom/novoda/imageloader/core/network/NetworkManager;)V

    .line 380
    return-object p0
.end method

.method public withReadTimeout(I)Lcom/novoda/imageloader/core/LoaderSettings$SettingsBuilder;
    .locals 1
    .param p1, "readTimeout"    # I

    .prologue
    .line 314
    iget-object v0, p0, Lcom/novoda/imageloader/core/LoaderSettings$SettingsBuilder;->settings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v0, p1}, Lcom/novoda/imageloader/core/LoaderSettings;->setReadTimeout(I)V

    .line 315
    return-object p0
.end method

.method public withResCacheManager(Lcom/novoda/imageloader/core/cache/CacheManager;)Lcom/novoda/imageloader/core/LoaderSettings$SettingsBuilder;
    .locals 1
    .param p1, "resCacheManager"    # Lcom/novoda/imageloader/core/cache/CacheManager;

    .prologue
    .line 334
    iget-object v0, p0, Lcom/novoda/imageloader/core/LoaderSettings$SettingsBuilder;->settings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v0, p1}, Lcom/novoda/imageloader/core/LoaderSettings;->setResCacheManager(Lcom/novoda/imageloader/core/cache/CacheManager;)V

    .line 335
    return-object p0
.end method

.method public withUpsampling(Z)Lcom/novoda/imageloader/core/LoaderSettings$SettingsBuilder;
    .locals 1
    .param p1, "allowUpsampling"    # Z

    .prologue
    .line 357
    iget-object v0, p0, Lcom/novoda/imageloader/core/LoaderSettings$SettingsBuilder;->settings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v0, p1}, Lcom/novoda/imageloader/core/LoaderSettings;->setAllowUpsampling(Z)V

    .line 358
    return-object p0
.end method

.method public withoutResizing(Z)Lcom/novoda/imageloader/core/LoaderSettings$SettingsBuilder;
    .locals 1
    .param p1, "alwaysUseOriginalSize"    # Z

    .prologue
    .line 369
    iget-object v0, p0, Lcom/novoda/imageloader/core/LoaderSettings$SettingsBuilder;->settings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v0, p1}, Lcom/novoda/imageloader/core/LoaderSettings;->setAlwaysUseOriginalSize(Z)V

    .line 370
    return-object p0
.end method
