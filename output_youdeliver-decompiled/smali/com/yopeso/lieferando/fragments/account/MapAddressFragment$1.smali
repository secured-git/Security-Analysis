.class Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$1;
.super Ljava/lang/Object;
.source "MapAddressFragment.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;


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
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMyLocationChange(Landroid/location/Location;)V
    .locals 8
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 279
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$6(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/google/android/gms/maps/GoogleMap;->setOnMyLocationChangeListener(Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;)V

    .line 280
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$15(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;Z)V

    .line 281
    const-class v1, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onMyLocationChange"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 283
    .local v0, "point":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getLRActivity()Lcom/yopeso/lieferando/custom/LRActivity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/yopeso/lieferando/util/GeoUtils;->getAddressFromGeoPoints(Landroid/content/Context;Lcom/google/android/gms/maps/model/LatLng;)Landroid/location/Address;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$8(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;Landroid/location/Address;)V

    .line 284
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$16(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$13(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)V

    .line 304
    :goto_0
    return-void

    .line 288
    :cond_0
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$9(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)Landroid/location/Address;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$17(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 289
    const-class v1, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onMyLocationChange-> setAddressText"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$13(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)V

    .line 292
    :cond_1
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$6(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v0, v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 293
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$6(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/maps/CameraUpdateFactory;->zoomIn()Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 294
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$6(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    const/high16 v2, 0x41880000    # 17.0f

    invoke-static {v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->zoomTo(F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v2

    const/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v7}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;ILcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V

    .line 295
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$6(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 296
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$14(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 300
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v1, v6}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$15(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;Z)V

    goto :goto_0
.end method
