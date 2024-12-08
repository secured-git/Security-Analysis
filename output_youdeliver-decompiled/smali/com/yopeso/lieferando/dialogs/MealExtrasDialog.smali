.class public Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;
.super Landroid/support/v4/app/LRDialogFragment;
.source "MealExtrasDialog.java"

# interfaces
.implements Lcom/yopeso/lieferando/callback/MealOptionsAndExtraAdapterCallback;


# static fields
.field protected static final KEY_CART_ITEM:Ljava/lang/String; = "key_cart_item"

.field protected static final KEY_FROM_SC:Ljava/lang/String; = "key_from_shopping_cart"

.field protected static final KEY_INIT_CART_ITEM:Ljava/lang/String; = "key_init_cart_item"

.field protected static final KEY_MEAL:Ljava/lang/String; = "key_meal"

.field protected static final KEY_URL:Ljava/lang/String; = "key_url"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private dishTitleAndPrice:Landroid/widget/TextView;

.field private fr:Landroid/support/v4/app/Fragment;

.field private isFromShoppingCart:Z

.field private mAdapter:Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;

.field private mCurrentCartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

.field private mExpandableList:Landroid/widget/ExpandableListView;

.field private mHandler:Landroid/os/Handler;

.field private mInitialCartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

.field private mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

.field private mSize:Lcom/yopeso/lieferando/model/meal/Size;

.field private recreate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->TAG:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/LRDialogFragment;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

    .line 45
    iput-object v0, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mSize:Lcom/yopeso/lieferando/model/meal/Size;

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mHandler:Landroid/os/Handler;

    .line 51
    iput-boolean v1, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->recreate:Z

    .line 57
    iput-boolean v1, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->isFromShoppingCart:Z

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;)Lcom/yopeso/lieferando/model/cart/CartItem;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mCurrentCartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

    return-object v0
.end method

.method static synthetic access$1(Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;)Lcom/yopeso/lieferando/model/cart/CartItem;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mInitialCartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

    return-object v0
.end method

