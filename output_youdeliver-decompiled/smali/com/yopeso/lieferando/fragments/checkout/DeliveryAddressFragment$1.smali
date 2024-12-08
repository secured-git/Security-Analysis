.class Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$1;
.super Ljava/lang/Object;
.source "DeliveryAddressFragment.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->access$2(Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->access$3(Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;)Landroid/location/LocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 142
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;

    new-instance v1, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$DecodeLocationTask;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$DecodeLocationTask;-><init>(Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$DecodeLocationTask;)V

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->access$4(Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$DecodeLocationTask;)V

    .line 143
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->access$5(Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;)Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$DecodeLocationTask;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/location/Location;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    instance-of v2, v0, Landroid/os/AsyncTask;

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$DecodeLocationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 144
    :goto_0
    return-void

    .line 143
    :cond_0
    check-cast v0, Landroid/os/AsyncTask;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 137
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 133
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 129
    return-void
.end method
