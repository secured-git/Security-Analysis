.class public Lcom/novoda/imageloader/core/network/UrlNetworkManager;
.super Ljava/lang/Object;
.source "UrlNetworkManager.java"

# interfaces
.implements Lcom/novoda/imageloader/core/network/NetworkManager;


# static fields
.field private static final TEMP_REDIRECT:I = 0x133


# instance fields
.field private fileUtil:Lcom/novoda/imageloader/core/file/util/FileUtil;

.field private manualRedirects:I

.field private settings:Lcom/novoda/imageloader/core/LoaderSettings;


# direct methods
.method public constructor <init>(Lcom/novoda/imageloader/core/LoaderSettings;)V
    .locals 1
    .param p1, "settings"    # Lcom/novoda/imageloader/core/LoaderSettings;

    .prologue
    .line 39
    new-instance v0, Lcom/novoda/imageloader/core/file/util/FileUtil;

    invoke-direct {v0}, Lcom/novoda/imageloader/core/file/util/FileUtil;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/novoda/imageloader/core/network/UrlNetworkManager;-><init>(Lcom/novoda/imageloader/core/LoaderSettings;Lcom/novoda/imageloader/core/file/util/FileUtil;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/novoda/imageloader/core/LoaderSettings;Lcom/novoda/imageloader/core/file/util/FileUtil;)V
    .locals 0
    .param p1, "settings"    # Lcom/novoda/imageloader/core/LoaderSettings;
    .param p2, "fileUtil"    # Lcom/novoda/imageloader/core/file/util/FileUtil;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/novoda/imageloader/core/network/UrlNetworkManager;->settings:Lcom/novoda/imageloader/core/LoaderSettings;

    .line 44
    iput-object p2, p0, Lcom/novoda/imageloader/core/network/UrlNetworkManager;->fileUtil:Lcom/novoda/imageloader/core/file/util/FileUtil;

    .line 45
    return-void
.end method

.method private applyChangeonSdkVersion(Ljava/lang/String;)V
    .locals 2
    .param p1, "sdkVersion"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 119
    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    :cond_0
    return-void
.end method

