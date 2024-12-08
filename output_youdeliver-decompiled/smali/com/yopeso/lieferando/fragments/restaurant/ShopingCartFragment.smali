.class public Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;
.super Lcom/yopeso/lieferando/custom/LRFragment;
.source "ShopingCartFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/yopeso/lieferando/callback/ShoppingCartCallback;


# instance fields
.field private mAdapter:Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;

.field private mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/yopeso/lieferando/custom/LRFragment;-><init>()V

    .line 57
    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;)V
    .locals 0

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->setupSelectPaymentButton()V

    return-void
.end method

.method static synthetic access$1(Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;)Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->mAdapter:Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;

    return-object v0
.end method

.method private setupSelectPaymentButton()V
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 208
    const-class v1, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "setupSelectPaymentButton"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    .line 213
    .local v0, "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getOrderCostReached()I

    move-result v1

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getMinCost()I

    move-result v2

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getMinCost()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getOrderCostReached()I

    move-result v1

    if-nez v1, :cond_1

    .line 215
    :cond_0
    const-class v1, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "setupSelectPaymentButton->not reached"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$id;->orderNowButton:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sget v2, Lcom/yopeso/lieferando/R$drawable;->button_grey_selector:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 218
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$id;->orderNowButton:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sget v2, Lcom/yopeso/lieferando/R$string;->minimum_order_not_reached:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v4

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getMinCost()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    float-to-double v6, v5

    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {p0, v2, v3}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 219
    invoke-virtual {p0, v8}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->activateOrderButton(Z)V

    .line 232
    :goto_0
    return-void

    .line 224
    :cond_1
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$id;->orderNowButton:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$drawable;->button_green_selector:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 225
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$id;->orderNowButton:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sget v2, Lcom/yopeso/lieferando/R$string;->jetzt_bestellen:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 227
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v1

    if-nez v1, :cond_2

    .line 228
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$id;->orderNowButton:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/SettingsContent;->getDynamicButtonFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 230
    :cond_2
    invoke-virtual {p0, v3}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->activateOrderButton(Z)V

    goto :goto_0
.end method

.method private showEmptyCartDialog()V
    .locals 3

    .prologue
    .line 168
    invoke-static {}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->deleySelection()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->mLastClickTime:J

    .line 170
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/yopeso/lieferando/R$string;->clear_cart_list_dialog_text:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$string;->no:I

    new-instance v2, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment$1;

    invoke-direct {v2, p0}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment$1;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 175
    sget v1, Lcom/yopeso/lieferando/R$string;->yes:I

    new-instance v2, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment$2;

    invoke-direct {v2, p0}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment$2;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 187
    :cond_0
    return-void
.end method


# virtual methods
.method public activateOrderButton(Z)V
    .locals 2
    .param p1, "activate"    # Z

    .prologue
    .line 272
    const-class v0, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "activateOrderButton"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->orderNowButton:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 274
    return-void
.end method

.method public changeContentOfMeal(Lcom/yopeso/lieferando/model/cart/CartItem;)V
    .locals 3
    .param p1, "item"    # Lcom/yopeso/lieferando/model/cart/CartItem;

    .prologue
    .line 245
    const-string v0, "changeContentOfMeal"

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/cart/CartItem;->getMeal()Lcom/yopeso/lieferando/model/meal/Meal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/meal/Meal;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-static {p1}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->newInstance(Lcom/yopeso/lieferando/model/cart/CartItem;)Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;

    move-result-object v0

    sput-object v0, Lcom/yopeso/lieferando/custom/LRActivity;->mealExtrasDialog:Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;

    .line 248
    sget-object v0, Lcom/yopeso/lieferando/custom/LRActivity;->mealExtrasDialog:Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->setFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 249
    sget-object v0, Lcom/yopeso/lieferando/custom/LRActivity;->mealExtrasDialog:Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 250
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->setupSelectPaymentButton()V

    .line 262
    return-void
.end method

