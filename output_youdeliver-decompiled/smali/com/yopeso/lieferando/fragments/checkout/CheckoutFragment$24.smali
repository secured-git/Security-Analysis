.class Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$24;
.super Ljava/lang/Object;
.source "CheckoutFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->onStempelSelected(Lcom/yopeso/lieferando/model/Stamp;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

.field private final synthetic val$stamp:Lcom/yopeso/lieferando/model/Stamp;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;Lcom/yopeso/lieferando/model/Stamp;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$24;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    iput-object p2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$24;->val$stamp:Lcom/yopeso/lieferando/model/Stamp;

    .line 2277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2280
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$24;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setStempleUsed(Z)V

    .line 2281
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$24;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setRebateUsed(Z)V

    .line 2282
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$24;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$24;->val$stamp:Lcom/yopeso/lieferando/model/Stamp;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setStamp(Lcom/yopeso/lieferando/model/Stamp;)V

    .line 2283
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$24;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->access$28(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)Lcom/yopeso/lieferando/view/StempleView;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$24;->val$stamp:Lcom/yopeso/lieferando/model/Stamp;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/StempleView;->diselectOthers(Lcom/yopeso/lieferando/model/Stamp;)V

    .line 2284
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$24;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->access$27(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)V

    .line 2285
    return-void
.end method
