.class Lcom/novoda/imageloader/core/file/BasicFileManager$1;
.super Ljava/lang/Object;
.source "BasicFileManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novoda/imageloader/core/file/BasicFileManager;->deleteOldFiles(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novoda/imageloader/core/file/BasicFileManager;

.field final synthetic val$cacheDir:Ljava/lang/String;

.field final synthetic val$expirationPeriod:J


# direct methods
.method constructor <init>(Lcom/novoda/imageloader/core/file/BasicFileManager;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 103
    iput-object p1, p0, Lcom/novoda/imageloader/core/file/BasicFileManager$1;->this$0:Lcom/novoda/imageloader/core/file/BasicFileManager;

    iput-object p2, p0, Lcom/novoda/imageloader/core/file/BasicFileManager$1;->val$cacheDir:Ljava/lang/String;

    iput-wide p3, p0, Lcom/novoda/imageloader/core/file/BasicFileManager$1;->val$expirationPeriod:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 107
    :try_start_0
    new-instance v0, Lcom/novoda/imageloader/core/file/util/FileUtil;

    invoke-direct {v0}, Lcom/novoda/imageloader/core/file/util/FileUtil;-><init>()V

    iget-object v1, p0, Lcom/novoda/imageloader/core/file/BasicFileManager$1;->val$cacheDir:Ljava/lang/String;

    iget-wide v2, p0, Lcom/novoda/imageloader/core/file/BasicFileManager$1;->val$expirationPeriod:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/novoda/imageloader/core/file/util/FileUtil;->reduceFileCache(Ljava/lang/String;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    goto :goto_0
.end method
