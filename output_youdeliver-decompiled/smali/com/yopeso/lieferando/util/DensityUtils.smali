.class public Lcom/yopeso/lieferando/util/DensityUtils;
.super Ljava/lang/Object;
.source "DensityUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertDpToPixel(ILandroid/content/Context;)I
    .locals 6
    .param p0, "dp"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 33
    .local v2, "resources":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 34
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    int-to-float v3, p0

    iget v4, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v4, v4

    const/high16 v5, 0x43200000    # 160.0f

    div-float/2addr v4, v5

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 35
    .local v1, "px":I
    return v1
.end method

.method public static convertPixelsToDp(ILandroid/content/Context;)I
    .locals 6
    .param p0, "px"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 56
    .local v2, "resources":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 57
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    int-to-float v3, p0

    iget v4, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v4, v4

    const/high16 v5, 0x43200000    # 160.0f

    div-float/2addr v4, v5

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 58
    .local v0, "dp":I
    return v0
.end method
