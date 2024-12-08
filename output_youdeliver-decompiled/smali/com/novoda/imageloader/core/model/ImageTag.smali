.class public Lcom/novoda/imageloader/core/model/ImageTag;
.super Ljava/lang/Object;
.source "ImageTag.java"


# instance fields
.field private animation:Landroid/view/animation/Animation;

.field private description:Ljava/lang/String;

.field private final height:I

.field private loaderTaskReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/novoda/imageloader/core/loader/util/LoaderTask;",
            ">;"
        }
    .end annotation
.end field

.field private final loadingResourceId:I

.field private final notFoundResourceId:I

.field private previewHeight:I

.field private previewUrl:Ljava/lang/String;

.field private previewWidth:I

.field private saveThumbnail:Z

.field private final url:Ljava/lang/String;

.field private useOnlyCache:Z

.field private final width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "loadingResourceId"    # I
    .param p3, "notFoundResourceId"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/novoda/imageloader/core/model/ImageTag;->url:Ljava/lang/String;

    .line 49
    iput p2, p0, Lcom/novoda/imageloader/core/model/ImageTag;->loadingResourceId:I

    .line 50
    iput p3, p0, Lcom/novoda/imageloader/core/model/ImageTag;->notFoundResourceId:I

    .line 51
    iput p4, p0, Lcom/novoda/imageloader/core/model/ImageTag;->width:I

    .line 52
    iput p5, p0, Lcom/novoda/imageloader/core/model/ImageTag;->height:I

    .line 53
    return-void
.end method


# virtual methods
.method public getAnimation()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/novoda/imageloader/core/model/ImageTag;->animation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/novoda/imageloader/core/model/ImageTag;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/novoda/imageloader/core/model/ImageTag;->height:I

    return v0
.end method

.method public getLoaderTask()Lcom/novoda/imageloader/core/loader/util/LoaderTask;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/novoda/imageloader/core/model/ImageTag;->loaderTaskReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/novoda/imageloader/core/model/ImageTag;->loaderTaskReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/novoda/imageloader/core/loader/util/LoaderTask;

    .line 131
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLoadingResourceId()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/novoda/imageloader/core/model/ImageTag;->loadingResourceId:I

    return v0
.end method

.method public getNotFoundResourceId()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/novoda/imageloader/core/model/ImageTag;->notFoundResourceId:I

    return v0
.end method

.method public getPreviewHeight()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/novoda/imageloader/core/model/ImageTag;->previewHeight:I

    return v0
.end method

.method public getPreviewUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/novoda/imageloader/core/model/ImageTag;->previewUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewWidth()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/novoda/imageloader/core/model/ImageTag;->previewWidth:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/novoda/imageloader/core/model/ImageTag;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/novoda/imageloader/core/model/ImageTag;->width:I

    return v0
.end method

.method public isSaveThumbnail()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/novoda/imageloader/core/model/ImageTag;->saveThumbnail:Z

    return v0
.end method

.method public isUseOnlyCache()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/novoda/imageloader/core/model/ImageTag;->useOnlyCache:Z

    return v0
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/novoda/imageloader/core/model/ImageTag;->animation:Landroid/view/animation/Animation;

    .line 121
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/novoda/imageloader/core/model/ImageTag;->description:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setLoaderTask(Lcom/novoda/imageloader/core/loader/util/LoaderTask;)V
    .locals 1
    .param p1, "task"    # Lcom/novoda/imageloader/core/loader/util/LoaderTask;

    .prologue
    .line 124
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/novoda/imageloader/core/model/ImageTag;->loaderTaskReference:Ljava/lang/ref/WeakReference;

    .line 125
    return-void
.end method

.method public setPreviewHeight(I)V
    .locals 0
    .param p1, "previewHeight"    # I

    .prologue
    .line 112
    iput p1, p0, Lcom/novoda/imageloader/core/model/ImageTag;->previewHeight:I

    .line 113
    return-void
.end method

.method public setPreviewUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "previewUrl"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/novoda/imageloader/core/model/ImageTag;->previewUrl:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setPreviewWidth(I)V
    .locals 0
    .param p1, "previewWidth"    # I

    .prologue
    .line 104
    iput p1, p0, Lcom/novoda/imageloader/core/model/ImageTag;->previewWidth:I

    .line 105
    return-void
.end method

.method public setSaveThumbnail(Z)V
    .locals 0
    .param p1, "saveThumbnail"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/novoda/imageloader/core/model/ImageTag;->saveThumbnail:Z

    .line 89
    return-void
.end method

.method public setUseOnlyCache(Z)V
    .locals 0
    .param p1, "useOnlyCache"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/novoda/imageloader/core/model/ImageTag;->useOnlyCache:Z

    .line 81
    return-void
.end method
