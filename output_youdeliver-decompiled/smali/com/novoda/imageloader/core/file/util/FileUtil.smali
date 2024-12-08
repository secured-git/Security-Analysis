.class public Lcom/novoda/imageloader/core/file/util/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# static fields
.field private static final ANDROID_ROOT:Ljava/lang/String; = "/Android/data/"

.field private static final BUFFER_SIZE:I = 0xf000

.field private static final DEFAULT_IMAGE_FOLDER_NAME:Ljava/lang/String; = "/cache/images"

.field private static final NOMEDIA_FILE_NAME:Ljava/lang/String; = ".nomedia"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addNomediaFile(Ljava/io/File;)V
    .locals 3
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    .line 125
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, ".nomedia"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problem creating .nomedia file : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/novoda/imageloader/core/util/Log;->warning(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private prepareExternalCacheDir(Lcom/novoda/imageloader/core/file/util/AndroidFileContext;)Ljava/io/File;
    .locals 4
    .param p1, "fileContext"    # Lcom/novoda/imageloader/core/file/util/AndroidFileContext;

    .prologue
    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/Android/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/novoda/imageloader/core/file/util/AndroidFileContext;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/cache/images"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "relativepath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/novoda/imageloader/core/file/util/AndroidFileContext;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 117
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 118
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 120
    :cond_0
    return-object v0
.end method


# virtual methods
.method public closeSilently(Ljava/io/Closeable;)V
    .locals 3
    .param p1, "c"    # Ljava/io/Closeable;

    .prologue
    .line 42
    if-eqz p1, :cond_0

    .line 43
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problem closing stream "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/novoda/imageloader/core/util/Log;->warning(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public copy(Ljava/io/File;Ljava/io/File;)V
    .locals 8
    .param p1, "src"    # Ljava/io/File;
    .param p2, "dst"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/novoda/imageloader/core/exception/ImageCopyException;
        }
    .end annotation

    .prologue
    .line 85
    const/4 v2, 0x0

    .line 86
    .local v2, "in":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 88
    .local v5, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .end local v2    # "in":Ljava/io/InputStream;
    .local v3, "in":Ljava/io/InputStream;
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 90
    .end local v5    # "out":Ljava/io/OutputStream;
    .local v6, "out":Ljava/io/OutputStream;
    const/16 v7, 0x400

    :try_start_2
    new-array v0, v7, [B

    .line 92
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "len":I
    if-lez v4, :cond_0

    .line 93
    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 95
    .end local v0    # "buf":[B
    .end local v4    # "len":I
    :catch_0
    move-exception v1

    move-object v5, v6

    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    move-object v2, v3

    .line 96
    .end local v3    # "in":Ljava/io/InputStream;
    .local v1, "e":Ljava/io/IOException;
    .restart local v2    # "in":Ljava/io/InputStream;
    :goto_1
    :try_start_3
    new-instance v7, Lcom/novoda/imageloader/core/exception/ImageCopyException;

    invoke-direct {v7, v1}, Lcom/novoda/imageloader/core/exception/ImageCopyException;-><init>(Ljava/lang/Throwable;)V

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 98
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_2
    invoke-virtual {p0, v5}, Lcom/novoda/imageloader/core/file/util/FileUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 99
    invoke-virtual {p0, v2}, Lcom/novoda/imageloader/core/file/util/FileUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v7

    .line 98
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v5    # "out":Ljava/io/OutputStream;
    .restart local v0    # "buf":[B
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "len":I
    .restart local v6    # "out":Ljava/io/OutputStream;
    :cond_0
    invoke-virtual {p0, v6}, Lcom/novoda/imageloader/core/file/util/FileUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 99
    invoke-virtual {p0, v3}, Lcom/novoda/imageloader/core/file/util/FileUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 101
    return-void

    .line 98
    .end local v0    # "buf":[B
    .end local v4    # "len":I
    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_2

    .end local v2    # "in":Ljava/io/InputStream;
    .end local v5    # "out":Ljava/io/OutputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    :catchall_2
    move-exception v7

    move-object v5, v6

    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_2

    .line 95
    :catch_1
    move-exception v1

    goto :goto_1

    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    :catch_2
    move-exception v1

    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_1
.end method

.method public copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 52
    const v3, 0xf000

    :try_start_0
    new-array v1, v3, [B

    .line 54
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 55
    .local v0, "amountRead":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 63
    .end local v0    # "amountRead":I
    .end local v1    # "buffer":[B
    :goto_1
    return-void

    .line 58
    .restart local v0    # "amountRead":I
    .restart local v1    # "buffer":[B
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    .end local v0    # "amountRead":I
    .end local v1    # "buffer":[B
    :catch_0
    move-exception v2

    .line 61
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/novoda/imageloader/core/util/Log;->warning(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public deleteFileCache(Ljava/lang/String;)Z
    .locals 2
    .param p1, "cacheDirFullPath"    # Ljava/lang/String;

    .prologue
    .line 67
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/novoda/imageloader/core/file/util/FileUtil;->reduceFileCache(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public prepareCacheDirectory(Lcom/novoda/imageloader/core/file/util/AndroidFileContext;)Ljava/io/File;
    .locals 2
    .param p1, "fileContext"    # Lcom/novoda/imageloader/core/file/util/AndroidFileContext;

    .prologue
    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {p1}, Lcom/novoda/imageloader/core/file/util/AndroidFileContext;->isMounted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    invoke-direct {p0, p1}, Lcom/novoda/imageloader/core/file/util/FileUtil;->prepareExternalCacheDir(Lcom/novoda/imageloader/core/file/util/AndroidFileContext;)Ljava/io/File;

    move-result-object v0

    .line 110
    :goto_0
    invoke-direct {p0, v0}, Lcom/novoda/imageloader/core/file/util/FileUtil;->addNomediaFile(Ljava/io/File;)V

    .line 111
    return-object v0

    .line 108
    :cond_0
    invoke-virtual {p1}, Lcom/novoda/imageloader/core/file/util/AndroidFileContext;->preparePhoneCacheDir()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public reduceFileCache(Ljava/lang/String;J)Z
    .locals 10
    .param p1, "cacheDirFullPath"    # Ljava/lang/String;
    .param p2, "expirationPeriod"    # J

    .prologue
    .line 71
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .local v1, "cacheDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 73
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 74
    .local v2, "children":[Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v6, v8, p2

    .line 75
    .local v6, "lastModifiedThreashold":J
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v3, v0, v4

    .line 76
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    cmp-long v8, v8, v6

    if-gez v8, :cond_0

    .line 77
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 75
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 81
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v2    # "children":[Ljava/io/File;
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "lastModifiedThreashold":J
    :cond_1
    const/4 v8, 0x1

    return v8
.end method
