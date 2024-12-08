.class public Lcom/novoda/imageloader/core/util/DirectLoader;
.super Ljava/lang/Object;
.source "DirectLoader.java"


# instance fields
.field private bitmapUtil:Lcom/novoda/imageloader/core/bitmap/BitmapUtil;

.field private networkManager:Lcom/novoda/imageloader/core/network/NetworkManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lcom/novoda/imageloader/core/network/UrlNetworkManager;

    new-instance v1, Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-direct {v1}, Lcom/novoda/imageloader/core/LoaderSettings;-><init>()V

    invoke-direct {v0, v1}, Lcom/novoda/imageloader/core/network/UrlNetworkManager;-><init>(Lcom/novoda/imageloader/core/LoaderSettings;)V

    new-instance v1, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;

    invoke-direct {v1}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/novoda/imageloader/core/util/DirectLoader;-><init>(Lcom/novoda/imageloader/core/network/NetworkManager;Lcom/novoda/imageloader/core/bitmap/BitmapUtil;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/novoda/imageloader/core/network/NetworkManager;Lcom/novoda/imageloader/core/bitmap/BitmapUtil;)V
    .locals 0
    .param p1, "networkManager"    # Lcom/novoda/imageloader/core/network/NetworkManager;
    .param p2, "bitmapUtil"    # Lcom/novoda/imageloader/core/bitmap/BitmapUtil;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/novoda/imageloader/core/util/DirectLoader;->networkManager:Lcom/novoda/imageloader/core/network/NetworkManager;

    .line 27
    iput-object p2, p0, Lcom/novoda/imageloader/core/util/DirectLoader;->bitmapUtil:Lcom/novoda/imageloader/core/bitmap/BitmapUtil;

    .line 28
    return-void
.end method


# virtual methods
.method public download(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 31
    if-nez p1, :cond_1

    .line 41
    :cond_0
    :goto_0
    return-object v1

    .line 34
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    iget-object v2, p0, Lcom/novoda/imageloader/core/util/DirectLoader;->networkManager:Lcom/novoda/imageloader/core/network/NetworkManager;

    invoke-interface {v2, p1}, Lcom/novoda/imageloader/core/network/NetworkManager;->retrieveInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 38
    .local v0, "is":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 41
    iget-object v1, p0, Lcom/novoda/imageloader/core/util/DirectLoader;->bitmapUtil:Lcom/novoda/imageloader/core/bitmap/BitmapUtil;

    invoke-virtual {v1, v0}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->decodeInputStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method
