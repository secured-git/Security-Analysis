.class public Lcom/yopeso/lieferando/adapters/RestaurantRatingAdapter;
.super Landroid/widget/ArrayAdapter;
.source "RestaurantRatingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/yopeso/lieferando/model/restaurant/Comment;",
        ">;"
    }
.end annotation


# static fields
.field private static final VIEW_TYPE_COMMENT:I = 0x1

.field private static final VIEW_TYPE_RATINGS:I


# instance fields
.field private mComments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/Comment;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDeliverPercent:[I

.field private mDeliverProgress:[I

.field private mFoodPercent:[I

.field private mFoodProgress:[I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mReviews:Lcom/yopeso/lieferando/model/restaurant/Reviews;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/yopeso/lieferando/model/restaurant/Reviews;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I
    .param p3, "reviews"    # Lcom/yopeso/lieferando/model/restaurant/Reviews;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    invoke-virtual {p3}, Lcom/yopeso/lieferando/model/restaurant/Reviews;->getComments()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 37
    const/4 v0, 0x5

    new-array v0, v0, [I

    sget v1, Lcom/yopeso/lieferando/R$id;->Food1Progress:I

    aput v1, v0, v2

    sget v1, Lcom/yopeso/lieferando/R$id;->Food2Progress:I

    aput v1, v0, v3

    sget v1, Lcom/yopeso/lieferando/R$id;->Food3Progress:I

    aput v1, v0, v4

    sget v1, Lcom/yopeso/lieferando/R$id;->Food4Progress:I

    aput v1, v0, v5

    sget v1, Lcom/yopeso/lieferando/R$id;->Food5Progress:I

    aput v1, v0, v6

    iput-object v0, p0, Lcom/yopeso/lieferando/adapters/RestaurantRatingAdapter;->mFoodProgress:[I

    .line 38
    const/4 v0, 0x5

    new-array v0, v0, [I

    sget v1, Lcom/yopeso/lieferando/R$id;->Food1Text:I

    aput v1, v0, v2

    sget v1, Lcom/yopeso/lieferando/R$id;->Food2Text:I

    aput v1, v0, v3

    sget v1, Lcom/yopeso/lieferando/R$id;->Food3Text:I

    aput v1, v0, v4

    sget v1, Lcom/yopeso/lieferando/R$id;->Food4Text:I

    aput v1, v0, v5

    sget v1, Lcom/yopeso/lieferando/R$id;->Food5Text:I

    aput v1, v0, v6

    iput-object v0, p0, Lcom/yopeso/lieferando/adapters/RestaurantRatingAdapter;->mFoodPercent:[I

    .line 39
    const/4 v0, 0x5

    new-array v0, v0, [I

    sget v1, Lcom/yopeso/lieferando/R$id;->Deliver1Progress:I

    aput v1, v0, v2

    sget v1, Lcom/yopeso/lieferando/R$id;->Deliver2Progress:I

    aput v1, v0, v3

    sget v1, Lcom/yopeso/lieferando/R$id;->Deliver3Progress:I

    aput v1, v0, v4

    sget v1, Lcom/yopeso/lieferando/R$id;->Deliver4Progress:I

    aput v1, v0, v5

    sget v1, Lcom/yopeso/lieferando/R$id;->Deliver5Progress:I

    aput v1, v0, v6

    iput-object v0, p0, Lcom/yopeso/lieferando/adapters/RestaurantRatingAdapter;->mDeliverProgress:[I

    .line 40
    const/4 v0, 0x5

    new-array v0, v0, [I

    sget v1, Lcom/yopeso/lieferando/R$id;->Deliver1Text:I

    aput v1, v0, v2

    sget v1, Lcom/yopeso/lieferando/R$id;->Deliver2Text:I

    aput v1, v0, v3

    sget v1, Lcom/yopeso/lieferando/R$id;->Deliver3Text:I

    aput v1, v0, v4

    sget v1, Lcom/yopeso/lieferando/R$id;->Deliver4Text:I

    aput v1, v0, v5

    sget v1, Lcom/yopeso/lieferando/R$id;->Deliver5Text:I

    aput v1, v0, v6

    iput-object v0, p0, Lcom/yopeso/lieferando/adapters/RestaurantRatingAdapter;->mDeliverPercent:[I

    .line 44
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/RestaurantRatingAdapter;->mContext:Landroid/content/Context;

    .line 45
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/RestaurantRatingAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/yopeso/lieferando/adapters/RestaurantRatingAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 46
    iput-object p3, p0, Lcom/yopeso/lieferando/adapters/RestaurantRatingAdapter;->mReviews:Lcom/yopeso/lieferando/model/restaurant/Reviews;

    .line 47
    invoke-virtual {p3}, Lcom/yopeso/lieferando/model/restaurant/Reviews;->getComments()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/adapters/RestaurantRatingAdapter;->mComments:Ljava/util/ArrayList;

    .line 48
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/RestaurantRatingAdapter;->mComments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 90
    if-nez p1, :cond_0

    .line 91
    const/4 v0, 0x0

    .line 93
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 52
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/adapters/RestaurantRatingAdapter;->getItemViewType(I)I

    move-result v3

    .line 53
    .local v3, "viewType":I
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v3, :cond_1

    .line 54
    :cond_0
    if-nez v3, :cond_3

    .line 55
    iget-object v4, p0, Lcom/yopeso/lieferando/adapters/RestaurantRatingAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v5, Lcom/yopeso/lieferando/R$layout;->rating_dialog_reviews:I

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 59
    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 62
    :cond_1
    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 63
    iget-object v4, p0, Lcom/yopeso/lieferando/adapters/RestaurantRatingAdapter;->mComments:Ljava/util/ArrayList;

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/restaurant/Comment;

    .line 64
    .local v0, "comment":Lcom/yopeso/lieferando/model/restaurant/Comment;
    sget v4, Lcom/yopeso/lieferando/R$id;->UserPhoto:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 65
    .local v2, "userProfile":Landroid/widget/ImageView;
    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getTagFactoryUserPhoto()Lcom/novoda/imageloader/core/model/ImageTagFactory;

    move-result-object v4

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/restaurant/Comment;->getUserPhotoUrl()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/yopeso/lieferando/adapters/RestaurantRatingAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/yopeso/lieferando/util/ImageUtils;->getOptimizedUserCommentImage(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/yopeso/lieferando/adapters/RestaurantRatingAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v6}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->build(Ljava/lang/String;Landroid/content/Context;)Lcom/novoda/imageloader/core/model/ImageTag;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 66
    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getImageLoader()Lcom/novoda/imageloader/core/loader/Loader;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/novoda/imageloader/core/loader/Loader;->load(Landroid/widget/ImageView;)V

    .line 68
    sget v4, Lcom/yopeso/lieferando/R$id;->CommentText:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/restaurant/Comment;->getComment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    .end local v0    # "comment":Lcom/yopeso/lieferando/model/restaurant/Comment;
    .end local v2    # "userProfile":Landroid/widget/ImageView;
    :cond_2
    return-object p2

    .line 57
    :cond_3
    iget-object v4, p0, Lcom/yopeso/lieferando/adapters/RestaurantRatingAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v5, Lcom/yopeso/lieferando/R$layout;->comment_item:I

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 70
    :cond_4
    sget v4, Lcom/yopeso/lieferando/R$id;->RecommendPercent:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/yopeso/lieferando/adapters/RestaurantRatingAdapter;->mReviews:Lcom/yopeso/lieferando/model/restaurant/Reviews;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/restaurant/Reviews;->getRecomandation()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    sget v4, Lcom/yopeso/lieferando/R$id;->FoodRating:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RatingBar;

    iget-object v5, p0, Lcom/yopeso/lieferando/adapters/RestaurantRatingAdapter;->mReviews:Lcom/yopeso/lieferando/model/restaurant/Reviews;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/restaurant/Reviews;->getFoodStars()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/RatingBar;->setRating(F)V

    .line 72
    sget v4, Lcom/yopeso/lieferando/R$id;->DeliverRating:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RatingBar;

    iget-object v5, p0, Lcom/yopeso/lieferando/adapters/RestaurantRatingAdapter;->mReviews:Lcom/yopeso/lieferando/model/restaurant/Reviews;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/restaurant/Reviews;->getDeliveryStars()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/RatingBar;->setRating(F)V

    .line 73
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v4, 0x5

    if-ge v1, v4, :cond_2

    .line 74
    iget-object v4, p0, Lcom/yopeso/lieferando/adapters/RestaurantRatingAdapter;->mDeliverProgress:[I

    aget v4, v4, v1

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iget-object v5, p0, Lcom/yopeso/lieferando/adapters/RestaurantRatingAdapter;->mReviews:Lcom/yopeso/lieferando/model/restaurant/Reviews;

    invoke-virtual {v5, v1}, Lcom/yopeso/lieferando/model/restaurant/Reviews;->getReviewsNoDelivery(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 75
    iget-object v4, p0, Lcom/yopeso/lieferando/adapters/RestaurantRatingAdapter;->mDeliverPercent:[I

    aget v4, v4, v1

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/yopeso/lieferando/adapters/RestaurantRatingAdapter;->mReviews:Lcom/yopeso/lieferando/model/restaurant/Reviews;

    invoke-virtual {v6, v1}, Lcom/yopeso/lieferando/model/restaurant/Reviews;->getReviewsNoDelivery(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v4, p0, Lcom/yopeso/lieferando/adapters/RestaurantRatingAdapter;->mFoodProgress:[I

    aget v4, v4, v1

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iget-object v5, p0, Lcom/yopeso/lieferando/adapters/RestaurantRatingAdapter;->mReviews:Lcom/yopeso/lieferando/model/restaurant/Reviews;

    invoke-virtual {v5, v1}, Lcom/yopeso/lieferando/model/restaurant/Reviews;->getReviewsNoFood(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 77
    iget-object v4, p0, Lcom/yopeso/lieferando/adapters/RestaurantRatingAdapter;->mFoodPercent:[I

    aget v4, v4, v1

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/yopeso/lieferando/adapters/RestaurantRatingAdapter;->mReviews:Lcom/yopeso/lieferando/model/restaurant/Reviews;

    invoke-virtual {v6, v1}, Lcom/yopeso/lieferando/model/restaurant/Reviews;->getReviewsNoFood(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
