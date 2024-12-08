.class Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$2;
.super Ljava/lang/Object;
.source "MapAddressFragment.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraChange(Lcom/google/android/gms/maps/model/CameraPosition;)V
    .locals 6
    .param p1, "position"    # Lcom/google/android/gms/maps/model/CameraPosition;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 311
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$10(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$17(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    iget-object v1, p1, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$18(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;Lcom/google/android/gms/maps/model/LatLng;)V

    .line 313
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$19(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$TaskGetAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$19(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$TaskGetAddress;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$TaskGetAddress;->cancel(Z)Z

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    new-instance v1, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$TaskGetAddress;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-direct {v1, v2, v5}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$TaskGetAddress;-><init>(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$TaskGetAddress;)V

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$20(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$TaskGetAddress;)V

    .line 317
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$19(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$TaskGetAddress;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Void;

    aput-object v5, v1, v3

    instance-of v2, v0, Landroid/os/AsyncTask;

    if-nez v2, :cond_2

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$TaskGetAddress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 319
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v0, v3}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$15(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;Z)V

    .line 320
    return-void

    .line 317
    :cond_2
    check-cast v0, Landroid/os/AsyncTask;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
