.class public Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;
.super Lcom/google/android/gms/maps/SupportMapFragment;
.source "RestaurantMapFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment$GetRestaurantLocation;
    }
.end annotation


# static fields
.field private static final RESTAURANT_KEY:Ljava/lang/String; = "restaurant_key"


# instance fields
.field private mLocationTask:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment$GetRestaurantLocation;

.field private mMap:Lcom/google/android/gms/maps/GoogleMap;

.field private mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/gms/maps/SupportMapFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;)Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    return-object v0
.end method

.method static synthetic access$1(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object v0
.end method

.method public static newInstance(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;
    .locals 3
    .param p0, "r"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 42
    new-instance v1, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;

    invoke-direct {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;-><init>()V

    .line 43
    .local v1, "frg":Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 44
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "restaurant_key"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 45
    invoke-virtual {v1, v0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;->setArguments(Landroid/os/Bundle;)V

    .line 46
    return-object v1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 63
    invoke-super {p0, p1}, Lcom/google/android/gms/maps/SupportMapFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 65
    new-instance v0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment$GetRestaurantLocation;

    invoke-direct {v0, p0, v3}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment$GetRestaurantLocation;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment$GetRestaurantLocation;)V

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;->mLocationTask:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment$GetRestaurantLocation;

    .line 66
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;->mLocationTask:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment$GetRestaurantLocation;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    instance-of v2, v0, Landroid/os/AsyncTask;

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment$GetRestaurantLocation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 67
    :goto_0
    return-void

    .line 66
    :cond_0
    check-cast v0, Landroid/os/AsyncTask;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/google/android/gms/maps/SupportMapFragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "restaurant_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .line 53
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "arg0"    # Landroid/view/LayoutInflater;
    .param p2, "arg1"    # Landroid/view/ViewGroup;
    .param p3, "arg2"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/maps/SupportMapFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, "v":Landroid/view/View;
    return-object v0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 71
    invoke-super {p0}, Lcom/google/android/gms/maps/SupportMapFragment;->onStop()V

    .line 72
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;->mLocationTask:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment$GetRestaurantLocation;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;->mLocationTask:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment$GetRestaurantLocation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment$GetRestaurantLocation;->cancel(Z)Z

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment;->mLocationTask:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantMapFragment$GetRestaurantLocation;

    .line 76
    :cond_0
    return-void
.end method
