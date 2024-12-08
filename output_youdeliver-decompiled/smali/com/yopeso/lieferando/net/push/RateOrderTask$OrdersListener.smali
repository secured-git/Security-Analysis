.class Lcom/yopeso/lieferando/net/push/RateOrderTask$OrdersListener;
.super Ljava/lang/Object;
.source "RateOrderTask.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/net/push/RateOrderTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OrdersListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
        "<",
        "Lcom/yopeso/lieferando/model/OrderDeliveryTimeResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/net/push/RateOrderTask;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/net/push/RateOrderTask;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/yopeso/lieferando/net/push/RateOrderTask$OrdersListener;->this$0:Lcom/yopeso/lieferando/net/push/RateOrderTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/net/push/RateOrderTask;Lcom/yopeso/lieferando/net/push/RateOrderTask$OrdersListener;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/net/push/RateOrderTask$OrdersListener;-><init>(Lcom/yopeso/lieferando/net/push/RateOrderTask;)V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .param p1, "arg0"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/yopeso/lieferando/net/push/RateOrderTask$OrdersListener;->this$0:Lcom/yopeso/lieferando/net/push/RateOrderTask;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/net/push/RateOrderTask;->access$3(Lcom/yopeso/lieferando/net/push/RateOrderTask;Z)V

    .line 93
    invoke-static {}, Lcom/yopeso/lieferando/net/push/RateOrderTask;->access$1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method

.method public onResponse(Lcom/yopeso/lieferando/model/OrderDeliveryTimeResponse;)V
    .locals 6
    .param p1, "orderResponseDelivery"    # Lcom/yopeso/lieferando/model/OrderDeliveryTimeResponse;

    .prologue
    const/4 v5, 0x1

    .line 75
    invoke-static {}, Lcom/yopeso/lieferando/net/push/RateOrderTask;->access$1()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OrdersListener: onResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/OrderDeliveryTimeResponse;->getmStatus()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "AFFIRMED"

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/OrderDeliveryTimeResponse;->getmStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DELIVERED"

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/OrderDeliveryTimeResponse;->getmStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    :cond_0
    invoke-static {}, Lcom/yopeso/lieferando/net/push/RateOrderTask;->access$1()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Order delivered -> check ratability ... "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Lcom/yopeso/lieferando/net/push/RateOrderTask$OrdersListener;->this$0:Lcom/yopeso/lieferando/net/push/RateOrderTask;

    invoke-static {v0}, Lcom/yopeso/lieferando/net/push/RateOrderTask;->access$2(Lcom/yopeso/lieferando/net/push/RateOrderTask;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/CustomerOrdersRequest;

    new-instance v2, Lcom/yopeso/lieferando/net/push/RateOrderTask$GetCustomerOrdersListener;

    iget-object v3, p0, Lcom/yopeso/lieferando/net/push/RateOrderTask$OrdersListener;->this$0:Lcom/yopeso/lieferando/net/push/RateOrderTask;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/yopeso/lieferando/net/push/RateOrderTask$GetCustomerOrdersListener;-><init>(Lcom/yopeso/lieferando/net/push/RateOrderTask;Lcom/yopeso/lieferando/net/push/RateOrderTask$GetCustomerOrdersListener;)V

    invoke-direct {v1, v5, v2}, Lcom/yopeso/lieferando/net/requests/CustomerOrdersRequest;-><init>(ILcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v1}, Lcom/yopeso/lieferando/net/requests/CustomerOrdersRequest;->withAuth()Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 87
    :goto_0
    return-void

    .line 83
    :cond_1
    invoke-static {}, Lcom/yopeso/lieferando/net/push/RateOrderTask;->access$1()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Order not delievered -> no push!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-static {}, Lcom/yopeso/lieferando/net/push/RateOrderTask;->access$1()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Order not delievered:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "orderResponseDelivery == null"

    :goto_1
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcom/yopeso/lieferando/net/push/RateOrderTask$OrdersListener;->this$0:Lcom/yopeso/lieferando/net/push/RateOrderTask;

    invoke-static {v0, v5}, Lcom/yopeso/lieferando/net/push/RateOrderTask;->access$3(Lcom/yopeso/lieferando/net/push/RateOrderTask;Z)V

    goto :goto_0

    .line 84
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "status:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/OrderDeliveryTimeResponse;->getmStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/OrderDeliveryTimeResponse;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/net/push/RateOrderTask$OrdersListener;->onResponse(Lcom/yopeso/lieferando/model/OrderDeliveryTimeResponse;)V

    return-void
.end method
