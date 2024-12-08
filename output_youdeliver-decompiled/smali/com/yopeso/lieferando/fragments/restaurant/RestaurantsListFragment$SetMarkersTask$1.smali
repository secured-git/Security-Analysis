.class Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask$1;
.super Ljava/lang/Object;
.source "RestaurantsListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask;->doInBackground([Ljava/util/ArrayList;)Lcom/google/android/gms/maps/model/LatLng;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask$1;->this$1:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask;

    .line 2334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2336
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask$1;->this$1:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask;->access$3(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask;)Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$21(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->clear()V

    .line 2337
    return-void
.end method
