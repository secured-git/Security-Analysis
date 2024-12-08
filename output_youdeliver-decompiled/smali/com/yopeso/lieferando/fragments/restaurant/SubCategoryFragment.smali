.class public Lcom/yopeso/lieferando/fragments/restaurant/SubCategoryFragment;
.super Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;
.source "SubCategoryFragment.java"


# static fields
.field protected static final KEY_DISH:Ljava/lang/String; = "dish_category_key"


# instance fields
.field protected mDish:Lcom/yopeso/lieferando/model/meal/DishCategory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;-><init>(Z)V

    .line 35
    return-void
.end method

.method public static newInstance(Lcom/yopeso/lieferando/model/meal/DishCategory;)Lcom/yopeso/lieferando/fragments/restaurant/SubCategoryFragment;
    .locals 3
    .param p0, "dish"    # Lcom/yopeso/lieferando/model/meal/DishCategory;

    .prologue
    .line 38
    new-instance v1, Lcom/yopeso/lieferando/fragments/restaurant/SubCategoryFragment;

    invoke-direct {v1}, Lcom/yopeso/lieferando/fragments/restaurant/SubCategoryFragment;-><init>()V

    .line 39
    .local v1, "frag":Lcom/yopeso/lieferando/fragments/restaurant/SubCategoryFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 40
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "dish_category_key"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 41
    invoke-virtual {v1, v0}, Lcom/yopeso/lieferando/fragments/restaurant/SubCategoryFragment;->setArguments(Landroid/os/Bundle;)V

    .line 42
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/fragments/restaurant/SubCategoryFragment;->setHasOptionsMenu(Z)V

    .line 49
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/SubCategoryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "dish_category_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/meal/DishCategory;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/SubCategoryFragment;->mDish:Lcom/yopeso/lieferando/model/meal/DishCategory;

    .line 50
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/SubCategoryFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/SubCategoryFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .line 51
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/SubCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/SubCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$string;->app_title:I

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    sget v1, Lcom/yopeso/lieferando/R$layout;->restaurant_details:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 69
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/yopeso/lieferando/R$id;->LoadingMenuProgress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/SubCategoryFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    .line 70
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/SubCategoryFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 71
    sget v1, Lcom/yopeso/lieferando/R$id;->ShoppingCart:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/SubCategoryFragment;->mCartView:Landroid/view/View;

    .line 72
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/SubCategoryFragment;->mCartView:Landroid/view/View;

    sget v2, Lcom/yopeso/lieferando/R$id;->CartButton:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/SubCategoryFragment;->mCartView:Landroid/view/View;

    sget v2, Lcom/yopeso/lieferando/R$id;->CartButton:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/SettingsContent;->getDynamicButtonFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 75
    sget v1, Lcom/yopeso/lieferando/R$id;->RestMenuHeader:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/SettingsContent;->getmButtonColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 78
    :cond_0
    new-instance v1, Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/SubCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$layout;->menu_list_item:I

    invoke-direct {v1, v2, v3, p0}, Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;-><init>(Landroid/content/Context;ILcom/yopeso/lieferando/callback/IMenuSelected;)V

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/SubCategoryFragment;->mMenuAdapter:Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;

    .line 79
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/SubCategoryFragment;->mMenuAdapter:Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/SubCategoryFragment;->mDish:Lcom/yopeso/lieferando/model/meal/DishCategory;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/meal/DishCategory;->getSubCategories()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/restaurant/SubCategoryFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    sget-object v4, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {v3, v4}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isHoliday(Ljava/util/Date;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;->setData(Ljava/util/ArrayList;Z)V

    .line 80
    sget v1, Lcom/yopeso/lieferando/R$id;->MenuListView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/SubCategoryFragment;->mMenuListView:Landroid/widget/ListView;

    .line 81
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/SubCategoryFragment;->mMenuListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/SubCategoryFragment;->mMenuAdapter:Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 83
    return-object v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 93
    invoke-super {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->onResume()V

    .line 94
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 62
    const-string v0, "dish_category_key"

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/SubCategoryFragment;->mDish:Lcom/yopeso/lieferando/model/meal/DishCategory;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 63
    const-string v0, "key_restaurant"

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/SubCategoryFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 64
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 88
    invoke-super {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->onStart()V

    .line 89
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/SubCategoryFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/SubCategoryFragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$id;->RestaurantView:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/SubCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/SubCategoryFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->displayRestaurantInView(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Landroid/view/View;Landroid/content/Context;ZLcom/android/volley/RequestQueue;)V

    .line 90
    return-void
.end method

.method protected performRequest()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method