.method public deleteItemFromCart(Lcom/yopeso/lieferando/model/cart/CartItem;)V
    .locals 3
    .param p1, "cartItem"    # Lcom/yopeso/lieferando/model/cart/CartItem;

    .prologue
    .line 278
    invoke-static {}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->deleySelection()Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->mLastClickTime:J

    .line 280
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/yopeso/lieferando/R$string;->delete_item_message:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$string;->yes:I

    new-instance v2, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment$3;

    invoke-direct {v2, p0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment$3;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;Lcom/yopeso/lieferando/model/cart/CartItem;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 290
    sget v1, Lcom/yopeso/lieferando/R$string;->cancel_button_text:I

    new-instance v2, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment$4;

    invoke-direct {v2, p0}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment$4;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 296
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 298
    :cond_0
    return-void
.end method

.method protected getTitle()I
    .locals 1

    .prologue
    .line 70
    sget v0, Lcom/yopeso/lieferando/R$string;->shopping_cart_title:I

    return v0
.end method

.method public goToCheckout()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 235
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    .line 236
    .local v0, "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getOrderCostReached()I

    move-result v1

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getMinCost()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$string;->minimum_order_not_reached:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v4

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getMinCost()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    float-to-double v6, v5

    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {p0, v2, v3}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 241
    :goto_0
    return-void

    .line 239
    :cond_0
    sget v1, Lcom/yopeso/lieferando/R$id;->Content:I

    new-instance v2, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-direct {v2}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->addNewFragment(ILandroid/support/v4/app/Fragment;)V

    goto :goto_0
.end method

.method public notifyShoppingCartListAdapter()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->mAdapter:Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->notifyDataSetChanged()V

    .line 267
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->setupSelectPaymentButton()V

    .line 268
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 191
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 192
    .local v1, "id":I
    sget v2, Lcom/yopeso/lieferando/R$id;->orderNowButton:I

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->deleySelection()Z

    move-result v2

    if-nez v2, :cond_0

    .line 193
    const-class v2, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onClick"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    .line 195
    .local v0, "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 196
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v2

    sget-object v3, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 197
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->goToCheckout()V

    .line 205
    .end local v0    # "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    :cond_0
    :goto_0
    return-void

    .line 199
    .restart local v0    # "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    :cond_1
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->restaurant_closed:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 202
    :cond_2
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->goToCheckout()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 61
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/LRFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->setHasOptionsMenu(Z)V

    .line 63
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    .line 64
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 66
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    .line 106
    invoke-super {p0, p1, p2}, Lcom/yopeso/lieferando/custom/LRFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V

    .line 107
    sget v0, Lcom/yopeso/lieferando/R$menu;->cart_menu:I

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 108
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 89
    sget v1, Lcom/yopeso/lieferando/R$layout;->shoping_cart_layout:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 91
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/yopeso/lieferando/R$id;->orderNowButton:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    const-class v1, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    sget v1, Lcom/yopeso/lieferando/R$id;->orderNowButton:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/SettingsContent;->getDynamicButtonFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 97
    :cond_0
    new-instance v1, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v2

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;-><init>(Lcom/yopeso/lieferando/model/cart/ShoppingCart;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->mAdapter:Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;

    .line 98
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->mAdapter:Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;

    invoke-virtual {v1, p0}, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->setListener(Lcom/yopeso/lieferando/callback/ShoppingCartCallback;)V

    .line 99
    sget v1, Lcom/yopeso/lieferando/R$id;->shoppingCartListView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->mListView:Landroid/widget/ListView;

    .line 100
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->mAdapter:Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 101
    return-object v0
.end method

.method public onEvent(Lcom/yopeso/lieferando/events/AuthenticationEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/yopeso/lieferando/events/AuthenticationEvent;

    .prologue
    .line 158
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setStamp(Lcom/yopeso/lieferando/model/Stamp;)V

    .line 160
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setStempleUsed(Z)V

    .line 161
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->notifyShoppingCartListAdapter()V

    .line 163
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "menuItem"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 112
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/yopeso/lieferando/R$id;->empty_cart_menu:I

    if-ne v0, v1, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->showEmptyCartDialog()V

    .line 114
    const/4 v0, 0x1

    .line 116
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/LRFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 121
    sget v1, Lcom/yopeso/lieferando/R$id;->empty_cart_menu:I

    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    .line 122
    .local v0, "item":Lcom/actionbarsherlock/view/MenuItem;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 123
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setEnabled(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 124
    invoke-interface {v0}, Lcom/actionbarsherlock/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 130
    :goto_0
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/LRFragment;->onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)V

    .line 131
    return-void

    .line 127
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setEnabled(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 128
    invoke-interface {v0}, Lcom/actionbarsherlock/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x82

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 75
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onResume()V

    .line 76
    const-class v0, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->mAdapter:Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->notifyDataSetChanged()V

    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->showHideLogoActionbar(Z)V

    .line 79
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 80
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 81
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->setupSelectPaymentButton()V

    .line 84
    invoke-static {}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackViewCart()V

    .line 85
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onStart()V

    .line 136
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 139
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 143
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onStop()V

    .line 144
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 147
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->showHideLogoActionbar(Z)V

    .line 148
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v0

    if-nez v0, :cond_1

    .line 149
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 155
    :goto_0
    return-void

    .line 152
    :cond_1
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$string;->app_title:I

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    goto :goto_0
.end method
