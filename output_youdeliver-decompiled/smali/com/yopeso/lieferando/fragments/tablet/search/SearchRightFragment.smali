.class public Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;
.super Lcom/yopeso/lieferando/custom/LRFragment;
.source "SearchRightFragment.java"

# interfaces
.implements Lcom/yopeso/lieferando/callback/DeliveryAreaCallBack;
.implements Lcom/yopeso/lieferando/callback/MainAddressesCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$DeliveryAreaListener;,
        Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$GetCustomerOrdersListener;,
        Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$OpeningsListener;,
        Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$RestaurantListener;
    }
.end annotation


# static fields
.field private static final KEY_ORDERS:Ljava/lang/String; = "favorite_orders"

.field public static final TAG:Ljava/lang/String; = "SearchRightFragment"


# instance fields
.field addAddress:Landroid/widget/Button;

.field private allOrders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yopeso/lieferando/model/user/Order;",
            ">;"
        }
    .end annotation
.end field

.field private dialog:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

.field emptyAddress:Landroid/widget/TextView;

.field emptyAddressPremiumRL:Landroid/widget/RelativeLayout;

.field emptyFavourites:Landroid/widget/TextView;

.field emptyOrders:Landroid/widget/TextView;

.field private listAnimation:Landroid/view/animation/Animation;

.field private mAddressAdapter:Lcom/yopeso/lieferando/adapters/tablet/SearchAddressAdapter;

.field private mAddressAdapterPremium:Lcom/yopeso/lieferando/adapters/SearchAddressAdapter;

.field private mAddressListView:Landroid/widget/ListView;

.field private mFavorite:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/Restaurant;",
            ">;"
        }
    .end annotation
.end field

.field private mFavoriteList:Landroid/widget/ListView;

.field private mFavoritesAdapter:Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;

.field private mLastOrdersAdapter:Lcom/yopeso/lieferando/adapters/OrdersAdapter;

.field private mLastOrdersList:Landroid/widget/ListView;

.field private mLoadingIndicator:Landroid/view/View;

.field private mRestaurantDetailsCallback:Lcom/yopeso/lieferando/callback/RestaurantDetailsCallback;

.field private mRestauratCallback:Lcom/yopeso/lieferando/callback/RestaurantSelectedCallback;

.field private mUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUserAddresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/user/Location;",
            ">;"
        }
    .end annotation
.end field

.field private panelLL:Landroid/widget/RelativeLayout;

