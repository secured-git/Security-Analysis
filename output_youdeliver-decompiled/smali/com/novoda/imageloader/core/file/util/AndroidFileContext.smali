.class public Lcom/novoda/imageloader/core/file/util/AndroidFileContext;
.super Ljava/lang/Object;
.source "AndroidFileContext.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/novoda/imageloader/core/file/util/AndroidFileContext;->context:Landroid/content/Context;

    .line 33
    return-void
.end method


# virtual methods
.method protected getExternalStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/novoda/imageloader/core/file/util/AndroidFileContext;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isMounted()Z
    .locals 2

    .prologue
    .line 36
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const/4 v0, 0x1

    .line 39
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected preparePhoneCacheDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/novoda/imageloader/core/file/util/AndroidFileContext;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
