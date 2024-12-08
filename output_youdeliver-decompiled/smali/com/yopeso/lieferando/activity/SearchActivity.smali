.class public Lcom/yopeso/lieferando/activity/SearchActivity;
.super Lcom/yopeso/lieferando/activity/BaseSearchActivity;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/yopeso/lieferando/callback/ILocationSelectedCallback;
.implements Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;
.implements Lcom/yopeso/lieferando/callback/RestaurantSelectedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yopeso/lieferando/activity/SearchActivity$AdapterDwarler;,
        Lcom/yopeso/lieferando/activity/SearchActivity$DeliveryAreaListener;,
        Lcom/yopeso/lieferando/activity/SearchActivity$LocationPushListener;,
        Lcom/yopeso/lieferando/activity/SearchActivity$OpeningsListener;,
        Lcom/yopeso/lieferando/activity/SearchActivity$RestaurantListener;,
        Lcom/yopeso/lieferando/activity/SearchActivity$RestaurantLoadedListener;
    }
.end annotation


# static fields
.field public static final ACTION_GO_HOME:Ljava/lang/String; = "go_home"

.field public static final ACTION_GO_TO_FAVOURITES:Ljava/lang/String; = "go_to_favourites_action"

.field public static final ACTION_GO_TO_FIDELITY:Ljava/lang/String; = "go_to_fidelity_action"

.field public static final ACTION_GO_TO_ORDERS:Ljava/lang/String; = "go_to_orders_action"

.field public static final ACTION_GO_TO_RATING:Ljava/lang/String; = "go_to_rating_action"

.field public static final ACTION_GO_TO_STAMPS:Ljava/lang/String; = "go_to_stamps_action"

.field public static final ACTION_REST_LIST:Ljava/lang/String; = "rest_list_action"

.field public static final ACTION_REST_LIST_PUSH:Ljava/lang/String; = "push_list_action"

.field public static final ACTION_ZIP_PROVIDED:Ljava/lang/String; = "zip_provided_action"

.field public static final KEY_DISCOUNT:Ljava/lang/String; = "key_discount"

.field public static final KEY_EXPIRATION:Ljava/lang/String; = "key_expiration"

.field public static final KEY_LOCATION:Ljava/lang/String; = "key_location"

.field public static final KEY_VOUCHER_CODE:Ljava/lang/String; = "key_voucher_code"

.field public static final PUSH_VALUE:Ljava/lang/String; = "push_value"

.field private static final TAG:Ljava/lang/String; = "SearchActivity"


# instance fields
.field private isPushNotification:Z

.field private ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

.field private lsPREMIUM:Lcom/yopeso/lieferando/model/LocationSuggestion;

.field private mRestaurants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/Restaurant;",
            ">;"
        }
    .end annotation
.end field

