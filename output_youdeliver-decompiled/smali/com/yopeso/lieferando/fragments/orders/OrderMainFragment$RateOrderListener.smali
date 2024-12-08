.class Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$RateOrderListener;
.super Ljava/lang/Object;
.source "OrderMainFragment.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RateOrderListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;)V
    .locals 0

    .prologue
    .line 558
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$RateOrderListener;->this$0:Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$RateOrderListener;)V
    .locals 0

    .prologue
    .line 558
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$RateOrderListener;-><init>(Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;)V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 590
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$RateOrderListener;->this$0:Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->access$0(Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$RateOrderListener;->this$0:Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->access$0(Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$RateOrderListener;->this$0:Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->access$5(Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;Lcom/android/volley/VolleyError;)V

    .line 594
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$RateOrderListener;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 4
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 562
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$RateOrderListener;->this$0:Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->access$0(Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 563
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$RateOrderListener;->this$0:Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->access$0(Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 566
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$RateOrderListener;->this$0:Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;

    invoke-static {v2}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->access$1(Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;)Lcom/yopeso/lieferando/model/user/Order;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Order;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackRateOrder(Ljava/lang/String;)V

    .line 567
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$RateOrderListener;->this$0:Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->access$2(Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 568
    const-string v1, "yes"

    invoke-static {v1}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackReccomendRestaurant(Ljava/lang/String;)V

    .line 573
    :goto_0
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$RateOrderListener;->this$0:Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/SettingsContent;->isFidelityPointsActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 577
    :cond_1
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$RateOrderListener;->this$0:Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;

    sget v2, Lcom/yopeso/lieferando/R$string;->fidelity_points_rating:I

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v3, v1, v2, v3}, Lcom/yopeso/lieferando/dialogs/FidelityDialog;->newInstance(ILjava/lang/String;ZZ)Lcom/yopeso/lieferando/dialogs/FidelityDialog;

    move-result-object v0

    .line 578
    .local v0, "fidelityDialog":Lcom/yopeso/lieferando/dialogs/FidelityDialog;
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$RateOrderListener;->this$0:Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yopeso/lieferando/dialogs/FidelityDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 583
    .end local v0    # "fidelityDialog":Lcom/yopeso/lieferando/dialogs/FidelityDialog;
    :cond_2
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$RateOrderListener;->this$0:Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->access$3(Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;)V

    .line 584
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$RateOrderListener;->this$0:Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->access$4(Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;)V

    .line 586
    return-void

    .line 571
    :cond_3
    const-string v1, "no"

    invoke-static {v1}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackReccomendRestaurant(Ljava/lang/String;)V

    goto :goto_0
.end method
