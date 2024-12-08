.class public Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$MyScaler;
.super Landroid/view/animation/ScaleAnimation;
.source "RestaurantsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyScaler"
.end annotation


# instance fields
.field private mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private mMarginBottomFromY:I

.field private mMarginBottomToY:I

.field private mVanishAfter:Z

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;


# direct methods
.method public constructor <init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;FFFFILandroid/view/View;Z)V
    .locals 4
    .param p2, "fromX"    # F
    .param p3, "toX"    # F
    .param p4, "fromY"    # F
    .param p5, "toY"    # F
    .param p6, "duration"    # I
    .param p7, "view"    # Landroid/view/View;
    .param p8, "vanishAfter"    # Z

    .prologue
    .line 1282
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$MyScaler;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    .line 1283
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 1279
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$MyScaler;->mVanishAfter:Z

    .line 1284
    int-to-long v2, p6

    invoke-virtual {p0, v2, v3}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$MyScaler;->setDuration(J)V

    .line 1285
    iput-object p7, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$MyScaler;->mView:Landroid/view/View;

    .line 1286
    iput-boolean p8, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$MyScaler;->mVanishAfter:Z

    .line 1287
    invoke-virtual {p7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$MyScaler;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 1288
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$MyScaler;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1289
    .local v0, "height":I
    int-to-float v1, v0

    mul-float/2addr v1, p4

    float-to-int v1, v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$MyScaler;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$MyScaler;->mMarginBottomFromY:I

    .line 1290
    const/4 v1, 0x0

    int-to-float v2, v0

    mul-float/2addr v2, p5

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$MyScaler;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$MyScaler;->mMarginBottomToY:I

    .line 1291
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 1295
    invoke-super {p0, p1, p2}, Landroid/view/animation/ScaleAnimation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 1296
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    .line 1297
    iget v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$MyScaler;->mMarginBottomFromY:I

    .line 1298
    iget v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$MyScaler;->mMarginBottomToY:I

    iget v3, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$MyScaler;->mMarginBottomFromY:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    .line 1297
    add-int v0, v1, v2

    .line 1299
    .local v0, "newMarginBottom":I
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$MyScaler;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$MyScaler;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$MyScaler;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1300
    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$MyScaler;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 1299
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1301
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$MyScaler;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->requestLayout()V

    .line 1305
    .end local v0    # "newMarginBottom":I
    :cond_0
    :goto_0
    return-void

    .line 1302
    :cond_1
    iget-boolean v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$MyScaler;->mVanishAfter:Z

    if-eqz v1, :cond_0

    .line 1303
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$MyScaler;->mView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
