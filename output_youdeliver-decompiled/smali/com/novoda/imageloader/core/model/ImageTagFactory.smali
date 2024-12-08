.class public final Lcom/novoda/imageloader/core/model/ImageTagFactory;
.super Ljava/lang/Object;
.source "ImageTagFactory.java"


# instance fields
.field private animationRes:I

.field private defaultImageResId:I

.field private description:Ljava/lang/String;

.field private errorImageResId:I

.field private height:I

.field private previewImageHeight:I

.field private previewImageWidth:I

.field private saveThumbnail:Z

.field private useOnlyCache:Z

.field private useSameUrlForPreviewImage:Z

.field private width:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/novoda/imageloader/core/model/ImageTagFactory;->animationRes:I

    .line 40
    return-void
.end method

.method private checkValidTagParameters()V
    .locals 2

    .prologue
    .line 252
    iget v0, p0, Lcom/novoda/imageloader/core/model/ImageTagFactory;->defaultImageResId:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/novoda/imageloader/core/model/ImageTagFactory;->width:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/novoda/imageloader/core/model/ImageTagFactory;->height:I

    if-nez v0, :cond_1

    .line 253
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "defaultImageResId, width or height was not set before calling build()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_1
    return-void
.end method

.method public static getInstance()Lcom/novoda/imageloader/core/model/ImageTagFactory;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 48
    invoke-static {}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->newInstance()Lcom/novoda/imageloader/core/model/ImageTagFactory;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(III)Lcom/novoda/imageloader/core/model/ImageTagFactory;
    .locals 1
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "defaultImageResId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 61
    invoke-static {p0, p1, p2}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->newInstance(III)Lcom/novoda/imageloader/core/model/ImageTagFactory;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;I)Lcom/novoda/imageloader/core/model/ImageTagFactory;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultImageResId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 72
    invoke-static {p0, p1}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->newInstance(Landroid/content/Context;I)Lcom/novoda/imageloader/core/model/ImageTagFactory;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance()Lcom/novoda/imageloader/core/model/ImageTagFactory;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/novoda/imageloader/core/model/ImageTagFactory;

    invoke-direct {v0}, Lcom/novoda/imageloader/core/model/ImageTagFactory;-><init>()V

    return-object v0
.end method

.method public static newInstance(III)Lcom/novoda/imageloader/core/model/ImageTagFactory;
    .locals 1
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "defaultImageResId"    # I

    .prologue
    .line 92
    new-instance v0, Lcom/novoda/imageloader/core/model/ImageTagFactory;

    invoke-direct {v0}, Lcom/novoda/imageloader/core/model/ImageTagFactory;-><init>()V

    .line 93
    .local v0, "imageTagFactory":Lcom/novoda/imageloader/core/model/ImageTagFactory;
    invoke-direct {v0, v0, p0, p1}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->setInitialSizeParams(Lcom/novoda/imageloader/core/model/ImageTagFactory;II)Lcom/novoda/imageloader/core/model/ImageTagFactory;

    .line 94
    invoke-direct {v0, v0, p2}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->setInitialImageId(Lcom/novoda/imageloader/core/model/ImageTagFactory;I)Lcom/novoda/imageloader/core/model/ImageTagFactory;

    .line 95
    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;I)Lcom/novoda/imageloader/core/model/ImageTagFactory;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultImageResId"    # I

    .prologue
    .line 106
    new-instance v1, Lcom/novoda/imageloader/core/model/ImageTagFactory;

    invoke-direct {v1}, Lcom/novoda/imageloader/core/model/ImageTagFactory;-><init>()V

    .line 107
    .local v1, "imageTagFactory":Lcom/novoda/imageloader/core/model/ImageTagFactory;
    invoke-direct {v1, p0}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->prepareDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    .line 108
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-direct {v1, v1, v2, v3}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->setInitialSizeParams(Lcom/novoda/imageloader/core/model/ImageTagFactory;II)Lcom/novoda/imageloader/core/model/ImageTagFactory;

    .line 109
    invoke-direct {v1, v1, p1}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->setInitialImageId(Lcom/novoda/imageloader/core/model/ImageTagFactory;I)Lcom/novoda/imageloader/core/model/ImageTagFactory;

    .line 110
    return-object v1
