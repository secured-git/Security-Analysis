.class public Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;
.super Lcom/yopeso/lieferando/custom/LRFragment;
.source "MealItemFragment.java"

# interfaces
.implements Lcom/yopeso/lieferando/callback/MealOptionsAndExtraAdapterCallback;


# static fields
.field protected static final KEY_CART_ITEM:Ljava/lang/String; = "key_cart_item"

.field protected static final KEY_FROM_SC:Ljava/lang/String; = "key_from_shopping_cart"

.field protected static final KEY_INIT_CART_ITEM:Ljava/lang/String; = "key_init_cart_item"

.field protected static final KEY_MEAL:Ljava/lang/String; = "key_meal"

.field protected static final KEY_URL:Ljava/lang/String; = "key_url"

.field public static final TAG:Ljava/lang/String; = "MenuItemFragment"


# instance fields
.field private isFromShoppingCart:Z

.field private mAdapter:Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;

.field private mCurrentCartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

.field private mExpandableList:Landroid/widget/ExpandableListView;

.field private mHandler:Landroid/os/Handler;

.field private mInitialCartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

.field private mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

.field private mSize:Lcom/yopeso/lieferando/model/meal/Size;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Lcom/yopeso/lieferando/custom/LRFragment;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

    .line 51
    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mSize:Lcom/yopeso/lieferando/model/meal/Size;

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mHandler:Landroid/os/Handler;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->isFromShoppingCart:Z

    .line 64
    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;)Lcom/yopeso/lieferando/model/cart/CartItem;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mCurrentCartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

    return-object v0
.end method

.method static synthetic access$1(Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;)Lcom/yopeso/lieferando/model/cart/CartItem;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mInitialCartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

    return-object v0
.end method

