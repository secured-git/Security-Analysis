.class public Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;
.super Lcom/yopeso/lieferando/custom/LRFragment;
.source "RestaurantRatingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment$RestaurantRatingsListener;
    }
.end annotation


# static fields
.field private static final RESTAURANT_KEY:Ljava/lang/String; = "restaurant_key"


# instance fields
.field private mLoadingIndicator:Landroid/view/View;

.field private mRatingAdapter:Lcom/yopeso/lieferando/adapters/RestaurantRatingAdapter;

.field private mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

.field private mReviewsListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/yopeso/lieferando/custom/LRFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;->mLoadingIndicator:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;Lcom/yopeso/lieferando/adapters/RestaurantRatingAdapter;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;->mRatingAdapter:Lcom/yopeso/lieferando/adapters/RestaurantRatingAdapter;

    return-void
.end method

.method static synthetic access$2(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;->mReviewsListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;)Lcom/yopeso/lieferando/adapters/RestaurantRatingAdapter;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;->mRatingAdapter:Lcom/yopeso/lieferando/adapters/RestaurantRatingAdapter;

    return-object v0
.end method

.method public static newInstance(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;
    .locals 3
    .param p0, "r"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 37
    new-instance v1, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;

    invoke-direct {v1}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;-><init>()V

    .line 38
    .local v1, "frg":Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 39
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "restaurant_key"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 40
    invoke-virtual {v1, v0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 41
    return-object v1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/LRFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->LoadingIndicator:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;->mLoadingIndicator:Landroid/view/View;

    .line 61
    invoke-virtual {p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->RestaurantRatingListView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;->mReviewsListView:Landroid/widget/ListView;

    .line 62
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/LRFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "restaurant_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    iput-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .line 48
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    sget v0, Lcom/yopeso/lieferando/R$layout;->restaurant_ratings_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 66
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onStart()V

    .line 67
    invoke-virtual {p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/RestaurantReviewsRequest;

    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    new-instance v3, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment$RestaurantRatingsListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment$RestaurantRatingsListener;-><init>(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment$RestaurantRatingsListener;)V

    invoke-direct {v1, v2, v3}, Lcom/yopeso/lieferando/net/requests/RestaurantReviewsRequest;-><init>(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 68
    const-string v0, "reviews"

    invoke-static {v0}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackView(Ljava/lang/String;)V

    .line 69
    return-void
.end method
