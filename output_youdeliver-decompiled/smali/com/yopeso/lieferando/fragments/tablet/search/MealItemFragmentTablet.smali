.class public Lcom/yopeso/lieferando/fragments/tablet/search/MealItemFragmentTablet;
.super Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;
.source "MealItemFragmentTablet.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;-><init>()V

    .line 22
    return-void
.end method

.method public static bridge synthetic newInstance(Lcom/yopeso/lieferando/model/cart/CartItem;)Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/MealItemFragmentTablet;->newInstance(Lcom/yopeso/lieferando/model/cart/CartItem;)Lcom/yopeso/lieferando/fragments/tablet/search/MealItemFragmentTablet;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic newInstance(Lcom/yopeso/lieferando/model/meal/Meal;)Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/MealItemFragmentTablet;->newInstance(Lcom/yopeso/lieferando/model/meal/Meal;)Lcom/yopeso/lieferando/fragments/tablet/search/MealItemFragmentTablet;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Lcom/yopeso/lieferando/model/cart/CartItem;)Lcom/yopeso/lieferando/fragments/tablet/search/MealItemFragmentTablet;
    .locals 5
    .param p0, "cart"    # Lcom/yopeso/lieferando/model/cart/CartItem;

    .prologue
    .line 34
    new-instance v2, Lcom/yopeso/lieferando/fragments/tablet/search/MealItemFragmentTablet;

    invoke-direct {v2}, Lcom/yopeso/lieferando/fragments/tablet/search/MealItemFragmentTablet;-><init>()V

    .line 35
    .local v2, "frag":Lcom/yopeso/lieferando/fragments/tablet/search/MealItemFragmentTablet;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 37
    .local v0, "args":Landroid/os/Bundle;
    new-instance v1, Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/model/cart/CartItem;-><init>(Lcom/yopeso/lieferando/model/cart/CartItem;)V

    .line 38
    .local v1, "cartEdited":Lcom/yopeso/lieferando/model/cart/CartItem;
    const-string v3, "key_cart_item"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 39
    const-string v3, "key_init_cart_item"

    invoke-virtual {v0, v3, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 40
    const-string v3, "key_meal"

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/CartItem;->getMeal()Lcom/yopeso/lieferando/model/meal/Meal;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 41
    const-string v3, "key_from_shopping_cart"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 42
    invoke-virtual {v2, v0}, Lcom/yopeso/lieferando/fragments/tablet/search/MealItemFragmentTablet;->setArguments(Landroid/os/Bundle;)V

    .line 43
    return-object v2
.end method

.method public static newInstance(Lcom/yopeso/lieferando/model/meal/Meal;)Lcom/yopeso/lieferando/fragments/tablet/search/MealItemFragmentTablet;
    .locals 4
    .param p0, "meal"    # Lcom/yopeso/lieferando/model/meal/Meal;

    .prologue
    .line 25
    new-instance v1, Lcom/yopeso/lieferando/fragments/tablet/search/MealItemFragmentTablet;

    invoke-direct {v1}, Lcom/yopeso/lieferando/fragments/tablet/search/MealItemFragmentTablet;-><init>()V

    .line 26
    .local v1, "frag":Lcom/yopeso/lieferando/fragments/tablet/search/MealItemFragmentTablet;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 27
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "key_meal"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 28
    const-string v2, "key_from_shopping_cart"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 29
    invoke-virtual {v1, v0}, Lcom/yopeso/lieferando/fragments/tablet/search/MealItemFragmentTablet;->setArguments(Landroid/os/Bundle;)V

    .line 30
    return-object v1
.end method


# virtual methods
.method public addToCartButtonPressed(Z)V
    .locals 2
    .param p1, "haveExtras"    # Z

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->addToCartButtonPressed(Z)V

    .line 50
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/events/RestaurantLoaded;

    invoke-direct {v1}, Lcom/yopeso/lieferando/events/RestaurantLoaded;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 51
    return-void
.end method
