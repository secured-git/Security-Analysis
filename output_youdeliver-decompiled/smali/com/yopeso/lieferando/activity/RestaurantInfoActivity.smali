.class public Lcom/yopeso/lieferando/activity/RestaurantInfoActivity;
.super Lcom/yopeso/lieferando/custom/LRActivity;
.source "RestaurantInfoActivity.java"


# instance fields
.field protected mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/yopeso/lieferando/custom/LRActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/LRActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/RestaurantInfoActivity;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v4

    iput-object v4, p0, Lcom/yopeso/lieferando/activity/RestaurantInfoActivity;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .line 31
    sget v4, Lcom/yopeso/lieferando/R$layout;->restaurant_info_layout:I

    invoke-virtual {p0, v4}, Lcom/yopeso/lieferando/activity/RestaurantInfoActivity;->setContentView(I)V

    .line 33
    sget v4, Lcom/yopeso/lieferando/R$id;->restaurantInfoMainParent:I

    invoke-virtual {p0, v4}, Lcom/yopeso/lieferando/activity/RestaurantInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 34
    .local v3, "parent":Landroid/view/ViewGroup;
    sget v4, Lcom/yopeso/lieferando/R$id;->restaurantInfoMainParent:I

    invoke-virtual {p0, v4}, Lcom/yopeso/lieferando/activity/RestaurantInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->requestTransparentRegion(Landroid/view/View;)V

    .line 36
    sget v4, Lcom/yopeso/lieferando/R$id;->pager:I

    invoke-virtual {p0, v4}, Lcom/yopeso/lieferando/activity/RestaurantInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    .line 37
    .local v2, "pager":Landroid/support/v4/view/ViewPager;
    new-instance v0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoPagerAdapter;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/RestaurantInfoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-direct {v0, v4, p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Landroid/content/Context;)V

    .line 38
    .local v0, "adapter":Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoPagerAdapter;
    iget-object v4, p0, Lcom/yopeso/lieferando/activity/RestaurantInfoActivity;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v0, v4}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoPagerAdapter;->setRestaurant(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    .line 39
    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 41
    sget v4, Lcom/yopeso/lieferando/R$id;->indicator:I

    invoke-virtual {p0, v4}, Lcom/yopeso/lieferando/activity/RestaurantInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/viewpagerindicator/TabPageIndicator;

    .line 42
    .local v1, "indicator":Lcom/viewpagerindicator/TabPageIndicator;
    invoke-virtual {v1, v2}, Lcom/viewpagerindicator/TabPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 43
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v4

    invoke-interface {v4}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/RestaurantInfoActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 45
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/RestaurantInfoActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->app_title:I

    invoke-virtual {v4, v5}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 47
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 58
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/RestaurantInfoActivity;->finish()V

    .line 61
    :cond_0
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/LRActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 51
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRActivity;->onStart()V

    .line 52
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/RestaurantInfoActivity;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    sget v1, Lcom/yopeso/lieferando/R$id;->RestaurantView:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/activity/RestaurantInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/RestaurantInfoActivity;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v3

    invoke-static {v0, v1, p0, v2, v3}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->displayRestaurantInView(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Landroid/view/View;Landroid/content/Context;ZLcom/android/volley/RequestQueue;)V

    .line 54
    return-void
.end method