.field private showAnim:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/yopeso/lieferando/custom/LRFragment;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mFavorite:Ljava/util/ArrayList;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->allOrders:Ljava/util/List;

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->showAnim:Z

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mUserAddresses:Ljava/util/ArrayList;

    .line 77
    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mLoadingIndicator:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->allOrders:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$10(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mUserAddresses:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$11(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;)Lcom/yopeso/lieferando/callback/RestaurantDetailsCallback;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mRestaurantDetailsCallback:Lcom/yopeso/lieferando/callback/RestaurantDetailsCallback;

    return-object v0
.end method

.method static synthetic access$12(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mFavorite:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$13(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mFavoriteList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$14(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;)Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mFavoritesAdapter:Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;

    return-object v0
.end method

.method static synthetic access$15(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;)Lcom/yopeso/lieferando/adapters/SearchAddressAdapter;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mAddressAdapterPremium:Lcom/yopeso/lieferando/adapters/SearchAddressAdapter;

    return-object v0
.end method

.method static synthetic access$16(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;)V
    .locals 0

    .prologue
    .line 426
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->loadAdresses()V

    return-void
.end method

.method static synthetic access$2(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mLastOrdersList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;)Lcom/yopeso/lieferando/adapters/OrdersAdapter;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mLastOrdersAdapter:Lcom/yopeso/lieferando/adapters/OrdersAdapter;

    return-object v0
.end method

.method static synthetic access$4(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;Lcom/android/volley/VolleyError;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->handleNetworkError(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method static synthetic access$5(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->dialog:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    return-void
.end method

.method static synthetic access$6(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;)Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->dialog:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    return-object v0
.end method

.method static synthetic access$7()Z
    .locals 1

    .prologue
    .line 1
    invoke-static {}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->deleySelection()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8(J)V
    .locals 0

    .prologue
    .line 77
    sput-wide p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mLastClickTime:J

    return-void
.end method

.method static synthetic access$9(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;ZI)V
    .locals 0

    .prologue
    .line 486
    invoke-direct {p0, p1, p2}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->dialogFilter(ZI)V

    return-void
.end method

.method private dialogFilter(ZI)V
    .locals 8
    .param p1, "flag"    # Z
    .param p2, "position"    # I

    .prologue
    .line 488
    if-eqz p1, :cond_0

    .line 489
    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->allOrders:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/Order;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v3

    .line 495
    .local v3, "restaurant":Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    :goto_0
    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOnline()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 496
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v4

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v5

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 497
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    .line 499
    .local v0, "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v4

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v5

    if-eq v4, v5, :cond_1

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 500
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v4

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    new-instance v6, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$8;

    invoke-direct {v6, p0, p1, v3}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$8;-><init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;ZLcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    .line 509
    new-instance v7, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$9;

    invoke-direct {v7, p0, v0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$9;-><init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;Lcom/yopeso/lieferando/model/cart/ShoppingCart;)V

    .line 500
    invoke-static {v4, v5, v6, v7}, Lcom/yopeso/lieferando/dialogs/CartNotEmptyDialog;->getDialog(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v1

    .line 515
    .local v1, "cartDialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 527
    .end local v0    # "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    .end local v1    # "cartDialog":Landroid/app/AlertDialog;
    :goto_1
    return-void

    .line 492
    .end local v3    # "restaurant":Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    :cond_0
    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mFavorite:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .restart local v3    # "restaurant":Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    goto :goto_0

    .line 517
    .restart local v0    # "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    :cond_1
    invoke-virtual {p0, v3}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->getRestaurant(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    goto :goto_1

    .line 520
    .end local v0    # "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    :cond_2
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->printer_offline_msg:I

    invoke-static {v4, v5}, Lcom/yopeso/lieferando/dialogs/SingleOptionInfoDialog;->getDialog(Landroid/content/Context;I)Landroid/app/AlertDialog;

    move-result-object v2

    .line 521
    .local v2, "offline":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    .line 524
    .end local v2    # "offline":Landroid/app/AlertDialog;
    :cond_3
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->restaurant_offline:I

    invoke-static {v4, v5}, Lcom/yopeso/lieferando/dialogs/SingleOptionInfoDialog;->getDialog(Landroid/content/Context;I)Landroid/app/AlertDialog;

    move-result-object v2

    .line 525
    .restart local v2    # "offline":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_1
.end method

.method private loadAdresses()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 427
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v0

    if-nez v0, :cond_2

    .line 428
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mUserAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 429
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mUserAddresses:Ljava/util/ArrayList;

    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/UserData;->getLocations()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 431
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mUserAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->emptyAddress:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 433
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->addAddress:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 444
    :goto_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mAddressAdapter:Lcom/yopeso/lieferando/adapters/tablet/SearchAddressAdapter;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mUserAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/adapters/tablet/SearchAddressAdapter;->setAddresses(Ljava/util/List;)V

    .line 445
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mAddressAdapter:Lcom/yopeso/lieferando/adapters/tablet/SearchAddressAdapter;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/adapters/tablet/SearchAddressAdapter;->notifyDataSetChanged()V

    .line 456
    :goto_1
    return-void

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->emptyAddress:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 436
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->addAddress:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 438
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mUserAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 439
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mAddressListView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0xae

    invoke-direct {v1, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mAddressListView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 449
    :cond_2
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mUserAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 450
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->emptyAddressPremiumRL:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 452
    :cond_3
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->emptyAddressPremiumRL:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private loadFavourites()V
    .locals 5

    .prologue
    .line 396
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mFavorite:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 397
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/UserData;->getFavouriteRestaurantUrls()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mUrls:Ljava/util/ArrayList;

    .line 398
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mUrls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 399
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->emptyFavourites:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 403
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mUrls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_2

    .line 424
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 401
    :cond_1
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->emptyFavourites:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 404
    .restart local v0    # "i":I
    :cond_2
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    new-instance v3, Lcom/yopeso/lieferando/net/requests/RestaurantRequest;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mUrls:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v4, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$7;

    invoke-direct {v4, p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$7;-><init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;)V

    invoke-direct {v3, v1, v4}, Lcom/yopeso/lieferando/net/requests/RestaurantRequest;-><init>(Ljava/lang/String;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v2, v3}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 403
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private loadLastOrders()V
    .locals 5

    .prologue
    .line 459
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->allOrders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mLoadingIndicator:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 461
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/CustomerOrdersRequest;

    const/4 v2, 0x1

    new-instance v3, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$GetCustomerOrdersListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$GetCustomerOrdersListener;-><init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$GetCustomerOrdersListener;)V

    invoke-direct {v1, v2, v3}, Lcom/yopeso/lieferando/net/requests/CustomerOrdersRequest;-><init>(ILcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v1}, Lcom/yopeso/lieferando/net/requests/CustomerOrdersRequest;->withAuth()Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 463
    :cond_0
    return-void
.end method

.method private showDeleteDialog(IJ)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "addressId"    # J

    .prologue
    .line 687
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/yopeso/lieferando/R$string;->deleteAddress:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$string;->deleteAddressMessage:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$string;->cancel_button_text:I

    new-instance v2, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$14;

    invoke-direct {v2, p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$14;-><init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 692
    sget v1, Lcom/yopeso/lieferando/R$string;->deleteButtonText:I

    new-instance v2, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$15;

    invoke-direct {v2, p0, p1}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$15;-><init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 701
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 702
    return-void
.end method


# virtual methods
.method public addAsDefaultAddress(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 666
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mAddressAdapterPremium:Lcom/yopeso/lieferando/adapters/SearchAddressAdapter;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/adapters/SearchAddressAdapter;->getmLocations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 669
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mAddressAdapterPremium:Lcom/yopeso/lieferando/adapters/SearchAddressAdapter;

    invoke-virtual {v1, p1}, Lcom/yopeso/lieferando/adapters/SearchAddressAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/model/user/Location;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Location;->setPrimary(Z)V

    .line 670
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mAddressAdapterPremium:Lcom/yopeso/lieferando/adapters/SearchAddressAdapter;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/adapters/SearchAddressAdapter;->notifyDataSetChanged()V

    .line 671
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v2

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mAddressAdapterPremium:Lcom/yopeso/lieferando/adapters/SearchAddressAdapter;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/adapters/SearchAddressAdapter;->getmLocations()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Lcom/yopeso/lieferando/model/user/UserData;->setLocations(Ljava/util/ArrayList;)V

    .line 672
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->save()V

    .line 673
    return-void

    .line 666
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/user/Location;

    .line 667
    .local v0, "l":Lcom/yopeso/lieferando/model/user/Location;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/yopeso/lieferando/model/user/Location;->setPrimary(Z)V

    goto :goto_0
.end method

.method protected checkPreordering(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 4
    .param p1, "r"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 587
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 588
    sget-object v1, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {p1, v1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 589
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->goToRestaurant(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    .line 622
    :goto_0
    return-void

    .line 593
    :cond_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/yopeso/lieferando/dialogs/PreOrderDisabledPLDialog;->getDialog(Landroid/content/Context;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 594
    .local v0, "preorder":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 598
    .end local v0    # "preorder":Landroid/app/AlertDialog;
    :cond_1
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getPreorderOffset()I

    move-result v1

    const/16 v2, 0x1c20

    if-lt v1, v2, :cond_2

    .line 600
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$10;

    invoke-direct {v3, p0, p1}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$10;-><init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    invoke-static {p1, v1, v2, v3}, Lcom/yopeso/lieferando/dialogs/PreOrderingDialog;->getDialog(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Landroid/content/Context;ZLandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 606
    .restart local v0    # "preorder":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 607
    .end local v0    # "preorder":Landroid/app/AlertDialog;
    :cond_2
    sget-object v1, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {p1, v1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 608
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->goToRestaurant(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    goto :goto_0

    .line 611
    :cond_3
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$11;

    invoke-direct {v2, p0, p1}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$11;-><init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    invoke-static {p1, v1, v2}, Lcom/yopeso/lieferando/dialogs/PreOrderingDialog;->getDialog(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 617
    .restart local v0    # "preorder":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public deleteAddress(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 683
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mAddressAdapterPremium:Lcom/yopeso/lieferando/adapters/SearchAddressAdapter;

    invoke-virtual {v0, p1}, Lcom/yopeso/lieferando/adapters/SearchAddressAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Location;->getId()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->showDeleteDialog(IJ)V

    .line 684
    return-void
.end method

.method public editAddress(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 677
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->RightPane:I

    const/4 v2, 0x1

    invoke-static {v2, p1}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->newInstance(ZI)Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    move-result-object v2

    sget-object v3, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget-object v1, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 678
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 679
    return-void
.end method

.method protected getRestaurant(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 4
    .param p1, "restaurant"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 530
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/RestaurantRequest;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getServiceUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$RestaurantListener;

    invoke-direct {v3, p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$RestaurantListener;-><init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;)V

    invoke-direct {v1, v2, v3}, Lcom/yopeso/lieferando/net/requests/RestaurantRequest;-><init>(Ljava/lang/String;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 531
    return-void
.end method

.method protected goToRestaurant(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 3
    .param p1, "r"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 625
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    .line 626
    .local v0, "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v1

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 627
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->clear()V

    .line 629
    :cond_0
    invoke-virtual {v0, p1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setRestaurant(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    .line 630
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mRestauratCallback:Lcom/yopeso/lieferando/callback/RestaurantSelectedCallback;

    invoke-interface {v1, p1}, Lcom/yopeso/lieferando/callback/RestaurantSelectedCallback;->onRestaurantSelected(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    .line 631
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 375
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/LRFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 376
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/callback/RestaurantSelectedCallback;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mRestauratCallback:Lcom/yopeso/lieferando/callback/RestaurantSelectedCallback;

    .line 377
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/callback/RestaurantDetailsCallback;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mRestaurantDetailsCallback:Lcom/yopeso/lieferando/callback/RestaurantDetailsCallback;

    .line 378
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 388
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/LRFragment;->onCreate(Landroid/os/Bundle;)V

    .line 389
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->setRetainInstance(Z)V

    .line 390
    if-eqz p1, :cond_0

    .line 391
    const-string v0, "favorite_orders"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mFavorite:Ljava/util/ArrayList;

    .line 393
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 110
    sget v0, Lcom/yopeso/lieferando/R$layout;->search_fragment_right:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDeliveryAreaSelected(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;)V
    .locals 3
    .param p1, "r"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    .param p2, "da"    # Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;

    .prologue
    .line 563
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setDeliveryArea(Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;)V

    .line 564
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/OpeningsRequest;

    new-instance v2, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$OpeningsListener;

    invoke-direct {v2, p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$OpeningsListener;-><init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;)V

    invoke-direct {v1, p1, v2}, Lcom/yopeso/lieferando/net/requests/OpeningsRequest;-><init>(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 565
    return-void
.end method

.method public onEvent(Lcom/yopeso/lieferando/events/AuthenticationEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/yopeso/lieferando/events/AuthenticationEvent;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 356
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->loadAdresses()V

    .line 358
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->loadFavourites()V

    .line 359
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->loadLastOrders()V

    .line 360
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->FavouritesLayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 361
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->LastOrderLayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 362
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->AddressLayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 371
    :goto_0
    return-void

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mFavorite:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 365
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->allOrders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 366
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mUserAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 367
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->FavouritesLayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 368
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->LastOrderLayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 369
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->AddressLayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onLocationSelected(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Lcom/yopeso/lieferando/model/user/Location;)V
    .locals 3
    .param p1, "r"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    .param p2, "loc"    # Lcom/yopeso/lieferando/model/user/Location;

    .prologue
    .line 569
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setDeliveryAddress(Lcom/yopeso/lieferando/model/user/Location;)V

    .line 570
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/OpeningsRequest;

    new-instance v2, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$OpeningsListener;

    invoke-direct {v2, p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$OpeningsListener;-><init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;)V

    invoke-direct {v1, p1, v2}, Lcom/yopeso/lieferando/net/requests/OpeningsRequest;-><init>(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 571
    return-void
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/16 v2, 0x8

    .line 271
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onResume()V

    .line 272
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v0

    if-nez v0, :cond_1

    .line 273
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->loadAdresses()V

    .line 274
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->loadFavourites()V

    .line 275
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->loadLastOrders()V

    .line 276
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->dialog:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->dialog:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->dismiss()V

    .line 278
    iput-object v4, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->dialog:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 282
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v0

    if-nez v0, :cond_2

    .line 284
    new-instance v0, Lcom/yopeso/lieferando/model/user/UserData;

    invoke-direct {v0}, Lcom/yopeso/lieferando/model/user/UserData;-><init>()V

    invoke-static {v0}, Lcom/yopeso/lieferando/util/UserStore;->setData(Lcom/yopeso/lieferando/model/user/UserData;)V

    .line 286
    :cond_2
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v7

    .line 288
    .local v7, "userData":Lcom/yopeso/lieferando/model/user/UserData;
    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/user/UserData;->getLocations()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 289
    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/user/UserData;->getLocations()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mUserAddresses:Ljava/util/ArrayList;

    .line 291
    :cond_3
    new-instance v0, Lcom/yopeso/lieferando/adapters/SearchAddressAdapter;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$layout;->address_cell:I

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mUserAddresses:Ljava/util/ArrayList;

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/yopeso/lieferando/adapters/SearchAddressAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Landroid/view/View$OnClickListener;Lcom/yopeso/lieferando/callback/MainAddressesCallBack;Z)V

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mAddressAdapterPremium:Lcom/yopeso/lieferando/adapters/SearchAddressAdapter;

    .line 292
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mAddressListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mAddressAdapterPremium:Lcom/yopeso/lieferando/adapters/SearchAddressAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 293
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mAddressListView:Landroid/widget/ListView;

    new-instance v1, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$6;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$6;-><init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 329
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mAddressListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mUserAddresses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_4

    :goto_1
    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setStackFromBottom(Z)V

    .line 331
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->loadAdresses()V

    .line 332
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->dialog:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->dialog:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->dismiss()V

    .line 334
    iput-object v4, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->dialog:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    goto :goto_0

    .line 329
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 339
    .end local v7    # "userData":Lcom/yopeso/lieferando/model/user/UserData;
    :cond_5
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->FavouritesLayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 340
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->LastOrderLayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 341
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->AddressLayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 382
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/LRFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 383
    const-string v0, "favorite_orders"

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mFavorite:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 384
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 263
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onStart()V

    .line 264
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 267
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 349
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onStop()V

    .line 350
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 353
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 115
    invoke-super {p0, p1, p2}, Lcom/yopeso/lieferando/custom/LRFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 117
    sget v0, Lcom/yopeso/lieferando/R$id;->LoadingIndicator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mLoadingIndicator:Landroid/view/View;

    .line 118
    sget v0, Lcom/yopeso/lieferando/R$id;->AddressEmpty:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->emptyAddress:Landroid/widget/TextView;

    .line 119
    sget v0, Lcom/yopeso/lieferando/R$id;->FavouritesEmpty:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->emptyFavourites:Landroid/widget/TextView;

    .line 120
    sget v0, Lcom/yopeso/lieferando/R$id;->OrdersEmpty:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->emptyOrders:Landroid/widget/TextView;

    .line 121
    sget v0, Lcom/yopeso/lieferando/R$id;->FavoriteList:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mFavoriteList:Landroid/widget/ListView;

    .line 122
    sget v0, Lcom/yopeso/lieferando/R$id;->LastOrdersList:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mLastOrdersList:Landroid/widget/ListView;

    .line 123
    sget v0, Lcom/yopeso/lieferando/R$id;->AddressList:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mAddressListView:Landroid/widget/ListView;

    .line 125
    sget v0, Lcom/yopeso/lieferando/R$id;->AddNewAddress:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->addAddress:Landroid/widget/Button;

    .line 127
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->addAddress:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/SettingsContent;->getDynamicButtonFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 129
    sget v0, Lcom/yopeso/lieferando/R$id;->addressRL:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/SettingsContent;->getmButtonColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 130
    sget v0, Lcom/yopeso/lieferando/R$id;->favTV:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/SettingsContent;->getmButtonColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 131
    sget v0, Lcom/yopeso/lieferando/R$id;->ordersTV:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/SettingsContent;->getmButtonColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 135
    :cond_0
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 136
    :cond_1
    new-instance v0, Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$layout;->favourite_list_small_item:I

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mFavorite:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;-><init>(Landroid/app/Activity;ILjava/util/ArrayList;Lcom/yopeso/lieferando/callback/IRestaurantListCallback;Lcom/android/volley/RequestQueue;)V

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mFavoritesAdapter:Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;

    .line 137
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mFavoritesAdapter:Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;

    invoke-virtual {v0, v7}, Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;->setIsBottomViewShown(Z)V

    .line 138
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mFavoriteList:Landroid/widget/ListView;

    new-instance v1, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$1;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$1;-><init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 148
    new-instance v0, Lcom/yopeso/lieferando/adapters/OrdersAdapter;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$layout;->order_list_small_item:I

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->allOrders:Ljava/util/List;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/yopeso/lieferando/adapters/OrdersAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/android/volley/RequestQueue;)V

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mLastOrdersAdapter:Lcom/yopeso/lieferando/adapters/OrdersAdapter;

    .line 149
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mLastOrdersAdapter:Lcom/yopeso/lieferando/adapters/OrdersAdapter;

    invoke-virtual {v0, v7}, Lcom/yopeso/lieferando/adapters/OrdersAdapter;->setLoadMoreButtonIsShown(Z)V

    .line 150
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mLastOrdersList:Landroid/widget/ListView;

    new-instance v1, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$2;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$2;-><init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 172
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 174
    new-instance v0, Lcom/yopeso/lieferando/adapters/SearchAddressAdapter;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$layout;->address_cell:I

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mUserAddresses:Ljava/util/ArrayList;

    const/4 v6, 0x1

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/yopeso/lieferando/adapters/SearchAddressAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Landroid/view/View$OnClickListener;Lcom/yopeso/lieferando/callback/MainAddressesCallBack;Z)V

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mAddressAdapterPremium:Lcom/yopeso/lieferando/adapters/SearchAddressAdapter;

    .line 175
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mAddressListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mAddressAdapterPremium:Lcom/yopeso/lieferando/adapters/SearchAddressAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 176
    sget v0, Lcom/yopeso/lieferando/R$id;->noAddressRL:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->emptyAddressPremiumRL:Landroid/widget/RelativeLayout;

    .line 178
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$anim;->move_right_left:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->listAnimation:Landroid/view/animation/Animation;

    .line 179
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->listAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$3;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$3;-><init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 194
    iget-boolean v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->showAnim:Z

    if-eqz v0, :cond_2

    .line 195
    sget v0, Lcom/yopeso/lieferando/R$id;->panelLL:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->panelLL:Landroid/widget/RelativeLayout;

    .line 196
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->panelLL:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->listAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 197
    iput-boolean v7, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->showAnim:Z

    .line 206
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mAddressListView:Landroid/widget/ListView;

    new-instance v1, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$4;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$4;-><init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 243
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->addAddress:Landroid/widget/Button;

    new-instance v1, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$5;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$5;-><init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    :cond_3
    return-void

    .line 202
    :cond_4
    new-instance v0, Lcom/yopeso/lieferando/adapters/tablet/SearchAddressAdapter;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$layout;->address_list_small_item:I

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mUserAddresses:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcom/yopeso/lieferando/adapters/tablet/SearchAddressAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mAddressAdapter:Lcom/yopeso/lieferando/adapters/tablet/SearchAddressAdapter;

    .line 203
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mAddressListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mAddressAdapter:Lcom/yopeso/lieferando/adapters/tablet/SearchAddressAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public tapOnNewOrderButton(Lcom/yopeso/lieferando/model/user/Location;)V
    .locals 7
    .param p1, "address"    # Lcom/yopeso/lieferando/model/user/Location;

    .prologue
    .line 635
    invoke-static {}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->deleySelection()Z

    move-result v3

    if-nez v3, :cond_0

    .line 636
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sput-wide v4, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->mLastClickTime:J

    .line 637
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    .line 638
    .local v0, "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 640
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v3

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    new-instance v5, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$12;

    invoke-direct {v5, p0, p1}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$12;-><init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;Lcom/yopeso/lieferando/model/user/Location;)V

    .line 647
    new-instance v6, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$13;

    invoke-direct {v6, p0, v0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$13;-><init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;Lcom/yopeso/lieferando/model/cart/ShoppingCart;)V

    .line 640
    invoke-static {v3, v4, v5, v6}, Lcom/yopeso/lieferando/dialogs/CartNotEmptyDialog;->getDialog(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v1

    .line 655
    .local v1, "cartDialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 662
    .end local v0    # "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    .end local v1    # "cartDialog":Landroid/app/AlertDialog;
    :cond_0
    :goto_0
    return-void

    .line 657
    .restart local v0    # "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    :cond_1
    new-instance v2, Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-direct {v2, p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;-><init>(Lcom/yopeso/lieferando/model/user/Location;)V

    .line 658
    .local v2, "ls":Lcom/yopeso/lieferando/model/LocationSuggestion;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/yopeso/lieferando/callback/ILocationSelectedCallback;

    invoke-interface {v3, v2}, Lcom/yopeso/lieferando/callback/ILocationSelectedCallback;->onLocationSelected(Lcom/yopeso/lieferando/model/LocationSuggestion;)V

    goto :goto_0
.end method
