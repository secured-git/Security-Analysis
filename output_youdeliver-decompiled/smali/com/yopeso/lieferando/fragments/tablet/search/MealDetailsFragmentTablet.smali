.class public Lcom/yopeso/lieferando/fragments/tablet/search/MealDetailsFragmentTablet;
.super Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;
.source "MealDetailsFragmentTablet.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/yopeso/lieferando/model/meal/DishCategory;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Lcom/yopeso/lieferando/fragments/tablet/search/MealDetailsFragmentTablet;
    .locals 3
    .param p0, "dish"    # Lcom/yopeso/lieferando/model/meal/DishCategory;
    .param p1, "restaurant"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 36
    new-instance v1, Lcom/yopeso/lieferando/fragments/tablet/search/MealDetailsFragmentTablet;

    invoke-direct {v1}, Lcom/yopeso/lieferando/fragments/tablet/search/MealDetailsFragmentTablet;-><init>()V

    .line 37
    .local v1, "frag":Lcom/yopeso/lieferando/fragments/tablet/search/MealDetailsFragmentTablet;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 38
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "dish_key"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 39
    const-string v2, "restaurant_key"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 40
    invoke-virtual {v1, v0}, Lcom/yopeso/lieferando/fragments/tablet/search/MealDetailsFragmentTablet;->setArguments(Landroid/os/Bundle;)V

    .line 41
    return-object v1
.end method


# virtual methods
.method public onMealSelected(Lcom/yopeso/lieferando/model/meal/Meal;)V
    .locals 9
    .param p1, "meal"    # Lcom/yopeso/lieferando/model/meal/Meal;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 46
    const-string v3, "onMealSelectedTABLET"

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/Meal;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/tablet/search/MealDetailsFragmentTablet;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    sget-object v4, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {v3, v4}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen(Ljava/util/Date;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 59
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/MealDetailsFragmentTablet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/tablet/search/MealDetailsFragmentTablet;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-static {v3, v4}, Lcom/yopeso/lieferando/dialogs/PreOrderDisabledPLDialog;->getDialog(Landroid/content/Context;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 60
    .local v0, "preorder":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 116
    .end local v0    # "preorder":Landroid/app/AlertDialog;
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    invoke-static {}, Lcom/yopeso/lieferando/fragments/tablet/search/MealDetailsFragmentTablet;->deleySelection()Z

    move-result v3

    if-nez v3, :cond_0

    .line 64
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sput-wide v4, Lcom/yopeso/lieferando/fragments/tablet/search/MealDetailsFragmentTablet;->mLastClickTime:J

    .line 65
    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/MealDetailsFragmentTablet;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->maxAmountReached(Lcom/yopeso/lieferando/model/meal/Meal;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 70
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/Meal;->getmMaxAmount()I

    move-result v3

    if-ne v3, v8, :cond_2

    .line 71
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/MealDetailsFragmentTablet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$string;->max_amount_once:I

    invoke-virtual {p0, v4}, Lcom/yopeso/lieferando/fragments/tablet/search/MealDetailsFragmentTablet;->getString(I)Ljava/lang/String;

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

    .line 74
    :cond_2
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/MealDetailsFragmentTablet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$string;->max_amount_generic:I

    invoke-virtual {p0, v4}, Lcom/yopeso/lieferando/fragments/tablet/search/MealDetailsFragmentTablet;->getString(I)Ljava/lang/String;

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

    .line 79
    :cond_3
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/Meal;->hasSingleSize()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/Meal;->getSizes()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yopeso/lieferando/model/meal/Size;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/meal/Size;->getHasSpecials()Z

    move-result v3

    if-nez v3, :cond_4

    .line 81
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/Meal;->getSizes()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yopeso/lieferando/model/meal/Size;

    invoke-virtual {v3, v8}, Lcom/yopeso/lieferando/model/meal/Size;->setSelected(Z)V

    .line 82
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/MealDetailsFragmentTablet;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v3

    new-instance v4, Lcom/yopeso/lieferando/model/cart/CartItem;

    new-instance v5, Lcom/yopeso/lieferando/model/meal/Meal;

    invoke-direct {v5, p1}, Lcom/yopeso/lieferando/model/meal/Meal;-><init>(Lcom/yopeso/lieferando/model/meal/Meal;)V

    invoke-direct {v4, v5}, Lcom/yopeso/lieferando/model/cart/CartItem;-><init>(Lcom/yopeso/lieferando/model/meal/Meal;)V

    invoke-virtual {v3, v4}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->addItem(Lcom/yopeso/lieferando/model/cart/CartItem;)V

    .line 85
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v3

    new-instance v4, Lcom/yopeso/lieferando/events/RestaurantLoaded;

    invoke-direct {v4}, Lcom/yopeso/lieferando/events/RestaurantLoaded;-><init>()V

    invoke-virtual {v3, v4}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 89
    :cond_4
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/Meal;->hasSingleSize()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 90
    new-instance v1, Lcom/yopeso/lieferando/model/meal/Meal;

    invoke-direct {v1, p1}, Lcom/yopeso/lieferando/model/meal/Meal;-><init>(Lcom/yopeso/lieferando/model/meal/Meal;)V

    .line 91
    .local v1, "selectedMeal":Lcom/yopeso/lieferando/model/meal/Meal;
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/meal/Meal;->getSizes()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yopeso/lieferando/model/meal/Size;

    invoke-virtual {v3, v8}, Lcom/yopeso/lieferando/model/meal/Size;->setSelected(Z)V

    .line 92
    invoke-static {v1}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->newInstance(Lcom/yopeso/lieferando/model/meal/Meal;)Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;

    move-result-object v3

    sput-object v3, Lcom/yopeso/lieferando/custom/LRActivity;->mealExtrasDialog:Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;

    .line 93
    sget-object v3, Lcom/yopeso/lieferando/custom/LRActivity;->mealExtrasDialog:Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;

    invoke-virtual {v3, p0, v7}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->setFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 94
    sget-object v3, Lcom/yopeso/lieferando/custom/LRActivity;->mealExtrasDialog:Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/MealDetailsFragmentTablet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    sget-object v5, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 99
    .end local v1    # "selectedMeal":Lcom/yopeso/lieferando/model/meal/Meal;
    :cond_5
    invoke-static {p1}, Lcom/yopeso/lieferando/fragments/tablet/search/SizesDetailsFragmentTablet;->newInstance(Lcom/yopeso/lieferando/model/meal/Meal;)Lcom/yopeso/lieferando/fragments/tablet/search/SizesDetailsFragmentTablet;

    move-result-object v2

    .line 100
    .local v2, "sizeFrag":Lcom/yopeso/lieferando/fragments/tablet/search/SizesDetailsFragmentTablet;
    sget v3, Lcom/yopeso/lieferando/R$id;->LeftPane:I

    invoke-virtual {p0, v3, v2}, Lcom/yopeso/lieferando/fragments/tablet/search/MealDetailsFragmentTablet;->addNewFragment(ILandroid/support/v4/app/Fragment;)V

    goto/16 :goto_0
.end method
