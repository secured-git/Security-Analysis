.class public Lcom/novoda/imageloader/core/model/ImageWrapper;
.super Ljava/lang/Object;
.source "ImageWrapper.java"


# static fields
.field private static final URL_ERROR:Ljava/lang/String; = "_url_error"


# instance fields
.field private animation:Landroid/view/animation/Animation;

.field private height:I

.field private final imageView:Landroid/widget/ImageView;

.field private isUseCacheOnly:Z

.field private loadingResourceId:I

.field private notFoundResourceId:I

.field private previewHeight:I

.field private previewUrl:Ljava/lang/String;

.field private previewWidth:I

.field private saveThumbnail:Z

.field private url:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/novoda/imageloader/core/model/ImageWrapper;->imageView:Landroid/widget/ImageView;

    .line 47
    invoke-direct {p0, p1}, Lcom/novoda/imageloader/core/model/ImageWrapper;->initWrapper(Landroid/widget/ImageView;)V

    .line 48
    return-void
.end method

.method private initWrapper(Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 51
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/novoda/imageloader/core/model/ImageTag;

    .line 52
    .local v0, "tag":Lcom/novoda/imageloader/core/model/ImageTag;
    if-nez v0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-virtual {v0}, Lcom/novoda/imageloader/core/model/ImageTag;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/novoda/imageloader/core/model/ImageWrapper;->url:Ljava/lang/String;

    .line 56
    invoke-virtual {v0}, Lcom/novoda/imageloader/core/model/ImageTag;->getLoadingResourceId()I

    move-result v1

    iput v1, p0, Lcom/novoda/imageloader/core/model/ImageWrapper;->loadingResourceId:I

    .line 57
    invoke-virtual {v0}, Lcom/novoda/imageloader/core/model/ImageTag;->getNotFoundResourceId()I

    move-result v1

    iput v1, p0, Lcom/novoda/imageloader/core/model/ImageWrapper;->notFoundResourceId:I

    .line 58
    invoke-virtual {v0}, Lcom/novoda/imageloader/core/model/ImageTag;->isUseOnlyCache()Z

    move-result v1

    iput-boolean v1, p0, Lcom/novoda/imageloader/core/model/ImageWrapper;->isUseCacheOnly:Z

    .line 59
    invoke-virtual {v0}, Lcom/novoda/imageloader/core/model/ImageTag;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/novoda/imageloader/core/model/ImageWrapper;->height:I

    .line 60
    invoke-virtual {v0}, Lcom/novoda/imageloader/core/model/ImageTag;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/novoda/imageloader/core/model/ImageWrapper;->width:I

    .line 61
    invoke-virtual {v0}, Lcom/novoda/imageloader/core/model/ImageTag;->getPreviewHeight()I

    move-result v1

    iput v1, p0, Lcom/novoda/imageloader/core/model/ImageWrapper;->previewHeight:I

    .line 62
    invoke-virtual {v0}, Lcom/novoda/imageloader/core/model/ImageTag;->getPreviewWidth()I

    move-result v1

    iput v1, p0, Lcom/novoda/imageloader/core/model/ImageWrapper;->previewWidth:I

    .line 63
    invoke-virtual {v0}, Lcom/novoda/imageloader/core/model/ImageTag;->isSaveThumbnail()Z

    move-result v1

    iput-boolean v1, p0, Lcom/novoda/imageloader/core/model/ImageWrapper;->saveThumbnail:Z

    .line 64
    iget v1, p0, Lcom/novoda/imageloader/core/model/ImageWrapper;->notFoundResourceId:I

    if-nez v1, :cond_1

    .line 65
    invoke-virtual {v0}, Lcom/novoda/imageloader/core/model/ImageTag;->getLoadingResourceId()I

    move-result v1

    iput v1, p0, Lcom/novoda/imageloader/core/model/ImageWrapper;->notFoundResourceId:I

    .line 67
    :cond_1
    invoke-virtual {v0}, Lcom/novoda/imageloader/core/model/ImageTag;->getPreviewUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/novoda/imageloader/core/model/ImageWrapper;->previewUrl:Ljava/lang/String;

    .line 68
    invoke-virtual {v0}, Lcom/novoda/imageloader/core/model/ImageTag;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/novoda/imageloader/core/model/ImageWrapper;->animation:Landroid/view/animation/Animation;

    goto :goto_0
.end method

.method private stopExistingAnimation()V
    .locals 2

    .prologue
    .line 115
    iget-object v1, p0, Lcom/novoda/imageloader/core/model/ImageWrapper;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 116
    .local v0, "old":Landroid/view/animation/Animation;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 119
    :cond_0
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/novoda/imageloader/core/model/ImageWrapper;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    iget-object v1, p0, Lcom/novoda/imageloader/core/model/ImageWrapper;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/novoda/imageloader/core/model/ImageTag;

    .line 74
    .local v0, "tag":Lcom/novoda/imageloader/core/model/ImageTag;
    invoke-virtual {v0}, Lcom/novoda/imageloader/core/model/ImageTag;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {v0}, Lcom/novoda/imageloader/core/model/ImageTag;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 77
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "_url_error"

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/novoda/imageloader/core/model/ImageWrapper;->height:I

    return v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/novoda/imageloader/core/model/ImageWrapper;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getLoaderTask()Lcom/novoda/imageloader/core/loader/util/LoaderTask;
    .locals 2

    .prologue
    .line 166
    iget-object v1, p0, Lcom/novoda/imageloader/core/model/ImageWrapper;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/novoda/imageloader/core/model/ImageTag;

    .line 167
    .local v0, "tag":Lcom/novoda/imageloader/core/model/ImageTag;
    invoke-virtual {v0}, Lcom/novoda/imageloader/core/model/ImageTag;->getLoaderTask()Lcom/novoda/imageloader/core/loader/util/LoaderTask;

    move-result-object v1

    return-object v1
.end method

.method public getLoadingResourceId()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/novoda/imageloader/core/model/ImageWrapper;->loadingResourceId:I

    return v0
.end method

.method public getNotFoundResourceId()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/novoda/imageloader/core/model/ImageWrapper;->notFoundResourceId:I

    return v0
.end method

.method public getPreviewHeight()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/novoda/imageloader/core/model/ImageWrapper;->previewHeight:I

    return v0
.end method

.method public getPreviewUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/novoda/imageloader/core/model/ImageWrapper;->previewUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewWidth()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/novoda/imageloader/core/model/ImageWrapper;->previewWidth:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/novoda/imageloader/core/model/ImageWrapper;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/novoda/imageloader/core/model/ImageWrapper;->width:I

    return v0
.end method

.method public isCorrectUrl(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/novoda/imageloader/core/model/ImageWrapper;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSaveThumbnail()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/novoda/imageloader/core/model/ImageWrapper;->saveThumbnail:Z

    return v0
.end method

.method public isUrlChanged()Z
    .locals 2

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/novoda/imageloader/core/model/ImageWrapper;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/novoda/imageloader/core/model/ImageWrapper;->getCurrentUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUseCacheOnly()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/novoda/imageloader/core/model/ImageWrapper;->isUseCacheOnly:Z

    return v0
.end method

.method public runOnUiThread(Lcom/novoda/imageloader/core/loader/util/BitmapDisplayer;)V
    .locals 2
    .param p1, "displayer"    # Lcom/novoda/imageloader/core/loader/util/BitmapDisplayer;

    .prologue
    .line 97
    iget-object v1, p0, Lcom/novoda/imageloader/core/model/ImageWrapper;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 98
    .local v0, "a":Landroid/app/Activity;
    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 99
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/novoda/imageloader/core/model/ImageWrapper;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 108
    invoke-direct {p0}, Lcom/novoda/imageloader/core/model/ImageWrapper;->stopExistingAnimation()V

    .line 109
    iget-object v0, p0, Lcom/novoda/imageloader/core/model/ImageWrapper;->animation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/novoda/imageloader/core/model/ImageWrapper;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/novoda/imageloader/core/model/ImageWrapper;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 112
    :cond_0
    return-void
.end method

.method public setLoaderTask(Lcom/novoda/imageloader/core/loader/util/LoaderTask;)V
    .locals 2
    .param p1, "task"    # Lcom/novoda/imageloader/core/loader/util/LoaderTask;

    .prologue
    .line 171
    iget-object v1, p0, Lcom/novoda/imageloader/core/model/ImageWrapper;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/novoda/imageloader/core/model/ImageTag;

    .line 172
    .local v0, "tag":Lcom/novoda/imageloader/core/model/ImageTag;
    invoke-virtual {v0, p1}, Lcom/novoda/imageloader/core/model/ImageTag;->setLoaderTask(Lcom/novoda/imageloader/core/loader/util/LoaderTask;)V

    .line 173
    return-void
.end method

.method public setResourceBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "resourceAsBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/novoda/imageloader/core/model/ImageWrapper;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 123
    return-void
.end method

.method public setSaveThumbnail(Z)V
    .locals 0
    .param p1, "saveThumbnail"    # Z

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/novoda/imageloader/core/model/ImageWrapper;->saveThumbnail:Z

    .line 151
    return-void
.end method
