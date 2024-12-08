.class Lcom/yopeso/lieferando/fragments/search/CSHFragment$1;
.super Lcom/yopeso/lieferando/callback/LocationObtainedListener;
.source "CSHFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/search/CSHFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/search/CSHFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    .line 99
    invoke-direct {p0}, Lcom/yopeso/lieferando/callback/LocationObtainedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v1, v1, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 103
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->performGPSRequest(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 109
    if-eqz p2, :cond_0

    if-ne p2, v2, :cond_1

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v1, v1, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 111
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mLocateView:Lcom/yopeso/lieferando/view/LocateView;

    invoke-virtual {v0, v2}, Lcom/yopeso/lieferando/view/LocateView;->setEnabled(Z)V

    .line 112
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mLocateView:Lcom/yopeso/lieferando/view/LocateView;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/LocateView;->stopAnimation()V

    .line 113
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$string;->no_GPS:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 115
    :cond_1
    return-void
.end method
