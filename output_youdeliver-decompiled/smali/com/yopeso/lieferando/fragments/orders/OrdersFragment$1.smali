.class Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$1;
.super Ljava/lang/Object;
.source "OrdersFragment.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;

.field private final synthetic val$selectedOrder:Lcom/yopeso/lieferando/model/user/Order;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;Lcom/yopeso/lieferando/model/user/Order;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;

    iput-object p2, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$1;->val$selectedOrder:Lcom/yopeso/lieferando/model/user/Order;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .param p1, "arg0"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$string;->serverError:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 197
    return-void
.end method

.method public onResponse(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 2
    .param p1, "restaurant"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$1;->val$selectedOrder:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v0, p1}, Lcom/yopeso/lieferando/model/user/Order;->setRestaurant(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    .line 190
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$1;->val$selectedOrder:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->goToOrderDetailsFragment(Lcom/yopeso/lieferando/model/user/Order;)V

    .line 191
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$1;->onResponse(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    return-void
.end method
