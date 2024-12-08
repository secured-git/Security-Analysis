.class public Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;
.super Lcom/yopeso/lieferando/custom/LRFragment;
.source "RestaurantShoppingCartFragmentTablet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/yopeso/lieferando/callback/ShoppingCartCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet$GetRestaurantLocation;,
        Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet$RestaurantRatingsListener;
    }
.end annotation


# static fields
.field private static final KEY_TAB_ID:Ljava/lang/String; = "key_tab_id"

.field public static final TAG:Ljava/lang/String; = "RestaurantShoppingCartFragmentTablet"


# instance fields
.field private mAdapter:Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;

.field private mGoogleMapFragment:Lcom/google/android/gms/maps/SupportMapFragment;

.field private mInfoButton:Landroid/widget/Button;

.field private mInformationLayout:Landroid/widget/LinearLayout;

.field private mLoadingIndicator:Landroid/widget/ProgressBar;

.field private mLocationTask:Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet$GetRestaurantLocation;

.field private mRatingAdapter:Lcom/yopeso/lieferando/adapters/RestaurantRatingAdapter;

.field private mReadOnly:Z

.field private mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

.field private mRestaurantMap:Lcom/google/android/gms/maps/GoogleMap;

.field private mReviewsButton:Landroid/widget/Button;

.field private mReviewsLayout:Landroid/widget/LinearLayout;

.field private mReviewsListView:Landroid/widget/ListView;

.field private mShoppingCartButton:Landroid/widget/Button;

.field private mShoppingCartLayout:Landroid/widget/RelativeLayout;

