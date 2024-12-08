.class public Lcom/novoda/imageloader/core/file/BasicFileManager;
.super Ljava/lang/Object;
.source "BasicFileManager.java"

# interfaces
.implements Lcom/novoda/imageloader/core/file/FileManager;


# instance fields
.field private loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;


# direct methods
.method public constructor <init>(Lcom/novoda/imageloader/core/LoaderSettings;)V
    .locals 1
    .param p1, "settings"    # Lcom/novoda/imageloader/core/LoaderSettings;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/novoda/imageloader/core/file/BasicFileManager;->loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

    .line 39
    invoke-virtual {p1}, Lcom/novoda/imageloader/core/LoaderSettings;->isCleanOnSetup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/novoda/imageloader/core/file/BasicFileManager;->cleanOldFiles()V

    .line 42
    :cond_0
    return-void
.end method

.method private deleteOldFiles(J)V
    .locals 3
    .param p1, "expirationPeriod"    # J

    .prologue
    .line 102
    iget-object v2, p0, Lcom/novoda/imageloader/core/file/BasicFileManager;->loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v2}, Lcom/novoda/imageloader/core/LoaderSettings;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "cacheDir":Ljava/lang/String;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/novoda/imageloader/core/file/BasicFileManager$1;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/novoda/imageloader/core/file/BasicFileManager$1;-><init>(Lcom/novoda/imageloader/core/file/BasicFileManager;Ljava/lang/String;J)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 113
    .local v1, "cleaner":Ljava/lang/Thread;
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 114
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 115
    return-void
.end method

.method private processUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/novoda/imageloader/core/file/BasicFileManager;->loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v0}, Lcom/novoda/imageloader/core/LoaderSettings;->isQueryIncludedInHash()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    .end local p1    # "url":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "url":Ljava/lang/String;
    :cond_0
    new-instance v0, Lcom/novoda/imageloader/core/network/UrlUtil;

    invoke-direct {v0}, Lcom/novoda/imageloader/core/network/UrlUtil;-><init>()V

    invoke-virtual {v0, p1}, Lcom/novoda/imageloader/core/network/UrlUtil;->removeQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public clean()V
    .locals 2

    .prologue
    .line 49
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lcom/novoda/imageloader/core/file/BasicFileManager;->deleteOldFiles(J)V

    .line 50
    return-void
.end method

.method public cleanOldFiles()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/novoda/imageloader/core/file/BasicFileManager;->loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v0}, Lcom/novoda/imageloader/core/LoaderSettings;->getExpirationPeriod()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/novoda/imageloader/core/file/BasicFileManager;->deleteOldFiles(J)V

    .line 59
    return-void
.end method

.method public getFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/novoda/imageloader/core/file/BasicFileManager;->processUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 83
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "filename":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/novoda/imageloader/core/file/BasicFileManager;->loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v2}, Lcom/novoda/imageloader/core/LoaderSettings;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public getFile(Ljava/lang/String;II)Ljava/io/File;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/novoda/imageloader/core/file/BasicFileManager;->processUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "filename":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/novoda/imageloader/core/file/BasicFileManager;->loaderSettings:Lcom/novoda/imageloader/core/LoaderSettings;

    invoke-virtual {v2}, Lcom/novoda/imageloader/core/LoaderSettings;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public getFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/novoda/imageloader/core/file/BasicFileManager;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 64
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 67
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;II)V
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "b"    # Landroid/graphics/Bitmap;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 73
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 74
    .local v1, "out":Ljava/io/FileOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5a

    invoke-virtual {p2, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v1    # "out":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/novoda/imageloader/core/util/Log;->warning(Ljava/lang/String;)V

    goto :goto_0
.end method
