.class public Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantDetailsFragmentTablet;
.super Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;
.source "RestaurantDetailsFragmentTablet.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "deeplink"    # Z

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;-><init>(Z)V

    .line 36
    return-void
.end method

.method public static bridge synthetic newInstance(Z)Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantDetailsFragmentTablet;->newInstance(Z)Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantDetailsFragmentTablet;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Z)Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantDetailsFragmentTablet;
    .locals 1
    .param p0, "deeplink"    # Z

    .prologue
    .line 39
    new-instance v0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantDetailsFragmentTablet;

    invoke-direct {v0, p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantDetailsFragmentTablet;-><init>(Z)V

    .line 41
    .local v0, "frag":Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantDetailsFragmentTablet;
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantDetailsFragmentTablet;->setHasOptionsMenu(Z)V

    .line 48
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantDetailsFragmentTablet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$drawable;->ic_launcher:I

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V

    .line 50
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantDetailsFragmentTablet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->show()V

    .line 52
    :cond_0
    iget-boolean v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantDetailsFragmentTablet;->deeplink:Z

    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantDetailsFragmentTablet;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/OpeningsRequest;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantDetailsFragmentTablet;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantDetailsFragmentTablet;->getOpeningsListener()Lcom/yopeso/lieferando/net/requests/base/VolleyListener;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/yopeso/lieferando/net/requests/OpeningsRequest;-><init>(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 55
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 0
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    .line 66
    invoke-super {p0, p1, p2}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V

    .line 67
    return-void
.end method

.method public onMenuSelected(Lcom/yopeso/lieferando/model/meal/DishCategory;)V
    .locals 6
    .param p1, "dish"    # Lcom/yopeso/lieferando/model/meal/DishCategory;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 81
    invoke-static {}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantDetailsFragmentTablet;->deleySelection()Z

    move-result v2

    if-nez v2, :cond_0

    .line 82
    iget-boolean v2, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantDetailsFragmentTablet;->deeplink:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantDetailsFragmentTablet;->deliveryAreaSelected:Z

    if-nez v2, :cond_1

    .line 83
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantDetailsFragmentTablet;->dish:Lcom/yopeso/lieferando/model/meal/DishCategory;

    .line 84
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantDetailsFragmentTablet;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {p0, v2}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantDetailsFragmentTablet;->checkRestaurant(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    .line 85
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantDetailsFragmentTablet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->selectDeliveryArea:I

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sput-wide v2, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantDetailsFragmentTablet;->mLastClickTime:J

    .line 89
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/DishCategory;->getSubCategories()Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_2

    .line 90
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v2

    new-instance v3, Lcom/yopeso/lieferando/events/ShowShoppingCartEvent;

    invoke-direct {v3}, Lcom/yopeso/lieferando/events/ShowShoppingCartEvent;-><init>()V

    invoke-virtual {v2, v3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 91
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantDetailsFragmentTablet;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-static {p1, v2}, Lcom/yopeso/lieferando/fragments/tablet/search/MealDetailsFragmentTablet;->newInstance(Lcom/yopeso/lieferando/model/meal/DishCategory;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Lcom/yopeso/lieferando/fragments/tablet/search/MealDetailsFragmentTablet;

    move-result-object v0

    .line 92
    .local v0, "menuFrag":Lcom/yopeso/lieferando/fragments/tablet/search/MealDetailsFragmentTablet;
    sget v2, Lcom/yopeso/lieferando/R$id;->LeftPane:I

    invoke-virtual {p0, v2, v0, v4, v5}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantDetailsFragmentTablet;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    goto :goto_0

    .line 94
    .end local v0    # "menuFrag":Lcom/yopeso/lieferando/fragments/tablet/search/MealDetailsFragmentTablet;
    :cond_2
    invoke-static {p1}, Lcom/yopeso/lieferando/fragments/tablet/search/SubCategoryFragmentTablet;->newInstance(Lcom/yopeso/lieferando/model/meal/DishCategory;)Lcom/yopeso/lieferando/fragments/tablet/search/SubCategoryFragmentTablet;

    move-result-object v1

    .line 95
    .local v1, "subCategoryFrag":Lcom/yopeso/lieferando/fragments/tablet/search/SubCategoryFragmentTablet;
    sget v2, Lcom/yopeso/lieferando/R$id;->LeftPane:I

    invoke-virtual {p0, v2, v1, v4, v5}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantDetailsFragmentTablet;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 71
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lcom/yopeso/lieferando/R$id;->rest_info_menu:I

    if-ne v1, v2, :cond_0

    .line 72
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantDetailsFragmentTablet;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-static {v1}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->newInstance(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;

    move-result-object v0

    .line 73
    .local v0, "dialog":Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantDetailsFragmentTablet;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 74
    const/4 v1, 0x1

    .line 76
    .end local v0    # "dialog":Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x8

    .line 59
    invoke-super {p0, p1, p2}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 60
    sget v0, Lcom/yopeso/lieferando/R$id;->RestMenuHeader:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    sget v0, Lcom/yopeso/lieferando/R$id;->RestaurantView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 62
    return-void
.end method
