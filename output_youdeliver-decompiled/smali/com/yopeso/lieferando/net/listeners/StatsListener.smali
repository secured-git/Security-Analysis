.class public Lcom/yopeso/lieferando/net/listeners/StatsListener;
.super Ljava/lang/Object;
.source "StatsListener.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
        "<",
        "Lcom/yopeso/lieferando/model/user/UserData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 27
    const-class v0, Lcom/yopeso/lieferando/net/listeners/AddFavoriteListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-void
.end method

.method public onResponse(Lcom/yopeso/lieferando/model/user/UserData;)V
    .locals 3
    .param p1, "ud"    # Lcom/yopeso/lieferando/model/user/UserData;

    .prologue
    .line 16
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v0

    .line 17
    .local v0, "userData":Lcom/yopeso/lieferando/model/user/UserData;
    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/UserData;->getFidelity()Lcom/yopeso/lieferando/model/user/UserData$Fidelity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/UserData;->setFidelity(Lcom/yopeso/lieferando/model/user/UserData$Fidelity;)V

    .line 19
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/UserData;->getOrders()Lcom/yopeso/lieferando/model/user/UserData$Orders;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/UserData;->setOrders(Lcom/yopeso/lieferando/model/user/UserData$Orders;)V

    .line 20
    invoke-static {v0}, Lcom/yopeso/lieferando/util/UserStore;->setData(Lcom/yopeso/lieferando/model/user/UserData;)V

    .line 21
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v2, Lcom/yopeso/lieferando/events/UserDataUpdatedEvent;

    invoke-direct {v2}, Lcom/yopeso/lieferando/events/UserDataUpdatedEvent;-><init>()V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 23
    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/net/listeners/StatsListener;->onResponse(Lcom/yopeso/lieferando/model/user/UserData;)V

    return-void
.end method
