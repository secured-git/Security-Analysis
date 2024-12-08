.class Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment$SingleOrderListener;
.super Ljava/lang/Object;
.source "MainFidelityPointsFragment.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SingleOrderListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
        "<",
        "Lcom/yopeso/lieferando/model/user/Order;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;)V
    .locals 0

    .prologue
    .line 396
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment$SingleOrderListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment$SingleOrderListener;)V
    .locals 0

    .prologue
    .line 396
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment$SingleOrderListener;-><init>(Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;)V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 406
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment$SingleOrderListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->access$2(Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;)V

    .line 407
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment$SingleOrderListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->access$5(Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;Lcom/android/volley/VolleyError;)V

    .line 408
    return-void
.end method

.method public onResponse(Lcom/yopeso/lieferando/model/user/Order;)V
    .locals 1
    .param p1, "order"    # Lcom/yopeso/lieferando/model/user/Order;

    .prologue
    .line 400
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment$SingleOrderListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->access$2(Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;)V

    .line 401
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment$SingleOrderListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;

    invoke-virtual {v0, p1}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->addOrderRateFragment(Lcom/yopeso/lieferando/model/user/Order;)V

    .line 402
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment$SingleOrderListener;->onResponse(Lcom/yopeso/lieferando/model/user/Order;)V

    return-void
.end method
