.class Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$14;
.super Ljava/lang/Object;
.source "CheckoutFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

.field private final synthetic val$unavalibleItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$14;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    iput-object p2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$14;->val$unavalibleItems:Ljava/util/ArrayList;

    .line 1059
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1063
    invoke-static {}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->access$24()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1064
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->access$25(J)V

    .line 1065
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$14;->val$unavalibleItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1068
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$14;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->goToShopingCart()V

    .line 1071
    :cond_0
    return-void

    .line 1065
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/cart/CartItem;

    .line 1066
    .local v0, "item":Lcom/yopeso/lieferando/model/cart/CartItem;
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$14;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    iget-object v2, v2, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v2, v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->removeItem(Lcom/yopeso/lieferando/model/cart/CartItem;)V

    goto :goto_0
.end method