.field private newTask:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;-><init>()V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/activity/SearchActivity;->mRestaurants:Ljava/util/ArrayList;

    .line 98
    iput-boolean v1, p0, Lcom/yopeso/lieferando/activity/SearchActivity;->isPushNotification:Z

    .line 102
    iput-boolean v1, p0, Lcom/yopeso/lieferando/activity/SearchActivity;->newTask:Z

    .line 80
    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/activity/SearchActivity;Lcom/android/volley/VolleyError;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/activity/SearchActivity;->handleNetworkError(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method static synthetic access$1(Lcom/yopeso/lieferando/activity/SearchActivity;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->dismissLoadingIndicator()V

    return-void
.end method

.method static synthetic access$2(Lcom/yopeso/lieferando/activity/SearchActivity;)Lcom/yopeso/lieferando/model/LocationSuggestion;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/SearchActivity;->lsPREMIUM:Lcom/yopeso/lieferando/model/LocationSuggestion;

    return-object v0
.end method

.method static synthetic access$3(Lcom/yopeso/lieferando/activity/SearchActivity;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/yopeso/lieferando/activity/SearchActivity;->mRestaurants:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$4(Lcom/yopeso/lieferando/activity/SearchActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/SearchActivity;->mRestaurants:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5(Lcom/yopeso/lieferando/activity/SearchActivity;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 0

    .prologue
    .line 550
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/activity/SearchActivity;->goToRestaurant(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    return-void
.end method

.method private goToRestaurant(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 0
    .param p1, "restaurant"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 551
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/activity/SearchActivity;->onRestaurantSelected(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    .line 552
    return-void
.end method

.method private navigateTo(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 404
    invoke-static {}, Lcom/yopeso/lieferando/custom/LRActivity;->cancelDialogs()V

    .line 405
    if-eqz p1, :cond_2

    const-string v1, "go_home"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "go_home"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 407
    :cond_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->removeBackStack()V

    .line 451
    :cond_1
    :goto_0
    return-void

    .line 410
    :cond_2
    if-eqz p1, :cond_4

    const-string v1, "go_to_orders_action"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v1, "go_to_orders_action"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 412
    :cond_3
    sget v1, Lcom/yopeso/lieferando/R$id;->Content:I

    new-instance v2, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;

    invoke-direct {v2}, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/yopeso/lieferando/activity/SearchActivity;->addNewFragment(ILandroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 415
    :cond_4
    if-eqz p1, :cond_6

    const-string v1, "go_to_stamps_action"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v1, "go_to_stamps_action"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 417
    :cond_5
    sget v1, Lcom/yopeso/lieferando/R$id;->Content:I

    new-instance v2, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;

    invoke-direct {v2}, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;-><init>()V

    sget-object v3, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v4, v3}, Lcom/yopeso/lieferando/activity/SearchActivity;->addNewFragment(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    goto :goto_0

    .line 420
    :cond_6
    if-eqz p1, :cond_8

    const-string v1, "go_to_favourites_action"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_8

    const-string v1, "go_to_favourites_action"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 422
    :cond_7
    sget v1, Lcom/yopeso/lieferando/R$id;->Content:I

    new-instance v2, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;

    invoke-direct {v2}, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;-><init>()V

    sget-object v3, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v4, v3}, Lcom/yopeso/lieferando/activity/SearchActivity;->addNewFragment(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    goto :goto_0

    .line 425
    :cond_8
    if-eqz p1, :cond_a

    const-string v1, "go_to_fidelity_action"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_a

    const-string v1, "go_to_fidelity_action"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 427
    :cond_9
    sget v1, Lcom/yopeso/lieferando/R$id;->Content:I

    new-instance v2, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;

    invoke-direct {v2}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;-><init>()V

    sget-object v3, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v4, v3}, Lcom/yopeso/lieferando/activity/SearchActivity;->addNewFragment(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 429
    :cond_a
    if-eqz p1, :cond_c

    const-string v1, "go_to_inbox_action"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_c

    const-string v1, "go_to_inbox_action"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 431
    :cond_b
    sput v3, Lcom/yopeso/lieferando/util/UserStore;->shown_messages:I

    .line 432
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->supportInvalidateOptionsMenu()V

    .line 433
    sget v1, Lcom/yopeso/lieferando/R$id;->Content:I

    new-instance v2, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;

    invoke-direct {v2}, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;-><init>()V

    sget-object v3, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v4, v3}, Lcom/yopeso/lieferando/activity/SearchActivity;->addNewFragment(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 435
    :cond_c
    if-eqz p1, :cond_1

    const-string v1, "go_to_rating_action"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "go_to_rating_action"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 437
    :cond_d
    invoke-static {}, Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;->newInstance()Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;

    move-result-object v0

    .line 438
    .local v0, "dialog":Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected checkPreordering(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 2
    .param p1, "r"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 535
    sget-object v1, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {p1, v1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 536
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/activity/SearchActivity;->goToRestaurant(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    .line 549
    :goto_0
    return-void

    .line 540
    :cond_0
    new-instance v1, Lcom/yopeso/lieferando/activity/SearchActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/yopeso/lieferando/activity/SearchActivity$2;-><init>(Lcom/yopeso/lieferando/activity/SearchActivity;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    invoke-static {p1, p0, v1}, Lcom/yopeso/lieferando/dialogs/PreOrderingDialog;->getDialog(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 547
    .local v0, "preorder":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public onAddRestaurantDetailsFragment(Lcom/yopeso/lieferando/model/restaurant/Restaurant;ZZ)V
    .locals 5
    .param p1, "r"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    .param p2, "clearCart"    # Z
    .param p3, "deeplink"    # Z

    .prologue
    .line 621
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    .line 623
    .local v0, "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    if-eqz p2, :cond_0

    .line 624
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->clear()V

    .line 625
    invoke-virtual {v0, p1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setRestaurant(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    .line 627
    :cond_0
    sget v1, Lcom/yopeso/lieferando/R$id;->Content:I

    invoke-static {p3}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->newInstance(Z)Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "RestaurantDetailsFrag"

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/yopeso/lieferando/activity/SearchActivity;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    .line 628
    return-void
.end method

.method public onBackPressed()V
    .locals 6

    .prologue
    .line 675
    iget-object v4, p0, Lcom/yopeso/lieferando/activity/SearchActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/yopeso/lieferando/activity/SearchActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v5, p0, Lcom/yopeso/lieferando/activity/SearchActivity;->mDrawerList:Landroid/widget/ListView;

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 676
    iget-object v4, p0, Lcom/yopeso/lieferando/activity/SearchActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    .line 729
    :cond_0
    :goto_0
    return-void

    .line 679
    :cond_1
    const/4 v0, 0x1

    .line 680
    .local v0, "backStack":Z
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    .line 681
    .local v1, "backStackCount":I
    iget-boolean v4, p0, Lcom/yopeso/lieferando/activity/SearchActivity;->newTask:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    .line 683
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->finish()V

    .line 685
    :cond_2
    if-lez v1, :cond_4

    .line 686
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v4

    invoke-interface {v4}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 687
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_6

    const-string v4, "RestaurantsFragment"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 688
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    .line 689
    .local v2, "fr":Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;
    invoke-virtual {v2}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->isFilterUp()Z

    move-result v4

    if-nez v4, :cond_5

    .line 691
    invoke-virtual {v2}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->closeFilter()V

    .line 692
    const/4 v0, 0x0

    .line 703
    :cond_3
    :goto_1
    invoke-virtual {v2}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->isSortingShown()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 705
    invoke-virtual {v2}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->closeSorting()V

    .line 706
    const/4 v0, 0x0

    .line 725
    .end local v2    # "fr":Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;
    .end local v3    # "name":Ljava/lang/String;
    :cond_4
    :goto_2
    if-eqz v0, :cond_0

    .line 726
    invoke-super {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->onBackPressed()V

    goto :goto_0

    .line 695
    .restart local v2    # "fr":Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;
    .restart local v3    # "name":Ljava/lang/String;
    :cond_5
    invoke-virtual {v2}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->isMapShown()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 697
    invoke-virtual {v2}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->closeMap()V

    .line 698
    const/4 v0, 0x0

    goto :goto_1

    .line 711
    .end local v2    # "fr":Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;
    :cond_6
    if-eqz v3, :cond_4

    const-string v4, "MainAccountFragment"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 712
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    .line 713
    .local v2, "fr":Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->isInEditMode()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 715
    invoke-virtual {v2}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->onBackKeyPressed()V

    .line 716
    const/4 v0, 0x0

    .line 717
    goto :goto_2

    .line 719
    :cond_7
    const/4 v0, 0x1

    goto :goto_2
.end method

.method public onBackStackChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 649
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 650
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 651
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 656
    :goto_0
    return-void

    .line 653
    :cond_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 654
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/app/ActionBar;->setHomeButtonEnabled(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 631
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 632
    .local v0, "id":I
    const-string v2, "SearchActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onClick:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "R.id.AddNewAddress:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$id;->AddNewAddress:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    sget v2, Lcom/yopeso/lieferando/R$id;->AddNewAddress:I

    if-ne v0, v2, :cond_0

    .line 635
    invoke-static {v5, v5}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->newInstance(ZI)Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    move-result-object v1

    .line 636
    .local v1, "mapAddressFragment":Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->Content:I

    sget-object v4, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    sget-object v3, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 638
    .end local v1    # "mapAddressFragment":Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 15
    .param p1, "arg0"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 107
    invoke-super/range {p0 .. p1}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    sget v0, Lcom/yopeso/lieferando/R$layout;->tab_main:I

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/activity/SearchActivity;->setContentView(I)V

    .line 111
    sget v0, Lcom/yopeso/lieferando/R$id;->accountMainParrent:I

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/activity/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    .line 112
    .local v11, "parent":Landroid/view/ViewGroup;
    sget v0, Lcom/yopeso/lieferando/R$id;->accountMainParrent:I

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/activity/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->requestTransparentRegion(Landroid/view/View;)V

    .line 114
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 115
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 119
    if-nez p1, :cond_0

    .line 120
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 121
    new-instance v9, Lcom/yopeso/lieferando/fragments/search/SearchMainFragmentPL;

    invoke-direct {v9}, Lcom/yopeso/lieferando/fragments/search/SearchMainFragmentPL;-><init>()V

    .line 122
    .local v9, "frag":Lcom/yopeso/lieferando/fragments/search/SearchMainFragmentPL;
    invoke-virtual {v9, p0}, Lcom/yopeso/lieferando/fragments/search/SearchMainFragmentPL;->setListener(Landroid/view/View$OnClickListener;)V

    .line 123
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v14

    .line 124
    .local v14, "tx":Landroid/support/v4/app/FragmentTransaction;
    sget v0, Lcom/yopeso/lieferando/R$id;->Content:I

    invoke-virtual {v14, v0, v9}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 125
    invoke-virtual {v14}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 135
    .end local v9    # "frag":Lcom/yopeso/lieferando/fragments/search/SearchMainFragmentPL;
    .end local v14    # "tx":Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentManager;->addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    .line 142
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "rest_list_action"

    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_location"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Lcom/yopeso/lieferando/model/LocationSuggestion;

    .line 145
    .local v10, "ls":Lcom/yopeso/lieferando/model/LocationSuggestion;
    invoke-virtual {p0, v10}, Lcom/yopeso/lieferando/activity/SearchActivity;->onLocationSelected(Lcom/yopeso/lieferando/model/LocationSuggestion;)V

    .line 148
    .end local v10    # "ls":Lcom/yopeso/lieferando/model/LocationSuggestion;
    :cond_1
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "restaurant_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 149
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 150
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v12

    .line 151
    .local v12, "r":Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "clear_cart_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 152
    .local v7, "clearCart":Z
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "new_task_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yopeso/lieferando/activity/SearchActivity;->newTask:Z

    .line 153
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v0

    if-nez v0, :cond_2

    .line 154
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$drawable;->actionbar_icon_short:I

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V

    .line 159
    :cond_2
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "deeplink_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 160
    .local v8, "deeplink":Z
    invoke-virtual {p0, v12, v7, v8}, Lcom/yopeso/lieferando/activity/SearchActivity;->onAddRestaurantDetailsFragment(Lcom/yopeso/lieferando/model/restaurant/Restaurant;ZZ)V

    .line 166
    .end local v7    # "clearCart":Z
    .end local v8    # "deeplink":Z
    .end local v12    # "r":Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    :cond_3
    sget v0, Lcom/yopeso/lieferando/R$id;->drawer_layout:I

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/activity/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lcom/yopeso/lieferando/activity/SearchActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 169
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 170
    .local v13, "sp":Landroid/content/SharedPreferences;
    const-string v0, "navigation_drawer_learned"

    const/4 v1, 0x0

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yopeso/lieferando/activity/SearchActivity;->mUserLearnedDrawer:Z

    .line 173
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$array;->drawler_titles_array:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/activity/SearchActivity;->mDrawlerTitles:[Ljava/lang/String;

    .line 174
    sget v0, Lcom/yopeso/lieferando/R$id;->drawer_layout:I

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/activity/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lcom/yopeso/lieferando/activity/SearchActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 175
    sget v0, Lcom/yopeso/lieferando/R$id;->left_drawer:I

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/activity/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/yopeso/lieferando/activity/SearchActivity;->mDrawerList:Landroid/widget/ListView;

    .line 178
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/SearchActivity;->mDrawerList:Landroid/widget/ListView;

    new-instance v1, Lcom/yopeso/lieferando/activity/SearchActivity$AdapterDwarler;

    iget-object v2, p0, Lcom/yopeso/lieferando/activity/SearchActivity;->mDrawlerTitles:[Ljava/lang/String;

    invoke-direct {v1, p0, p0, v2}, Lcom/yopeso/lieferando/activity/SearchActivity$AdapterDwarler;-><init>(Lcom/yopeso/lieferando/activity/SearchActivity;Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 180
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 181
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/SearchActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 186
    :cond_4
    new-instance v0, Lcom/yopeso/lieferando/activity/SearchActivity$1;

    .line 188
    iget-object v3, p0, Lcom/yopeso/lieferando/activity/SearchActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 189
    sget v4, Lcom/yopeso/lieferando/R$drawable;->ic_drawer:I

    .line 190
    sget v5, Lcom/yopeso/lieferando/R$string;->app_name:I

    .line 191
    sget v6, Lcom/yopeso/lieferando/R$string;->app_name:I

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/yopeso/lieferando/activity/SearchActivity$1;-><init>(Lcom/yopeso/lieferando/activity/SearchActivity;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V

    .line 186
    iput-object v0, p0, Lcom/yopeso/lieferando/activity/SearchActivity;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    .line 234
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/SearchActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/yopeso/lieferando/activity/SearchActivity;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 237
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/SearchActivity;->mDrawerList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yopeso/lieferando/activity/SearchActivity;->drawler_onclick_listner:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 240
    return-void

    .line 127
    .end local v13    # "sp":Landroid/content/SharedPreferences;
    :cond_5
    new-instance v9, Lcom/yopeso/lieferando/fragments/search/SearchMainFragment;

    invoke-direct {v9}, Lcom/yopeso/lieferando/fragments/search/SearchMainFragment;-><init>()V

    .line 128
    .local v9, "frag":Lcom/yopeso/lieferando/fragments/search/SearchMainFragment;
    invoke-virtual {v9, p0}, Lcom/yopeso/lieferando/fragments/search/SearchMainFragment;->setListener(Landroid/view/View$OnClickListener;)V

    .line 129
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v14

    .line 130
    .restart local v14    # "tx":Landroid/support/v4/app/FragmentTransaction;
    sget v0, Lcom/yopeso/lieferando/R$id;->Content:I

    invoke-virtual {v14, v0, v9}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 131
    invoke-virtual {v14}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto/16 :goto_0
.end method

.method public onLocationSelected(Lcom/yopeso/lieferando/model/LocationSuggestion;)V
    .locals 5
    .param p1, "ls"    # Lcom/yopeso/lieferando/model/LocationSuggestion;

    .prologue
    .line 454
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 456
    const-string v1, "SearchActivity"

    const-string v2, "onLocationSelected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setAddressAtLocation(Lcom/yopeso/lieferando/model/LocationSuggestion;)V

    .line 458
    sget v1, Lcom/yopeso/lieferando/R$string;->pleaseWait:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/activity/SearchActivity;->showLoadingIndicator(I)V

    .line 459
    iput-object p1, p0, Lcom/yopeso/lieferando/activity/SearchActivity;->lsPREMIUM:Lcom/yopeso/lieferando/model/LocationSuggestion;

    .line 461
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    new-instance v2, Lcom/yopeso/lieferando/net/requests/RestaurantRequest;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getLocationUrl()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/yopeso/lieferando/activity/SearchActivity$RestaurantListener;

    invoke-direct {v4, p0}, Lcom/yopeso/lieferando/activity/SearchActivity$RestaurantListener;-><init>(Lcom/yopeso/lieferando/activity/SearchActivity;)V

    invoke-direct {v2, v3, v4}, Lcom/yopeso/lieferando/net/requests/RestaurantRequest;-><init>(Ljava/lang/String;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v1, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 471
    :goto_0
    return-void

    .line 465
    :cond_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setAddressAtLocation(Lcom/yopeso/lieferando/model/LocationSuggestion;)V

    .line 466
    invoke-static {p1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->newInstance(Lcom/yopeso/lieferando/model/LocationSuggestion;)Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    move-result-object v0

    .line 467
    .local v0, "restListFrag":Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->makeFilterDefault()V

    .line 468
    sget v1, Lcom/yopeso/lieferando/R$id;->Content:I

    const/4 v2, 0x1

    const-string v3, "RestaurantsFragment"

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/yopeso/lieferando/activity/SearchActivity;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public onLoginSuccess()V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 643
    invoke-super {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->onLoginSuccess()V

    .line 644
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->invalidateOptionsMenu()V

    .line 645
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 348
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 350
    const-string v8, "cancel_notification_key"

    invoke-virtual {p1, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 351
    sput v10, Lcom/yopeso/lieferando/util/UserStore;->shown_messages:I

    .line 353
    :cond_0
    const-string v8, "push_list_action"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 354
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v8

    invoke-virtual {v8, v12, v11}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 355
    const-string v8, "key_location"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/yopeso/lieferando/model/LocationSuggestion;

    .line 356
    .local v3, "ls":Lcom/yopeso/lieferando/model/LocationSuggestion;
    new-instance v8, Lcom/yopeso/lieferando/activity/SearchActivity$LocationPushListener;

    invoke-direct {v8, p0, v12}, Lcom/yopeso/lieferando/activity/SearchActivity$LocationPushListener;-><init>(Lcom/yopeso/lieferando/activity/SearchActivity;Lcom/yopeso/lieferando/activity/SearchActivity$LocationPushListener;)V

    invoke-virtual {p0, v3, v8}, Lcom/yopeso/lieferando/activity/SearchActivity;->performRequest(Lcom/yopeso/lieferando/model/LocationSuggestion;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    .line 359
    .end local v3    # "ls":Lcom/yopeso/lieferando/model/LocationSuggestion;
    :cond_1
    const-string v8, "rest_list_action"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 361
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v8

    invoke-virtual {v8, v12, v11}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 362
    const-string v8, "key_location"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/yopeso/lieferando/model/LocationSuggestion;

    .line 363
    .restart local v3    # "ls":Lcom/yopeso/lieferando/model/LocationSuggestion;
    invoke-virtual {p0, v3}, Lcom/yopeso/lieferando/activity/SearchActivity;->onLocationSelected(Lcom/yopeso/lieferando/model/LocationSuggestion;)V

    .line 365
    .end local v3    # "ls":Lcom/yopeso/lieferando/model/LocationSuggestion;
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "restaurant_key"

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 366
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v7

    .line 367
    .local v7, "r":Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "clear_cart_key"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 368
    .local v1, "clearCart":Z
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v8

    const-string v9, "RestaurantDetailsFrag"

    invoke-virtual {v8, v9, v11}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 369
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "new_task_key"

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/yopeso/lieferando/activity/SearchActivity;->newTask:Z

    .line 370
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v8

    invoke-interface {v8}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v8

    if-nez v8, :cond_3

    .line 371
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v8

    sget v9, Lcom/yopeso/lieferando/R$drawable;->actionbar_icon_short:I

    invoke-virtual {v8, v9}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V

    .line 376
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "deeplink_key"

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 377
    .local v2, "deeplink":Z
    invoke-virtual {p0, v7, v1, v2}, Lcom/yopeso/lieferando/activity/SearchActivity;->onAddRestaurantDetailsFragment(Lcom/yopeso/lieferando/model/restaurant/Restaurant;ZZ)V

    .line 379
    .end local v1    # "clearCart":Z
    .end local v2    # "deeplink":Z
    .end local v7    # "r":Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    if-eqz v8, :cond_5

    const-string v8, "go_to_order_action"

    invoke-virtual {p1, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 381
    invoke-static {}, Lcom/yopeso/lieferando/custom/LRActivity;->cancelDialogs()V

    .line 382
    const-string v8, "order_id_key"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 383
    .local v6, "orderId":Ljava/lang/String;
    const-string v8, "msg_key"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 388
    .local v4, "msg":Ljava/lang/String;
    const-string v8, "go_to_order_action"

    invoke-virtual {p1, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 389
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 390
    .local v0, "b":Landroid/os/Bundle;
    const-string v8, "order_id_key"

    invoke-virtual {v0, v8, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v8, "msg_key"

    invoke-virtual {v0, v8, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    new-instance v5, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;

    invoke-direct {v5}, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;-><init>()V

    .line 394
    .local v5, "orderFragment":Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;
    invoke-virtual {v5, v0}, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->setArguments(Landroid/os/Bundle;)V

    .line 395
    const-string v8, "notification_id"

    const-wide/16 v10, 0x0

    invoke-virtual {p1, v8, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;->marAsReadPushMessage(J)V

    .line 396
    sget v8, Lcom/yopeso/lieferando/R$id;->Content:I

    invoke-virtual {p0, v8, v5}, Lcom/yopeso/lieferando/activity/SearchActivity;->addNewFragment(ILandroid/support/v4/app/Fragment;)V

    .line 398
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v4    # "msg":Ljava/lang/String;
    .end local v5    # "orderFragment":Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;
    .end local v6    # "orderId":Ljava/lang/String;
    :cond_5
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/activity/SearchActivity;->navigateTo(Landroid/content/Intent;)V

    .line 400
    return-void
.end method

.method public onRestaurantSelected(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 5
    .param p1, "r"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 591
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    .line 592
    .local v0, "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v2

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v3

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 593
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v2

    new-instance v3, Lcom/yopeso/lieferando/activity/SearchActivity$3;

    invoke-direct {v3, p0, v0, p1}, Lcom/yopeso/lieferando/activity/SearchActivity$3;-><init>(Lcom/yopeso/lieferando/activity/SearchActivity;Lcom/yopeso/lieferando/model/cart/ShoppingCart;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    .line 604
    new-instance v4, Lcom/yopeso/lieferando/activity/SearchActivity$4;

    invoke-direct {v4, p0, p1}, Lcom/yopeso/lieferando/activity/SearchActivity$4;-><init>(Lcom/yopeso/lieferando/activity/SearchActivity;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    .line 593
    invoke-static {v2, p0, v3, v4}, Lcom/yopeso/lieferando/dialogs/CartNotEmptyDialog;->getDialog(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v1

    .line 610
    .local v1, "cartDialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 618
    .end local v1    # "cartDialog":Landroid/app/AlertDialog;
    :goto_0
    return-void

    .line 612
    :cond_0
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v2

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 613
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->clear()V

    .line 615
    :cond_1
    invoke-virtual {v0, p1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setRestaurant(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    .line 616
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3}, Lcom/yopeso/lieferando/activity/SearchActivity;->onAddRestaurantDetailsFragment(Lcom/yopeso/lieferando/model/restaurant/Restaurant;ZZ)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 301
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v5

    invoke-interface {v5}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 302
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 303
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v5

    sget v6, Lcom/yopeso/lieferando/R$string;->app_title:I

    invoke-virtual {v5, v6}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 306
    :cond_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v5

    if-nez v5, :cond_4

    .line 307
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 308
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/actionbarsherlock/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 315
    :goto_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->invalidateOptionsMenu()V

    .line 316
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "cancel_notification_key"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 317
    sput v7, Lcom/yopeso/lieferando/util/UserStore;->shown_messages:I

    .line 319
    :cond_1
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "go_to_order_action"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 320
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "order_id_key"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 321
    .local v4, "orderId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "msg_key"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 322
    .local v2, "msg":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "go_to_order_action"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 326
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 327
    .local v0, "b":Landroid/os/Bundle;
    const-string v5, "order_id_key"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string v5, "msg_key"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    new-instance v3, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;

    invoke-direct {v3}, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;-><init>()V

    .line 331
    .local v3, "orderFragment":Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;
    invoke-virtual {v3, v0}, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->setArguments(Landroid/os/Bundle;)V

    .line 332
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "notification_id"

    const-wide/16 v8, 0x0

    invoke-virtual {v5, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;->marAsReadPushMessage(J)V

    .line 333
    sget v5, Lcom/yopeso/lieferando/R$id;->Content:I

    invoke-virtual {p0, v5, v3}, Lcom/yopeso/lieferando/activity/SearchActivity;->addNewFragment(ILandroid/support/v4/app/Fragment;)V

    .line 335
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "orderFragment":Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;
    .end local v4    # "orderId":Ljava/lang/String;
    :cond_2
    const-string v5, "push_list_action"

    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 336
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5, v11, v10}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 337
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "key_location"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/model/LocationSuggestion;

    .line 338
    .local v1, "ls":Lcom/yopeso/lieferando/model/LocationSuggestion;
    new-instance v5, Lcom/yopeso/lieferando/activity/SearchActivity$LocationPushListener;

    invoke-direct {v5, p0, v11}, Lcom/yopeso/lieferando/activity/SearchActivity$LocationPushListener;-><init>(Lcom/yopeso/lieferando/activity/SearchActivity;Lcom/yopeso/lieferando/activity/SearchActivity$LocationPushListener;)V

    invoke-virtual {p0, v1, v5}, Lcom/yopeso/lieferando/activity/SearchActivity;->performRequest(Lcom/yopeso/lieferando/model/LocationSuggestion;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    .line 340
    .end local v1    # "ls":Lcom/yopeso/lieferando/model/LocationSuggestion;
    :cond_3
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/yopeso/lieferando/activity/SearchActivity;->navigateTo(Landroid/content/Intent;)V

    .line 342
    invoke-super {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->onResume()V

    .line 343
    return-void

    .line 310
    :cond_4
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 311
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/SearchActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/actionbarsherlock/app/ActionBar;->setHomeButtonEnabled(Z)V

    goto/16 :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 244
    invoke-super {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->onStart()V

    .line 246
    invoke-static {}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackActivityStart()V

    .line 247
    iget-boolean v0, p0, Lcom/yopeso/lieferando/activity/SearchActivity;->isPushNotification:Z

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/SearchActivity;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    new-instance v1, Lcom/yopeso/lieferando/activity/SearchActivity$LocationPushListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/yopeso/lieferando/activity/SearchActivity$LocationPushListener;-><init>(Lcom/yopeso/lieferando/activity/SearchActivity;Lcom/yopeso/lieferando/activity/SearchActivity$LocationPushListener;)V

    invoke-virtual {p0, v0, v1}, Lcom/yopeso/lieferando/activity/SearchActivity;->performRequest(Lcom/yopeso/lieferando/model/LocationSuggestion;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yopeso/lieferando/activity/SearchActivity;->isPushNotification:Z

    .line 251
    :cond_0
    return-void
.end method
