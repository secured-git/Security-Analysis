.class Lcom/novoda/imageloader/core/loader/SimpleLoader$1;
.super Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;
.source "SimpleLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novoda/imageloader/core/loader/SimpleLoader;-><init>(Lcom/novoda/imageloader/core/LoaderSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novoda/imageloader/core/loader/SimpleLoader;


# direct methods
.method constructor <init>(Lcom/novoda/imageloader/core/loader/SimpleLoader;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/novoda/imageloader/core/loader/SimpleLoader$1;->this$0:Lcom/novoda/imageloader/core/loader/SimpleLoader;

    invoke-direct {p0}, Lcom/novoda/imageloader/core/loader/util/SingleThreadedLoader;-><init>()V

    return-void
.end method


# virtual methods
.method protected loadMissingBitmap(Lcom/novoda/imageloader/core/model/ImageWrapper;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "iw"    # Lcom/novoda/imageloader/core/model/ImageWrapper;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/novoda/imageloader/core/loader/SimpleLoader$1;->this$0:Lcom/novoda/imageloader/core/loader/SimpleLoader;

    invoke-virtual {p1}, Lcom/novoda/imageloader/core/model/ImageWrapper;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/novoda/imageloader/core/model/ImageWrapper;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/novoda/imageloader/core/model/ImageWrapper;->getHeight()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/novoda/imageloader/core/loader/SimpleLoader;->access$000(Lcom/novoda/imageloader/core/loader/SimpleLoader;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onBitmapLoaded(Lcom/novoda/imageloader/core/model/ImageWrapper;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "iw"    # Lcom/novoda/imageloader/core/model/ImageWrapper;
    .param p2, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 47
    new-instance v0, Lcom/novoda/imageloader/core/loader/util/BitmapDisplayer;

    invoke-direct {v0, p2, p1}, Lcom/novoda/imageloader/core/loader/util/BitmapDisplayer;-><init>(Landroid/graphics/Bitmap;Lcom/novoda/imageloader/core/model/ImageWrapper;)V

    invoke-virtual {v0}, Lcom/novoda/imageloader/core/loader/util/BitmapDisplayer;->runOnUiThread()V

    .line 48
    iget-object v0, p0, Lcom/novoda/imageloader/core/loader/SimpleLoader$1;->this$0:Lcom/novoda/imageloader/core/loader/SimpleLoader;

    invoke-static {v0}, Lcom/novoda/imageloader/core/loader/SimpleLoader;->access$100(Lcom/novoda/imageloader/core/loader/SimpleLoader;)Lcom/novoda/imageloader/core/LoaderSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/novoda/imageloader/core/LoaderSettings;->getCacheManager()Lcom/novoda/imageloader/core/cache/CacheManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/novoda/imageloader/core/model/ImageWrapper;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/novoda/imageloader/core/cache/CacheManager;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 49
    iget-object v0, p0, Lcom/novoda/imageloader/core/loader/SimpleLoader$1;->this$0:Lcom/novoda/imageloader/core/loader/SimpleLoader;

    invoke-virtual {p1}, Lcom/novoda/imageloader/core/model/ImageWrapper;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/novoda/imageloader/core/loader/SimpleLoader;->access$200(Lcom/novoda/imageloader/core/loader/SimpleLoader;Landroid/widget/ImageView;)V

    .line 50
    return-void
.end method