.end method

.method private prepareDisplay(Landroid/content/Context;)Landroid/view/Display;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 127
    .local v0, "d":Landroid/view/Display;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 128
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 129
    return-object v0
.end method

.method private setInitialImageId(Lcom/novoda/imageloader/core/model/ImageTagFactory;I)Lcom/novoda/imageloader/core/model/ImageTagFactory;
    .locals 0
    .param p1, "imageTagFactory"    # Lcom/novoda/imageloader/core/model/ImageTagFactory;
    .param p2, "defaultImageResId"    # I

    .prologue
    .line 120
    invoke-virtual {p1, p2}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->setDefaultImageResId(I)V

    .line 121
    invoke-virtual {p1, p2}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->setErrorImageId(I)V

    .line 122
    return-object p1
.end method

.method private setInitialSizeParams(Lcom/novoda/imageloader/core/model/ImageTagFactory;II)Lcom/novoda/imageloader/core/model/ImageTagFactory;
    .locals 0
    .param p1, "imageTagFactory"    # Lcom/novoda/imageloader/core/model/ImageTagFactory;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 114
    invoke-virtual {p1, p2}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->setWidth(I)V

    .line 115
    invoke-virtual {p1, p3}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->setHeight(I)V

    .line 116
    return-object p1
.end method

.method private setTagAnimation(Lcom/novoda/imageloader/core/util/AnimationHelper;Lcom/novoda/imageloader/core/model/ImageTag;)V
    .locals 2
    .param p1, "animationHelper"    # Lcom/novoda/imageloader/core/util/AnimationHelper;
    .param p2, "it"    # Lcom/novoda/imageloader/core/model/ImageTag;

    .prologue
    .line 246
    iget v0, p0, Lcom/novoda/imageloader/core/model/ImageTagFactory;->animationRes:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 247
    iget v0, p0, Lcom/novoda/imageloader/core/model/ImageTagFactory;->animationRes:I

    invoke-virtual {p1, v0}, Lcom/novoda/imageloader/core/util/AnimationHelper;->loadAnimation(I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/novoda/imageloader/core/model/ImageTag;->setAnimation(Landroid/view/animation/Animation;)V

    .line 249
    :cond_0
    return-void
.end method


# virtual methods
.method public build(Ljava/lang/String;Landroid/content/Context;)Lcom/novoda/imageloader/core/model/ImageTag;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 227
    new-instance v0, Lcom/novoda/imageloader/core/util/AnimationHelper;

    invoke-direct {v0, p2}, Lcom/novoda/imageloader/core/util/AnimationHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1, v0}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->build(Ljava/lang/String;Lcom/novoda/imageloader/core/util/AnimationHelper;)Lcom/novoda/imageloader/core/model/ImageTag;

    move-result-object v0

    return-object v0
.end method

