.class Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$7;
.super Ljava/lang/Object;
.source "CheckoutFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$7;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    .line 570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 573
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$7;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->access$20(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;Z)V

    .line 574
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$7;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->access$21(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)V

    .line 575
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$7;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->goToEditDeliveryTime()V

    .line 576
    return-void
.end method
