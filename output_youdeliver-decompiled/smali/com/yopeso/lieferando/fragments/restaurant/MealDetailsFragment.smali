.class public Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;
.super Lcom/yopeso/lieferando/custom/LRFragment;
.source "MealDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;
.implements Lcom/yopeso/lieferando/callback/MealSelectedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$DisplayHeaderTask;,
        Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$MealsLoadedListener;
    }
.end annotation


# static fields
.field protected static final KEY_DISH:Ljava/lang/String; = "dish_key"

.field protected static final KEY_REST:Ljava/lang/String; = "restaurant_key"

.field protected static final TAG:Ljava/lang/String; = "MenuDetailsFrag"


# instance fields
.field private mCartView:Landroid/view/View;

.field protected mDish:Lcom/yopeso/lieferando/model/meal/DishCategory;

.field private mDisplayHeaderTask:Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$DisplayHeaderTask;

.field protected mImageHeader:Landroid/widget/ImageView;

.field private mLoadingIndicator:Landroid/widget/ProgressBar;

.field protected mMealsAdapter:Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;

.field private mMenuListView:Landroid/widget/ListView;

.field protected mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

.field private mSearchView:Lcom/actionbarsherlock/widget/SearchView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/yopeso/lieferando/custom/LRFragment;-><init>()V

    .line 99
    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1(Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;Lcom/android/volley/VolleyError;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->handleNetworkError(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method private getMealDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    const-string v0, "yd-jig-menu-category-topseller-title"

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mDish:Lcom/yopeso/lieferando/model/meal/DishCategory;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/meal/DishCategory;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    sget v0, Lcom/yopeso/lieferando/R$string;->topseller:I

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 135
    :goto_0
    return-object v0

    .line 131
    :cond_0
    const-string v0, "yd-jig-meals-category-topseller-description"

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mDish:Lcom/yopeso/lieferando/model/meal/DishCategory;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/meal/DishCategory;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    sget v0, Lcom/yopeso/lieferando/R$string;->top10:I

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mDish:Lcom/yopeso/lieferando/model/meal/DishCategory;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/meal/DishCategory;->getDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static newInstance(Lcom/yopeso/lieferando/model/meal/DishCategory;)Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;
    .locals 3
    .param p0, "dish"    # Lcom/yopeso/lieferando/model/meal/DishCategory;

    .prologue
    .line 102
    new-instance v1, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;

    invoke-direct {v1}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;-><init>()V

    .line 103
    .local v1, "frag":Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 104
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "dish_key"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 105
    invoke-virtual {v1, v0}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 106
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 360
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 361
    .local v0, "id":I
    sget v1, Lcom/yopeso/lieferando/R$id;->CartButton:I

    if-ne v0, v1, :cond_0

    .line 362
    invoke-virtual {p0, v4}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->showHideLogoActionbar(Z)V

    .line 363
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 364
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    sget-object v2, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 365
    sget v1, Lcom/yopeso/lieferando/R$id;->Content:I

    new-instance v2, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;

    invoke-direct {v2}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->addNewFragment(ILandroid/support/v4/app/Fragment;)V

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$string;->restaurant_closed:I

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 370
    :cond_2
    sget v1, Lcom/yopeso/lieferando/R$id;->Content:I

    new-instance v2, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;

    invoke-direct {v2}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->addNewFragment(ILandroid/support/v4/app/Fragment;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 112
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/LRFragment;->onCreate(Landroid/os/Bundle;)V

    .line 113
    invoke-virtual {p0, v2}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->setHasOptionsMenu(Z)V

    .line 114
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "dish_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/meal/DishCategory;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mDish:Lcom/yopeso/lieferando/model/meal/DishCategory;

    .line 115
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .line 116
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 117
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    .line 248
    invoke-super {p0, p1, p2}, Lcom/yopeso/lieferando/custom/LRFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V

    .line 249
    sget v2, Lcom/yopeso/lieferando/R$menu;->category_search:I

    invoke-virtual {p2, v2, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 250
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->showHideLogoActionbar(Z)V

    .line 251
    sget v2, Lcom/yopeso/lieferando/R$id;->category_search_id:I

    invoke-interface {p1, v2}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/actionbarsherlock/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/actionbarsherlock/widget/SearchView;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mSearchView:Lcom/actionbarsherlock/widget/SearchView;

    .line 252
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mSearchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v2, p0}, Lcom/actionbarsherlock/widget/SearchView;->setOnQueryTextListener(Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;)V

    .line 253
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mSearchView:Lcom/actionbarsherlock/widget/SearchView;

    new-instance v3, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$2;

    invoke-direct {v3, p0}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$2;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;)V

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 268
    sget v2, Lcom/yopeso/lieferando/R$id;->category_search_id:I

    invoke-interface {p1, v2}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    new-instance v3, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$3;

    invoke-direct {v3, p0}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$3;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;)V

    invoke-interface {v2, v3}, Lcom/actionbarsherlock/view/MenuItem;->setOnActionExpandListener(Lcom/actionbarsherlock/view/MenuItem$OnActionExpandListener;)Lcom/actionbarsherlock/view/MenuItem;

    .line 285
    sget v2, Lcom/yopeso/lieferando/R$id;->category_search_id:I

    invoke-interface {p1, v2}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/actionbarsherlock/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/widget/SearchView;

    .line 286
    .local v1, "searchView":Lcom/actionbarsherlock/widget/SearchView;
    sget v2, Lcom/yopeso/lieferando/R$id;->abs__search_plate:I

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 287
    .local v0, "searchPlate":Landroid/view/View;
    sget v2, Lcom/yopeso/lieferando/R$drawable;->search_menu_line_bg:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 293
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/16 v8, 0x8

    .line 143
    sget v0, Lcom/yopeso/lieferando/R$layout;->menu_details:I

    invoke-virtual {p1, v0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 145
    .local v7, "view":Landroid/view/View;
    sget v0, Lcom/yopeso/lieferando/R$id;->LoadingMenuProgress:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    .line 147
    sget v0, Lcom/yopeso/lieferando/R$id;->ShoppingCart:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mCartView:Landroid/view/View;

    .line 148
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mCartView:Landroid/view/View;

    sget v1, Lcom/yopeso/lieferando/R$id;->CartButton:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mCartView:Landroid/view/View;

    sget v1, Lcom/yopeso/lieferando/R$id;->CartButton:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/SettingsContent;->getDynamicButtonFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 152
    :cond_0
    sget v0, Lcom/yopeso/lieferando/R$id;->MenuHeader:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mImageHeader:Landroid/widget/ImageView;

    .line 153
    new-instance v0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$DisplayHeaderTask;

    invoke-direct {v0, p0, v10}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$DisplayHeaderTask;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$DisplayHeaderTask;)V

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mDisplayHeaderTask:Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$DisplayHeaderTask;

    .line 154
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mDisplayHeaderTask:Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$DisplayHeaderTask;

    new-array v1, v9, [Ljava/lang/Void;

    instance-of v2, v0, Landroid/os/AsyncTask;

    if-nez v2, :cond_2

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$DisplayHeaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 155
    :goto_0
    sget v0, Lcom/yopeso/lieferando/R$id;->MenuName:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mDish:Lcom/yopeso/lieferando/model/meal/DishCategory;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/meal/DishCategory;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mDish:Lcom/yopeso/lieferando/model/meal/DishCategory;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/meal/DishCategory;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 158
    sget v0, Lcom/yopeso/lieferando/R$id;->MenuDescription:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    sget v0, Lcom/yopeso/lieferando/R$id;->MenuDescription:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->getMealDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    :goto_1
    sget v0, Lcom/yopeso/lieferando/R$id;->MenuListView:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mMenuListView:Landroid/widget/ListView;

    .line 166
    new-instance v0, Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$layout;->menu_list_item:I

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mDish:Lcom/yopeso/lieferando/model/meal/DishCategory;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/meal/DishCategory;->getMeals()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Lcom/yopeso/lieferando/callback/MealSelectedCallback;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mMealsAdapter:Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;

    .line 167
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mMenuListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mMealsAdapter:Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 170
    sget v0, Lcom/yopeso/lieferando/R$layout;->additive_footer:I

    invoke-virtual {p1, v0, v10, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 172
    .local v6, "footerView":Landroid/view/View;
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->displayAdditives()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 173
    sget v0, Lcom/yopeso/lieferando/R$id;->AdditivesRL:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getFranchiseTypeId()I

    move-result v0

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_5

    .line 177
    sget v0, Lcom/yopeso/lieferando/R$id;->title:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/SettingsContent;->getAdditive_list_hallopizza()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 180
    sget v0, Lcom/yopeso/lieferando/R$id;->mealAdditive:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/SettingsContent;->getAdditive_list_hallopizza()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    :goto_2
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mMenuListView:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 238
    :goto_3
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v0

    if-nez v0, :cond_1

    .line 239
    sget v0, Lcom/yopeso/lieferando/R$id;->RestMenuHeader:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/SettingsContent;->getmButtonColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 243
    :cond_1
    return-object v7

    .line 154
    .end local v6    # "footerView":Landroid/view/View;
    :cond_2
    check-cast v0, Landroid/os/AsyncTask;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 162
    :cond_3
    sget v0, Lcom/yopeso/lieferando/R$id;->MenuDescription:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 183
    .restart local v6    # "footerView":Landroid/view/View;
    :cond_4
    sget v0, Lcom/yopeso/lieferando/R$id;->mealAdditive:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/yopeso/lieferando/R$string;->additive_list_hallopizza:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 187
    :cond_5
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getFranchiseTypeId()I

    move-result v0

    const/16 v1, 0x4b

    if-ne v0, v1, :cond_7

    .line 189
    sget v0, Lcom/yopeso/lieferando/R$id;->title:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 191
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/SettingsContent;->getAdditive_list_callapizza()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 192
    sget v0, Lcom/yopeso/lieferando/R$id;->mealAdditive:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/SettingsContent;->getAdditive_list_callapizza()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 195
    :cond_6
    sget v0, Lcom/yopeso/lieferando/R$id;->mealAdditive:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/yopeso/lieferando/R$string;->additive_list_callapizza:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 199
    :cond_7
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getFranchiseTypeId()I

    move-result v0

    const/16 v1, 0x43

    if-ne v0, v1, :cond_9

    .line 201
    sget v0, Lcom/yopeso/lieferando/R$id;->title:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/SettingsContent;->getAdditive_list_mundfine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 204
    sget v0, Lcom/yopeso/lieferando/R$id;->mealAdditive:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/SettingsContent;->getAdditive_list_mundfine()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 207
    :cond_8
    sget v0, Lcom/yopeso/lieferando/R$id;->mealAdditive:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/yopeso/lieferando/R$string;->additive_list_mundfine:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 213
    :cond_9
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/SettingsContent;->getAdditive_list()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 214
    sget v0, Lcom/yopeso/lieferando/R$id;->mealAdditive:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/SettingsContent;->getAdditive_list()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    :goto_4
    sget v0, Lcom/yopeso/lieferando/R$id;->AdditivesRL:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$1;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$1;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 217
    :cond_a
    sget v0, Lcom/yopeso/lieferando/R$id;->mealAdditive:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/yopeso/lieferando/R$string;->additive_list:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 234
    :cond_b
    sget v0, Lcom/yopeso/lieferando/R$id;->AdditivesRL:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_3
.end method

.method public onMealSelected(Lcom/yopeso/lieferando/model/meal/Meal;)V
    .locals 9
    .param p1, "meal"    # Lcom/yopeso/lieferando/model/meal/Meal;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 396
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    sget-object v4, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {v3, v4}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen(Ljava/util/Date;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 397
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-static {v3, v4}, Lcom/yopeso/lieferando/dialogs/PreOrderDisabledPLDialog;->getDialog(Landroid/content/Context;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 398
    .local v0, "preorder":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 448
    .end local v0    # "preorder":Landroid/app/AlertDialog;
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    invoke-static {}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->deleySelection()Z

    move-result v3

    if-nez v3, :cond_0

    .line 402
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sput-wide v4, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mLastClickTime:J

    .line 403
    if-eqz p1, :cond_0

    .line 405
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->maxAmountReached(Lcom/yopeso/lieferando/model/meal/Meal;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 407
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/Meal;->getmMaxAmount()I

    move-result v3

    if-ne v3, v8, :cond_2

    .line 408
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$string;->max_amount_once:I

    invoke-virtual {p0, v4}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/Meal;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 411
    :cond_2
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$string;->max_amount_generic:I

    invoke-virtual {p0, v4}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/Meal;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/Meal;->getmMaxAmount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 416
    :cond_3
    invoke-virtual {p0, v7}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->showHideLogoActionbar(Z)V

    .line 417
    const-string v3, "SelectedMeal"

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/Meal;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/Meal;->hasSingleSize()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 419
    new-instance v1, Lcom/yopeso/lieferando/model/meal/Meal;

    invoke-direct {v1, p1}, Lcom/yopeso/lieferando/model/meal/Meal;-><init>(Lcom/yopeso/lieferando/model/meal/Meal;)V

    .line 420
    .local v1, "selectedMeal":Lcom/yopeso/lieferando/model/meal/Meal;
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/meal/Meal;->getSizes()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yopeso/lieferando/model/meal/Size;

    invoke-virtual {v3, v8}, Lcom/yopeso/lieferando/model/meal/Size;->setSelected(Z)V

    .line 422
    invoke-static {v1}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->newInstance(Lcom/yopeso/lieferando/model/meal/Meal;)Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;

    move-result-object v3

    sput-object v3, Lcom/yopeso/lieferando/custom/LRActivity;->mealExtrasDialog:Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;

    .line 423
    sget-object v3, Lcom/yopeso/lieferando/custom/LRActivity;->mealExtrasDialog:Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;

    invoke-virtual {v3, p0, v7}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->setFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 424
    sget-object v3, Lcom/yopeso/lieferando/custom/LRActivity;->mealExtrasDialog:Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    sget-object v5, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 439
    .end local v1    # "selectedMeal":Lcom/yopeso/lieferando/model/meal/Meal;
    :cond_4
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-static {p1, v3}, Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment;->newInstance(Lcom/yopeso/lieferando/model/meal/Meal;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment;

    move-result-object v2

    .line 440
    .local v2, "sizeFrag":Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment;
    sget v3, Lcom/yopeso/lieferando/R$id;->Content:I

    invoke-virtual {p0, v3, v2}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->addNewFragment(ILandroid/support/v4/app/Fragment;)V

    goto/16 :goto_0
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 2
    .param p1, "filter"    # Ljava/lang/String;

    .prologue
    .line 297
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mMealsAdapter:Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mMealsAdapter:Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 300
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_2

    .line 301
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mMealsAdapter:Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 302
    invoke-static {p1}, Lcom/yopeso/lieferando/util/TrackingUtils;->searchKahuna(Ljava/lang/String;)V

    .line 304
    :cond_1
    invoke-static {p1}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackSearchProduct(Ljava/lang/String;)V

    .line 306
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 312
    .local v0, "mgr":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 313
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mSearchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v1}, Lcom/actionbarsherlock/widget/SearchView;->clearFocus()V

    .line 314
    const/4 v1, 0x1

    return v1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 326
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onResume()V

    .line 327
    const-string v0, "MenuDetailsFrag"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/util/DeviceUtils;->isHoneycombTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mCartView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->displayInView(Landroid/view/View;)V

    .line 331
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->showHideLogoActionbar(Z)V

    .line 332
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 333
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 335
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/LRFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 122
    const-string v0, "dish_key"

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mDish:Lcom/yopeso/lieferando/model/meal/DishCategory;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 123
    const-string v0, "restaurant_key"

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 124
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 319
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onStart()V

    .line 320
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/MealsRequest;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mDish:Lcom/yopeso/lieferando/model/meal/DishCategory;

    new-instance v3, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$MealsLoadedListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$MealsLoadedListener;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$MealsLoadedListener;)V

    invoke-direct {v1, v2, v3}, Lcom/yopeso/lieferando/net/requests/MealsRequest;-><init>(Lcom/yopeso/lieferando/model/meal/DishCategory;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 322
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 339
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onStop()V

    .line 340
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mDisplayHeaderTask:Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$DisplayHeaderTask;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mDisplayHeaderTask:Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$DisplayHeaderTask;

    invoke-virtual {v0, v2}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$DisplayHeaderTask;->cancel(Z)Z

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mSearchView:Lcom/actionbarsherlock/widget/SearchView;

    if-eqz v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mSearchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 345
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mSearchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/widget/SearchView;->setOnQueryTextListener(Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;)V

    .line 346
    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mSearchView:Lcom/actionbarsherlock/widget/SearchView;

    .line 348
    :cond_1
    invoke-virtual {p0, v2}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->showHideLogoActionbar(Z)V

    .line 349
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v0

    if-nez v0, :cond_2

    .line 350
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 356
    :goto_0
    return-void

    .line 353
    :cond_2
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$string;->app_title:I

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    goto :goto_0
.end method
