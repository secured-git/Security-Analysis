.class public Lcom/yopeso/lieferando/activity/PaymentActivity$OrderPutListener;
.super Ljava/lang/Object;
.source "PaymentActivity.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/activity/PaymentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "OrderPutListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/activity/PaymentActivity;


# direct methods
.method protected constructor <init>(Lcom/yopeso/lieferando/activity/PaymentActivity;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/yopeso/lieferando/activity/PaymentActivity$OrderPutListener;->this$0:Lcom/yopeso/lieferando/activity/PaymentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "arg0"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 434
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/PaymentActivity$OrderPutListener;->this$0:Lcom/yopeso/lieferando/activity/PaymentActivity;

    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/activity/PaymentActivity;->setResult(I)V

    .line 435
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/PaymentActivity$OrderPutListener;->this$0:Lcom/yopeso/lieferando/activity/PaymentActivity;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/activity/PaymentActivity;->finish()V

    .line 436
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/activity/PaymentActivity$OrderPutListener;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 15
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 392
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 395
    .local v14, "resultIntent":Landroid/content/Intent;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static/range {p1 .. p1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 396
    .local v13, "response":Lorg/json/JSONObject;
    const-string v0, "redirectUrl"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 397
    .local v12, "redirectUrl":Ljava/lang/String;
    const-string v0, "http://order-did-fail1984.com"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    const-string v0, "error"

    const-string v1, "errorMessage"

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/PaymentActivity$OrderPutListener;->this$0:Lcom/yopeso/lieferando/activity/PaymentActivity;

    const/16 v1, 0x63

    invoke-virtual {v0, v1, v14}, Lcom/yopeso/lieferando/activity/PaymentActivity;->setResult(ILandroid/content/Intent;)V

    .line 400
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/PaymentActivity$OrderPutListener;->this$0:Lcom/yopeso/lieferando/activity/PaymentActivity;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/activity/PaymentActivity;->finish()V

    .line 430
    .end local v12    # "redirectUrl":Ljava/lang/String;
    .end local v13    # "response":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 401
    .restart local v12    # "redirectUrl":Ljava/lang/String;
    .restart local v13    # "response":Lorg/json/JSONObject;
    :cond_0
    const-string v0, "http://order-did-cancel984.com"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    const-string v0, "error"

    const-string v1, "errorMessage"

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/PaymentActivity$OrderPutListener;->this$0:Lcom/yopeso/lieferando/activity/PaymentActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v14}, Lcom/yopeso/lieferando/activity/PaymentActivity;->setResult(ILandroid/content/Intent;)V

    .line 404
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/PaymentActivity$OrderPutListener;->this$0:Lcom/yopeso/lieferando/activity/PaymentActivity;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/activity/PaymentActivity;->finish()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 425
    .end local v12    # "redirectUrl":Ljava/lang/String;
    .end local v13    # "response":Lorg/json/JSONObject;
    :catch_0
    move-exception v11

    .line 426
    .local v11, "e":Lorg/json/JSONException;
    invoke-virtual {v11}, Lorg/json/JSONException;->printStackTrace()V

    .line 427
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/PaymentActivity$OrderPutListener;->this$0:Lcom/yopeso/lieferando/activity/PaymentActivity;

    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/activity/PaymentActivity;->setResult(I)V

    .line 428
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/PaymentActivity$OrderPutListener;->this$0:Lcom/yopeso/lieferando/activity/PaymentActivity;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/activity/PaymentActivity;->finish()V

    goto :goto_0

    .line 406
    .end local v11    # "e":Lorg/json/JSONException;
    .restart local v12    # "redirectUrl":Ljava/lang/String;
    .restart local v13    # "response":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/PaymentActivity$OrderPutListener;->this$0:Lcom/yopeso/lieferando/activity/PaymentActivity;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/activity/PaymentActivity;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v10

    .line 407
    .local v10, "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryAddress()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v10}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryAddress()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Location;->getEmail()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v10}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryAddress()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Location;->getPhone()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    if-eqz v0, :cond_2

    .line 409
    :try_start_2
    invoke-virtual {v10}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getCostWithShipping()I

    move-result v0

    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v1

    invoke-virtual {v10}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryAddress()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Location;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v3

    invoke-virtual {v10}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getPaymentType()Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    move-result-object v4

    .line 410
    invoke-virtual {v10}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryAddress()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/user/Location;->getPhone()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getOrderId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryAddress()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v7

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/user/Location;->getPlz()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryAddress()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yopeso/lieferando/model/user/Location;->getCityId()I

    move-result v8

    iget-object v9, p0, Lcom/yopeso/lieferando/activity/PaymentActivity$OrderPutListener;->this$0:Lcom/yopeso/lieferando/activity/PaymentActivity;

    invoke-virtual {v9}, Lcom/yopeso/lieferando/activity/PaymentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    .line 409
    invoke-static/range {v0 .. v9}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackSales(IZLjava/lang/String;ILcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V

    .line 412
    invoke-static {v10}, Lcom/yopeso/lieferando/util/TrackingUtils;->checkOutKahuna(Lcom/yopeso/lieferando/model/cart/ShoppingCart;)V

    .line 414
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/PaymentActivity$OrderPutListener;->this$0:Lcom/yopeso/lieferando/activity/PaymentActivity;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/activity/PaymentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackFBOrders(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 422
    :cond_2
    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/PaymentActivity$OrderPutListener;->this$0:Lcom/yopeso/lieferando/activity/PaymentActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v14}, Lcom/yopeso/lieferando/activity/PaymentActivity;->setResult(ILandroid/content/Intent;)V

    .line 423
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/PaymentActivity$OrderPutListener;->this$0:Lcom/yopeso/lieferando/activity/PaymentActivity;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/activity/PaymentActivity;->finish()V

    goto/16 :goto_0

    .line 417
    :catch_1
    move-exception v11

    .line 418
    .local v11, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v11}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method
