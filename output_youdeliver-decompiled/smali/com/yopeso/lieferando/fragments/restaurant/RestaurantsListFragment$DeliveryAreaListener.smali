.class public Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$DeliveryAreaListener;
.super Ljava/lang/Object;
.source "RestaurantsListFragment.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeliveryAreaListener"
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
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;


# direct methods
.method public constructor <init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$DeliveryAreaListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 391
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$DeliveryAreaListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$15(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;Lcom/android/volley/VolleyError;)V

    .line 392
    return-void
.end method

.method public onResponse(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 4
    .param p1, "r"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 377
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$DeliveryAreaListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    iget-object v2, v2, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLocation:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getCityId()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getDeliveryAreaForCity(I)Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;

    move-result-object v0

    .line 378
    .local v0, "da":Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;
    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {p1, v0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->setDeliveryArea(Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;)V

    .line 380
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$DeliveryAreaListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v2

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$DeliveryAreaListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    iget-object v3, v3, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLocation:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setAddressAtLocation(Lcom/yopeso/lieferando/model/LocationSuggestion;)V

    .line 381
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$DeliveryAreaListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-virtual {v2, p1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->checkPreordering(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    .line 387
    :goto_0
    return-void

    .line 383
    :cond_0
    invoke-static {p1}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->newInstance(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    move-result-object v1

    .line 384
    .local v1, "dialog":Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$DeliveryAreaListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->setCallback(Lcom/yopeso/lieferando/callback/DeliveryAreaCallBack;)V

    .line 385
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$DeliveryAreaListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$DeliveryAreaListener;->onResponse(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    return-void
.end method
