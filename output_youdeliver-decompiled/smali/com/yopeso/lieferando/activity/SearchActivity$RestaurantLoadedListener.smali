.class Lcom/yopeso/lieferando/activity/SearchActivity$RestaurantLoadedListener;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/activity/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestaurantLoadedListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/yopeso/lieferando/model/restaurant/Restaurant;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/activity/SearchActivity;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/activity/SearchActivity;)V
    .locals 0

    .prologue
    .line 555
    iput-object p1, p0, Lcom/yopeso/lieferando/activity/SearchActivity$RestaurantLoadedListener;->this$0:Lcom/yopeso/lieferando/activity/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 581
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/SearchActivity$RestaurantLoadedListener;->this$0:Lcom/yopeso/lieferando/activity/SearchActivity;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/activity/SearchActivity;->access$0(Lcom/yopeso/lieferando/activity/SearchActivity;Lcom/android/volley/VolleyError;)V

    .line 582
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/SearchActivity$RestaurantLoadedListener;->this$0:Lcom/yopeso/lieferando/activity/SearchActivity;

    invoke-static {v0}, Lcom/yopeso/lieferando/activity/SearchActivity;->access$1(Lcom/yopeso/lieferando/activity/SearchActivity;)V

    .line 583
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/activity/SearchActivity$RestaurantLoadedListener;->onResponse(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onResponse(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/Restaurant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 559
    .local p1, "restaurants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Restaurant;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 560
    .local v1, "openRestos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Restaurant;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 566
    iget-object v3, p0, Lcom/yopeso/lieferando/activity/SearchActivity$RestaurantLoadedListener;->this$0:Lcom/yopeso/lieferando/activity/SearchActivity;

    invoke-static {v3, v1}, Lcom/yopeso/lieferando/activity/SearchActivity;->access$3(Lcom/yopeso/lieferando/activity/SearchActivity;Ljava/util/ArrayList;)V

    .line 567
    iget-object v3, p0, Lcom/yopeso/lieferando/activity/SearchActivity$RestaurantLoadedListener;->this$0:Lcom/yopeso/lieferando/activity/SearchActivity;

    invoke-static {v3}, Lcom/yopeso/lieferando/activity/SearchActivity;->access$1(Lcom/yopeso/lieferando/activity/SearchActivity;)V

    .line 568
    iget-object v3, p0, Lcom/yopeso/lieferando/activity/SearchActivity$RestaurantLoadedListener;->this$0:Lcom/yopeso/lieferando/activity/SearchActivity;

    invoke-static {v3}, Lcom/yopeso/lieferando/activity/SearchActivity;->access$4(Lcom/yopeso/lieferando/activity/SearchActivity;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/yopeso/lieferando/activity/SearchActivity$RestaurantLoadedListener;->this$0:Lcom/yopeso/lieferando/activity/SearchActivity;

    invoke-static {v3}, Lcom/yopeso/lieferando/activity/SearchActivity;->access$4(Lcom/yopeso/lieferando/activity/SearchActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 570
    iget-object v4, p0, Lcom/yopeso/lieferando/activity/SearchActivity$RestaurantLoadedListener;->this$0:Lcom/yopeso/lieferando/activity/SearchActivity;

    iget-object v3, p0, Lcom/yopeso/lieferando/activity/SearchActivity$RestaurantLoadedListener;->this$0:Lcom/yopeso/lieferando/activity/SearchActivity;

    invoke-static {v3}, Lcom/yopeso/lieferando/activity/SearchActivity;->access$4(Lcom/yopeso/lieferando/activity/SearchActivity;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v4, v3}, Lcom/yopeso/lieferando/activity/SearchActivity;->onRestaurantSelected(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    .line 577
    :goto_1
    return-void

    .line 560
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .line 562
    .local v2, "restaurant":Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    sget-object v4, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {v2, v4}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 563
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 573
    .end local v2    # "restaurant":Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    :cond_2
    iget-object v3, p0, Lcom/yopeso/lieferando/activity/SearchActivity$RestaurantLoadedListener;->this$0:Lcom/yopeso/lieferando/activity/SearchActivity;

    invoke-static {v3}, Lcom/yopeso/lieferando/activity/SearchActivity;->access$4(Lcom/yopeso/lieferando/activity/SearchActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3}, Lcom/yopeso/lieferando/dialogs/DeliveryServicePremiumDialog;->newInstance(Ljava/util/ArrayList;)Lcom/yopeso/lieferando/dialogs/DeliveryServicePremiumDialog;

    move-result-object v0

    .line 574
    .local v0, "dialog":Lcom/yopeso/lieferando/dialogs/DeliveryServicePremiumDialog;
    iget-object v3, p0, Lcom/yopeso/lieferando/activity/SearchActivity$RestaurantLoadedListener;->this$0:Lcom/yopeso/lieferando/activity/SearchActivity;

    invoke-virtual {v0, v3}, Lcom/yopeso/lieferando/dialogs/DeliveryServicePremiumDialog;->setCallback(Lcom/yopeso/lieferando/callback/RestaurantSelectedCallback;)V

    .line 575
    iget-object v3, p0, Lcom/yopeso/lieferando/activity/SearchActivity$RestaurantLoadedListener;->this$0:Lcom/yopeso/lieferando/activity/SearchActivity;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/activity/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/yopeso/lieferando/dialogs/DeliveryServicePremiumDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1
.end method
