.class Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$MenuLoadedListener;
.super Ljava/lang/Object;
.source "RestaurantDetailsFragment.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuLoadedListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
        "<",
        "Lcom/yopeso/lieferando/model/restaurant/Restaurant;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$MenuLoadedListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$MenuLoadedListener;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$MenuLoadedListener;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;)V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$MenuLoadedListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$MenuLoadedListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->access$0(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;Lcom/android/volley/VolleyError;)V

    .line 110
    return-void
.end method

.method public onResponse(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 5
    .param p1, "res"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$MenuLoadedListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->mMenuAdapter:Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$MenuLoadedListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;

    iget-object v1, v1, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getDishCategories()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$MenuLoadedListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;

    iget-object v2, v2, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    sget-object v3, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isHoliday(Ljava/util/Date;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;->setData(Ljava/util/ArrayList;Z)V

    .line 95
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$MenuLoadedListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->mMenuAdapter:Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;->notifyDataSetChanged()V

    .line 97
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$MenuLoadedListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$MenuLoadedListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/StampRestaurantRequest;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$MenuLoadedListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;

    iget-object v2, v2, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    new-instance v3, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$RestaurantStampListener;

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$MenuLoadedListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;

    invoke-direct {v3, v4}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$RestaurantStampListener;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;)V

    invoke-direct {v1, v2, v3}, Lcom/yopeso/lieferando/net/requests/StampRestaurantRequest;-><init>(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 102
    :goto_0
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/events/RestaurantLoaded;

    invoke-direct {v1}, Lcom/yopeso/lieferando/events/RestaurantLoaded;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 104
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$MenuLoadedListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$MenuLoadedListener;->onResponse(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    return-void
.end method
