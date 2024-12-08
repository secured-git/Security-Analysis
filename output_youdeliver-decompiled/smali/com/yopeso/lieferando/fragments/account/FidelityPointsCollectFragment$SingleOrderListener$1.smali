.class Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$SingleOrderListener$1;
.super Ljava/lang/Object;
.source "FidelityPointsCollectFragment.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$SingleOrderListener;->onResponse(Lcom/yopeso/lieferando/model/user/Order;)V
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
.field final synthetic this$1:Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$SingleOrderListener;

.field private final synthetic val$order:Lcom/yopeso/lieferando/model/user/Order;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$SingleOrderListener;Lcom/yopeso/lieferando/model/user/Order;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$SingleOrderListener$1;->this$1:Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$SingleOrderListener;

    iput-object p2, p0, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$SingleOrderListener$1;->val$order:Lcom/yopeso/lieferando/model/user/Order;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "arg0"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$SingleOrderListener$1;->this$1:Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$SingleOrderListener;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$SingleOrderListener;->access$2(Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$SingleOrderListener;)Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;->access$7(Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$SingleOrderListener$1;->this$1:Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$SingleOrderListener;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$SingleOrderListener;->access$2(Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$SingleOrderListener;)Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;->access$7(Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$SingleOrderListener$1;->this$1:Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$SingleOrderListener;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$SingleOrderListener;->access$2(Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$SingleOrderListener;)Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;->access$6(Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;Lcom/android/volley/VolleyError;)V

    .line 127
    return-void
.end method

.method public onResponse(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 2
    .param p1, "restaurant"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$SingleOrderListener$1;->val$order:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v0, p1}, Lcom/yopeso/lieferando/model/user/Order;->setRestaurant(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    .line 118
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$SingleOrderListener$1;->this$1:Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$SingleOrderListener;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$SingleOrderListener;->access$2(Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$SingleOrderListener;)Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$SingleOrderListener$1;->val$order:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;->addOrderRateFragment(Lcom/yopeso/lieferando/model/user/Order;)V

    .line 119
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$SingleOrderListener$1;->onResponse(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    return-void
.end method