.method static synthetic access$2(Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private expandAllGroups()V
    .locals 3

    .prologue
    .line 184
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mAdapter:Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->getGroupCount()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 190
    return-void

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mAdapter:Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;

    invoke-virtual {v1, v0}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->getGroupType(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 187
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mExpandableList:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 184
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static newInstance(Lcom/yopeso/lieferando/model/cart/CartItem;)Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;
    .locals 5
    .param p0, "cart"    # Lcom/yopeso/lieferando/model/cart/CartItem;

    .prologue
    .line 76
    new-instance v2, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;

    invoke-direct {v2}, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;-><init>()V

    .line 77
    .local v2, "frag":Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 78
    .local v0, "args":Landroid/os/Bundle;
    new-instance v1, Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/model/cart/CartItem;-><init>(Lcom/yopeso/lieferando/model/cart/CartItem;)V

    .line 79
    .local v1, "cartEdited":Lcom/yopeso/lieferando/model/cart/CartItem;
    const-string v3, "key_cart_item"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 80
    const-string v3, "key_init_cart_item"

    invoke-virtual {v0, v3, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 81
    const-string v3, "key_meal"

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/CartItem;->getMeal()Lcom/yopeso/lieferando/model/meal/Meal;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 82
    const-string v3, "key_from_shopping_cart"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 83
    invoke-virtual {v2, v0}, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->setArguments(Landroid/os/Bundle;)V

    .line 84
    return-object v2
.end method

.method public static newInstance(Lcom/yopeso/lieferando/model/meal/Meal;)Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;
    .locals 4
    .param p0, "meal"    # Lcom/yopeso/lieferando/model/meal/Meal;

    .prologue
    .line 67
    new-instance v1, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;

    invoke-direct {v1}, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;-><init>()V

    .line 68
    .local v1, "frag":Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 69
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "key_meal"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 70
    const-string v2, "key_from_shopping_cart"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 71
    invoke-virtual {v1, v0}, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->setArguments(Landroid/os/Bundle;)V

    .line 72
    return-object v1
.end method

.method private setupTopBarAndBanner(Landroid/view/View;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v8, 0x42c80000    # 100.0f

    .line 178
    sget v0, Lcom/yopeso/lieferando/R$id;->dishTitleAndPrice:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/meal/Meal;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$string;->price:I

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v4

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/meal/Meal;->getCost()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v8

    float-to-double v6, v5

    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-virtual {p0, v2, v3}, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    sget v0, Lcom/yopeso/lieferando/R$id;->dishDescription:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/meal/Meal;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    sget v0, Lcom/yopeso/lieferando/R$id;->dishTitleAndPrice:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/meal/Meal;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$string;->price:I

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v4

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mSize:Lcom/yopeso/lieferando/model/meal/Size;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/meal/Size;->getTotalCost()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v8

    float-to-double v6, v5

    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-virtual {p0, v2, v3}, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    return-void
.end method


# virtual methods
.method public addToCartButtonPressed(Z)V
    .locals 9
    .param p1, "haveExtras"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 202
    iget-boolean v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->isFromShoppingCart:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->isFromShoppingCart:Z

    if-nez v1, :cond_3

    .line 204
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->maxAmountReached(Lcom/yopeso/lieferando/model/meal/Meal;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/meal/Meal;->getmMaxAmount()I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$string;->max_amount_once:I

    invoke-virtual {p0, v2}, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/meal/Meal;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 283
    :goto_0
    return-void

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$string;->max_amount_generic:I

    invoke-virtual {p0, v2}, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/meal/Meal;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/meal/Meal;->getmMaxAmount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 214
    :cond_1
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mCurrentCartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

    new-instance v2, Lcom/yopeso/lieferando/model/meal/Meal;

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

    invoke-direct {v2, v3}, Lcom/yopeso/lieferando/model/meal/Meal;-><init>(Lcom/yopeso/lieferando/model/meal/Meal;)V

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/cart/CartItem;->setMeal(Lcom/yopeso/lieferando/model/meal/Meal;)V

    .line 215
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mCurrentCartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-virtual {v1, v5}, Lcom/yopeso/lieferando/model/cart/CartItem;->setCount(I)V

    .line 216
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mCurrentCartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->addItem(Lcom/yopeso/lieferando/model/cart/CartItem;)V

    .line 217
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 218
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/meal/Meal;->getId()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackAddToCartItem(JLandroid/content/Context;)V

    .line 220
    :cond_2
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment$1;

    invoke-direct {v2, p0}, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment$1;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 230
    :cond_3
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mInitialCartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/CartItem;->getItemCost()I

    move-result v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mCurrentCartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/CartItem;->getItemCost()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 242
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mCurrentCartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/CartItem;->getItemCost()I

    move-result v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mInitialCartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/CartItem;->getItemCost()I

    move-result v2

    sub-int v0, v1, v2

    .line 243
    .local v0, "difference":I
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/yopeso/lieferando/R$string;->increase_price_text:I

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v4

    int-to-float v5, v0

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    float-to-double v6, v5

    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {p0, v2, v3}, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 244
    sget v2, Lcom/yopeso/lieferando/R$string;->yes:I

    new-instance v3, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment$2;

    invoke-direct {v3, p0}, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment$2;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 255
    sget v2, Lcom/yopeso/lieferando/R$string;->no:I

    new-instance v3, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment$3;

    invoke-direct {v3, p0}, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment$3;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 265
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 270
    .end local v0    # "difference":I
    :cond_4
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mCurrentCartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mInitialCartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-virtual {v1, v2, v3}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->replaceItem(Lcom/yopeso/lieferando/model/cart/CartItem;Lcom/yopeso/lieferando/model/cart/CartItem;)V

    .line 271
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment$4;

    invoke-direct {v2, p0}, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment$4;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method public expandTheGroup(I)V
    .locals 1
    .param p1, "groupIndex"    # I

    .prologue
    .line 300
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mExpandableList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 301
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mExpandableList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 302
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/LRFragment;->onCreate(Landroid/os/Bundle;)V

    .line 90
    if-eqz p1, :cond_4

    .line 91
    const-string v0, "key_from_shopping_cart"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const-string v0, "key_from_shopping_cart"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->isFromShoppingCart:Z

    .line 94
    :cond_0
    const-string v0, "key_meal"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    const-string v0, "key_meal"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/meal/Meal;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

    .line 97
    :cond_1
    const-string v0, "key_cart_item"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    const-string v0, "key_cart_item"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/cart/CartItem;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mCurrentCartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

    .line 100
    :cond_2
    const-string v0, "key_init_cart_item"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 101
    const-string v0, "key_init_cart_item"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/cart/CartItem;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mInitialCartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

    .line 115
    :cond_3
    :goto_0
    return-void

    .line 105
    :cond_4
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_init_cart_item"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 106
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_init_cart_item"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/cart/CartItem;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mInitialCartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

    .line 108
    :cond_5
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_cart_item"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 109
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_cart_item"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/cart/CartItem;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mCurrentCartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

    .line 112
    :cond_6
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_from_shopping_cart"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->isFromShoppingCart:Z

    .line 113
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_meal"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/meal/Meal;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 131
    sget v1, Lcom/yopeso/lieferando/R$layout;->menuitem_fragment:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 132
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mCurrentCartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

    if-nez v1, :cond_0

    .line 133
    new-instance v1, Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-direct {v1}, Lcom/yopeso/lieferando/model/cart/CartItem;-><init>()V

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mCurrentCartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/meal/Meal;->getSelectedSize()Lcom/yopeso/lieferando/model/meal/Size;

    move-result-object v1

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mSize:Lcom/yopeso/lieferando/model/meal/Size;

    .line 137
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mSize:Lcom/yopeso/lieferando/model/meal/Size;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/meal/Size;->getHasSpecials()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->isFromShoppingCart:Z

    if-nez v1, :cond_1

    .line 138
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->addToCartButtonPressed(Z)V

    .line 150
    :goto_0
    return-object v0

    .line 140
    :cond_1
    sget v1, Lcom/yopeso/lieferando/R$id;->expandableList:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListView;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mExpandableList:Landroid/widget/ExpandableListView;

    .line 141
    new-instance v1, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mAdapter:Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;

    .line 142
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mAdapter:Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;

    invoke-virtual {v1, p0}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->setListener(Lcom/yopeso/lieferando/callback/MealOptionsAndExtraAdapterCallback;)V

    .line 143
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mExpandableList:Landroid/widget/ExpandableListView;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mAdapter:Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 144
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mAdapter:Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mSize:Lcom/yopeso/lieferando/model/meal/Size;

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->setSize(Lcom/yopeso/lieferando/model/meal/Size;)V

    .line 145
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mAdapter:Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mCurrentCartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/CartItem;->getOptionalNotes()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->setOptionalNotes(Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mAdapter:Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->notifyDataSetChanged()V

    .line 147
    invoke-direct {p0, v0}, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->setupTopBarAndBanner(Landroid/view/View;)V

    .line 148
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->expandAllGroups()V

    goto :goto_0
.end method

.method public onEvent(Lcom/yopeso/lieferando/model/cart/CartItem;)V
    .locals 1
    .param p1, "cartItem"    # Lcom/yopeso/lieferando/model/cart/CartItem;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mInitialCartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/cart/CartItem;->getMeal()Lcom/yopeso/lieferando/model/meal/Meal;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mInitialCartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-virtual {v0, p1}, Lcom/yopeso/lieferando/model/cart/CartItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    :cond_1
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 174
    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 119
    const-string v0, "bug_fix"

    const-string v1, "bug_fix"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/LRFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 122
    const-string v0, "key_from_shopping_cart"

    iget-boolean v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->isFromShoppingCart:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 123
    const-string v0, "key_meal"

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 124
    const-string v0, "key_cart_item"

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mCurrentCartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 125
    const-string v0, "key_init_cart_item"

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mInitialCartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 126
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 155
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onStart()V

    .line 156
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 159
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 163
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onStop()V

    .line 164
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/events/CartChangedEvent;

    invoke-direct {v1}, Lcom/yopeso/lieferando/events/CartChangedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 165
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 168
    :cond_0
    return-void
.end method

.method public setOptionalNotesToCartItem(Ljava/lang/String;)V
    .locals 1
    .param p1, "notes"    # Ljava/lang/String;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mCurrentCartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-virtual {v0, p1}, Lcom/yopeso/lieferando/model/cart/CartItem;->setOptionalNotes(Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method public setPositionInListView(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 306
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mExpandableList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->setSelectedGroup(I)V

    .line 307
    return-void
.end method

.method public updateMealCostTextView()V
    .locals 8

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->dishTitleAndPrice:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/meal/Meal;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$string;->price:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v5

    iget-object v6, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->mSize:Lcom/yopeso/lieferando/model/meal/Size;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/meal/Size;->getTotalCost()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    return-void
.end method
