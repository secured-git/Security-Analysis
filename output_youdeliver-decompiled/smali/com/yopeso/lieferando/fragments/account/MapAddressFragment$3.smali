.class Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$3;
.super Ljava/lang/Object;
.source "MapAddressFragment.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->onClick(Landroid/view/View;)V
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
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$3;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    .line 639
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMyLocationChange(Landroid/location/Location;)V
    .locals 7
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const/4 v6, 0x0

    .line 644
    const-class v1, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onMyLocationChange"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 647
    .local v0, "point":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$3;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$6(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v0, v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 648
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$3;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$6(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/maps/CameraUpdateFactory;->zoomIn()Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 649
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$3;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$6(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    const/high16 v2, 0x41880000    # 17.0f

    invoke-static {v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->zoomTo(F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v2

    const/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v6}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;ILcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V

    .line 650
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$3;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$6(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/google/android/gms/maps/GoogleMap;->setOnMyLocationChangeListener(Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;)V

    .line 651
    return-void
.end method
