.class Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$SingleOrderListener;
.super Ljava/lang/Object;
.source "FidelityPointsCollectFragment.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;
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
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$SingleOrderListener;->this$0:Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$SingleOrderListener;)V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$SingleOrderListener;-><init>(Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;)V

    return-void
.end method

.method static synthetic access$2(Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$SingleOrderListener;)Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$SingleOrderListener;->this$0:Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;

    return-object v0
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$SingleOrderListener;->this$0:Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;->access$7(Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$SingleOrderListener;->this$0:Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;->access$7(Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$SingleOrderListener;->this$0:Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;->access$6(Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;Lcom/android/volley/VolleyError;)V

    .line 138
    return-void
.end method

.method public onResponse(Lcom/yopeso/lieferando/model/user/Order;)V
    .locals 4
    .param p1, "order"    # Lcom/yopeso/lieferando/model/user/Order;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$SingleOrderListener;->this$0:Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;->access$7(Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$SingleOrderListener;->this$0:Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;->access$7(Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$SingleOrderListener;->this$0:Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/RestaurantRequest;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/Order;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getServiceUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$SingleOrderListener$1;

    invoke-direct {v3, p0, p1}, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$SingleOrderListener$1;-><init>(Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$SingleOrderListener;Lcom/yopeso/lieferando/model/user/Order;)V

    invoke-direct {v1, v2, v3}, Lcom/yopeso/lieferando/net/requests/RestaurantRequest;-><init>(Ljava/lang/String;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 130
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$SingleOrderListener;->onResponse(Lcom/yopeso/lieferando/model/user/Order;)V

    return-void
.end method
