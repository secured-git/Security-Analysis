.class public Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;
.super Lcom/yopeso/lieferando/custom/LRFragment;
.source "RestaurantDetailsFragment.java"

# interfaces
.implements Lcom/yopeso/lieferando/callback/IMenuSelected;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/yopeso/lieferando/callback/DeliveryAreaCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$DeliveryAreaListener;,
        Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$MenuLoadedListener;,
        Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$RestaurantListener;,
        Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$RestaurantStampListener;
    }
.end annotation


# static fields
.field protected static final KEY_CATEGORY:Ljava/lang/String; = "category_key"

.field protected static final KEY_RESTAURANT:Ljava/lang/String; = "key_restaurant"

.field public static final TAG:Ljava/lang/String; = "RestaurantDetailsFrag"


# instance fields
.field protected deeplink:Z

.field protected deliveryAreaSelected:Z

.field protected dish:Lcom/yopeso/lieferando/model/meal/DishCategory;

.field protected mCartView:Landroid/view/View;

.field protected mLoadingIndicator:Landroid/widget/ProgressBar;

.field protected mMenuAdapter:Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;

.field protected mMenuListView:Landroid/widget/ListView;

.field protected mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

.field private mSearchListener:Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;

.field protected mSearchView:Lcom/actionbarsherlock/widget/SearchView;


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "deeplink"    # Z

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/yopeso/lieferando/custom/LRFragment;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->deliveryAreaSelected:Z

    .line 206
    new-instance v0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$1;

    invoke-direct {v0, p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$1;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;)V

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->mSearchListener:Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;

    .line 131
    iput-boolean p1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->deeplink:Z

    .line 132
    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;Lcom/android/volley/VolleyError;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->handleNetworkError(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method static synthetic access$1(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;)V
    .locals 0

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->displayRestaurantInformations()V

    return-void
.end method

.method private displayRestaurantInformations()V
    .locals 7

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 266
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->getView()Landroid/view/View;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$id;->RestaurantView:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v6

    invoke-static {v1, v4, v5, v2, v6}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->displayRestaurantInView(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Landroid/view/View;Landroid/content/Context;ZLcom/android/volley/RequestQueue;)V

    .line 267
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v4, Lcom/yopeso/lieferando/R$id;->AvailablePayments:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 269
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v1

    invoke-static {v1}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->getInstance(Lcom/yopeso/lieferando/model/SettingsContent;)Lcom/yopeso/lieferando/util/PaymentSettingsUtil;

    move-result-object v0

    .line 270
    .local v0, "paymentSettings":Lcom/yopeso/lieferando/util/PaymentSettingsUtil;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v4, Lcom/yopeso/lieferando/R$id;->PaymentCash:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->isCashAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 271
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v4, Lcom/yopeso/lieferando/R$id;->OnlinePayment:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 272
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->isPaypalAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->isClickAndBuyAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->isCreditAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->isEbankingAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_0
    move v1, v2

    .line 271
    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 274
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v4, Lcom/yopeso/lieferando/R$id;->SmsMsg:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 276
    .end local v0    # "paymentSettings":Lcom/yopeso/lieferando/util/PaymentSettingsUtil;
    :cond_1
    iget-boolean v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->deeplink:Z

    if-eqz v1, :cond_3

    .line 277
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getMinCost()I

    move-result v1

    if-gez v1, :cond_7

    .line 278
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v4, Lcom/yopeso/lieferando/R$id;->MinimumOrder:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 279
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v4, Lcom/yopeso/lieferando/R$id;->MinimumOrder:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 287
    :cond_2
    :goto_3
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getDeliverCost()I

    move-result v1

    if-gez v1, :cond_8

    .line 288
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$id;->DeliveryCost:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 289
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$id;->DeliveryCost:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 298
    :cond_3
    :goto_4
    return-void

    .restart local v0    # "paymentSettings":Lcom/yopeso/lieferando/util/PaymentSettingsUtil;
    :cond_4
    move v1, v3

    .line 270
    goto/16 :goto_0

    :cond_5
    move v1, v3

    .line 273
    goto :goto_1

    :cond_6
    move v1, v3

    .line 274
    goto :goto_2

    .line 283
    .end local v0    # "paymentSettings":Lcom/yopeso/lieferando/util/PaymentSettingsUtil;
    :cond_7
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v4, Lcom/yopeso/lieferando/R$id;->MinimumOrder:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 284
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v4, Lcom/yopeso/lieferando/R$id;->MinimumOrder:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 293
    :cond_8
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v3, Lcom/yopeso/lieferando/R$id;->DeliveryCost:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 294
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v3, Lcom/yopeso/lieferando/R$id;->DeliveryCost:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method public static newInstance(Z)Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;
    .locals 1
    .param p0, "deepLink"    # Z

    .prologue
    .line 135
    new-instance v0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;

    invoke-direct {v0, p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;-><init>(Z)V

    .line 136
    .local v0, "frag":Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;
    return-object v0
.end method

.method private showInfoScreen()V
    .locals 4

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/yopeso/lieferando/activity/RestaurantInfoActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 377
    return-void
.end method


# virtual methods
.method protected checkRestaurant(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 5
    .param p1, "restaurant"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 409
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOnline()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 410
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v3

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 411
    sget-object v2, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {p1, v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 412
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    new-instance v3, Lcom/yopeso/lieferando/net/requests/DeliveryAreaRequest;

    new-instance v4, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$DeliveryAreaListener;

    invoke-direct {v4, p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$DeliveryAreaListener;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;)V

    invoke-direct {v3, p1, v4}, Lcom/yopeso/lieferando/net/requests/DeliveryAreaRequest;-><init>(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v2, v3}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 485
    :goto_0
    return-void

    .line 414
    :cond_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$3;

    invoke-direct {v3, p0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$3;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    invoke-static {p1, v2, v3}, Lcom/yopeso/lieferando/dialogs/PreOrderingDialog;->getDialog(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v1

    .line 420
    .local v1, "preorder":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 476
    .end local v1    # "preorder":Landroid/app/AlertDialog;
    :cond_1
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->printer_offline_msg:I

    invoke-static {v2, v3}, Lcom/yopeso/lieferando/dialogs/SingleOptionInfoDialog;->getDialog(Landroid/content/Context;I)Landroid/app/AlertDialog;

    move-result-object v0

    .line 477
    .local v0, "offline":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 481
    .end local v0    # "offline":Landroid/app/AlertDialog;
    :cond_2
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->restaurant_offline:I

    invoke-static {v2, v3}, Lcom/yopeso/lieferando/dialogs/SingleOptionInfoDialog;->getDialog(Landroid/content/Context;I)Landroid/app/AlertDialog;

    move-result-object v0

    .line 482
    .restart local v0    # "offline":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method protected filterMenu(Ljava/lang/String;)V
    .locals 3
    .param p1, "filter"    # Ljava/lang/String;

    .prologue
    .line 380
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getDishCategories()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 382
    :try_start_0
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->mMenuAdapter:Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 383
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->mMenuListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    .line 384
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_1

    .line 385
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->mMenuAdapter:Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 386
    invoke-static {p1}, Lcom/yopeso/lieferando/util/TrackingUtils;->searchKahuna(Ljava/lang/String;)V

    .line 388
    :cond_0
    invoke-static {p1}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackSearchCathegory(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :cond_1
    :goto_0
    return-void

    .line 390
    :catch_0
    move-exception v0

    .line 391
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getOpeningsListener()Lcom/yopeso/lieferando/net/requests/base/VolleyListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/Restaurant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 501
    new-instance v0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$4;

    invoke-direct {v0, p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$4;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;)V

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 359
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 360
    .local v0, "id":I
    sget v1, Lcom/yopeso/lieferando/R$id;->CartButton:I

    if-ne v0, v1, :cond_0

    .line 361
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->showHideLogoActionbar(Z)V

    .line 362
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 364
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    sget-object v2, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 365
    sget v1, Lcom/yopeso/lieferando/R$id;->Content:I

    new-instance v2, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;

    invoke-direct {v2}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->addNewFragment(ILandroid/support/v4/app/Fragment;)V

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$string;->restaurant_closed:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 370
    :cond_2
    sget v1, Lcom/yopeso/lieferando/R$id;->Content:I

    new-instance v2, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;

    invoke-direct {v2}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->addNewFragment(ILandroid/support/v4/app/Fragment;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/LRFragment;->onCreate(Landroid/os/Bundle;)V

    .line 142
    const-string v0, "menu"

    invoke-static {v0}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackView(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .line 144
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackRestaurantOpen(I)V

    .line 147
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->setHasOptionsMenu(Z)V

    .line 148
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v0

    if-nez v0, :cond_2

    .line 149
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 156
    :goto_0
    iget-boolean v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->deeplink:Z

    if-eqz v0, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/OpeningsRequest;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->getOpeningsListener()Lcom/yopeso/lieferando/net/requests/base/VolleyListener;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/yopeso/lieferando/net/requests/OpeningsRequest;-><init>(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 159
    :cond_1
    return-void

    .line 152
    :cond_2
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$drawable;->ic_launcher:I

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V

    .line 153
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->show()V

    .line 154
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$string;->app_title:I

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    .line 163
    invoke-super {p0, p1, p2}, Lcom/yopeso/lieferando/custom/LRFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V

    .line 164
    sget v2, Lcom/yopeso/lieferando/R$menu;->rest_menu:I

    invoke-virtual {p2, v2, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 166
    sget v2, Lcom/yopeso/lieferando/R$id;->menu_search_id:I

    invoke-interface {p1, v2}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 167
    sget v2, Lcom/yopeso/lieferando/R$id;->menu_search_id:I

    invoke-interface {p1, v2}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/actionbarsherlock/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/actionbarsherlock/widget/SearchView;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->mSearchView:Lcom/actionbarsherlock/widget/SearchView;

    .line 168
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->mSearchView:Lcom/actionbarsherlock/widget/SearchView;

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->mSearchListener:Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/widget/SearchView;->setOnQueryTextListener(Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;)V

    .line 169
    sget v2, Lcom/yopeso/lieferando/R$id;->menu_search_id:I

    invoke-interface {p1, v2}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    new-instance v3, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$2;

    invoke-direct {v3, p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$2;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;)V

    invoke-interface {v2, v3}, Lcom/actionbarsherlock/view/MenuItem;->setOnActionExpandListener(Lcom/actionbarsherlock/view/MenuItem$OnActionExpandListener;)Lcom/actionbarsherlock/view/MenuItem;

    .line 198
    :cond_0
    sget v2, Lcom/yopeso/lieferando/R$id;->menu_search_id:I

    invoke-interface {p1, v2}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/actionbarsherlock/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/widget/SearchView;

    .line 199
    .local v1, "searchView":Lcom/actionbarsherlock/widget/SearchView;
    sget v2, Lcom/yopeso/lieferando/R$id;->abs__search_plate:I

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 200
    .local v0, "searchPlate":Landroid/view/View;
    sget v2, Lcom/yopeso/lieferando/R$drawable;->search_menu_line_bg:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 204
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 232
    sget v1, Lcom/yopeso/lieferando/R$layout;->restaurant_details:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 233
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/yopeso/lieferando/R$id;->LoadingMenuProgress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    .line 234
    sget v1, Lcom/yopeso/lieferando/R$id;->ShoppingCart:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->mCartView:Landroid/view/View;

    .line 235
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->mCartView:Landroid/view/View;

    sget v2, Lcom/yopeso/lieferando/R$id;->CartButton:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 237
    sget v1, Lcom/yopeso/lieferando/R$id;->CartButton:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/SettingsContent;->getDynamicButtonFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 238
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

    .line 240
    :cond_0
    new-instance v1, Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$layout;->menu_list_item:I

    invoke-direct {v1, v2, v3, p0}, Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;-><init>(Landroid/content/Context;ILcom/yopeso/lieferando/callback/IMenuSelected;)V

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->mMenuAdapter:Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;

    .line 241
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->mMenuAdapter:Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getDishCategories()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    sget-object v4, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {v3, v4}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isHoliday(Ljava/util/Date;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;->setData(Ljava/util/ArrayList;Z)V

    .line 242
    sget v1, Lcom/yopeso/lieferando/R$id;->MenuListView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->mMenuListView:Landroid/widget/ListView;

    .line 243
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->mMenuListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->mMenuAdapter:Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 246
    return-object v0
.end method

.method public onDeliveryAreaSelected(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;)V
    .locals 1
    .param p1, "r"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    .param p2, "da"    # Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;

    .prologue
    .line 532
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setDeliveryArea(Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;)V

    .line 533
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->deliveryAreaSelected:Z

    .line 534
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->dish:Lcom/yopeso/lieferando/model/meal/DishCategory;

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->dish:Lcom/yopeso/lieferando/model/meal/DishCategory;

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->onMenuSelected(Lcom/yopeso/lieferando/model/meal/DishCategory;)V

    .line 538
    :cond_0
    return-void
.end method

.method public onEvent(Lcom/yopeso/lieferando/events/AuthenticationEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/yopeso/lieferando/events/AuthenticationEvent;

    .prologue
    .line 397
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->displayRestaurantInformations()V

    .line 398
    return-void
.end method

.method public onLocationSelected(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Lcom/yopeso/lieferando/model/user/Location;)V
    .locals 1
    .param p1, "r"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    .param p2, "loc"    # Lcom/yopeso/lieferando/model/user/Location;

    .prologue
    .line 541
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setDeliveryAddress(Lcom/yopeso/lieferando/model/user/Location;)V

    .line 542
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->deliveryAreaSelected:Z

    .line 543
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->dish:Lcom/yopeso/lieferando/model/meal/DishCategory;

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->dish:Lcom/yopeso/lieferando/model/meal/DishCategory;

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->onMenuSelected(Lcom/yopeso/lieferando/model/meal/DishCategory;)V

    .line 547
    :cond_0
    return-void
.end method

.method public onMenuSelected(Lcom/yopeso/lieferando/model/meal/DishCategory;)V
    .locals 6
    .param p1, "dish"    # Lcom/yopeso/lieferando/model/meal/DishCategory;

    .prologue
    const/4 v5, 0x1

    .line 334
    const-string v2, "RestaurantDetailsFrag"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Seleceted Menu:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/DishCategory;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/DishCategory;->getImgLink()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-boolean v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->deeplink:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->deliveryAreaSelected:Z

    if-nez v2, :cond_1

    .line 336
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->dish:Lcom/yopeso/lieferando/model/meal/DishCategory;

    .line 337
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {p0, v2}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->checkRestaurant(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    .line 338
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->selectDeliveryArea:I

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/DishCategory;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/DishCategory;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/yopeso/lieferando/util/TrackingUtils;->itemAddToCartKahuna(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackFBCart(Landroid/content/Context;)V

    .line 343
    invoke-static {}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->deleySelection()Z

    move-result v2

    if-nez v2, :cond_0

    .line 344
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sput-wide v2, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->mLastClickTime:J

    .line 345
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/DishCategory;->getSubCategories()Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_2

    .line 346
    invoke-static {p1}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->newInstance(Lcom/yopeso/lieferando/model/meal/DishCategory;)Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;

    move-result-object v0

    .line 347
    .local v0, "menuFrag":Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;
    sget v2, Lcom/yopeso/lieferando/R$id;->Content:I

    invoke-virtual {p0, v2, v0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->addNewFragment(ILandroid/support/v4/app/Fragment;)V

    .line 352
    .end local v0    # "menuFrag":Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;
    :goto_1
    invoke-virtual {p0, v5}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->showHideLogoActionbar(Z)V

    goto :goto_0

    .line 349
    :cond_2
    invoke-static {p1}, Lcom/yopeso/lieferando/fragments/restaurant/SubCategoryFragment;->newInstance(Lcom/yopeso/lieferando/model/meal/DishCategory;)Lcom/yopeso/lieferando/fragments/restaurant/SubCategoryFragment;

    move-result-object v1

    .line 350
    .local v1, "subCategoryFrag":Lcom/yopeso/lieferando/fragments/restaurant/SubCategoryFragment;
    sget v2, Lcom/yopeso/lieferando/R$id;->Content:I

    invoke-virtual {p0, v2, v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->addNewFragment(ILandroid/support/v4/app/Fragment;)V

    goto :goto_1
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 223
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/yopeso/lieferando/R$id;->rest_info_menu:I

    if-ne v0, v1, :cond_0

    .line 224
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->showInfoScreen()V

    .line 225
    const/4 v0, 0x1

    .line 227
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/LRFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 251
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onResume()V

    .line 252
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/util/DeviceUtils;->isHoneycombTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->mCartView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->displayInView(Landroid/view/View;)V

    .line 255
    :cond_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->FocusGat:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 256
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->displayRestaurantInformations()V

    .line 257
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v0

    if-nez v0, :cond_1

    .line 258
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 263
    :goto_0
    return-void

    .line 261
    :cond_1
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$string;->app_title:I

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 302
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 305
    :cond_0
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onStart()V

    .line 306
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->performRequest()V

    .line 307
    return-void
.end method

.method public onStop()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 316
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onStop()V

    .line 317
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->mSearchView:Lcom/actionbarsherlock/widget/SearchView;

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->mSearchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v0, v3}, Lcom/actionbarsherlock/widget/SearchView;->setOnQueryTextListener(Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;)V

    .line 322
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->mSearchView:Lcom/actionbarsherlock/widget/SearchView;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/actionbarsherlock/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 323
    iput-object v3, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->mSearchView:Lcom/actionbarsherlock/widget/SearchView;

    .line 325
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->showHideLogoActionbar(Z)V

    .line 326
    return-void
.end method

.method protected performRequest()V
    .locals 6

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/RestaurantMenuRequest;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    new-instance v4, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$MenuLoadedListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$MenuLoadedListener;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$MenuLoadedListener;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/yopeso/lieferando/net/requests/RestaurantMenuRequest;-><init>(Landroid/content/Context;Lcom/yopeso/lieferando/model/restaurant/Restaurant;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 311
    return-void
.end method
