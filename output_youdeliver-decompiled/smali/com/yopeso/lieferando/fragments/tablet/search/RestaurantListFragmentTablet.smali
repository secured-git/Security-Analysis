.class public Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantListFragmentTablet;
.super Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;
.source "RestaurantListFragmentTablet.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;-><init>()V

    return-void
.end method

.method public static bridge synthetic newInstance(Lcom/yopeso/lieferando/model/LocationSuggestion;)Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantListFragmentTablet;->newInstance(Lcom/yopeso/lieferando/model/LocationSuggestion;)Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantListFragmentTablet;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Lcom/yopeso/lieferando/model/LocationSuggestion;)Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantListFragmentTablet;
    .locals 3
    .param p0, "location"    # Lcom/yopeso/lieferando/model/LocationSuggestion;

    .prologue
    .line 25
    new-instance v1, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantListFragmentTablet;

    invoke-direct {v1}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantListFragmentTablet;-><init>()V

    .line 26
    .local v1, "frag":Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantListFragmentTablet;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 27
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "location_key"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 28
    invoke-virtual {v1, v0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantListFragmentTablet;->setArguments(Landroid/os/Bundle;)V

    .line 30
    return-object v1
.end method


# virtual methods
.method protected addRestaurantDetailsFragment()V
    .locals 4

    .prologue
    .line 70
    sget v0, Lcom/yopeso/lieferando/R$id;->LeftPane:I

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantDetailsFragmentTablet;->newInstance(Z)Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantDetailsFragmentTablet;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "RestaurantDetailsFrag"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantListFragmentTablet;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    .line 71
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/events/RestaurantLoadEvent;

    invoke-direct {v1}, Lcom/yopeso/lieferando/events/RestaurantLoadEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method public onProposeClick()V
    .locals 2

    .prologue
    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantListFragmentTablet;->showHideLogoActionbar(Z)V

    .line 66
    sget v0, Lcom/yopeso/lieferando/R$id;->LeftPane:I

    new-instance v1, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;

    invoke-direct {v1}, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantListFragmentTablet;->addNewFragment(ILandroid/support/v4/app/Fragment;)V

    .line 67
    return-void
.end method