.method build(Ljava/lang/String;Lcom/novoda/imageloader/core/util/AnimationHelper;)Lcom/novoda/imageloader/core/model/ImageTag;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "animationHelper"    # Lcom/novoda/imageloader/core/util/AnimationHelper;

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->checkValidTagParameters()V

    .line 232
    new-instance v0, Lcom/novoda/imageloader/core/model/ImageTag;

    iget v2, p0, Lcom/novoda/imageloader/core/model/ImageTagFactory;->defaultImageResId:I

    iget v3, p0, Lcom/novoda/imageloader/core/model/ImageTagFactory;->errorImageResId:I

    iget v4, p0, Lcom/novoda/imageloader/core/model/ImageTagFactory;->width:I

    iget v5, p0, Lcom/novoda/imageloader/core/model/ImageTagFactory;->height:I

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/novoda/imageloader/core/model/ImageTag;-><init>(Ljava/lang/String;IIII)V

    .line 233
    .local v0, "it":Lcom/novoda/imageloader/core/model/ImageTag;
    iget-boolean v1, p0, Lcom/novoda/imageloader/core/model/ImageTagFactory;->useOnlyCache:Z

    invoke-virtual {v0, v1}, Lcom/novoda/imageloader/core/model/ImageTag;->setUseOnlyCache(Z)V

    .line 234
    iget-boolean v1, p0, Lcom/novoda/imageloader/core/model/ImageTagFactory;->saveThumbnail:Z

    invoke-virtual {v0, v1}, Lcom/novoda/imageloader/core/model/ImageTag;->setSaveThumbnail(Z)V

    .line 235
    iget-boolean v1, p0, Lcom/novoda/imageloader/core/model/ImageTagFactory;->useSameUrlForPreviewImage:Z

    if-eqz v1, :cond_0

    .line 236
    invoke-virtual {v0, p1}, Lcom/novoda/imageloader/core/model/ImageTag;->setPreviewUrl(Ljava/lang/String;)V

    .line 238
    :cond_0
    iget v1, p0, Lcom/novoda/imageloader/core/model/ImageTagFactory;->previewImageHeight:I

    invoke-virtual {v0, v1}, Lcom/novoda/imageloader/core/model/ImageTag;->setPreviewHeight(I)V

    .line 239
    iget v1, p0, Lcom/novoda/imageloader/core/model/ImageTagFactory;->previewImageWidth:I

    invoke-virtual {v0, v1}, Lcom/novoda/imageloader/core/model/ImageTag;->setPreviewWidth(I)V

    .line 240
    iget-object v1, p0, Lcom/novoda/imageloader/core/model/ImageTagFactory;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/novoda/imageloader/core/model/ImageTag;->setDescription(Ljava/lang/String;)V

    .line 241
    invoke-direct {p0, p2, v0}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->setTagAnimation(Lcom/novoda/imageloader/core/util/AnimationHelper;Lcom/novoda/imageloader/core/model/ImageTag;)V

    .line 242
    return-object v0
.end method

.method public setAnimation(I)V
    .locals 0
    .param p1, "animationRes"    # I

    .prologue
    .line 208
    iput p1, p0, Lcom/novoda/imageloader/core/model/ImageTagFactory;->animationRes:I

    .line 209
    return-void
.end method

.method public setDefaultImageResId(I)V
    .locals 0
    .param p1, "defaultImageResId"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/novoda/imageloader/core/model/ImageTagFactory;->defaultImageResId:I

    .line 139
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/novoda/imageloader/core/model/ImageTagFactory;->description:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public setErrorImageId(I)V
    .locals 0
    .param p1, "errorImageResId"    # I

    .prologue
    .line 165
    iput p1, p0, Lcom/novoda/imageloader/core/model/ImageTagFactory;->errorImageResId:I

    .line 166
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 156
    iput p1, p0, Lcom/novoda/imageloader/core/model/ImageTagFactory;->height:I

    .line 157
    return-void
.end method

.method public setSaveThumbnail(Z)V
    .locals 0
    .param p1, "saveThumbnail"    # Z

    .prologue
    .line 204
    iput-boolean p1, p0, Lcom/novoda/imageloader/core/model/ImageTagFactory;->saveThumbnail:Z

    .line 205
    return-void
.end method

.method public setUseOnlyCache(Z)V
    .locals 0
    .param p1, "useOnlyCache"    # Z

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/novoda/imageloader/core/model/ImageTagFactory;->useOnlyCache:Z

    .line 193
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 147
    iput p1, p0, Lcom/novoda/imageloader/core/model/ImageTagFactory;->width:I

    .line 148
    return-void
.end method

.method public usePreviewImage(IIZ)V
    .locals 0
    .param p1, "previewImageWidth"    # I
    .param p2, "previewImageHeight"    # I
    .param p3, "useSameUrlForPreviewImage"    # Z

    .prologue
    .line 177
    iput p1, p0, Lcom/novoda/imageloader/core/model/ImageTagFactory;->previewImageWidth:I

    .line 178
    iput p2, p0, Lcom/novoda/imageloader/core/model/ImageTagFactory;->previewImageHeight:I

    .line 179
    iput-boolean p3, p0, Lcom/novoda/imageloader/core/model/ImageTagFactory;->useSameUrlForPreviewImage:Z

    .line 180
    return-void
.end method
