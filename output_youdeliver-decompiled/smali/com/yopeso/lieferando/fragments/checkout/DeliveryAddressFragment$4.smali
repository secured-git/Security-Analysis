.class Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$4;
.super Ljava/lang/Object;
.source "DeliveryAddressFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 331
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 332
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->access$2(Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->access$3(Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;)Landroid/location/LocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 333
    return-void
.end method
