.class Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment$GetRestaurantLocation;
.super Landroid/os/AsyncTask;
.source "RestaurantMapFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetRestaurantLocation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/location/Address;",
        ">;"
    }
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment$GetRestaurantLocation;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment$GetRestaurantLocation;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment$GetRestaurantLocation;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;)V

    return-void
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment$GetRestaurantLocation;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/location/Address;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 86
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment$GetRestaurantLocation;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;

    invoke-static {v5}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;->access$0(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;)Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getAddressNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment$GetRestaurantLocation;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;

    invoke-static {v5}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;->access$0(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;)Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getAddressStreet()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment$GetRestaurantLocation;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;

    invoke-static {v5}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;->access$0(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;)Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getCity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment$GetRestaurantLocation;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;

    invoke-static {v5}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;->access$0(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;)Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getZipCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "address":Ljava/lang/String;
    new-instance v3, Landroid/location/Geocoder;

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment$GetRestaurantLocation;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {}, Lcom/yopeso/lieferando/util/GeoUtils;->getLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 90
    .local v3, "geocoder":Landroid/location/Geocoder;
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v3, v0, v4}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 91
    .local v1, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 92
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Address;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v1    # "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :goto_0
    return-object v4

    .line 94
    :catch_0
    move-exception v2

    .line 95
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 97
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment$GetRestaurantLocation;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "RestaurantMapFragment$GetRestaurantLocation#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1
    :goto_0
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment$GetRestaurantLocation;->doInBackground([Ljava/lang/Void;)Landroid/location/Address;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "RestaurantMapFragment$GetRestaurantLocation#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onPostExecute(Landroid/location/Address;)V
    .locals 6
    .param p1, "addresses"    # Landroid/location/Address;

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 103
    if-eqz p1, :cond_0

    .line 104
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Address;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Address;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 105
    .local v0, "position":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment$GetRestaurantLocation;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment$GetRestaurantLocation;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;->access$1(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    .line 107
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment$GetRestaurantLocation;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;->access$1(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment$GetRestaurantLocation;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;

    invoke-static {v3}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;->access$0(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;)Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$drawable;->marker:I

    invoke-static {v3}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    .line 108
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment$GetRestaurantLocation;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;->access$1(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v0, v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 109
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment$GetRestaurantLocation;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;->access$1(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/maps/CameraUpdateFactory;->zoomIn()Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 110
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment$GetRestaurantLocation;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;->access$1(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    const/high16 v2, 0x41880000    # 17.0f

    invoke-static {v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->zoomTo(F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v2

    const/16 v3, 0x7d0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;ILcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V

    .line 113
    .end local v0    # "position":Lcom/google/android/gms/maps/model/LatLng;
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment$GetRestaurantLocation;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "RestaurantMapFragment$GetRestaurantLocation#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1
    :goto_0
    check-cast p1, Landroid/location/Address;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment$GetRestaurantLocation;->onPostExecute(Landroid/location/Address;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "RestaurantMapFragment$GetRestaurantLocation#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
