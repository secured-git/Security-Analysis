.class Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$GetCustomerOrdersListener;
.super Ljava/lang/Object;
.source "OrdersFragment.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetCustomerOrdersListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/yopeso/lieferando/model/user/Order;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$GetCustomerOrdersListener;->this$0:Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$GetCustomerOrdersListener;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$GetCustomerOrdersListener;-><init>(Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;)V

    return-void
.end method

.method static synthetic access$2(Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$GetCustomerOrdersListener;)Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$GetCustomerOrdersListener;->this$0:Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;

    return-object v0
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$GetCustomerOrdersListener;->this$0:Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->access$0(Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$GetCustomerOrdersListener;->this$0:Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->access$5(Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;Lcom/android/volley/VolleyError;)V

    .line 94
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$GetCustomerOrdersListener;->onResponse(Ljava/util/List;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yopeso/lieferando/model/user/Order;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "orders":Ljava/util/List;, "Ljava/util/List<Lcom/yopeso/lieferando/model/user/Order;>;"
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$GetCustomerOrdersListener;->this$0:Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->access$0(Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 52
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$GetCustomerOrdersListener;->this$0:Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;

    iget-object v1, v1, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->mOrders:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 54
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_2

    .line 55
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$GetCustomerOrdersListener;->this$0:Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->access$1(Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;)Lcom/yopeso/lieferando/adapters/OrdersAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/adapters/OrdersAdapter;->setLoadMoreButtonIsShown(Z)V

    .line 59
    :goto_0
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$GetCustomerOrdersListener;->this$0:Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->access$1(Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;)Lcom/yopeso/lieferando/adapters/OrdersAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/adapters/OrdersAdapter;->notifyDataSetChanged()V

    .line 61
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$GetCustomerOrdersListener;->this$0:Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->access$2(Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 63
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$GetCustomerOrdersListener;->this$0:Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;

    iget-object v1, v1, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->mOrders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 86
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$GetCustomerOrdersListener;->this$0:Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->access$4(Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;Ljava/lang/String;)V

    .line 88
    :cond_1
    return-void

    .line 57
    :cond_2
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$GetCustomerOrdersListener;->this$0:Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->access$1(Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;)Lcom/yopeso/lieferando/adapters/OrdersAdapter;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/adapters/OrdersAdapter;->setEnableLoadMoreButton(Z)V

    goto :goto_0

    .line 63
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/user/Order;

    .line 64
    .local v0, "order":Lcom/yopeso/lieferando/model/user/Order;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Order;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$GetCustomerOrdersListener;->this$0:Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;

    invoke-static {v3}, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->access$2(Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$GetCustomerOrdersListener;->this$0:Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    new-instance v3, Lcom/yopeso/lieferando/net/requests/RestaurantRequest;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Order;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getServiceUrl()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$GetCustomerOrdersListener$1;

    invoke-direct {v5, p0, v0}, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$GetCustomerOrdersListener$1;-><init>(Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$GetCustomerOrdersListener;Lcom/yopeso/lieferando/model/user/Order;)V

    invoke-direct {v3, v4, v5}, Lcom/yopeso/lieferando/net/requests/RestaurantRequest;-><init>(Ljava/lang/String;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v2, v3}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_1
.end method