.field private mShoppingCartListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/yopeso/lieferando/custom/LRFragment;-><init>()V

    .line 101
    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mLoadingIndicator:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1(Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;Lcom/yopeso/lieferando/adapters/RestaurantRatingAdapter;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mRatingAdapter:Lcom/yopeso/lieferando/adapters/RestaurantRatingAdapter;

    return-void
.end method

.method static synthetic access$2(Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mReviewsListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;)Lcom/yopeso/lieferando/adapters/RestaurantRatingAdapter;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mRatingAdapter:Lcom/yopeso/lieferando/adapters/RestaurantRatingAdapter;

    return-object v0
.end method

.method static synthetic access$4(Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;Lcom/android/volley/VolleyError;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->handleNetworkError(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method static synthetic access$5(Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;)Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    return-object v0
.end method

.method static synthetic access$6(Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mRestaurantMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object v0
.end method

.method static synthetic access$7(Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;)Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mAdapter:Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;

    return-object v0
.end method

.method static synthetic access$8(Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 516
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->setCartPrice(Landroid/view/View;)V

    return-void
.end method

.method private loadRestaurantInfoTab(Landroid/view/View;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/high16 v11, 0x42c80000    # 100.0f

    const/4 v10, 0x1

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 319
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v4

    invoke-static {v2, p1, v3, v8, v4}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->displayRestaurantInView(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Landroid/view/View;Landroid/content/Context;ZLcom/android/volley/RequestQueue;)V

    .line 323
    new-instance v2, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet$GetRestaurantLocation;

    invoke-direct {v2, p0, v5}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet$GetRestaurantLocation;-><init>(Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet$GetRestaurantLocation;)V

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mLocationTask:Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet$GetRestaurantLocation;

    .line 324
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mLocationTask:Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet$GetRestaurantLocation;

    new-array v3, v10, [Ljava/lang/Void;

    aput-object v5, v3, v8

    instance-of v4, v2, Landroid/os/AsyncTask;

    if-nez v4, :cond_7

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet$GetRestaurantLocation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 326
    :goto_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v2

    invoke-static {v2}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->getInstance(Lcom/yopeso/lieferando/model/SettingsContent;)Lcom/yopeso/lieferando/util/PaymentSettingsUtil;

    move-result-object v1

    .line 328
    .local v1, "paymentSettingsUtil":Lcom/yopeso/lieferando/util/PaymentSettingsUtil;
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->isPaypalAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 329
    sget v2, Lcom/yopeso/lieferando/R$id;->PaymentPayPal:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 331
    :cond_0
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->isCreditAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 332
    sget v2, Lcom/yopeso/lieferando/R$id;->CardPayments:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 334
    :cond_1
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->isCashAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 335
    sget v2, Lcom/yopeso/lieferando/R$id;->CashPayments:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 337
    :cond_2
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 338
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->isECAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 339
    sget v2, Lcom/yopeso/lieferando/R$id;->ECPayments:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 345
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->isEbankingAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 346
    sget v2, Lcom/yopeso/lieferando/R$id;->PaymentSofortblack:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 349
    :cond_4
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->isPayUAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 350
    sget v2, Lcom/yopeso/lieferando/R$id;->PaymentPayU:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 353
    :cond_5
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v2

    if-nez v2, :cond_6

    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v2

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/model/user/UserData;->getStampsForRestaurant(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 354
    :cond_6
    sget v2, Lcom/yopeso/lieferando/R$id;->stempel_row:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 359
    :goto_2
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    .line 360
    .local v0, "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getNoCostAbove()I

    move-result v2

    if-lez v2, :cond_a

    .line 361
    sget v2, Lcom/yopeso/lieferando/R$id;->FreeDeliveryFor:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 362
    sget v2, Lcom/yopeso/lieferando/R$id;->FreeDeliveryFor:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v3, Lcom/yopeso/lieferando/R$string;->freeDeliveryFor:I

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v5

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getNoCostAbove()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v11

    float-to-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v3, v4}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    :goto_3
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getShippingCost()I

    move-result v2

    if-gez v2, :cond_b

    .line 367
    sget v2, Lcom/yopeso/lieferando/R$id;->ShippingCost:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 374
    :goto_4
    return-void

    .line 324
    .end local v0    # "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    .end local v1    # "paymentSettingsUtil":Lcom/yopeso/lieferando/util/PaymentSettingsUtil;
    :cond_7
    check-cast v2, Landroid/os/AsyncTask;

    invoke-static {v2, v3}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 342
    .restart local v1    # "paymentSettingsUtil":Lcom/yopeso/lieferando/util/PaymentSettingsUtil;
    :cond_8
    sget v2, Lcom/yopeso/lieferando/R$id;->ECPayments:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 356
    :cond_9
    sget v2, Lcom/yopeso/lieferando/R$id;->stempel_row:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 364
    .restart local v0    # "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    :cond_a
    sget v2, Lcom/yopeso/lieferando/R$id;->FreeDeliveryFor:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 370
    :cond_b
    sget v2, Lcom/yopeso/lieferando/R$id;->ShippingCost:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 371
    sget v2, Lcom/yopeso/lieferando/R$id;->ShippingCost:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v3, Lcom/yopeso/lieferando/R$string;->delivery_cost:I

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v5

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getShippingCost()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v11

    float-to-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v3, v4}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method public static newInstance()Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;

    invoke-direct {v0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;-><init>()V

    .line 105
    .local v0, "frag":Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;
    return-object v0
.end method

.method private selectTab(I)V
    .locals 4
    .param p1, "tabViewId"    # I

    .prologue
    const/4 v3, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 377
    sget v0, Lcom/yopeso/lieferando/R$id;->shoppingCartButton:I

    if-ne p1, v0, :cond_1

    .line 378
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->showShoppingCart()V

    .line 379
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->setMask()V

    .line 381
    invoke-static {}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackViewCart()V

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    sget v0, Lcom/yopeso/lieferando/R$id;->restaurantReviewsButton:I

    if-ne p1, v0, :cond_2

    .line 383
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mShoppingCartButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 384
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mInfoButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 385
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mReviewsButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setSelected(Z)V

    .line 386
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mShoppingCartLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 387
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mInformationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 388
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mReviewsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 389
    :cond_2
    sget v0, Lcom/yopeso/lieferando/R$id;->informationButton:I

    if-ne p1, v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mShoppingCartButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 391
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mReviewsButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 392
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mInfoButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setSelected(Z)V

    .line 393
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mShoppingCartLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 394
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mReviewsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 395
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mInformationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 396
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->loadRestaurantInfoTab(Landroid/view/View;)V

    goto :goto_0
.end method

.method private setCartPrice(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v13, 0x8

    const/high16 v12, 0x42c80000    # 100.0f

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 517
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    .line 518
    .local v0, "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    const/4 v1, 0x0

    .line 520
    .local v1, "stempelValue":I
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isRebateUsed()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 521
    sget v2, Lcom/yopeso/lieferando/R$id;->stempel_value_text:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 522
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Stamp;->getFirstDiscount()Lcom/yopeso/lieferando/model/Discount;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRebateDiscount()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getOrderCostReached()I

    move-result v2

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getMinCost()I

    move-result v3

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRebateDiscount()I

    move-result v4

    add-int/2addr v3, v4

    if-lt v2, v3, :cond_3

    .line 523
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRebateDiscount()I

    move-result v1

    .line 524
    sget v2, Lcom/yopeso/lieferando/R$id;->rebate_value_text:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 525
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Stamp;->getFirstDiscount()Lcom/yopeso/lieferando/model/Discount;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Discount;->ismNewCustomer()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 527
    sget v2, Lcom/yopeso/lieferando/R$id;->rebate_value_text:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v3, Lcom/yopeso/lieferando/R$string;->rebate_values_view:I

    new-array v4, v11, [Ljava/lang/Object;

    .line 528
    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v5

    int-to-float v6, v1

    div-float/2addr v6, v12

    float-to-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    .line 527
    invoke-virtual {p0, v3, v4}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 566
    :goto_0
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getShippingCost()I

    move-result v2

    if-gez v2, :cond_7

    .line 567
    sget v2, Lcom/yopeso/lieferando/R$id;->delivery_cost:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 568
    sget v2, Lcom/yopeso/lieferando/R$id;->total_price:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 576
    :goto_1
    sget v2, Lcom/yopeso/lieferando/R$id;->order_value:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v3, Lcom/yopeso/lieferando/R$string;->order_values:I

    new-array v4, v11, [Ljava/lang/Object;

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v5

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getCostWithoutVoucher()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v12

    float-to-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-virtual {p0, v3, v4}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 579
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 580
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getPaymentType()Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    move-result-object v2

    sget-object v3, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->ec:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    if-ne v2, v3, :cond_8

    .line 581
    sget v2, Lcom/yopeso/lieferando/R$id;->ec_cost:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 582
    sget v2, Lcom/yopeso/lieferando/R$id;->ec_cost:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    sget v4, Lcom/yopeso/lieferando/R$string;->ec_payment:I

    invoke-virtual {p0, v4}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$string;->price:I

    new-array v5, v11, [Ljava/lang/Object;

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v6

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v7

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getECPaymentFee()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v12

    float-to-double v8, v7

    invoke-virtual {v6, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {p0, v4, v5}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 589
    :cond_0
    :goto_2
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isVoucherUsed()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 590
    sget v2, Lcom/yopeso/lieferando/R$id;->voucher_value:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v3, Lcom/yopeso/lieferando/R$string;->voucher_values:I

    new-array v4, v11, [Ljava/lang/Object;

    .line 591
    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v5

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getVoucher()Lcom/yopeso/lieferando/model/user/Voucher;

    move-result-object v6

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getCostWithoutVoucher()I

    move-result v7

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getShippingCost()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Lcom/yopeso/lieferando/model/user/Voucher;->getVoucherValue(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v12

    float-to-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    .line 590
    invoke-virtual {p0, v3, v4}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 592
    sget v2, Lcom/yopeso/lieferando/R$id;->voucher_value:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 597
    :goto_3
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getMinCost()I

    move-result v2

    if-ltz v2, :cond_1

    const v2, 0x7fffffff

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getMinCost()I

    move-result v3

    if-ne v2, v3, :cond_a

    .line 598
    :cond_1
    sget v2, Lcom/yopeso/lieferando/R$id;->minimOrderTextView:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 599
    sget v2, Lcom/yopeso/lieferando/R$id;->goToCheckout:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v2, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 622
    :goto_4
    return-void

    .line 531
    :cond_2
    sget v2, Lcom/yopeso/lieferando/R$id;->rebate_value_text:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v3, Lcom/yopeso/lieferando/R$string;->rebate_values_view:I

    new-array v4, v11, [Ljava/lang/Object;

    .line 532
    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v5

    int-to-float v6, v1

    div-float/2addr v6, v12

    float-to-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    .line 531
    invoke-virtual {p0, v3, v4}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 538
    :cond_3
    sget v2, Lcom/yopeso/lieferando/R$id;->rebate_value_text:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 542
    :cond_4
    sget v2, Lcom/yopeso/lieferando/R$id;->rebate_value_text:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 543
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isStampleUsed()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 545
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getOrderCostReached()I

    move-result v2

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getMinCost()I

    move-result v3

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/Stamp;->getDiscountValue()I

    move-result v4

    add-int/2addr v3, v4

    if-lt v2, v3, :cond_5

    .line 546
    sget v2, Lcom/yopeso/lieferando/R$id;->stempel_value_text:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 547
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Stamp;->getDiscountValue()I

    move-result v1

    .line 548
    sget v2, Lcom/yopeso/lieferando/R$id;->stempel_value_text:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v3, Lcom/yopeso/lieferando/R$string;->stempel_values_view:I

    new-array v4, v11, [Ljava/lang/Object;

    .line 549
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v6

    int-to-float v7, v1

    div-float/2addr v7, v12

    float-to-double v8, v7

    invoke-virtual {v6, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    .line 548
    invoke-virtual {p0, v3, v4}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 551
    :cond_5
    sget v2, Lcom/yopeso/lieferando/R$id;->stempel_value_text:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 552
    invoke-virtual {v0, v10}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setStempleUsed(Z)V

    .line 553
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setStamp(Lcom/yopeso/lieferando/model/Stamp;)V

    goto/16 :goto_0

    .line 560
    :cond_6
    sget v2, Lcom/yopeso/lieferando/R$id;->stempel_value_text:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 571
    :cond_7
    sget v2, Lcom/yopeso/lieferando/R$id;->delivery_cost:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 572
    sget v2, Lcom/yopeso/lieferando/R$id;->total_price:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 573
    sget v2, Lcom/yopeso/lieferando/R$id;->delivery_cost:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v3, Lcom/yopeso/lieferando/R$string;->delivery_cost:I

    new-array v4, v11, [Ljava/lang/Object;

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v5

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getShippingCost()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v12

    float-to-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-virtual {p0, v3, v4}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 574
    sget v2, Lcom/yopeso/lieferando/R$id;->total_price:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v3, Lcom/yopeso/lieferando/R$string;->total_prices:I

    new-array v4, v11, [Ljava/lang/Object;

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v5

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getCostWithShipping()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v12

    float-to-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-virtual {p0, v3, v4}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 585
    :cond_8
    sget v2, Lcom/yopeso/lieferando/R$id;->ec_cost:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 594
    :cond_9
    sget v2, Lcom/yopeso/lieferando/R$id;->voucher_value:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 602
    :cond_a
    sget v2, Lcom/yopeso/lieferando/R$id;->minimOrderTextView:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 603
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getMinCost()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getOrderCostReached()I

    move-result v3

    if-le v2, v3, :cond_b

    .line 604
    sget v2, Lcom/yopeso/lieferando/R$id;->minimOrderTextView:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v3, Lcom/yopeso/lieferando/R$string;->min_cost_not_erned:I

    new-array v4, v11, [Ljava/lang/Object;

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v5

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getMinCost()I

    move-result v6

    add-int/2addr v6, v1

    int-to-float v6, v6

    div-float/2addr v6, v12

    float-to-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-virtual {p0, v3, v4}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 606
    sget v2, Lcom/yopeso/lieferando/R$id;->shoppingCartInformationLayout:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$color;->cart_tablet_invalid:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_4

    .line 609
    :cond_b
    sget v2, Lcom/yopeso/lieferando/R$id;->minimOrderTextView:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v3, Lcom/yopeso/lieferando/R$string;->min_cost_erned:I

    new-array v4, v11, [Ljava/lang/Object;

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v5

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getMinCost()I

    move-result v6

    add-int/2addr v6, v1

    int-to-float v6, v6

    div-float/2addr v6, v12

    float-to-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-virtual {p0, v3, v4}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 611
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v2

    if-nez v2, :cond_c

    .line 612
    sget v2, Lcom/yopeso/lieferando/R$id;->shoppingCartInformationLayout:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/SettingsContent;->getmButtonColor()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 617
    :goto_5
    sget v2, Lcom/yopeso/lieferando/R$id;->goToCheckout:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v2, v11}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_4

    .line 615
    :cond_c
    sget v2, Lcom/yopeso/lieferando/R$id;->shoppingCartInformationLayout:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$color;->cart_tablet_valid:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_5
.end method

.method private setMask()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 295
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$id;->DisableMask:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 297
    .local v0, "mask":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 298
    iget-boolean v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mReadOnly:Z

    if-eqz v1, :cond_1

    .line 299
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 300
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$id;->goToCheckout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 301
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$id;->goToCheckout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$id;->emptyShoppingCart:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 303
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$id;->emptyShoppingCart:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    :goto_0
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mAdapter:Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;

    iget-boolean v2, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mReadOnly:Z

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->setReadOnly(Z)V

    .line 313
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mAdapter:Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->notifyDataSetChanged()V

    .line 316
    .end local v0    # "mask":Landroid/view/View;
    :cond_0
    return-void

    .line 305
    .restart local v0    # "mask":Landroid/view/View;
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 306
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$id;->goToCheckout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 307
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$id;->goToCheckout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$id;->emptyShoppingCart:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 309
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$id;->emptyShoppingCart:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->setCartPrice(Landroid/view/View;)V

    goto :goto_0
.end method

.method private setReadOnly(Z)V
    .locals 0
    .param p1, "readOnly"    # Z

    .prologue
    .line 277
    iput-boolean p1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mReadOnly:Z

    .line 278
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->setMask()V

    .line 279
    return-void
.end method

.method private showShoppingCart()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 263
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mShoppingCartButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 264
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mReviewsButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 265
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mInfoButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 266
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mShoppingCartLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mReviewsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mInformationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 269
    return-void
.end method


# virtual methods
.method public activateOrderButton(Z)V
    .locals 0
    .param p1, "activate"    # Z

    .prologue
    .line 514
    return-void
.end method

.method public changeContentOfMeal(Lcom/yopeso/lieferando/model/cart/CartItem;)V
    .locals 3
    .param p1, "item"    # Lcom/yopeso/lieferando/model/cart/CartItem;

    .prologue
    const/4 v2, 0x0

    .line 447
    const-string v0, "changeContentOfMealTABLET"

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/cart/CartItem;->getMeal()Lcom/yopeso/lieferando/model/meal/Meal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/meal/Meal;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setShoppingCartChanged(Z)V

    .line 449
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 452
    invoke-static {p1}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->newInstance(Lcom/yopeso/lieferando/model/cart/CartItem;)Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;

    move-result-object v0

    sput-object v0, Lcom/yopeso/lieferando/custom/LRActivity;->mealExtrasDialog:Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;

    .line 453
    sget-object v0, Lcom/yopeso/lieferando/custom/LRActivity;->mealExtrasDialog:Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;

    invoke-virtual {v0, p0, v2}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->setFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 454
    sget-object v0, Lcom/yopeso/lieferando/custom/LRActivity;->mealExtrasDialog:Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 456
    return-void
.end method

.method public deleteItemFromCart(Lcom/yopeso/lieferando/model/cart/CartItem;)V
    .locals 3
    .param p1, "cartItem"    # Lcom/yopeso/lieferando/model/cart/CartItem;

    .prologue
    .line 487
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/yopeso/lieferando/R$string;->delete_item_message:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$string;->yes:I

    new-instance v2, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet$3;

    invoke-direct {v2, p0, p1}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet$3;-><init>(Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;Lcom/yopeso/lieferando/model/cart/CartItem;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 502
    sget v1, Lcom/yopeso/lieferando/R$string;->cancel_button_text:I

    new-instance v2, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet$4;

    invoke-direct {v2, p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet$4;-><init>(Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 508
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 509
    return-void
.end method

.method public notifyShoppingCartListAdapter()V
    .locals 2

    .prologue
    .line 476
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mAdapter:Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->notifyDataSetChanged()V

    .line 477
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->setCartPrice(Landroid/view/View;)V

    .line 478
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 479
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->emptyShoppingCart:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 483
    :goto_0
    return-void

    .line 481
    :cond_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->emptyShoppingCart:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 402
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 403
    .local v0, "id":I
    sget v1, Lcom/yopeso/lieferando/R$id;->shoppingCartButton:I

    if-ne v0, v1, :cond_1

    .line 404
    sget v1, Lcom/yopeso/lieferando/R$id;->shoppingCartButton:I

    invoke-direct {p0, v1}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->selectTab(I)V

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    sget v1, Lcom/yopeso/lieferando/R$id;->restaurantReviewsButton:I

    if-ne v0, v1, :cond_2

    .line 406
    sget v1, Lcom/yopeso/lieferando/R$id;->restaurantReviewsButton:I

    invoke-direct {p0, v1}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->selectTab(I)V

    goto :goto_0

    .line 407
    :cond_2
    sget v1, Lcom/yopeso/lieferando/R$id;->informationButton:I

    if-ne v0, v1, :cond_3

    .line 408
    sget v1, Lcom/yopeso/lieferando/R$id;->informationButton:I

    invoke-direct {p0, v1}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->selectTab(I)V

    .line 409
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->loadRestaurantInfoTab(Landroid/view/View;)V

    goto :goto_0

    .line 410
    :cond_3
    sget v1, Lcom/yopeso/lieferando/R$id;->emptyShoppingCart:I

    if-ne v0, v1, :cond_4

    .line 411
    invoke-static {}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->deleySelection()Z

    move-result v1

    if-nez v1, :cond_0

    .line 412
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sput-wide v2, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mLastClickTime:J

    .line 414
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/yopeso/lieferando/R$string;->clear_cart_list_dialog_text:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$string;->no:I

    new-instance v3, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet$1;

    invoke-direct {v3, p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet$1;-><init>(Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 419
    sget v2, Lcom/yopeso/lieferando/R$string;->yes:I

    new-instance v3, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet$2;

    invoke-direct {v3, p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet$2;-><init>(Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 430
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 432
    :cond_4
    sget v1, Lcom/yopeso/lieferando/R$id;->goToCheckout:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->deleySelection()Z

    move-result v1

    if-nez v1, :cond_0

    .line 433
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 434
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    sget-object v2, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 435
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 437
    :cond_5
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$string;->restaurant_closed:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 440
    :cond_6
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/LRFragment;->onCreate(Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .line 112
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 130
    sget v1, Lcom/yopeso/lieferando/R$layout;->restaurant_details_fragment:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 132
    .local v0, "v":Landroid/view/View;
    sget v1, Lcom/yopeso/lieferando/R$id;->shoppingCartLayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mShoppingCartLayout:Landroid/widget/RelativeLayout;

    .line 133
    sget v1, Lcom/yopeso/lieferando/R$id;->reviewsLayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mReviewsLayout:Landroid/widget/LinearLayout;

    .line 134
    sget v1, Lcom/yopeso/lieferando/R$id;->infoLayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mInformationLayout:Landroid/widget/LinearLayout;

    .line 135
    sget v1, Lcom/yopeso/lieferando/R$id;->shoppingCartButton:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mShoppingCartButton:Landroid/widget/Button;

    .line 136
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mShoppingCartButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    sget v1, Lcom/yopeso/lieferando/R$id;->restaurantReviewsButton:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mReviewsButton:Landroid/widget/Button;

    .line 143
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mReviewsButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    sget v1, Lcom/yopeso/lieferando/R$id;->informationButton:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mInfoButton:Landroid/widget/Button;

    .line 145
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mInfoButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mInfoButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setSelected(Z)V

    .line 149
    sget v1, Lcom/yopeso/lieferando/R$id;->emptyShoppingCart:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    sget v1, Lcom/yopeso/lieferando/R$id;->goToCheckout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    sget v1, Lcom/yopeso/lieferando/R$id;->shoppingCartListView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mShoppingCartListView:Landroid/widget/ListView;

    .line 154
    new-instance v1, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v2

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;-><init>(Lcom/yopeso/lieferando/model/cart/ShoppingCart;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mAdapter:Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;

    .line 155
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mAdapter:Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;

    invoke-virtual {v1, v4}, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->setIsTablet(Z)V

    .line 156
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mAdapter:Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;

    invoke-virtual {v1, p0}, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->setListener(Lcom/yopeso/lieferando/callback/ShoppingCartCallback;)V

    .line 157
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mShoppingCartListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mAdapter:Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 158
    sget v1, Lcom/yopeso/lieferando/R$id;->LoadingIndicator:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mLoadingIndicator:Landroid/widget/ProgressBar;

    .line 160
    invoke-direct {p0, v0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->setCartPrice(Landroid/view/View;)V

    .line 163
    sget v1, Lcom/yopeso/lieferando/R$id;->RestaurantRatingListView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mReviewsListView:Landroid/widget/ListView;

    .line 166
    sget v1, Lcom/yopeso/lieferando/R$id;->infoLayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->loadRestaurantInfoTab(Landroid/view/View;)V

    .line 167
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    sget v1, Lcom/yopeso/lieferando/R$id;->emptyShoppingCart:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 173
    :goto_0
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 174
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$id;->map2:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/SupportMapFragment;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mGoogleMapFragment:Lcom/google/android/gms/maps/SupportMapFragment;

    .line 177
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mGoogleMapFragment:Lcom/google/android/gms/maps/SupportMapFragment;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/SupportMapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mRestaurantMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 179
    return-object v0

    .line 170
    :cond_1
    sget v1, Lcom/yopeso/lieferando/R$id;->emptyShoppingCart:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 4

    .prologue
    .line 237
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onDestroyView()V

    .line 238
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v2

    invoke-virtual {v2, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 239
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v2

    invoke-virtual {v2, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->map2:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 243
    .local v1, "fr":Landroid/support/v4/app/Fragment;
    :try_start_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_0
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onEvent(Lcom/yopeso/lieferando/events/AuthenticationEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/yopeso/lieferando/events/AuthenticationEvent;

    .prologue
    .line 463
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->loadRestaurantInfoTab(Landroid/view/View;)V

    .line 464
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 465
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setStamp(Lcom/yopeso/lieferando/model/Stamp;)V

    .line 466
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setStempleUsed(Z)V

    .line 468
    :cond_0
    return-void
.end method

.method public onEvent(Lcom/yopeso/lieferando/events/CartChangedEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/yopeso/lieferando/events/CartChangedEvent;

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->notifyShoppingCartListAdapter()V

    .line 251
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->showShoppingCart()V

    .line 252
    return-void
.end method

.method public onEvent(Lcom/yopeso/lieferando/events/MealItemChangedEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/yopeso/lieferando/events/MealItemChangedEvent;

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setShoppingCartChanged(Z)V

    .line 256
    return-void
.end method

.method public onEvent(Lcom/yopeso/lieferando/events/RestaurantLoaded;)V
    .locals 0
    .param p1, "event"    # Lcom/yopeso/lieferando/events/RestaurantLoaded;

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->notifyShoppingCartListAdapter()V

    .line 460
    return-void
.end method

.method public onEvent(Lcom/yopeso/lieferando/events/ShowShoppingCartEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/yopeso/lieferando/events/ShowShoppingCartEvent;

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->showShoppingCart()V

    .line 260
    return-void
.end method

.method public onEvent(Lcom/yopeso/lieferando/events/StampsLoaded;)V
    .locals 1
    .param p1, "event"    # Lcom/yopeso/lieferando/events/StampsLoaded;

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->loadRestaurantInfoTab(Landroid/view/View;)V

    .line 472
    return-void
.end method

.method public onEvent(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "readOnly"    # Ljava/lang/Boolean;

    .prologue
    .line 282
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->setReadOnly(Z)V

    .line 283
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 287
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onResume()V

    .line 288
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->setMask()V

    .line 289
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/LRFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 117
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mInfoButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const-string v0, "key_tab_id"

    sget v1, Lcom/yopeso/lieferando/R$id;->informationButton:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mReviewsButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    const-string v0, "key_tab_id"

    sget v1, Lcom/yopeso/lieferando/R$id;->restaurantReviewsButton:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mShoppingCartButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    const-string v0, "key_tab_id"

    sget v1, Lcom/yopeso/lieferando/R$id;->shoppingCartButton:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 126
    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 184
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onStart()V

    .line 185
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mLoadingIndicator:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 189
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v0

    if-nez v0, :cond_1

    .line 190
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/RestaurantReviewsRequest;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    new-instance v3, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet$RestaurantRatingsListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet$RestaurantRatingsListener;-><init>(Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet$RestaurantRatingsListener;)V

    invoke-direct {v1, v2, v3}, Lcom/yopeso/lieferando/net/requests/RestaurantReviewsRequest;-><init>(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 195
    :goto_0
    return-void

    .line 192
    :cond_1
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$drawable;->ic_launcher:I

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V

    .line 193
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->show()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 199
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onStop()V

    .line 200
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mLocationTask:Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet$GetRestaurantLocation;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mLocationTask:Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet$GetRestaurantLocation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet$GetRestaurantLocation;->cancel(Z)Z

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->mLocationTask:Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet$GetRestaurantLocation;

    .line 207
    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 229
    invoke-super {p0, p1, p2}, Lcom/yopeso/lieferando/custom/LRFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 230
    if-eqz p2, :cond_0

    const-string v0, "key_tab_id"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    .line 231
    const-string v0, "key_tab_id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->selectTab(I)V

    .line 233
    :cond_0
    return-void
.end method
