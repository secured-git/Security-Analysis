.class Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$StampsUserListener;
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
    name = "StampsUserListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
        "<",
        "Ljava/util/ArrayList",
        "<",
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
    .line 314
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$StampsUserListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$StampsUserListener;)V
    .locals 0

    .prologue
    .line 314
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$StampsUserListener;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 6
    .param p1, "arg0"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 334
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$StampsUserListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mRestaurants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$StampsUserListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$16(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 336
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$StampsUserListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$14(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)V

    .line 337
    const-string v0, "RestaurantsFragment"

    const-string v1, " StampsUserListener onErrorResponse -> filterRestaurantsByCriteria"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$StampsUserListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$11(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)V

    .line 339
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$StampsUserListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$12(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$StampsUserListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$13(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)I

    move-result v2

    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$StampsUserListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$13(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x1e

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 349
    :goto_1
    return-void

    .line 339
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$StampsUserListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    sget v1, Lcom/yopeso/lieferando/R$string;->pleaseWait:I

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$17(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;I)V

    .line 346
    const-string v0, "RestaurantsFragment"

    const-string v1, " StampsUserListener onErrorResponse -> StampsLoadedListener"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$StampsUserListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/StampRestaurantsRequest;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$StampsUserListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    iget-object v2, v2, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLocation:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getLocationUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$StampsLoadedListener;

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$StampsUserListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$StampsLoadedListener;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$StampsLoadedListener;)V

    invoke-direct {v1, v2, v3}, Lcom/yopeso/lieferando/net/requests/StampRestaurantsRequest;-><init>(Ljava/lang/String;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_1
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$StampsUserListener;->onResponse(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onResponse(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/Stamp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 317
    .local p1, "stamps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/Stamp;>;"
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yopeso/lieferando/model/user/UserData;->setStampCards(Ljava/util/ArrayList;)V

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$StampsUserListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mRestaurants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 321
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$StampsUserListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$16(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$StampsUserListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$14(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)V

    .line 323
    const-string v0, "RestaurantsFragment"

    const-string v1, " StampsUserListener onResponse -> filterRestaurantsByCriteria"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$StampsUserListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$11(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)V

    .line 325
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$StampsUserListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$12(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$StampsUserListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$13(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)I

    move-result v2

    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$StampsUserListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$13(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x1e

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 330
    :goto_1
    return-void

    .line 325
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 327
    :cond_2
    const-string v0, "RestaurantsFragment"

    const-string v1, " StampsUserListener onResponse -> StampsLoadedListener"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$StampsUserListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/StampRestaurantsRequest;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$StampsUserListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    iget-object v2, v2, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLocation:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getLocationUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$StampsLoadedListener;

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$StampsUserListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$StampsLoadedListener;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$StampsLoadedListener;)V

    invoke-direct {v1, v2, v3}, Lcom/yopeso/lieferando/net/requests/StampRestaurantsRequest;-><init>(Ljava/lang/String;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_1
.end method
