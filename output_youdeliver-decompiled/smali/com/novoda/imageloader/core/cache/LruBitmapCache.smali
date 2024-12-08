.class public Lcom/novoda/imageloader/core/cache/LruBitmapCache;
.super Ljava/lang/Object;
.source "LruBitmapCache.java"

# interfaces
.implements Lcom/novoda/imageloader/core/cache/CacheManager;


# static fields
.field public static final DEFAULT_MEMORY_CACHE_PERCENTAGE:I = 0x19

.field private static final DEFAULT_MEMORY_CAPACITY_FOR_DEVICES_OLDER_THAN_API_LEVEL_4:I = 0xc


# instance fields
.field private cache:Lcom/novoda/imageloader/core/cache/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/novoda/imageloader/core/cache/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private capacity:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    const/16 v0, 0x19

    invoke-direct {p0, p1, v0}, Lcom/novoda/imageloader/core/cache/LruBitmapCache;-><init>(Landroid/content/Context;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "percentageOfMemoryForCache"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    .line 45
    .local v0, "memClass":I
    if-nez v0, :cond_0

    .line 46
    const/16 v0, 0xc

    .line 48
    :cond_0
    if-gez p2, :cond_1

    .line 49
    const/4 p2, 0x0

    .line 51
    :cond_1
    const/16 v1, 0x51

    if-le p2, v1, :cond_2

    .line 52
    const/16 p2, 0x50

    .line 54
    :cond_2
    const/high16 v1, 0x100000

    mul-int v2, v0, p2

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->capacity:I

    .line 55
    iget v1, p0, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->capacity:I

    if-gtz v1, :cond_3

    .line 56
    const/high16 v1, 0x400000

    iput v1, p0, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->capacity:I

    .line 58
    :cond_3
    invoke-direct {p0}, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->reset()V

    .line 59
    return-void
.end method

.method private reset()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->cache:Lcom/novoda/imageloader/core/cache/util/LruCache;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->cache:Lcom/novoda/imageloader/core/cache/util/LruCache;

    invoke-virtual {v0}, Lcom/novoda/imageloader/core/cache/util/LruCache;->evictAll()V

    .line 74
    :cond_0
    new-instance v0, Lcom/novoda/imageloader/core/cache/LruBitmapCache$1;

    iget v1, p0, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->capacity:I

    invoke-direct {v0, p0, v1}, Lcom/novoda/imageloader/core/cache/LruBitmapCache$1;-><init>(Lcom/novoda/imageloader/core/cache/LruBitmapCache;I)V

    iput-object v0, p0, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->cache:Lcom/novoda/imageloader/core/cache/util/LruCache;

    .line 80
    return-void
.end method


# virtual methods
.method public clean()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->reset()V

    .line 95
    return-void
.end method

.method public get(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->cache:Lcom/novoda/imageloader/core/cache/util/LruCache;

    invoke-virtual {v0, p1}, Lcom/novoda/imageloader/core/cache/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->cache:Lcom/novoda/imageloader/core/cache/util/LruCache;

    invoke-virtual {v0, p1, p2}, Lcom/novoda/imageloader/core/cache/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-void
.end method
