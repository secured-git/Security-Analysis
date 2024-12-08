.class public Lcom/yopeso/lieferando/model/restaurant/Reviews;
.super Ljava/lang/Object;
.source "Reviews.java"


# instance fields
.field private mComments:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lastRatings"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/Comment;",
            ">;"
        }
    .end annotation
.end field

.field private mDeliveryRatings:[I

.field private mDeliveryStars:F

.field private mFoodRatings:[I

.field private mFoodStars:F

.field private mRatingAdviceCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ratingAdviceCount"
    .end annotation
.end field

.field private mRatingCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ratingCount"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Reviews;->mComments:Ljava/util/ArrayList;

    .line 36
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Reviews;->mFoodRatings:[I

    .line 42
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Reviews;->mDeliveryRatings:[I

    .line 19
    return-void
.end method


# virtual methods
.method public getComments()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/Comment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Reviews;->mComments:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDeliveryStars()F
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/yopeso/lieferando/model/restaurant/Reviews;->mDeliveryStars:F

    return v0
.end method

.method public getFoodStars()F
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/yopeso/lieferando/model/restaurant/Reviews;->mFoodStars:F

    return v0
.end method

.method public getRatingCount()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/yopeso/lieferando/model/restaurant/Reviews;->mRatingCount:I

    return v0
.end method

.method public getRecomandation()I
    .locals 4

    .prologue
    .line 77
    iget v1, p0, Lcom/yopeso/lieferando/model/restaurant/Reviews;->mRatingAdviceCount:I

    int-to-float v1, v1

    iget v2, p0, Lcom/yopeso/lieferando/model/restaurant/Reviews;->mRatingCount:I

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 78
    .local v0, "recomendation":F
    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v1, v0

    float-to-double v2, v1

    invoke-static {v2, v3}, Lcom/yopeso/lieferando/util/NumberUtils;->roundUp(D)I

    move-result v1

    return v1
.end method

.method public getReviewsNoDelivery(I)I
    .locals 1
    .param p1, "stars"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Reviews;->mDeliveryRatings:[I

    aget v0, v0, p1

    return v0
.end method

.method public getReviewsNoFood(I)I
    .locals 1
    .param p1, "stars"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Reviews;->mFoodRatings:[I

    aget v0, v0, p1

    return v0
.end method

.method public setComments(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/Comment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "comments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Comment;>;"
    iput-object p1, p0, Lcom/yopeso/lieferando/model/restaurant/Reviews;->mComments:Ljava/util/ArrayList;

    .line 70
    return-void
.end method

.method public setDeliveryRatings([I)V
    .locals 0
    .param p1, "ratings"    # [I

    .prologue
    .line 86
    iput-object p1, p0, Lcom/yopeso/lieferando/model/restaurant/Reviews;->mDeliveryRatings:[I

    .line 87
    return-void
.end method

.method public setDeliveryStars(F)V
    .locals 0
    .param p1, "deliveryStars"    # F

    .prologue
    .line 53
    iput p1, p0, Lcom/yopeso/lieferando/model/restaurant/Reviews;->mDeliveryStars:F

    .line 54
    return-void
.end method

.method public setFoodRatings([I)V
    .locals 0
    .param p1, "ratings"    # [I

    .prologue
    .line 82
    iput-object p1, p0, Lcom/yopeso/lieferando/model/restaurant/Reviews;->mFoodRatings:[I

    .line 83
    return-void
.end method

.method public setFoodStars(F)V
    .locals 0
    .param p1, "foodStars"    # F

    .prologue
    .line 45
    iput p1, p0, Lcom/yopeso/lieferando/model/restaurant/Reviews;->mFoodStars:F

    .line 46
    return-void
.end method
