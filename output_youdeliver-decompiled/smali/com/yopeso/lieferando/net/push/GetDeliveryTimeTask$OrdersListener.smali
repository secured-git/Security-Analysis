.class Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask$OrdersListener;
.super Ljava/lang/Object;
.source "GetDeliveryTimeTask.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;
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
.field final synthetic this$0:Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask$OrdersListener;->this$0:Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask$OrdersListener;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask$OrdersListener;-><init>(Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;)V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .param p1, "arg0"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 122
    const-class v0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void
.end method

.method public onResponse(Lcom/yopeso/lieferando/model/OrderDeliveryTimeResponse;)V
    .locals 7
    .param p1, "orderResponseDelivery"    # Lcom/yopeso/lieferando/model/OrderDeliveryTimeResponse;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 102
    iget-object v1, p0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask$OrdersListener;->this$0:Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->access$1(Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;Ljava/lang/String;)V

    .line 103
    const-class v0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "order:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask$OrdersListener;->this$0:Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;

    invoke-static {v2}, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->access$2(Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",restaurant:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask$OrdersListener;->this$0:Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;

    invoke-static {v2}, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->access$3(Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",onResponse-> Status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask$OrdersListener;->this$0:Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;

    invoke-static {v2}, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->access$4(Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const-class v0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onResponse-> Delivery:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "null"

    :goto_1
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v0, "STORNO"

    iget-object v1, p0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask$OrdersListener;->this$0:Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;

    invoke-static {v1}, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->access$4(Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 107
    iget-object v0, p0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask$OrdersListener;->this$0:Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;

    invoke-static {v0, v4}, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->access$5(Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;Z)V

    .line 108
    iget-object v0, p0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask$OrdersListener;->this$0:Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;

    iget-object v1, p0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask$OrdersListener;->this$0:Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;

    invoke-static {v1}, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->access$2(Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask$OrdersListener;->this$0:Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;

    invoke-static {v2}, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->access$3(Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;)Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->access$6(Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;Ljava/lang/String;Ljava/lang/String;Lcom/yopeso/lieferando/model/OrderDeliveryTimeResponse;ZZ)V

    .line 117
    :cond_0
    :goto_2
    return-void

    .line 102
    :cond_1
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/OrderDeliveryTimeResponse;->getmStatus()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 104
    :cond_2
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/OrderDeliveryTimeResponse;->getmDelivery()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "null"

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/OrderDeliveryTimeResponse;->getmDelivery()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 111
    :cond_4
    const-string v0, "AFFIRMED"

    iget-object v1, p0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask$OrdersListener;->this$0:Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;

    invoke-static {v1}, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->access$4(Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/OrderDeliveryTimeResponse;->getmDelivery()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask$OrdersListener;->this$0:Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;

    invoke-static {v0, v4}, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->access$5(Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;Z)V

    .line 114
    iget-object v0, p0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask$OrdersListener;->this$0:Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;

    iget-object v1, p0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask$OrdersListener;->this$0:Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;

    invoke-static {v1}, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->access$2(Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask$OrdersListener;->this$0:Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;

    invoke-static {v2}, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->access$3(Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;)Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move v4, v6

    move v5, v6

    invoke-static/range {v0 .. v5}, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->access$6(Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;Ljava/lang/String;Ljava/lang/String;Lcom/yopeso/lieferando/model/OrderDeliveryTimeResponse;ZZ)V

    goto :goto_2
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/OrderDeliveryTimeResponse;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask$OrdersListener;->onResponse(Lcom/yopeso/lieferando/model/OrderDeliveryTimeResponse;)V

    return-void
.end method
