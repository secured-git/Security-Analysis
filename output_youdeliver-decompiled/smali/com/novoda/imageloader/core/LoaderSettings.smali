.class public Lcom/novoda/imageloader/core/LoaderSettings;
.super Ljava/lang/Object;
.source "LoaderSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/novoda/imageloader/core/LoaderSettings$SettingsBuilder;
    }
.end annotation


# static fields
.field private static final DEFAULT_ALLOW_UPSAMPLING:Z = false

.field private static final DEFAULT_ALWAYS_USE_ORIGINAL_SIZE:Z = false

.field private static final DEFAULT_CONNECTION_TIMEOUT:I = 0x2710

.field private static final DEFAULT_DISCONNECT_ON_EVERY_CALL:Z = false

.field private static final DEFAULT_EXPIRATION_PERIOD:J = 0x240c8400L

.field private static final DEFAULT_INCLUDE_QUERY_IN_HASH:Z = true

.field private static final DEFAULT_READ_TIMEOUT:I = 0x2710

.field private static final DEFAULT_USE_ASYNC_TASKS:Z = true


# instance fields
.field private allowUpsampling:Z

.field private alwaysUseOriginalSize:Z

.field private final bitmapUtil:Lcom/novoda/imageloader/core/bitmap/BitmapUtil;

.field private cacheDir:Ljava/io/File;

.field private cacheManager:Lcom/novoda/imageloader/core/cache/CacheManager;

.field private connectionTimeout:I

.field private disconnectOnEveryCall:Z

.field private expirationPeriod:J

.field private fileManager:Lcom/novoda/imageloader/core/file/FileManager;

.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isQueryIncludedInHash:Z

.field private loader:Lcom/novoda/imageloader/core/loader/Loader;

.field private networkManager:Lcom/novoda/imageloader/core/network/NetworkManager;

.field private readTimeout:I

.field private resCacheManager:Lcom/novoda/imageloader/core/cache/CacheManager;

.field private sdkVersion:Ljava/lang/String;

.field private useAsyncTasks:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x2710

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;

    invoke-direct {v0}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;-><init>()V

    iput-object v0, p0, Lcom/novoda/imageloader/core/LoaderSettings;->bitmapUtil:Lcom/novoda/imageloader/core/bitmap/BitmapUtil;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/novoda/imageloader/core/LoaderSettings;->headers:Ljava/util/Map;

    .line 81
    const-wide/32 v0, 0x240c8400

    invoke-virtual {p0, v0, v1}, Lcom/novoda/imageloader/core/LoaderSettings;->setExpirationPeriod(J)V

    .line 82
    invoke-virtual {p0, v3}, Lcom/novoda/imageloader/core/LoaderSettings;->setQueryIncludedInHash(Z)V

    .line 83
    invoke-virtual {p0, v4}, Lcom/novoda/imageloader/core/LoaderSettings;->setConnectionTimeout(I)V

    .line 84
    invoke-virtual {p0, v4}, Lcom/novoda/imageloader/core/LoaderSettings;->setReadTimeout(I)V

    .line 85
    invoke-virtual {p0, v2}, Lcom/novoda/imageloader/core/LoaderSettings;->setDisconnectOnEveryCall(Z)V

    .line 86
    invoke-virtual {p0, v3}, Lcom/novoda/imageloader/core/LoaderSettings;->setUseAsyncTasks(Z)V

    .line 87
    invoke-virtual {p0, v2}, Lcom/novoda/imageloader/core/LoaderSettings;->setAllowUpsampling(Z)V

    .line 88
    invoke-virtual {p0, v2}, Lcom/novoda/imageloader/core/LoaderSettings;->setAlwaysUseOriginalSize(Z)V

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/novoda/imageloader/core/LoaderSettings;Lcom/novoda/imageloader/core/loader/Loader;)V
    .locals 0
    .param p0, "x0"    # Lcom/novoda/imageloader/core/LoaderSettings;
    .param p1, "x1"    # Lcom/novoda/imageloader/core/loader/Loader;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/novoda/imageloader/core/LoaderSettings;->setLoader(Lcom/novoda/imageloader/core/loader/Loader;)V

    return-void
.end method

.method private setLoader(Lcom/novoda/imageloader/core/loader/Loader;)V
    .locals 0
    .param p1, "loader"    # Lcom/novoda/imageloader/core/loader/Loader;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/novoda/imageloader/core/LoaderSettings;->loader:Lcom/novoda/imageloader/core/loader/Loader;

    .line 227
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/novoda/imageloader/core/LoaderSettings;->headers:Ljava/util/Map;

    const-string v1, "UTF8"

    invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getBitmapUtil()Lcom/novoda/imageloader/core/bitmap/BitmapUtil;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/novoda/imageloader/core/LoaderSettings;->bitmapUtil:Lcom/novoda/imageloader/core/bitmap/BitmapUtil;

    return-object v0
.end method

.method public getCacheDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/novoda/imageloader/core/LoaderSettings;->cacheDir:Ljava/io/File;

    return-object v0
.end method