.method static synthetic access$2(Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private expandAllGroups()V
    .locals 3

    .prologue
    .line 233
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mAdapter:Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->getGroupCount()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 239
    return-void

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mAdapter:Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;

    invoke-virtual {v1, v0}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->getGroupType(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 236
    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mExpandableList:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 233
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static newInstance(Lcom/yopeso/lieferando/model/cart/CartItem;)Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;
    .locals 5
    .param p0, "cart"    # Lcom/yopeso/lieferando/model/cart/CartItem;

    .prologue
    .line 71
    new-instance v2, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;

    invoke-direct {v2}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;-><init>()V

    .line 72
    .local v2, "frag":Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 73
    .local v0, "args":Landroid/os/Bundle;
    new-instance v1, Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/model/cart/CartItem;-><init>(Lcom/yopeso/lieferando/model/cart/CartItem;)V

    .line 74
    .local v1, "cartEdited":Lcom/yopeso/lieferando/model/cart/CartItem;
    const-string v3, "key_cart_item"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 75
    const-string v3, "key_init_cart_item"

    invoke-virtual {v0, v3, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 76
    const-string v3, "key_meal"

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/CartItem;->getMeal()Lcom/yopeso/lieferando/model/meal/Meal;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 77
    const-string v3, "key_from_shopping_cart"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 78
    invoke-virtual {v2, v0}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->setArguments(Landroid/os/Bundle;)V

    .line 79
    invoke-static {}, Lcom/yopeso/lieferando/custom/LRActivity;->cancelDialogs()V

    .line 80
    return-object v2
.end method

.method public static newInstance(Lcom/yopeso/lieferando/model/meal/Meal;)Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;
    .locals 4
    .param p0, "meal"    # Lcom/yopeso/lieferando/model/meal/Meal;

    .prologue
    .line 61
    new-instance v1, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;

    invoke-direct {v1}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;-><init>()V

    .line 62
    .local v1, "frag":Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 63
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "key_meal"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 64
    const-string v2, "key_from_shopping_cart"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 65
    invoke-virtual {v1, v0}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->setArguments(Landroid/os/Bundle;)V

    .line 66
    invoke-static {}, Lcom/yopeso/lieferando/custom/LRActivity;->cancelDialogs()V

    .line 67
    return-object v1
.end method

.method private setupTopBarAndBanner(Landroid/view/View;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v8, 0x42c80000    # 100.0f

    .line 227
    sget v0, Lcom/yopeso/lieferando/R$id;->dishTitleAndPrice:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

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

    iget-object v5, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/meal/Meal;->getCost()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v8

    float-to-double v6, v5

    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-virtual {p0, v2, v3}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    sget v0, Lcom/yopeso/lieferando/R$id;->dishDescription:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/meal/Meal;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    sget v0, Lcom/yopeso/lieferando/R$id;->dishTitleAndPrice:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

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

    iget-object v5, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mSize:Lcom/yopeso/lieferando/model/meal/Size;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/meal/Size;->getTotalCost()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v8

    float-to-double v6, v5

    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-virtual {p0, v2, v3}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    return-void
.end method


# virtual methods
.method public addToCartButtonPressed(Z)V
    .locals 9
    .param p1, "haveExtras"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 250
    sget-object v1, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "addToCartButtonPressed:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/meal/Meal;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-boolean v1, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->isFromShoppingCart:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->isFromShoppingCart:Z

    if-nez v1, :cond_3

    .line 254
    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->maxAmountReached(Lcom/yopeso/lieferando/model/meal/Meal;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 256
    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/meal/Meal;->getmMaxAmount()I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 257
    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$string;->max_amount_once:I

    invoke-virtual {p0, v2}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/meal/Meal;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 334
    :goto_0
    return-void

    .line 260
    :cond_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$string;->max_amount_generic:I

    invoke-virtual {p0, v2}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/meal/Meal;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    iget-object v4, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

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

    .line 264
    :cond_1
    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mCurrentCartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

    new-instance v2, Lcom/yopeso/lieferando/model/meal/Meal;

    iget-object v3, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

    invoke-direct {v2, v3}, Lcom/yopeso/lieferando/model/meal/Meal;-><init>(Lcom/yopeso/lieferando/model/meal/Meal;)V

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/cart/CartItem;->setMeal(Lcom/yopeso/lieferando/model/meal/Meal;)V

    .line 265
    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mCurrentCartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-virtual {v1, v5}, Lcom/yopeso/lieferando/model/cart/CartItem;->setCount(I)V

    .line 266
    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mCurrentCartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->addItem(Lcom/yopeso/lieferando/model/cart/CartItem;)V

    .line 267
    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 268
    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/meal/Meal;->getId()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackAddToCartItem(JLandroid/content/Context;)V

    .line 270
    :cond_2
    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog$2;

    invoke-direct {v2, p0}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog$2;-><init>(Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 280
    :cond_3
    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mInitialCartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/CartItem;->getItemCost()I

    move-result v1

    iget-object v2, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mCurrentCartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/CartItem;->getItemCost()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 292
    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mCurrentCartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/CartItem;->getItemCost()I

    move-result v1

    iget-object v2, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mInitialCartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/CartItem;->getItemCost()I

    move-result v2

    sub-int v0, v1, v2

    .line 293
    .local v0, "difference":I
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

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

    invoke-virtual {p0, v2, v3}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 294
    sget v2, Lcom/yopeso/lieferando/R$string;->yes:I

    new-instance v3, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog$3;

    invoke-direct {v3, p0}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog$3;-><init>(Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 306
    sget v2, Lcom/yopeso/lieferando/R$string;->no:I

    new-instance v3, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog$4;

    invoke-direct {v3, p0}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog$4;-><init>(Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 317
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 323
    .end local v0    # "difference":I
    :cond_4
    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mCurrentCartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

    iget-object v3, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mInitialCartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-virtual {v1, v2, v3}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->replaceItem(Lcom/yopeso/lieferando/model/cart/CartItem;Lcom/yopeso/lieferando/model/cart/CartItem;)V

    .line 324
    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog$5;

    invoke-direct {v2, p0}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog$5;-><init>(Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method public expandTheGroup(I)V
    .locals 1
    .param p1, "groupIndex"    # I

    .prologue
    .line 351
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mExpandableList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 352
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mExpandableList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 353
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/support/v4/app/LRDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    if-eqz p1, :cond_4

    .line 87
    const-string v0, "key_from_shopping_cart"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    const-string v0, "key_from_shopping_cart"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->isFromShoppingCart:Z

    .line 90
    :cond_0
    const-string v0, "key_meal"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    const-string v0, "key_meal"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/meal/Meal;

    iput-object v0, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

    .line 93
    :cond_1
    const-string v0, "key_cart_item"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    const-string v0, "key_cart_item"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/cart/CartItem;

    iput-object v0, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mCurrentCartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

    .line 96
    :cond_2
    const-string v0, "key_init_cart_item"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97
    const-string v0, "key_init_cart_item"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/cart/CartItem;

    iput-object v0, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mInitialCartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

    .line 111
    :cond_3
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->setShowsDialog(Z)V

    .line 112
    return-void

    .line 101
    :cond_4
    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_init_cart_item"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 102
    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_init_cart_item"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/cart/CartItem;

    iput-object v0, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mInitialCartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

    .line 104
    :cond_5
    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_cart_item"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 105
    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_cart_item"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/cart/CartItem;

    iput-object v0, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mCurrentCartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

    .line 108
    :cond_6
    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_from_shopping_cart"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->isFromShoppingCart:Z

    .line 109
    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_meal"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/meal/Meal;

    iput-object v0, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 127
    sget-object v2, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->TAG:Ljava/lang/String;

    const-string v3, "onCreateDialog"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$layout;->menuitem_fragment:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 129
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mCurrentCartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

    if-nez v2, :cond_0

    .line 130
    new-instance v2, Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-direct {v2}, Lcom/yopeso/lieferando/model/cart/CartItem;-><init>()V

    iput-object v2, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mCurrentCartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

    .line 132
    :cond_0
    iget-object v2, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/meal/Meal;->getSelectedSize()Lcom/yopeso/lieferando/model/meal/Size;

    move-result-object v2

    iput-object v2, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mSize:Lcom/yopeso/lieferando/model/meal/Size;

    .line 134
    iget-object v2, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mSize:Lcom/yopeso/lieferando/model/meal/Size;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/meal/Size;->getHasSpecials()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->isFromShoppingCart:Z

    if-nez v2, :cond_1

    .line 135
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->addToCartButtonPressed(Z)V

    .line 148
    :goto_0
    sget v2, Lcom/yopeso/lieferando/R$id;->closeButton:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    new-instance v3, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog$1;

    invoke-direct {v3, p0}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog$1;-><init>(Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 157
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 158
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 137
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_1
    sget v2, Lcom/yopeso/lieferando/R$id;->expandableList:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ExpandableListView;

    iput-object v2, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mExpandableList:Landroid/widget/ExpandableListView;

    .line 138
    sget v2, Lcom/yopeso/lieferando/R$id;->dishTitleAndPrice:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->dishTitleAndPrice:Landroid/widget/TextView;

    .line 139
    new-instance v2, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V

    iput-object v2, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mAdapter:Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;

    .line 140
    iget-object v2, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mAdapter:Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;

    invoke-virtual {v2, p0}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->setListener(Lcom/yopeso/lieferando/callback/MealOptionsAndExtraAdapterCallback;)V

    .line 141
    iget-object v2, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mExpandableList:Landroid/widget/ExpandableListView;

    iget-object v3, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mAdapter:Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 142
    iget-object v2, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mAdapter:Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;

    iget-object v3, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mSize:Lcom/yopeso/lieferando/model/meal/Size;

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->setSize(Lcom/yopeso/lieferando/model/meal/Size;)V

    .line 143
    iget-object v2, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mAdapter:Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;

    iget-object v3, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mCurrentCartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/cart/CartItem;->getOptionalNotes()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->setOptionalNotes(Ljava/lang/String;)V

    .line 144
    iget-object v2, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mAdapter:Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->notifyDataSetChanged()V

    .line 145
    invoke-direct {p0, v1}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->setupTopBarAndBanner(Landroid/view/View;)V

    .line 146
    invoke-direct {p0}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->expandAllGroups()V

    goto :goto_0
.end method

.method public onEvent(Lcom/yopeso/lieferando/model/cart/CartItem;)V
    .locals 1
    .param p1, "cartItem"    # Lcom/yopeso/lieferando/model/cart/CartItem;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mInitialCartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/cart/CartItem;->getMeal()Lcom/yopeso/lieferando/model/meal/Meal;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mInitialCartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-virtual {v0, p1}, Lcom/yopeso/lieferando/model/cart/CartItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 220
    :cond_1
    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->dismiss()V

    .line 223
    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 116
    const-string v0, "bug_fix"

    const-string v1, "bug_fix"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-super {p0, p1}, Landroid/support/v4/app/LRDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 119
    const-string v0, "key_from_shopping_cart"

    iget-boolean v1, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->isFromShoppingCart:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 120
    const-string v0, "key_meal"

    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 121
    const-string v0, "key_cart_item"

    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mCurrentCartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 122
    const-string v0, "key_init_cart_item"

    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mInitialCartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 123
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 189
    invoke-super {p0}, Landroid/support/v4/app/LRDialogFragment;->onStart()V

    .line 190
    sget-object v0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->TAG:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 194
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 198
    invoke-super {p0}, Landroid/support/v4/app/LRDialogFragment;->onStop()V

    .line 200
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/events/CartChangedEvent;

    invoke-direct {v1}, Lcom/yopeso/lieferando/events/CartChangedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 201
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->fr:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_1

    .line 206
    iget-boolean v0, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->recreate:Z

    if-eqz v0, :cond_2

    .line 207
    sget-object v0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStop + recreate+ "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->fr:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->fr:Landroid/support/v4/app/Fragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 216
    :cond_1
    :goto_0
    return-void

    .line 211
    :cond_2
    sget-object v0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStop + refresh+ "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->fr:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->fr:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->onResume()V

    goto :goto_0
.end method

.method public setFragment(Landroid/support/v4/app/Fragment;Z)V
    .locals 0
    .param p1, "fr"    # Landroid/support/v4/app/Fragment;
    .param p2, "recreate"    # Z

    .prologue
    .line 361
    iput-object p1, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->fr:Landroid/support/v4/app/Fragment;

    .line 362
    iput-boolean p2, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->recreate:Z

    .line 363
    return-void
.end method

.method public setOptionalNotesToCartItem(Ljava/lang/String;)V
    .locals 1
    .param p1, "notes"    # Ljava/lang/String;

    .prologue
    .line 346
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mCurrentCartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-virtual {v0, p1}, Lcom/yopeso/lieferando/model/cart/CartItem;->setOptionalNotes(Ljava/lang/String;)V

    .line 347
    return-void
.end method

.method public setPositionInListView(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 357
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mExpandableList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->setSelectedGroup(I)V

    .line 358
    return-void
.end method

.method public updateMealCostTextView()V
    .locals 8

    .prologue
    .line 338
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->dishTitleAndPrice:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

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

    iget-object v6, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->mSize:Lcom/yopeso/lieferando/model/meal/Size;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/meal/Size;->getTotalCost()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    return-void
.end method
