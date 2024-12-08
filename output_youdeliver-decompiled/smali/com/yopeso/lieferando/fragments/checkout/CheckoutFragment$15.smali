.class Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$15;
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


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$15;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    .line 1072
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1075
    invoke-static {}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->access$24()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1076
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->access$25(J)V

    .line 1077
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$15;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->goToEditDeliveryTime()V

    .line 1079
    :cond_0
    return-void
.end method