.method public getCacheManager()Lcom/novoda/imageloader/core/cache/CacheManager;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/novoda/imageloader/core/LoaderSettings;->cacheManager:Lcom/novoda/imageloader/core/cache/CacheManager;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Lcom/novoda/imageloader/core/cache/SoftMapCache;

    invoke-direct {v0}, Lcom/novoda/imageloader/core/cache/SoftMapCache;-><init>()V

    iput-object v0, p0, Lcom/novoda/imageloader/core/LoaderSettings;->cacheManager:Lcom/novoda/imageloader/core/cache/CacheManager;

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/novoda/imageloader/core/LoaderSettings;->cacheManager:Lcom/novoda/imageloader/core/cache/CacheManager;

    return-object v0
.end method

.method public getConnectionTimeout()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/novoda/imageloader/core/LoaderSettings;->connectionTimeout:I

    return v0
.end method

.method public getDisconnectOnEveryCall()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/novoda/imageloader/core/LoaderSettings;->disconnectOnEveryCall:Z

    return v0
.end method

.method public getExpirationPeriod()J
    .locals 2

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/novoda/imageloader/core/LoaderSettings;->expirationPeriod:J

    return-wide v0
.end method

.method public getFileManager()Lcom/novoda/imageloader/core/file/FileManager;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/novoda/imageloader/core/LoaderSettings;->fileManager:Lcom/novoda/imageloader/core/file/FileManager;

    if-nez v0, :cond_0

    .line 208
    new-instance v0, Lcom/novoda/imageloader/core/file/BasicFileManager;

    invoke-direct {v0, p0}, Lcom/novoda/imageloader/core/file/BasicFileManager;-><init>(Lcom/novoda/imageloader/core/LoaderSettings;)V

    iput-object v0, p0, Lcom/novoda/imageloader/core/LoaderSettings;->fileManager:Lcom/novoda/imageloader/core/file/FileManager;

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/novoda/imageloader/core/LoaderSettings;->fileManager:Lcom/novoda/imageloader/core/file/FileManager;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/novoda/imageloader/core/LoaderSettings;->headers:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLoader()Lcom/novoda/imageloader/core/loader/Loader;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/novoda/imageloader/core/LoaderSettings;->loader:Lcom/novoda/imageloader/core/loader/Loader;

    if-nez v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/novoda/imageloader/core/LoaderSettings;->isUseAsyncTasks()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    new-instance v0, Lcom/novoda/imageloader/core/loader/ConcurrentLoader;

    invoke-direct {v0, p0}, Lcom/novoda/imageloader/core/loader/ConcurrentLoader;-><init>(Lcom/novoda/imageloader/core/LoaderSettings;)V

    iput-object v0, p0, Lcom/novoda/imageloader/core/LoaderSettings;->loader:Lcom/novoda/imageloader/core/loader/Loader;

    .line 237
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/novoda/imageloader/core/LoaderSettings;->loader:Lcom/novoda/imageloader/core/loader/Loader;

    return-object v0

    .line 234
    :cond_1
    new-instance v0, Lcom/novoda/imageloader/core/loader/SimpleLoader;

    invoke-direct {v0, p0}, Lcom/novoda/imageloader/core/loader/SimpleLoader;-><init>(Lcom/novoda/imageloader/core/LoaderSettings;)V

    iput-object v0, p0, Lcom/novoda/imageloader/core/LoaderSettings;->loader:Lcom/novoda/imageloader/core/loader/Loader;

    goto :goto_0
.end method

.method public getNetworkManager()Lcom/novoda/imageloader/core/network/NetworkManager;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/novoda/imageloader/core/LoaderSettings;->networkManager:Lcom/novoda/imageloader/core/network/NetworkManager;

    if-nez v0, :cond_0

    .line 197
    new-instance v0, Lcom/novoda/imageloader/core/network/UrlNetworkManager;

    invoke-direct {v0, p0}, Lcom/novoda/imageloader/core/network/UrlNetworkManager;-><init>(Lcom/novoda/imageloader/core/LoaderSettings;)V

    iput-object v0, p0, Lcom/novoda/imageloader/core/LoaderSettings;->networkManager:Lcom/novoda/imageloader/core/network/NetworkManager;

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/novoda/imageloader/core/LoaderSettings;->networkManager:Lcom/novoda/imageloader/core/network/NetworkManager;

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/novoda/imageloader/core/LoaderSettings;->readTimeout:I

    return v0
.end method

.method public getResCacheManager()Lcom/novoda/imageloader/core/cache/CacheManager;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/novoda/imageloader/core/LoaderSettings;->resCacheManager:Lcom/novoda/imageloader/core/cache/CacheManager;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Lcom/novoda/imageloader/core/cache/SoftMapCache;

    invoke-direct {v0}, Lcom/novoda/imageloader/core/cache/SoftMapCache;-><init>()V

    iput-object v0, p0, Lcom/novoda/imageloader/core/LoaderSettings;->resCacheManager:Lcom/novoda/imageloader/core/cache/CacheManager;

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/novoda/imageloader/core/LoaderSettings;->resCacheManager:Lcom/novoda/imageloader/core/cache/CacheManager;

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/novoda/imageloader/core/LoaderSettings;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public isAllowUpsampling()Z
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/novoda/imageloader/core/LoaderSettings;->allowUpsampling:Z

    return v0
