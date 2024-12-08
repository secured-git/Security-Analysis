.class Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask;
.super Landroid/os/AsyncTask;
.source "RestaurantsListFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetMarkersTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/yopeso/lieferando/model/restaurant/Restaurant;",
        ">;",
        "Landroid/location/Address;",
        "Lcom/google/android/gms/maps/model/LatLng;",
        ">;"
    }
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)V
    .locals 0

    .prologue
    .line 2324
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask;)V
    .locals 0

    .prologue
    .line 2324
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)V

    return-void
.end method

.method static synthetic access$3(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask;)Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;
    .locals 1

    .prologue
    .line 2324
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    return-object v0
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected varargs doInBackground([Ljava/util/ArrayList;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 10
    .param p1, "params"    # [Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/Restaurant;",
            ">;)",
            "Lcom/google/android/gms/maps/model/LatLng;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 2330
    const-wide/16 v6, 0x7d0

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2334
    :goto_0
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    new-instance v6, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask$1;

    invoke-direct {v6, p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask$1;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask;)V

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2340
    const/4 v1, 0x0

    .line 2341
    .local v1, "first_marked":Z
    const/4 v3, 0x0

    .line 2342
    .local v3, "point":Lcom/google/android/gms/maps/model/LatLng;
    const-class v5, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mRestaurants:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v7, p1, v8

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " first_marked:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2343
    aget-object v5, p1, v8

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 2374
    return-object v3

    .line 2331
    .end local v1    # "first_marked":Z
    .end local v3    # "point":Lcom/google/android/gms/maps/model/LatLng;
    :catch_0
    move-exception v0

    .line 2332
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 2343
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "first_marked":Z
    .restart local v3    # "point":Lcom/google/android/gms/maps/model/LatLng;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .line 2344
    .local v2, "mRestaurant":Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getLongitude()D

    move-result-wide v8

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 2346
    .local v4, "position":Lcom/google/android/gms/maps/model/LatLng;
    if-nez v1, :cond_1

    .line 2347
    const/4 v1, 0x1

    .line 2348
    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    .end local v3    # "point":Lcom/google/android/gms/maps/model/LatLng;
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getLongitude()D

    move-result-wide v8

    invoke-direct {v3, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 2351
    .restart local v3    # "point":Lcom/google/android/gms/maps/model/LatLng;
    :cond_1
    iget-object v6, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    new-instance v7, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask$2;

    invoke-direct {v7, p0, v2, v4}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask$2;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask;Lcom/yopeso/lieferando/model/restaurant/Restaurant;Lcom/google/android/gms/maps/model/LatLng;)V

    invoke-virtual {v6, v7}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "RestaurantsListFragment$SetMarkersTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1
    :goto_0
    check-cast p1, [Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask;->doInBackground([Ljava/util/ArrayList;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "RestaurantsListFragment$SetMarkersTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onPostExecute(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 6
    .param p1, "point"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    const/high16 v5, 0x41400000    # 12.0f

    .line 2378
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v2}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$9(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2379
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v2}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$21(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 2380
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v2}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$22(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2381
    new-instance v0, Landroid/location/Location;

    const-string v2, "current"

    invoke-direct {v0, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 2382
    .local v0, "locationCurrent":Landroid/location/Location;
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v2}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$22(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 2383
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v2}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$22(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 2385
    new-instance v1, Landroid/location/Location;

    const-string v2, "resto"

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 2386
    .local v1, "restoLocation":Landroid/location/Location;
    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 2387
    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 2388
    const-string v2, "RestaurantsFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "distanceTo"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2389
    const-string v2, "RestaurantsFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "distanceTo"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2390
    invoke-virtual {v0, v1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v2

    const v3, 0x466a6000    # 15000.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 2392
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v2}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$22(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    .line 2397
    .end local v0    # "locationCurrent":Landroid/location/Location;
    .end local v1    # "restoLocation":Landroid/location/Location;
    :cond_0
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v2}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$23(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 2398
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v2}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$21(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {p1, v3}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 2399
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v2}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$21(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/maps/CameraUpdateFactory;->zoomIn()Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 2400
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v2}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$21(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v2

    invoke-static {v5}, Lcom/google/android/gms/maps/CameraUpdateFactory;->zoomTo(F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v3

    const/16 v4, 0x5dc

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;ILcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V

    .line 2401
    const-class v2, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VISIBLE"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2412
    :goto_0
    const-class v2, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "moveCamera to:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2413
    const-class v2, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SetMarkersTask: new_search: true"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2419
    :cond_1
    :goto_1
    const-class v2, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SetMarkersTask onPostExecute: new_search set false"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2420
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$8(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;Z)V

    .line 2421
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v2}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$14(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)V

    .line 2441
    return-void

    .line 2404
    :cond_2
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v2}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$21(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v2

    invoke-static {p1, v5}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 2405
    const-class v2, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NOT VISIBLE"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2417
    :cond_3
    const-class v2, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SetMarkersTask: new_search: false"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "RestaurantsListFragment$SetMarkersTask#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1
    :goto_0
    check-cast p1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask;->onPostExecute(Lcom/google/android/gms/maps/model/LatLng;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "RestaurantsListFragment$SetMarkersTask#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
