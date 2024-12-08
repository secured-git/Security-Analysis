.class Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$StampsLoadedListener;
.super Ljava/lang/Object;
.source "RestaurantsListFragment.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StampsLoadedListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
        "<",
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/Integer;",
        "Lcom/yopeso/lieferando/model/Stamp;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$StampsLoadedListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$StampsLoadedListener;)V
    .locals 0

    .prologue
    .line 352
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$StampsLoadedListener;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 7
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 362
    const-string v0, "RestaurantsFragment"

    const-string v1, " StampsLoadedListener onErrorResponse -> onRestaurantsLoaded"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$StampsLoadedListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$18(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)V

    .line 367
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$StampsLoadedListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/RestaurantsRequest;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$StampsLoadedListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    iget-object v3, v3, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLocation:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getLocationUrl()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$RestaurantLoadedListener;

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$StampsLoadedListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$RestaurantLoadedListener;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$RestaurantLoadedListener;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/yopeso/lieferando/net/requests/RestaurantsRequest;-><init>(Ljava/util/HashMap;Ljava/lang/String;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 369
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$StampsLoadedListener;->onResponse(Ljava/util/HashMap;)V

    return-void
.end method

.method public onResponse(Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/yopeso/lieferando/model/Stamp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 356
    .local p1, "stamps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/yopeso/lieferando/model/Stamp;>;"
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$StampsLoadedListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/RestaurantsRequest;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$StampsLoadedListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    iget-object v2, v2, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLocation:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getLocationUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$RestaurantLoadedListener;

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$StampsLoadedListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$RestaurantLoadedListener;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$RestaurantLoadedListener;)V

    invoke-direct {v1, p1, v2, v3}, Lcom/yopeso/lieferando/net/requests/RestaurantsRequest;-><init>(Ljava/util/HashMap;Ljava/lang/String;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 357
    return-void
.end method