.end method

.method public isAlwaysUseOriginalSize()Z
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/novoda/imageloader/core/LoaderSettings;->alwaysUseOriginalSize:Z

    return v0
.end method

.method public isCleanOnSetup()Z
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x1

    return v0
.end method

.method public isQueryIncludedInHash()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/novoda/imageloader/core/LoaderSettings;->isQueryIncludedInHash:Z

    return v0
.end method

.method public isUseAsyncTasks()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/novoda/imageloader/core/LoaderSettings;->useAsyncTasks:Z

    return v0
.end method

.method public setAllowUpsampling(Z)V
    .locals 0
    .param p1, "allowUpsampling"    # Z

    .prologue
    .line 256
    iput-boolean p1, p0, Lcom/novoda/imageloader/core/LoaderSettings;->allowUpsampling:Z

    .line 257
    return-void
.end method

.method public setAlwaysUseOriginalSize(Z)V
    .locals 0
    .param p1, "alwaysUseOriginalSize"    # Z

    .prologue
    .line 271
    iput-boolean p1, p0, Lcom/novoda/imageloader/core/LoaderSettings;->alwaysUseOriginalSize:Z

    .line 272
    return-void
.end method

.method public setCacheDir(Ljava/io/File;)V
    .locals 0
    .param p1, "cacheDir"    # Ljava/io/File;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/novoda/imageloader/core/LoaderSettings;->cacheDir:Ljava/io/File;

    .line 101
    return-void
.end method

.method public setCacheManager(Lcom/novoda/imageloader/core/cache/CacheManager;)V
    .locals 0
    .param p1, "cacheManager"    # Lcom/novoda/imageloader/core/cache/CacheManager;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/novoda/imageloader/core/LoaderSettings;->cacheManager:Lcom/novoda/imageloader/core/cache/CacheManager;

    .line 182
    return-void
.end method

.method public setConnectionTimeout(I)V
    .locals 0
    .param p1, "connectionTimeout"    # I

    .prologue
    .line 135
    iput p1, p0, Lcom/novoda/imageloader/core/LoaderSettings;->connectionTimeout:I

    .line 136
    return-void
.end method

.method public setDisconnectOnEveryCall(Z)V
    .locals 0
    .param p1, "disconnectOnEveryCall"    # Z

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/novoda/imageloader/core/LoaderSettings;->disconnectOnEveryCall:Z

    .line 163
    return-void
.end method

.method public setExpirationPeriod(J)V
    .locals 1
    .param p1, "expirationPeriod"    # J

    .prologue
    .line 112
    iput-wide p1, p0, Lcom/novoda/imageloader/core/LoaderSettings;->expirationPeriod:J

    .line 113
    return-void
.end method

.method public setFileManager(Lcom/novoda/imageloader/core/file/FileManager;)V
    .locals 0
    .param p1, "fileManager"    # Lcom/novoda/imageloader/core/file/FileManager;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/novoda/imageloader/core/LoaderSettings;->fileManager:Lcom/novoda/imageloader/core/file/FileManager;

    .line 215
    return-void
.end method

.method public setNetworkManager(Lcom/novoda/imageloader/core/network/NetworkManager;)V
    .locals 0
    .param p1, "networkManager"    # Lcom/novoda/imageloader/core/network/NetworkManager;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/novoda/imageloader/core/LoaderSettings;->networkManager:Lcom/novoda/imageloader/core/network/NetworkManager;

    .line 204
    return-void
.end method

.method public setQueryIncludedInHash(Z)V
    .locals 0
    .param p1, "isQueryIncludedInHash"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/novoda/imageloader/core/LoaderSettings;->isQueryIncludedInHash:Z

    .line 128
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 0
    .param p1, "readTimeout"    # I

    .prologue
    .line 143
    iput p1, p0, Lcom/novoda/imageloader/core/LoaderSettings;->readTimeout:I

    .line 144
    return-void
.end method

.method public setResCacheManager(Lcom/novoda/imageloader/core/cache/CacheManager;)V
    .locals 0
    .param p1, "resCacheManager"    # Lcom/novoda/imageloader/core/cache/CacheManager;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/novoda/imageloader/core/LoaderSettings;->resCacheManager:Lcom/novoda/imageloader/core/cache/CacheManager;

    .line 193
    return-void
.end method

.method public setSdkVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "sdkVersion"    # Ljava/lang/String;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/novoda/imageloader/core/LoaderSettings;->sdkVersion:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setUseAsyncTasks(Z)V
    .locals 0
    .param p1, "useAsyncTasks"    # Z

    .prologue
    .line 222
    iput-boolean p1, p0, Lcom/novoda/imageloader/core/LoaderSettings;->useAsyncTasks:Z

    .line 223
    return-void
.end method
