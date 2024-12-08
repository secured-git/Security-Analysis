.class Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$21;
.super Ljava/lang/Object;
.source "CheckoutFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->showSuccessAndRetrun(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

.field private final synthetic val$fidelity:Z

.field private final synthetic val$shouldCollect:Z


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;ZZ)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$21;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    iput-boolean p2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$21;->val$fidelity:Z

    iput-boolean p3, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$21;->val$shouldCollect:Z

    .line 2151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2154
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2155
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$21;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getMisc()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v1, v0}, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;->newInstance(ZZLjava/lang/String;)Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$21;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "success_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 2160
    :goto_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$21;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 2161
    return-void

    .line 2158
    :cond_0
    iget-boolean v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$21;->val$fidelity:Z

    iget-boolean v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$21;->val$shouldCollect:Z

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$21;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    iget-object v2, v2, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getMisc()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;->newInstance(ZZLjava/lang/String;)Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$21;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "success_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
