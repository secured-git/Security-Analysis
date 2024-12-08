.class public Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment;
.super Lcom/yopeso/lieferando/custom/LRFragment;
.source "SizesDetailsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment$DisplayHeaderTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yopeso/lieferando/custom/LRFragment;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field protected static final KEY_MEAL:Ljava/lang/String; = "meal_key"

.field protected static final KEY_RESTAURANT:Ljava/lang/String; = "key_restaurant"

.field private static final TAG:Ljava/lang/String; = "SizeDetailsFrag"


# instance fields
.field private mAdapter:Lcom/yopeso/lieferando/adapters/restaurant/MealSizesAdapter;

.field private mCartView:Landroid/view/View;

.field private mDisplayHeaderTask:Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment$DisplayHeaderTask;

.field private mImageHeader:Landroid/widget/ImageView;

.field protected mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

.field private mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

.field private mSizesListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/yopeso/lieferando/custom/LRFragment;-><init>()V

    .line 55
    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment;->mImageHeader:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static newInstance(Lcom/yopeso/lieferando/model/meal/Meal;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment;
    .locals 3
    .param p0, "meal"    # Lcom/yopeso/lieferando/model/meal/Meal;
    .param p1, "r"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 58
    new-instance v1, Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment;

    invoke-direct {v1}, Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment;-><init>()V

    .line 59
    .local v1, "frag":Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 60
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "meal_key"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 61
    const-string v2, "key_restaurant"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 62
    invoke-virtual {v1, v0}, Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 63
    return-object v1
.end method


# virtual methods
.method protected goToMenuFragment(I)V
    .locals 4
    .param p1, "sizeIndex"    # I

    .prologue
    .line 143
    new-instance v0, Lcom/yopeso/lieferando/model/meal/Meal;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment;->mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

    invoke-direct {v0, v1}, Lcom/yopeso/lieferando/model/meal/Meal;-><init>(Lcom/yopeso/lieferando/model/meal/Meal;)V

    .line 144
    .local v0, "selectedMeal":Lcom/yopeso/lieferando/model/meal/Meal;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/meal/Meal;->getSizes()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/model/meal/Size;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/meal/Size;->setSelected(Z)V

    .line 146
    const-string v1, "goToMenuFragment"

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/meal/Meal;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-static {v0}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->newInstance(Lcom/yopeso/lieferando/model/meal/Meal;)Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;

    move-result-object v1

    sput-object v1, Lcom/yopeso/lieferando/custom/LRActivity;->mealExtrasDialog:Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;

    .line 148
    sget-object v1, Lcom/yopeso/lieferando/custom/LRActivity;->mealExtrasDialog:Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->setFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 149
    sget-object v1, Lcom/yopeso/lieferando/custom/LRActivity;->mealExtrasDialog:Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    sget-object v3, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 167
    .local v0, "id":I
    sget v1, Lcom/yopeso/lieferando/R$id;->CartButton:I

    if-ne v0, v1, :cond_0

    .line 168
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 169
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    sget-object v2, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    sget v1, Lcom/yopeso/lieferando/R$id;->Content:I

    new-instance v2, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;

    invoke-direct {v2}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment;->addNewFragment(ILandroid/support/v4/app/Fragment;)V

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$string;->restaurant_closed:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 175
    :cond_2
    sget v1, Lcom/yopeso/lieferando/R$id;->Content:I

    new-instance v2, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;

    invoke-direct {v2}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment;->addNewFragment(ILandroid/support/v4/app/Fragment;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/LRFragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "meal_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/meal/Meal;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment;->mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

    .line 70
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_restaurant"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .line 71
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 72
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 82
    sget v1, Lcom/yopeso/lieferando/R$layout;->sizes_details:I

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 84
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/yopeso/lieferando/R$id;->ShoppingCart:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment;->mCartView:Landroid/view/View;

    .line 85
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment;->mCartView:Landroid/view/View;

    sget v2, Lcom/yopeso/lieferando/R$id;->CartButton:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment;->mCartView:Landroid/view/View;

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

    .line 89
    :cond_0
    sget v1, Lcom/yopeso/lieferando/R$id;->SizeHeader:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment;->mImageHeader:Landroid/widget/ImageView;

    .line 90
    new-instance v1, Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment$DisplayHeaderTask;

    invoke-direct {v1, p0, v3}, Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment$DisplayHeaderTask;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment;Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment$DisplayHeaderTask;)V

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment;->mDisplayHeaderTask:Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment$DisplayHeaderTask;

    .line 91
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment;->mDisplayHeaderTask:Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment$DisplayHeaderTask;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    instance-of v3, v1, Landroid/os/AsyncTask;

    if-nez v3, :cond_2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment$DisplayHeaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 92
    :goto_0
    new-instance v1, Lcom/yopeso/lieferando/adapters/restaurant/MealSizesAdapter;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$layout;->size_list_item:I

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment;->mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/meal/Meal;->getSizes()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/yopeso/lieferando/adapters/restaurant/MealSizesAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment;->mAdapter:Lcom/yopeso/lieferando/adapters/restaurant/MealSizesAdapter;

    .line 93
    sget v1, Lcom/yopeso/lieferando/R$id;->SizesListView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment;->mSizesListView:Landroid/widget/ListView;

    .line 94
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment;->mSizesListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment;->mAdapter:Lcom/yopeso/lieferando/adapters/restaurant/MealSizesAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment;->mSizesListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 98
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v1

    if-nez v1, :cond_1

    .line 99
    sget v1, Lcom/yopeso/lieferando/R$id;->MealName:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/SettingsContent;->getmButtonColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 103
    :cond_1
    return-object v0

    .line 91
    :cond_2
    check-cast v1, Landroid/os/AsyncTask;

    invoke-static {v1, v2}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "adapter":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0, p3}, Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment;->goToMenuFragment(I)V

    .line 137
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 108
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onResume()V

    .line 109
    const-string v0, "SizeDetailsFrag"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/util/DeviceUtils;->isHoneycombTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment;->mCartView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->displayInView(Landroid/view/View;)V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    if-eqz v0, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 115
    :cond_1
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment;->showHideLogoActionbar(Z)V

    .line 117
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/LRFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 77
    const-string v0, "meal_key"

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment;->mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 78
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 121
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onStop()V

    .line 122
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment;->mDisplayHeaderTask:Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment$DisplayHeaderTask;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment;->mDisplayHeaderTask:Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment$DisplayHeaderTask;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment$DisplayHeaderTask;->cancel(Z)Z

    .line 125
    :cond_0
    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment;->showHideLogoActionbar(Z)V

    .line 126
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$string;->app_title:I

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    goto :goto_0
.end method
