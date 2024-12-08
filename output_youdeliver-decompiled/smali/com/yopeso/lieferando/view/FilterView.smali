.class public Lcom/yopeso/lieferando/view/FilterView;
.super Landroid/view/animation/Animation;
.source "FilterView.java"


# instance fields
.field private mAnimatedView:Landroid/view/View;

.field private mPadding:I

.field private mStartHeight:I


# direct methods
.method public constructor <init>(Landroid/view/View;II)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "duration"    # I
    .param p3, "padding"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 27
    int-to-long v0, p2

    invoke-virtual {p0, v0, v1}, Lcom/yopeso/lieferando/view/FilterView;->setDuration(J)V

    .line 28
    iput-object p1, p0, Lcom/yopeso/lieferando/view/FilterView;->mAnimatedView:Landroid/view/View;

    .line 29
    iput p3, p0, Lcom/yopeso/lieferando/view/FilterView;->mPadding:I

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/view/FilterView;->mStartHeight:I

    .line 31
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    const/4 v4, 0x0

    .line 35
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 36
    iget-object v0, p0, Lcom/yopeso/lieferando/view/FilterView;->mAnimatedView:Landroid/view/View;

    iget v1, p0, Lcom/yopeso/lieferando/view/FilterView;->mStartHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/yopeso/lieferando/view/FilterView;->mPadding:I

    iget v3, p0, Lcom/yopeso/lieferando/view/FilterView;->mStartHeight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 37
    iget-object v0, p0, Lcom/yopeso/lieferando/view/FilterView;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 39
    return-void
.end method