.method private handleHeaders(Ljava/net/HttpURLConnection;)V
    .locals 4
    .param p1, "conn"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 82
    iget-object v3, p0, Lcom/novoda/imageloader/core/network/UrlNetworkManager;->settings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v3}, Lcom/novoda/imageloader/core/LoaderSettings;->getHeaders()Ljava/util/Map;

    move-result-object v0

    .line 83
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 84
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 85
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method protected openConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->openConnection(Ljava/net/URLConnection;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public redirectManually(Ljava/io/File;Ljava/net/HttpURLConnection;)V
    .locals 2
    .param p1, "f"    # Ljava/io/File;
    .param p2, "conn"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 91
    iget v0, p0, Lcom/novoda/imageloader/core/network/UrlNetworkManager;->manualRedirects:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/novoda/imageloader/core/network/UrlNetworkManager;->manualRedirects:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 92
    const-string v0, "Location"

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/novoda/imageloader/core/network/UrlNetworkManager;->retrieveImage(Ljava/lang/String;Ljava/io/File;)V

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/novoda/imageloader/core/network/UrlNetworkManager;->manualRedirects:I

    goto :goto_0
.end method

.method public retrieveImage(Ljava/lang/String;Ljava/io/File;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "f"    # Ljava/io/File;

    .prologue
    .line 49
    const/4 v3, 0x0

    .line 50
    .local v3, "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 51
    .local v4, "os":Ljava/io/OutputStream;
    const/4 v0, 0x0

    .line 52
    .local v0, "conn":Ljava/net/HttpURLConnection;
    iget-object v6, p0, Lcom/novoda/imageloader/core/network/UrlNetworkManager;->settings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v6}, Lcom/novoda/imageloader/core/LoaderSettings;->getSdkVersion()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/novoda/imageloader/core/network/UrlNetworkManager;->applyChangeonSdkVersion(Ljava/lang/String;)V

    .line 54
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/novoda/imageloader/core/network/UrlNetworkManager;->openConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 55
    iget-object v6, p0, Lcom/novoda/imageloader/core/network/UrlNetworkManager;->settings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v6}, Lcom/novoda/imageloader/core/LoaderSettings;->getConnectionTimeout()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 56
    iget-object v6, p0, Lcom/novoda/imageloader/core/network/UrlNetworkManager;->settings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v6}, Lcom/novoda/imageloader/core/LoaderSettings;->getReadTimeout()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 58
    invoke-direct {p0, v0}, Lcom/novoda/imageloader/core/network/UrlNetworkManager;->handleHeaders(Ljava/net/HttpURLConnection;)V

    .line 60
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    const/16 v7, 0x133

    if-ne v6, v7, :cond_1

    .line 61
    invoke-virtual {p0, p2, v0}, Lcom/novoda/imageloader/core/network/UrlNetworkManager;->redirectManually(Ljava/io/File;Ljava/net/HttpURLConnection;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :goto_0
    if-eqz v0, :cond_0

    iget-object v6, p0, Lcom/novoda/imageloader/core/network/UrlNetworkManager;->settings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v6}, Lcom/novoda/imageloader/core/LoaderSettings;->getDisconnectOnEveryCall()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 74
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 76
    :cond_0
    iget-object v6, p0, Lcom/novoda/imageloader/core/network/UrlNetworkManager;->fileUtil:Lcom/novoda/imageloader/core/file/util/FileUtil;

    invoke-virtual {v6, v3}, Lcom/novoda/imageloader/core/file/util/FileUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 77
    iget-object v6, p0, Lcom/novoda/imageloader/core/network/UrlNetworkManager;->fileUtil:Lcom/novoda/imageloader/core/file/util/FileUtil;

    invoke-virtual {v6, v4}, Lcom/novoda/imageloader/core/file/util/FileUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 79
    :goto_1
    return-void

    .line 63
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 64
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    .end local v4    # "os":Ljava/io/OutputStream;
    .local v5, "os":Ljava/io/OutputStream;
    :try_start_2
    iget-object v6, p0, Lcom/novoda/imageloader/core/network/UrlNetworkManager;->fileUtil:Lcom/novoda/imageloader/core/file/util/FileUtil;

    invoke-virtual {v6, v3, v5}, Lcom/novoda/imageloader/core/file/util/FileUtil;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v4, v5

    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    goto :goto_0

    .line 67
    :catch_0
    move-exception v2

    .line 68
    .local v2, "fnfe":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    new-instance v6, Lcom/novoda/imageloader/core/exception/ImageNotFoundException;

    invoke-direct {v6}, Lcom/novoda/imageloader/core/exception/ImageNotFoundException;-><init>()V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 73
    .end local v2    # "fnfe":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v0, :cond_2

    iget-object v7, p0, Lcom/novoda/imageloader/core/network/UrlNetworkManager;->settings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v7}, Lcom/novoda/imageloader/core/LoaderSettings;->getDisconnectOnEveryCall()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 74
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 76
    :cond_2
    iget-object v7, p0, Lcom/novoda/imageloader/core/network/UrlNetworkManager;->fileUtil:Lcom/novoda/imageloader/core/file/util/FileUtil;

    invoke-virtual {v7, v3}, Lcom/novoda/imageloader/core/file/util/FileUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 77
    iget-object v7, p0, Lcom/novoda/imageloader/core/network/UrlNetworkManager;->fileUtil:Lcom/novoda/imageloader/core/file/util/FileUtil;

    invoke-virtual {v7, v4}, Lcom/novoda/imageloader/core/file/util/FileUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v6

    .line 69
    :catch_1
    move-exception v1

    .line 70
    .local v1, "ex":Ljava/lang/Throwable;
    :goto_4
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 73
    if-eqz v0, :cond_3

    iget-object v6, p0, Lcom/novoda/imageloader/core/network/UrlNetworkManager;->settings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v6}, Lcom/novoda/imageloader/core/LoaderSettings;->getDisconnectOnEveryCall()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 74
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 76
    :cond_3
    iget-object v6, p0, Lcom/novoda/imageloader/core/network/UrlNetworkManager;->fileUtil:Lcom/novoda/imageloader/core/file/util/FileUtil;

    invoke-virtual {v6, v3}, Lcom/novoda/imageloader/core/file/util/FileUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 77
    iget-object v6, p0, Lcom/novoda/imageloader/core/network/UrlNetworkManager;->fileUtil:Lcom/novoda/imageloader/core/file/util/FileUtil;

    invoke-virtual {v6, v4}, Lcom/novoda/imageloader/core/file/util/FileUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    .line 73
    .end local v1    # "ex":Ljava/lang/Throwable;
    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    goto :goto_3

    .line 69
    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    :catch_2
    move-exception v1

    move-object v4, v5

    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    goto :goto_4

    .line 67
    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    :catch_3
    move-exception v2

    move-object v4, v5

    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    goto :goto_2
.end method

.method public retrieveInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 102
    .local v0, "conn":Ljava/net/HttpURLConnection;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/novoda/imageloader/core/network/UrlNetworkManager;->openConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 103
    iget-object v3, p0, Lcom/novoda/imageloader/core/network/UrlNetworkManager;->settings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v3}, Lcom/novoda/imageloader/core/LoaderSettings;->getConnectionTimeout()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 104
    iget-object v3, p0, Lcom/novoda/imageloader/core/network/UrlNetworkManager;->settings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v3}, Lcom/novoda/imageloader/core/LoaderSettings;->getReadTimeout()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 105
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 109
    :goto_0
    return-object v3

    .line 106
    :catch_0
    move-exception v2

    .line 107
    .local v2, "fnfe":Ljava/io/FileNotFoundException;
    new-instance v3, Lcom/novoda/imageloader/core/exception/ImageNotFoundException;

    invoke-direct {v3}, Lcom/novoda/imageloader/core/exception/ImageNotFoundException;-><init>()V

    throw v3

    .line 108
    .end local v2    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 109
    .local v1, "ex":Ljava/lang/Throwable;
    const/4 v3, 0x0

    goto :goto_0
.end method
