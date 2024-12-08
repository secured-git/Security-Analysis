.class public Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$OrderPostListener;
.super Ljava/lang/Object;
.source "CheckoutFragment.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "OrderPostListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
        "<",
        "Lcom/yopeso/lieferando/model/OrderResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;


# direct methods
.method protected constructor <init>(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)V
    .locals 0

    .prologue
    .line 2077
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$OrderPostListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 2132
    const-string v0, "CheckoutFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ERROR on Errror:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2133
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$OrderPostListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->access$15(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;Lcom/android/volley/VolleyError;)V

    .line 2134
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$OrderPostListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->access$16(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)V

    .line 2135
    return-void
.end method

.method public onResponse(Lcom/yopeso/lieferando/model/OrderResponse;)V
    .locals 13
    .param p1, "post"    # Lcom/yopeso/lieferando/model/OrderResponse;

    .prologue
    const/4 v12, 0x1

    .line 2081
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$OrderPostListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->access$16(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)V

    .line 2082
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/OrderResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2083
    const-string v0, "CheckoutFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ERROR:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/OrderResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2084
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$OrderPostListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/SettingsContent;->getErrorCodes()Ljava/util/Map;

    move-result-object v10

    .line 2085
    .local v10, "errors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/OrderResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2086
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$OrderPostListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/OrderResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v1, v0, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2128
    .end local v10    # "errors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 2090
    :cond_1
    const-string v0, "CheckoutFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OrderPostListener: OrderID:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/OrderResponse;->getOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$OrderPostListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/OrderResponse;->getMisc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setMisc(Ljava/lang/String;)V

    .line 2092
    const-string v0, "CheckoutFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MISC:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/OrderResponse;->getMisc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2094
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$OrderPostListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-static {v0}, Lcom/yopeso/lieferando/util/TrackingUtils;->checkOutKahuna(Lcom/yopeso/lieferando/model/cart/ShoppingCart;)V

    .line 2096
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$OrderPostListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->access$17(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    move-result-object v0

    sget-object v1, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->bar:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$OrderPostListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->access$17(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    move-result-object v0

    sget-object v1, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->ec:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    if-ne v0, v1, :cond_3

    .line 2097
    :cond_2
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$OrderPostListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getCostWithShipping()I

    move-result v0

    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$OrderPostListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    iget-object v2, v2, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryAddress()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Location;->getEmail()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$OrderPostListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    iget-object v3, v3, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v3

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$OrderPostListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    iget-object v4, v4, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getPaymentType()Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    move-result-object v4

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$OrderPostListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    iget-object v5, v5, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    .line 2098
    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryAddress()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/user/Location;->getPhone()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/OrderResponse;->getOrderId()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$OrderPostListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    iget-object v7, v7, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryAddress()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v7

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/user/Location;->getPlz()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$OrderPostListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    iget-object v8, v8, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v8}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryAddress()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yopeso/lieferando/model/user/Location;->getCityId()I

    move-result v8

    iget-object v9, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$OrderPostListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-virtual {v9}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v9

    invoke-virtual {v9}, Lcom/yopeso/lieferando/LieferandoApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    .line 2097
    invoke-static/range {v0 .. v9}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackSales(IZLjava/lang/String;ILcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V

    .line 2100
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$OrderPostListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-static {v0}, Lcom/yopeso/lieferando/util/TrackingUtils;->checkOutKahuna(Lcom/yopeso/lieferando/model/cart/ShoppingCart;)V

    .line 2102
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$OrderPostListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackFBOrders(Landroid/content/Context;)V

    .line 2104
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$OrderPostListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/OrderResponse;->getOrderId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$OrderPostListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    iget-object v2, v2, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yopeso/lieferando/util/IntentNavUtils;->startCheckOrderDeliveryTime(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2105
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$OrderPostListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-virtual {v0, v12}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->showSuccessAndRetrun(Z)V

    goto/16 :goto_0

    .line 2111
    :cond_3
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$OrderPostListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getCostWithShipping()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$OrderPostListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->access$17(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    move-result-object v0

    sget-object v1, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->paypal:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    if-eq v0, v1, :cond_7

    :cond_4
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$OrderPostListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getCostWithShipping()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$OrderPostListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->access$17(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    move-result-object v0

    sget-object v1, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->ebanking:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    if-eq v0, v1, :cond_7

    .line 2112
    :cond_5
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$OrderPostListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getCostWithShipping()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$OrderPostListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->access$17(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    move-result-object v0

    sget-object v1, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->payu:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    if-eq v0, v1, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$OrderPostListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getCostWithShipping()I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$OrderPostListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->access$17(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    move-result-object v0

    sget-object v1, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->credit:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    if-ne v0, v1, :cond_8

    .line 2113
    :cond_7
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$OrderPostListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->showSuccessAndRetrun(Z)V

    .line 2115
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$OrderPostListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/OrderResponse;->getOrderId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$OrderPostListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    iget-object v2, v2, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yopeso/lieferando/util/IntentNavUtils;->startCheckOrderDeliveryTime(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2119
    :cond_8
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/OrderResponse;->getRedirectUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/OrderResponse;->getRedirectMethod()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2120
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$OrderPostListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->access$18(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;Lcom/yopeso/lieferando/model/OrderResponse;)V

    .line 2121
    const-string v0, "CheckoutFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RedirectUrl:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/OrderResponse;->getRedirectUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2122
    new-instance v11, Landroid/content/Intent;

    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$OrderPostListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/yopeso/lieferando/activity/PaymentActivity;

    invoke-direct {v11, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2123
    .local v11, "paymentIntent":Landroid/content/Intent;
    const-string v0, "order_response"

    invoke-virtual {v11, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2124
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$OrderPostListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    const/16 v1, 0x2717

    invoke-virtual {v0, v11, v1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/OrderResponse;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$OrderPostListener;->onResponse(Lcom/yopeso/lieferando/model/OrderResponse;)V

    return-void
.end method
