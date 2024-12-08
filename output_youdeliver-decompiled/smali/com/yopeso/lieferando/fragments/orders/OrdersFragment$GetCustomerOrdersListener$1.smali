.class Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$GetCustomerOrdersListener$1;
.super Ljava/lang/Object;
.source "OrdersFragment.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$GetCustomerOrdersListener;->onResponse(Ljava/util/List;)V
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
.field final synthetic this$1:Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$GetCustomerOrdersListener;

.field private final synthetic val$order:Lcom/yopeso/lieferando/model/user/Order;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$GetCustomerOrdersListener;Lcom/yopeso/lieferando/model/user/Order;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$GetCustomerOrdersListener$1;->this$1:Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$GetCustomerOrdersListener;

    iput-object p2, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$GetCustomerOrdersListener$1;->val$order:Lcom/yopeso/lieferando/model/user/Order;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .param p1, "arg0"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$GetCustomerOrdersListener$1;->this$1:Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$GetCustomerOrdersListener;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$GetCustomerOrdersListener;->access$2(Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$GetCustomerOrdersListener;)Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$string;->serverError:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 82
    return-void
.end method

.method public onResponse(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 3
    .param p1, "restaurant"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$GetCustomerOrdersListener$1;->val$order:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v0, p1}, Lcom/yopeso/lieferando/model/user/Order;->setRestaurant(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    .line 70
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$GetCustomerOrdersListener$1;->this$1:Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$GetCustomerOrdersListener;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$GetCustomerOrdersListener;->access$2(Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$GetCustomerOrdersListener;)Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->access$3(Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$GetCustomerOrdersListener$1;->this$1:Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$GetCustomerOrdersListener;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$GetCustomerOrdersListener;->access$2(Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$GetCustomerOrdersListener;)Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$GetCustomerOrdersListener$1;->val$order:Lcom/yopeso/lieferando/model/user/Order;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$GetCustomerOrdersListener$1;->this$1:Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$GetCustomerOrdersListener;

    invoke-static {v2}, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$GetCustomerOrdersListener;->access$2(Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$GetCustomerOrdersListener;)Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;

    move-result-object v2

    invoke-static {v2}, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->access$3(Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->goToOrderDetailsFragment(Lcom/yopeso/lieferando/model/user/Order;Ljava/lang/String;)V

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$GetCustomerOrdersListener$1;->this$1:Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$GetCustomerOrdersListener;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$GetCustomerOrdersListener;->access$2(Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$GetCustomerOrdersListener;)Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$GetCustomerOrdersListener$1;->val$order:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->goToOrderDetailsFragment(Lcom/yopeso/lieferando/model/user/Order;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$GetCustomerOrdersListener$1;->onResponse(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    return-void
.end method
