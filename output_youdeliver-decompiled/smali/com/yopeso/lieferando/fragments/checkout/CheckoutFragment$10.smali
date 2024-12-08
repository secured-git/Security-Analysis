.class Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$10;
.super Ljava/lang/Object;
.source "CheckoutFragment.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getListenerPreorder()Lcom/yopeso/lieferando/net/requests/base/VolleyListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$10;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    .line 963
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 988
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$10;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->access$15(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;Lcom/android/volley/VolleyError;)V

    .line 989
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$10;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->access$16(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)V

    .line 990
    return-void
.end method

.method public onResponse(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 5
    .param p1, "restaurant"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    const/4 v3, 0x1

    .line 968
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$10;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 970
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 971
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$10;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/OrderPostRequest;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$10;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-static {v2}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->access$23(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$OrderPostListener;

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$10;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-direct {v3, v4}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$OrderPostListener;-><init>(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)V

    invoke-direct {v1, v2, v3}, Lcom/yopeso/lieferando/net/requests/OrderPostRequest;-><init>(Lorg/json/JSONObject;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v1}, Lcom/yopeso/lieferando/net/requests/OrderPostRequest;->withAuth()Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 984
    :goto_0
    return-void

    .line 973
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$10;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/OrderPostRequest;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$10;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-static {v2}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->access$23(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$OrderPostListener;

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$10;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-direct {v3, v4}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$OrderPostListener;-><init>(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)V

    invoke-direct {v1, v2, v3}, Lcom/yopeso/lieferando/net/requests/OrderPostRequest;-><init>(Lorg/json/JSONObject;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0

    .line 977
    :cond_1
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$10;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->access$16(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)V

    .line 979
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$10;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$10;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    sget v2, Lcom/yopeso/lieferando/R$string;->restaurant_closed:I

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 981
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$10;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->clear()V

    .line 982
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$10;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$10;->onResponse(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    return-void
.end method
