.class public Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;
.super Lcom/yopeso/lieferando/custom/LRFragment;
.source "BaseOrderFragment.java"

# interfaces
.implements Lcom/yopeso/lieferando/callback/DeliveryAreaCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment$DeliveryAreaListener;,
        Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment$RestaurantListener;
    }
.end annotation


# instance fields
.field private mOrder:Lcom/yopeso/lieferando/model/user/Order;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/yopeso/lieferando/custom/LRFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;Lcom/android/volley/VolleyError;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;->handleNetworkError(Lcom/android/volley/VolleyError;)V

    return-void
.end method


# virtual methods
.method protected addRestaurantDetailsFragment(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Z)V
    .locals 4
    .param p1, "r"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    .param p2, "clearCart"    # Z

    .prologue
    const/4 v2, 0x0

    .line 179
    if-eqz p2, :cond_1

    .line 180
    sget-object v1, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {p1, v1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    new-instance v2, Lcom/yopeso/lieferando/net/requests/DeliveryAreaRequest;

    new-instance v3, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment$DeliveryAreaListener;

    invoke-direct {v3, p0}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment$DeliveryAreaListener;-><init>(Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;)V

    invoke-direct {v2, p1, v3}, Lcom/yopeso/lieferando/net/requests/DeliveryAreaRequest;-><init>(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v1, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 194
    :goto_0
    return-void

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment$6;

    invoke-direct {v2, p0, p1}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment$6;-><init>(Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    invoke-static {p1, v1, v2}, Lcom/yopeso/lieferando/dialogs/PreOrderingDialog;->getDialog(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 189
    .local v0, "preorder":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 192
    .end local v0    # "preorder":Landroid/app/AlertDialog;
    :cond_1
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, p2, p1, v2, v2}, Lcom/yopeso/lieferando/util/IntentNavUtils;->goToRestaurant(Landroid/app/Activity;ZLcom/yopeso/lieferando/model/restaurant/Restaurant;ZZ)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected checkRestaurant(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 8
    .param p1, "restaurant"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    const/4 v7, 0x1

    .line 86
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOnline()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 87
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v4

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v5

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 88
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    .line 90
    .local v0, "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v4

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 91
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getPreorderOffset()I

    move-result v4

    const/16 v5, 0x1c20

    if-lt v4, v5, :cond_1

    .line 93
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    new-instance v5, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment$2;

    invoke-direct {v5, p0, v0}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment$2;-><init>(Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;Lcom/yopeso/lieferando/model/cart/ShoppingCart;)V

    invoke-static {p1, v4, v7, v5}, Lcom/yopeso/lieferando/dialogs/PreOrderingDialog;->getDialog(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Landroid/content/Context;ZLandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v3

    .line 99
    .local v3, "preorder":Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 150
    .end local v0    # "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    .end local v3    # "preorder":Landroid/app/AlertDialog;
    :cond_0
    :goto_0
    return-void

    .line 100
    .restart local v0    # "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    :cond_1
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v4

    sget-object v5, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {v4, v5}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 101
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;->addRestaurantDetailsFragment(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Z)V

    goto :goto_0

    .line 103
    :cond_2
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v4

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    new-instance v6, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment$3;

    invoke-direct {v6, p0, v0}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment$3;-><init>(Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;Lcom/yopeso/lieferando/model/cart/ShoppingCart;)V

    invoke-static {v4, v5, v6}, Lcom/yopeso/lieferando/dialogs/PreOrderingDialog;->getDialog(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v3

    .line 109
    .restart local v3    # "preorder":Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 112
    .end local v3    # "preorder":Landroid/app/AlertDialog;
    :cond_3
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 113
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v4

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    new-instance v6, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment$4;

    invoke-direct {v6, p0, p1}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment$4;-><init>(Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    .line 122
    new-instance v7, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment$5;

    invoke-direct {v7, p0, v0}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment$5;-><init>(Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;Lcom/yopeso/lieferando/model/cart/ShoppingCart;)V

    .line 113
    invoke-static {v4, v5, v6, v7}, Lcom/yopeso/lieferando/dialogs/CartNotEmptyDialog;->getDialog(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v1

    .line 129
    .local v1, "cartDialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 132
    .end local v1    # "cartDialog":Landroid/app/AlertDialog;
    :cond_4
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getOpenings()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 133
    invoke-virtual {p0, p1, v7}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;->addRestaurantDetailsFragment(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Z)V

    goto :goto_0

    .line 135
    :cond_5
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v4

    new-instance v5, Lcom/yopeso/lieferando/net/requests/RestaurantRequest;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getServiceUrl()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment$RestaurantListener;

    invoke-direct {v7, p0}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment$RestaurantListener;-><init>(Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;)V

    invoke-direct {v5, v6, v7}, Lcom/yopeso/lieferando/net/requests/RestaurantRequest;-><init>(Ljava/lang/String;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v4, v5}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0

    .line 141
    .end local v0    # "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    :cond_6
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->printer_offline_msg:I

    invoke-static {v4, v5}, Lcom/yopeso/lieferando/dialogs/SingleOptionInfoDialog;->getDialog(Landroid/content/Context;I)Landroid/app/AlertDialog;

    move-result-object v2

    .line 142
    .local v2, "offline":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 146
    .end local v2    # "offline":Landroid/app/AlertDialog;
    :cond_7
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->restaurant_offline:I

    invoke-static {v4, v5}, Lcom/yopeso/lieferando/dialogs/SingleOptionInfoDialog;->getDialog(Landroid/content/Context;I)Landroid/app/AlertDialog;

    move-result-object v2

    .line 147
    .restart local v2    # "offline":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method public getListener()Lcom/yopeso/lieferando/net/requests/base/VolleyListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/Restaurant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment$1;

    invoke-direct {v0, p0}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment$1;-><init>(Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;)V

    return-object v0
.end method

.method public onDeliveryAreaSelected(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;)V
    .locals 3
    .param p1, "r"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    .param p2, "da"    # Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;

    .prologue
    const/4 v2, 0x0

    .line 168
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setDeliveryArea(Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;)V

    .line 169
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, p1, v2, v2}, Lcom/yopeso/lieferando/util/IntentNavUtils;->goToRestaurant(Landroid/app/Activity;ZLcom/yopeso/lieferando/model/restaurant/Restaurant;ZZ)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;->startActivity(Landroid/content/Intent;)V

    .line 170
    return-void
.end method

.method public onEvent(Lcom/yopeso/lieferando/events/AuthenticationEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/yopeso/lieferando/events/AuthenticationEvent;

    .prologue
    .line 196
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 200
    :cond_0
    return-void
.end method

.method public onLocationSelected(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Lcom/yopeso/lieferando/model/user/Location;)V
    .locals 3
    .param p1, "r"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    .param p2, "loc"    # Lcom/yopeso/lieferando/model/user/Location;

    .prologue
    const/4 v2, 0x0

    .line 174
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setDeliveryAddress(Lcom/yopeso/lieferando/model/user/Location;)V

    .line 175
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, p1, v2, v2}, Lcom/yopeso/lieferando/util/IntentNavUtils;->goToRestaurant(Landroid/app/Activity;ZLcom/yopeso/lieferando/model/restaurant/Restaurant;ZZ)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;->startActivity(Landroid/content/Intent;)V

    .line 176
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 205
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onPause()V

    .line 206
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 209
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 213
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onResume()V

    .line 214
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 217
    :cond_0
    return-void
.end method

.method protected remakeOrder(Lcom/yopeso/lieferando/model/user/Order;)V
    .locals 2
    .param p1, "order"    # Lcom/yopeso/lieferando/model/user/Order;

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/Order;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackReorder(Ljava/lang/String;)V

    .line 74
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    .line 75
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Order;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;->checkRestaurant(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    .line 76
    return-void
.end method
