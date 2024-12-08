.class Lcom/yopeso/lieferando/net/push/RateOrderTask$GetCustomerOrdersListener;
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
.field final synthetic this$0:Lcom/yopeso/lieferando/net/push/RateOrderTask;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/net/push/RateOrderTask;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/yopeso/lieferando/net/push/RateOrderTask$GetCustomerOrdersListener;->this$0:Lcom/yopeso/lieferando/net/push/RateOrderTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/net/push/RateOrderTask;Lcom/yopeso/lieferando/net/push/RateOrderTask$GetCustomerOrdersListener;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/net/push/RateOrderTask$GetCustomerOrdersListener;-><init>(Lcom/yopeso/lieferando/net/push/RateOrderTask;)V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/yopeso/lieferando/net/push/RateOrderTask$GetCustomerOrdersListener;->this$0:Lcom/yopeso/lieferando/net/push/RateOrderTask;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/net/push/RateOrderTask;->access$3(Lcom/yopeso/lieferando/net/push/RateOrderTask;Z)V

    .line 120
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

    .line 121
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/net/push/RateOrderTask$GetCustomerOrdersListener;->onResponse(Ljava/util/List;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;)V
    .locals 5
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
    .line 101
    .local p1, "orders":Ljava/util/List;, "Ljava/util/List<Lcom/yopeso/lieferando/model/user/Order;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 103
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 113
    :cond_1
    iget-object v1, p0, Lcom/yopeso/lieferando/net/push/RateOrderTask$GetCustomerOrdersListener;->this$0:Lcom/yopeso/lieferando/net/push/RateOrderTask;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/yopeso/lieferando/net/push/RateOrderTask;->access$3(Lcom/yopeso/lieferando/net/push/RateOrderTask;Z)V

    .line 114
    return-void

    .line 103
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/user/Order;

    .line 104
    .local v0, "order":Lcom/yopeso/lieferando/model/user/Order;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Order;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yopeso/lieferando/net/push/RateOrderTask$GetCustomerOrdersListener;->this$0:Lcom/yopeso/lieferando/net/push/RateOrderTask;

    invoke-static {v3}, Lcom/yopeso/lieferando/net/push/RateOrderTask;->access$4(Lcom/yopeso/lieferando/net/push/RateOrderTask;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Order;->isRateable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    iget-object v2, p0, Lcom/yopeso/lieferando/net/push/RateOrderTask$GetCustomerOrdersListener;->this$0:Lcom/yopeso/lieferando/net/push/RateOrderTask;

    iget-object v3, p0, Lcom/yopeso/lieferando/net/push/RateOrderTask$GetCustomerOrdersListener;->this$0:Lcom/yopeso/lieferando/net/push/RateOrderTask;

    invoke-static {v3}, Lcom/yopeso/lieferando/net/push/RateOrderTask;->access$4(Lcom/yopeso/lieferando/net/push/RateOrderTask;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yopeso/lieferando/net/push/RateOrderTask$GetCustomerOrdersListener;->this$0:Lcom/yopeso/lieferando/net/push/RateOrderTask;

    invoke-static {v4}, Lcom/yopeso/lieferando/net/push/RateOrderTask;->access$5(Lcom/yopeso/lieferando/net/push/RateOrderTask;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/yopeso/lieferando/net/push/RateOrderTask;->access$6(Lcom/yopeso/lieferando/net/push/RateOrderTask;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
