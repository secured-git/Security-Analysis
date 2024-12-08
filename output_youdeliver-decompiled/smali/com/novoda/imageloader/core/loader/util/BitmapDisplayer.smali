.class public Lcom/novoda/imageloader/core/loader/util/BitmapDisplayer;
.super Ljava/lang/Object;
.source "BitmapDisplayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private imageWrapper:Lcom/novoda/imageloader/core/model/ImageWrapper;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/novoda/imageloader/core/model/ImageWrapper;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "imageWrapper"    # Lcom/novoda/imageloader/core/model/ImageWrapper;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/novoda/imageloader/core/loader/util/BitmapDisplayer;->bitmap:Landroid/graphics/Bitmap;

    .line 27
    iput-object p2, p0, Lcom/novoda/imageloader/core/loader/util/BitmapDisplayer;->imageWrapper:Lcom/novoda/imageloader/core/model/ImageWrapper;

    .line 28
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/novoda/imageloader/core/loader/util/BitmapDisplayer;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/novoda/imageloader/core/loader/util/BitmapDisplayer;->imageWrapper:Lcom/novoda/imageloader/core/model/ImageWrapper;

    invoke-virtual {v0}, Lcom/novoda/imageloader/core/model/ImageWrapper;->isUrlChanged()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/novoda/imageloader/core/loader/util/BitmapDisplayer;->imageWrapper:Lcom/novoda/imageloader/core/model/ImageWrapper;

    iget-object v1, p0, Lcom/novoda/imageloader/core/loader/util/BitmapDisplayer;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/novoda/imageloader/core/model/ImageWrapper;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public runOnUiThread()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/novoda/imageloader/core/loader/util/BitmapDisplayer;->imageWrapper:Lcom/novoda/imageloader/core/model/ImageWrapper;

    invoke-virtual {v0, p0}, Lcom/novoda/imageloader/core/model/ImageWrapper;->runOnUiThread(Lcom/novoda/imageloader/core/loader/util/BitmapDisplayer;)V

    .line 32
    return-void
.end method
