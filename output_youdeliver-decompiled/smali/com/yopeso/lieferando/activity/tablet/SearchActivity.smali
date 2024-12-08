.class public Lcom/yopeso/lieferando/activity/tablet/SearchActivity;
.super Lcom/yopeso/lieferando/activity/BaseSearchActivity;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/yopeso/lieferando/callback/ILocationSelectedCallback;
.implements Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;
.implements Lcom/yopeso/lieferando/callback/RestaurantSelectedCallback;
.implements Lcom/yopeso/lieferando/callback/RestaurantDetailsCallback;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yopeso/lieferando/activity/tablet/SearchActivity$AdapterDwarler;,
        Lcom/yopeso/lieferando/activity/tablet/SearchActivity$DeliveryAreaListener;,
        Lcom/yopeso/lieferando/activity/tablet/SearchActivity$LocationPushListener;,
        Lcom/yopeso/lieferando/activity/tablet/SearchActivity$OpeningsListener;,
        Lcom/yopeso/lieferando/activity/tablet/SearchActivity$RestaurantListener;,
        Lcom/yopeso/lieferando/activity/tablet/SearchActivity$RestaurantLoadedListener;
    }
.end annotation


# static fields
.field public static final ACTION_REST_LIST:Ljava/lang/String; = "rest_list_action"

.field public static final ACTION_REST_LIST_PUSH:Ljava/lang/String; = "push_list_action"

.field public static final ACTION_VOUCHER:Ljava/lang/String; = "voucher_action"

.field public static final ENABLE_INBOX:Z = true

.field public static final KEY_DISCOUNT:Ljava/lang/String; = "key_discount"

.field public static final KEY_EXPIRATION:Ljava/lang/String; = "key_expiration"

.field public static final KEY_LOCATION:Ljava/lang/String; = "key_location"

.field public static final KEY_VOUCHER_CODE:Ljava/lang/String; = "key_voucher_code"

.field private static final TAG:Ljava/lang/String; = "SearchActivityTablet"


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

    .line 94
    invoke-direct {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;-><init>()V

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->mRestaurants:Ljava/util/ArrayList;

    .line 109
    iput-boolean v1, p0, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->isPushNotification:Z

    .line 113
    iput-boolean v1, p0, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->newTask:Z

    .line 94
    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/activity/tablet/SearchActivity;Lcom/android/volley/VolleyError;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->handleNetworkError(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method static synthetic access$1(Lcom/yopeso/lieferando/activity/tablet/SearchActivity;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->dismissLoadingIndicator()V

    return-void
.end method

.method static synthetic access$2(Lcom/yopeso/lieferando/activity/tablet/SearchActivity;)Lcom/yopeso/lieferando/model/LocationSuggestion;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->lsPREMIUM:Lcom/yopeso/lieferando/model/LocationSuggestion;

    return-object v0
.end method

.method static synthetic access$3(Lcom/yopeso/lieferando/activity/tablet/SearchActivity;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->mRestaurants:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$4(Lcom/yopeso/lieferando/activity/tablet/SearchActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->mRestaurants:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5(Lcom/yopeso/lieferando/activity/tablet/SearchActivity;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 0

    .prologue
    .line 626
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->goToRestaurant(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    return-void
.end method

.method private goToRestaurant(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 0
    .param p1, "restaurant"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 627
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->onRestaurantSelected(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    .line 628
    return-void
.end method

.method private navigateTo(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 369
    invoke-static {}, Lcom/yopeso/lieferando/custom/LRActivity;->cancelDialogs()V

    .line 370
    if-eqz p1, :cond_2

    const-string v2, "go_home"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "go_home"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 372
    :cond_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->removeBackStack()V

    .line 418
    :cond_1
    :goto_0
    return-void

    .line 375
    :cond_2
    if-eqz p1, :cond_4

    const-string v2, "go_to_orders_action"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v2, "go_to_orders_action"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 377
    :cond_3
    sget v2, Lcom/yopeso/lieferando/R$id;->RightPane:I

    new-instance v3, Lcom/yopeso/lieferando/fragments/tablet/account/OrderFragmentTablet;

    invoke-direct {v3}, Lcom/yopeso/lieferando/fragments/tablet/account/OrderFragmentTablet;-><init>()V

    sget-object v4, Lcom/yopeso/lieferando/fragments/tablet/account/OrderFragmentTablet;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v5, v4}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    goto :goto_0

    .line 380
    :cond_4
    if-eqz p1, :cond_6

    const-string v2, "go_to_stamps_action"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v2, "go_to_stamps_action"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 382
    :cond_5
    sget v2, Lcom/yopeso/lieferando/R$id;->RightPane:I

    new-instance v3, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;

    invoke-direct {v3}, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;-><init>()V

    sget-object v4, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v5, v4}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    goto :goto_0

    .line 385
    :cond_6
    if-eqz p1, :cond_8

    const-string v2, "go_to_favourites_action"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_8

    const-string v2, "go_to_favourites_action"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 387
    :cond_7
    sget v2, Lcom/yopeso/lieferando/R$id;->RightPane:I

    new-instance v3, Lcom/yopeso/lieferando/fragments/tablet/account/FavoriteFragmentTablet;

    invoke-direct {v3}, Lcom/yopeso/lieferando/fragments/tablet/account/FavoriteFragmentTablet;-><init>()V

    sget-object v4, Lcom/yopeso/lieferando/fragments/tablet/account/FavoriteFragmentTablet;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v5, v4}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    goto :goto_0

    .line 390
    :cond_8
    if-eqz p1, :cond_a

    const-string v2, "go_to_fidelity_action"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_a

    const-string v2, "go_to_fidelity_action"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 392
    :cond_9
    sget v2, Lcom/yopeso/lieferando/R$id;->RightPane:I

    new-instance v3, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;

    invoke-direct {v3}, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;-><init>()V

    sget-object v4, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v5, v4}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 394
    :cond_a
    if-eqz p1, :cond_d

    const-string v2, "go_to_inbox_action"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_d

    const-string v2, "go_to_inbox_action"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 396
    :cond_b
    sget v2, Lcom/yopeso/lieferando/R$id;->RightPane:I

    invoke-virtual {p0, v2}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 397
    .local v1, "frame":Landroid/widget/FrameLayout;
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_c

    .line 399
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 401
    :cond_c
    sput v4, Lcom/yopeso/lieferando/util/UserStore;->shown_messages:I

    .line 402
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->supportInvalidateOptionsMenu()V

    .line 403
    sget v2, Lcom/yopeso/lieferando/R$id;->RightPane:I

    new-instance v3, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;

    invoke-direct {v3}, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;-><init>()V

    sget-object v4, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v5, v4}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 405
    .end local v1    # "frame":Landroid/widget/FrameLayout;
    :cond_d
    if-eqz p1, :cond_1

    const-string v2, "go_to_rating_action"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "go_to_rating_action"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 407
    :cond_e
    invoke-static {}, Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;->newInstance()Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;

    move-result-object v0

    .line 408
    .local v0, "dialog":Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    sget-object v3, Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected checkPreordering(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 2
    .param p1, "r"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 611
    sget-object v1, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {p1, v1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 612
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->goToRestaurant(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    .line 625
    :goto_0
    return-void

    .line 616
    :cond_0
    new-instance v1, Lcom/yopeso/lieferando/activity/tablet/SearchActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity$2;-><init>(Lcom/yopeso/lieferando/activity/tablet/SearchActivity;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    invoke-static {p1, p0, v1}, Lcom/yopeso/lieferando/dialogs/PreOrderingDialog;->getDialog(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 623
    .local v0, "preorder":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public doLogout()V
    .locals 2

    .prologue
    .line 740
    invoke-super {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->doLogout()V

    .line 741
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->invalidateOptionsMenu()V

    .line 742
    sget v1, Lcom/yopeso/lieferando/R$id;->RightPane:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 743
    .local v0, "frame":Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 744
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 746
    :cond_0
    return-void
.end method

.method public onAddRestaurantDetailsFragment(Lcom/yopeso/lieferando/model/restaurant/Restaurant;ZZ)V
    .locals 7
    .param p1, "r"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    .param p2, "clearCart"    # Z
    .param p3, "deepLink"    # Z

    .prologue
    const/4 v6, 0x0

    .line 713
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    .line 715
    .local v0, "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    if-eqz p2, :cond_0

    .line 716
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->clear()V

    .line 718
    :cond_0
    invoke-virtual {v0, p1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setRestaurant(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    .line 720
    sget v2, Lcom/yopeso/lieferando/R$id;->RightPane:I

    invoke-virtual {p0, v2}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 721
    .local v1, "frame":Landroid/widget/FrameLayout;
    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 722
    sget v2, Lcom/yopeso/lieferando/R$id;->LeftPane:I

    invoke-static {p3}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantDetailsFragmentTablet;->newInstance(Z)Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantDetailsFragmentTablet;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, "RestaurantDetailsFrag"

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    .line 723
    sget v2, Lcom/yopeso/lieferando/R$id;->RightPane:I

    invoke-static {}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->newInstance()Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;

    move-result-object v3

    const-string v4, "RestaurantShoppingCartFragmentTablet"

    invoke-virtual {p0, v2, v3, v6, v4}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    .line 724
    return-void
.end method

.method public onBackPressed()V
    .locals 6

    .prologue
    .line 815
    iget-object v4, p0, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v5, p0, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->mDrawerList:Landroid/widget/ListView;

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 816
    iget-object v4, p0, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    .line 880
    :cond_0
    :goto_0
    return-void

    .line 819
    :cond_1
    const/4 v0, 0x1

    .line 820
    .local v0, "backStack":Z
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    .line 822
    .local v1, "backStackCount":I
    if-lez v1, :cond_3

    .line 823
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v4

    invoke-interface {v4}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 824
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_5

    const-string v4, "RestaurantsFragment"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 825
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    .line 826
    .local v2, "fr":Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;
    invoke-virtual {v2}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->isFilterUp()Z

    move-result v4

    if-nez v4, :cond_4

    .line 828
    invoke-virtual {v2}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->closeFilter()V

    .line 829
    const/4 v0, 0x0

    .line 840
    :cond_2
    :goto_1
    invoke-virtual {v2}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->isSortingShown()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 842
    invoke-virtual {v2}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->closeSorting()V

    .line 843
    const/4 v0, 0x0

    .line 864
    .end local v2    # "fr":Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;
    .end local v3    # "name":Ljava/lang/String;
    :cond_3
    :goto_2
    sget-boolean v4, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->menueItemSelected:Z

    if-eqz v4, :cond_7

    .line 865
    const/4 v4, 0x0

    sput-boolean v4, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->menueItemSelected:Z

    .line 867
    invoke-super {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->onBackPressed()V

    goto :goto_0

    .line 832
    .restart local v2    # "fr":Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;
    .restart local v3    # "name":Ljava/lang/String;
    :cond_4
    invoke-virtual {v2}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->isMapShown()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 834
    invoke-virtual {v2}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->closeMap()V

    .line 835
    const/4 v0, 0x0

    goto :goto_1

    .line 848
    .end local v2    # "fr":Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;
    :cond_5
    if-eqz v3, :cond_3

    const-string v4, "MainAccountFragment"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 849
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/fragments/tablet/account/MainAccountFragmentTablet;

    .line 850
    .local v2, "fr":Lcom/yopeso/lieferando/fragments/tablet/account/MainAccountFragmentTablet;
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/yopeso/lieferando/fragments/tablet/account/MainAccountFragmentTablet;->isInEditMode()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 852
    invoke-virtual {v2}, Lcom/yopeso/lieferando/fragments/tablet/account/MainAccountFragmentTablet;->onBackKeyPressed()V

    .line 853
    const/4 v0, 0x0

    .line 854
    goto :goto_0

    .line 857
    :cond_6
    const/4 v0, 0x1

    goto :goto_2

    .line 871
    .end local v2    # "fr":Lcom/yopeso/lieferando/fragments/tablet/account/MainAccountFragmentTablet;
    .end local v3    # "name":Ljava/lang/String;
    :cond_7
    iget-boolean v4, p0, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->newTask:Z

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    if-ne v1, v4, :cond_8

    .line 873
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->finish()V

    .line 875
    :cond_8
    if-eqz v0, :cond_0

    .line 876
    invoke-super {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->onBackPressed()V

    goto/16 :goto_0
.end method

.method public onBackStackChanged()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 664
    sget v1, Lcom/yopeso/lieferando/R$id;->RightPane:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 665
    .local v0, "frame":Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-nez v1, :cond_4

    .line 666
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 667
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/actionbarsherlock/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 668
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 669
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$id;->RightPane:I

    new-instance v3, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;

    invoke-direct {v3}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;-><init>()V

    const-string v4, "SearchRightFragment"

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 670
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 671
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 681
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-ne v1, v6, :cond_2

    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v1

    invoke-interface {v1}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RestaurantsFragment"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 682
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v1

    if-nez v1, :cond_1

    .line 683
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 685
    :cond_1
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$id;->RightPane:I

    invoke-static {v6}, Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragmentDE;->getInstance(Z)Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragmentDE;

    move-result-object v3

    sget-object v4, Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragmentDE;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 697
    :cond_2
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "CheckoutFragment"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 699
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 703
    :goto_1
    return-void

    .line 674
    :cond_3
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 677
    :cond_4
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 678
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/actionbarsherlock/app/ActionBar;->setHomeButtonEnabled(Z)V

    goto :goto_0

    .line 701
    :cond_5
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 487
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 488
    .local v1, "id":I
    sget v3, Lcom/yopeso/lieferando/R$id;->goToCheckout:I

    if-ne v1, v3, :cond_2

    .line 489
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    .line 490
    .local v0, "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getOrderCostReached()I

    move-result v3

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getMinCost()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 491
    sget v3, Lcom/yopeso/lieferando/R$string;->minimum_order_not_reached:I

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v5

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getMinCost()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v3, v4}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 500
    .end local v0    # "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    :cond_0
    :goto_0
    return-void

    .line 493
    .restart local v0    # "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    :cond_1
    sget v3, Lcom/yopeso/lieferando/R$id;->LeftPane:I

    new-instance v4, Lcom/yopeso/lieferando/fragments/tablet/search/CheckoutFragmentTablet;

    invoke-direct {v4}, Lcom/yopeso/lieferando/fragments/tablet/search/CheckoutFragmentTablet;-><init>()V

    const-string v5, "CheckoutFragment"

    invoke-virtual {p0, v3, v4, v6, v5}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    goto :goto_0

    .line 495
    .end local v0    # "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    :cond_2
    sget v3, Lcom/yopeso/lieferando/R$id;->InstructionsBtn:I

    if-ne v1, v3, :cond_0

    .line 496
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/yopeso/lieferando/activity/tablet/InformationActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 497
    .local v2, "instructions":Landroid/content/Intent;
    const-string v3, "display"

    const-string v4, "InstructionsDisplay"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 498
    invoke-virtual {p0, v2}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 302
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 303
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 18
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 117
    invoke-super/range {p0 .. p1}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->onCreate(Landroid/os/Bundle;)V

    .line 118
    sget v2, Lcom/yopeso/lieferando/R$layout;->tab_two_pane:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->setContentView(I)V

    .line 120
    sget v2, Lcom/yopeso/lieferando/R$id;->accountMainParrent:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup;

    .line 121
    .local v15, "parent":Landroid/view/ViewGroup;
    sget v2, Lcom/yopeso/lieferando/R$id;->accountMainParrent:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/view/ViewGroup;->requestTransparentRegion(Landroid/view/View;)V

    .line 123
    sget v2, Lcom/yopeso/lieferando/R$id;->RightPane:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout;

    .line 125
    .local v12, "frame":Landroid/widget/FrameLayout;
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v2

    if-nez v2, :cond_0

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->finish()V

    .line 127
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/yopeso/lieferando/SplashActivity;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 130
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentManager;->addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 132
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 133
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->app_title:I

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v9

    .line 140
    .local v9, "backStackCount":I
    if-lez v9, :cond_8

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    add-int/lit8 v3, v9, -0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v2

    invoke-interface {v2}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v14

    .line 142
    .local v14, "name":Ljava/lang/String;
    const-class v2, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getSupportFragmentManager >0 name: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    if-eqz v14, :cond_1

    const-string v2, "RestaurantsFragment"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .end local v14    # "name":Ljava/lang/String;
    :cond_1
    :goto_0
    const-class v2, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getSupportActionBar().hide()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/actionbarsherlock/app/ActionBar;->hide()V

    .line 153
    .end local v9    # "backStackCount":I
    :cond_2
    if-nez p1, :cond_3

    .line 154
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 155
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 156
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->LeftPane:I

    new-instance v4, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;

    invoke-direct {v4}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;-><init>()V

    sget-object v5, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 158
    sget v3, Lcom/yopeso/lieferando/R$id;->RightPane:I

    new-instance v4, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;

    invoke-direct {v4}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;-><init>()V

    const-string v5, "SearchRightFragment"

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 191
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v2, "rest_list_action"

    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 193
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "key_location"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Lcom/yopeso/lieferando/model/LocationSuggestion;

    .line 194
    .local v13, "ls":Lcom/yopeso/lieferando/model/LocationSuggestion;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->onLocationSelected(Lcom/yopeso/lieferando/model/LocationSuggestion;)V

    .line 197
    .end local v13    # "ls":Lcom/yopeso/lieferando/model/LocationSuggestion;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "restaurant_key"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v16

    .line 199
    .local v16, "r":Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "clear_cart_key"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 200
    .local v10, "clearCart":Z
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "new_task_key"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->newTask:Z

    .line 202
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v2

    if-nez v2, :cond_5

    .line 203
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$drawable;->actionbar_icon_short:I

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V

    .line 208
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "deeplink_key"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 209
    .local v11, "deeplink":Z
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v10, v11}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->onAddRestaurantDetailsFragment(Lcom/yopeso/lieferando/model/restaurant/Restaurant;ZZ)V

    .line 215
    .end local v10    # "clearCart":Z
    .end local v11    # "deeplink":Z
    .end local v16    # "r":Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    :cond_6
    sget v2, Lcom/yopeso/lieferando/R$id;->drawer_layout:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/DrawerLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 218
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 219
    .local v17, "sp":Landroid/content/SharedPreferences;
    const-string v2, "navigation_drawer_learned"

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->mUserLearnedDrawer:Z

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$array;->drawler_titles_array:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->mDrawlerTitles:[Ljava/lang/String;

    .line 223
    sget v2, Lcom/yopeso/lieferando/R$id;->drawer_layout:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/DrawerLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 224
    sget v2, Lcom/yopeso/lieferando/R$id;->left_drawer:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->mDrawerList:Landroid/widget/ListView;

    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->mDrawerList:Landroid/widget/ListView;

    new-instance v3, Lcom/yopeso/lieferando/activity/tablet/SearchActivity$AdapterDwarler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->mDrawlerTitles:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v3, v0, v1, v4}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity$AdapterDwarler;-><init>(Lcom/yopeso/lieferando/activity/tablet/SearchActivity;Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 228
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 233
    :cond_7
    new-instance v2, Lcom/yopeso/lieferando/activity/tablet/SearchActivity$1;

    .line 235
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 236
    sget v6, Lcom/yopeso/lieferando/R$drawable;->ic_drawer:I

    .line 237
    sget v7, Lcom/yopeso/lieferando/R$string;->app_name:I

    .line 238
    sget v8, Lcom/yopeso/lieferando/R$string;->app_name:I

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v8}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity$1;-><init>(Lcom/yopeso/lieferando/activity/tablet/SearchActivity;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V

    .line 233
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->mDrawerList:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->drawler_onclick_listner:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 287
    return-void

    .line 148
    .end local v17    # "sp":Landroid/content/SharedPreferences;
    .restart local v9    # "backStackCount":I
    :cond_8
    const-class v2, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getSupportFragmentManager == 0: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 160
    .end local v9    # "backStackCount":I
    :cond_9
    const/16 v2, 0x8

    invoke-virtual {v12, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->LeftPane:I

    new-instance v4, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;

    invoke-direct {v4}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;-><init>()V

    sget-object v5, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto/16 :goto_1

    .line 164
    :cond_a
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 166
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 167
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->LeftPane:I

    new-instance v4, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;

    invoke-direct {v4}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;-><init>()V

    sget-object v5, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 168
    sget v3, Lcom/yopeso/lieferando/R$id;->RightPane:I

    new-instance v4, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;

    invoke-direct {v4}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;-><init>()V

    const-string v5, "SearchRightFragment"

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto/16 :goto_1

    .line 171
    :cond_b
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 172
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->LeftPane:I

    new-instance v4, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;

    invoke-direct {v4}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;-><init>()V

    sget-object v5, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 175
    sget v3, Lcom/yopeso/lieferando/R$id;->RightPane:I

    new-instance v4, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;

    invoke-direct {v4}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;-><init>()V

    const-string v5, "SearchRightFragment"

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto/16 :goto_1

    .line 177
    :cond_c
    const/16 v2, 0x8

    invoke-virtual {v12, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 178
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->LeftPane:I

    new-instance v4, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;

    invoke-direct {v4}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;-><init>()V

    sget-object v5, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto/16 :goto_1
.end method

.method public onEvent(Lcom/yopeso/lieferando/events/RestaurantLoadEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/yopeso/lieferando/events/RestaurantLoadEvent;

    .prologue
    const/4 v4, 0x0

    .line 755
    invoke-static {}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->newInstance()Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;

    move-result-object v0

    .line 756
    .local v0, "frag":Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;
    sget v2, Lcom/yopeso/lieferando/R$id;->RightPane:I

    const-string v3, "RestaurantShoppingCartFragmentTablet"

    invoke-virtual {p0, v2, v0, v4, v3}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    .line 757
    sget v2, Lcom/yopeso/lieferando/R$id;->RightPane:I

    invoke-virtual {p0, v2}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 758
    .local v1, "frame":Landroid/widget/FrameLayout;
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 759
    return-void
.end method

.method public onEvent(Lcom/yopeso/lieferando/model/cart/CartItem;)V
    .locals 2
    .param p1, "item"    # Lcom/yopeso/lieferando/model/cart/CartItem;

    .prologue
    .line 749
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "MenuItemFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 750
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 752
    :cond_0
    return-void
.end method

.method public onLocationSelected(Lcom/yopeso/lieferando/model/LocationSuggestion;)V
    .locals 7
    .param p1, "ls"    # Lcom/yopeso/lieferando/model/LocationSuggestion;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 504
    const-string v3, "SearchActivityTablet"

    const-string v4, "onLocationSelected"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 507
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setAddressAtLocation(Lcom/yopeso/lieferando/model/LocationSuggestion;)V

    .line 508
    sget v3, Lcom/yopeso/lieferando/R$string;->pleaseWait:I

    invoke-virtual {p0, v3}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->showLoadingIndicator(I)V

    .line 510
    iput-object p1, p0, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->lsPREMIUM:Lcom/yopeso/lieferando/model/LocationSuggestion;

    .line 511
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v3

    new-instance v4, Lcom/yopeso/lieferando/net/requests/RestaurantRequest;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getLocationUrl()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/yopeso/lieferando/activity/tablet/SearchActivity$RestaurantListener;

    invoke-direct {v6, p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity$RestaurantListener;-><init>(Lcom/yopeso/lieferando/activity/tablet/SearchActivity;)V

    invoke-direct {v4, v5, v6}, Lcom/yopeso/lieferando/net/requests/RestaurantRequest;-><init>(Ljava/lang/String;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v3, v4}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 551
    :cond_0
    :goto_0
    return-void

    .line 515
    :cond_1
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setAddressAtLocation(Lcom/yopeso/lieferando/model/LocationSuggestion;)V

    .line 517
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->makeFilterDefault()V

    .line 519
    invoke-static {p1}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantListFragmentTablet;->newInstance(Lcom/yopeso/lieferando/model/LocationSuggestion;)Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantListFragmentTablet;

    move-result-object v2

    .line 520
    .local v2, "restListFrag":Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantListFragmentTablet;
    sget v3, Lcom/yopeso/lieferando/R$id;->LeftPane:I

    const-string v4, "RestaurantsFragment"

    invoke-virtual {p0, v3, v2, v6, v4}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    .line 522
    invoke-static {v6}, Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragmentDE;->getInstance(Z)Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragmentDE;

    move-result-object v0

    .line 523
    .local v0, "filterFrag":Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragmentDE;
    sget v3, Lcom/yopeso/lieferando/R$id;->RightPane:I

    sget-object v4, Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragmentDE;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v3, v0, v5, v4}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    .line 525
    sget v3, Lcom/yopeso/lieferando/R$id;->RightPane:I

    invoke-virtual {p0, v3}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 526
    .local v1, "frame":Landroid/widget/FrameLayout;
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v3

    if-nez v3, :cond_0

    .line 527
    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onLoginSuccess()V
    .locals 4

    .prologue
    .line 728
    invoke-super {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->onLoginSuccess()V

    .line 729
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->invalidateOptionsMenu()V

    .line 730
    sget v1, Lcom/yopeso/lieferando/R$id;->RightPane:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 731
    .local v0, "frame":Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 732
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$id;->RightPane:I

    new-instance v3, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;

    invoke-direct {v3}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 734
    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v1

    if-nez v1, :cond_1

    .line 735
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 737
    :cond_1
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v10, 0x0

    .line 431
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 432
    const-string v8, "SearchActivityTablet"

    const-string v9, "onNewIntent"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const-string v8, "cancel_notification_key"

    invoke-virtual {p1, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 434
    sput v10, Lcom/yopeso/lieferando/util/UserStore;->shown_messages:I

    .line 436
    :cond_0
    const-string v8, "push_list_action"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 437
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v8

    invoke-virtual {v8, v11, v12}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 438
    const-string v8, "key_location"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/yopeso/lieferando/model/LocationSuggestion;

    .line 439
    .local v3, "ls":Lcom/yopeso/lieferando/model/LocationSuggestion;
    new-instance v8, Lcom/yopeso/lieferando/activity/tablet/SearchActivity$LocationPushListener;

    invoke-direct {v8, p0, v11}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity$LocationPushListener;-><init>(Lcom/yopeso/lieferando/activity/tablet/SearchActivity;Lcom/yopeso/lieferando/activity/tablet/SearchActivity$LocationPushListener;)V

    invoke-virtual {p0, v3, v8}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->performRequest(Lcom/yopeso/lieferando/model/LocationSuggestion;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    .line 442
    .end local v3    # "ls":Lcom/yopeso/lieferando/model/LocationSuggestion;
    :cond_1
    const-string v8, "rest_list_action"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 443
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v8

    invoke-virtual {v8, v11, v12}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 444
    const-string v8, "key_location"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/yopeso/lieferando/model/LocationSuggestion;

    .line 445
    .restart local v3    # "ls":Lcom/yopeso/lieferando/model/LocationSuggestion;
    invoke-virtual {p0, v3}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->onLocationSelected(Lcom/yopeso/lieferando/model/LocationSuggestion;)V

    .line 447
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

    .line 448
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v7

    .line 449
    .local v7, "r":Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "clear_cart_key"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 450
    .local v1, "clearCart":Z
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v8

    invoke-virtual {v8, v11, v12}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 451
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "new_task_key"

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->newTask:Z

    .line 452
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v8

    invoke-interface {v8}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v8

    if-nez v8, :cond_3

    .line 453
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v8

    sget v9, Lcom/yopeso/lieferando/R$drawable;->actionbar_icon_short:I

    invoke-virtual {v8, v9}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V

    .line 458
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "deeplink_key"

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 459
    .local v2, "deeplink":Z
    invoke-virtual {p0, v7, v1, v2}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->onAddRestaurantDetailsFragment(Lcom/yopeso/lieferando/model/restaurant/Restaurant;ZZ)V

    .line 462
    .end local v1    # "clearCart":Z
    .end local v2    # "deeplink":Z
    .end local v7    # "r":Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    :cond_4
    if-eqz p1, :cond_5

    const-string v8, "go_to_order_action"

    invoke-virtual {p1, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 463
    const-string v8, "order_id_key"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 464
    .local v6, "orderId":Ljava/lang/String;
    const-string v8, "msg_key"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 471
    .local v4, "msg":Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 472
    .local v0, "b":Landroid/os/Bundle;
    const-string v8, "go_to_order_action"

    invoke-virtual {p1, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 473
    const-string v8, "order_id_key"

    invoke-virtual {v0, v8, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const-string v8, "msg_key"

    invoke-virtual {v0, v8, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const-string v8, "AccountActivityTABLET"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "onResume+ACTION_GO_TO_THE_ORDER:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "MSG:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    new-instance v5, Lcom/yopeso/lieferando/fragments/tablet/account/OrderFragmentTablet;

    invoke-direct {v5}, Lcom/yopeso/lieferando/fragments/tablet/account/OrderFragmentTablet;-><init>()V

    .line 477
    .local v5, "orderFragment":Lcom/yopeso/lieferando/fragments/tablet/account/OrderFragmentTablet;
    invoke-virtual {v5, v0}, Lcom/yopeso/lieferando/fragments/tablet/account/OrderFragmentTablet;->setArguments(Landroid/os/Bundle;)V

    .line 478
    const-string v8, "notification_id"

    const-wide/16 v10, 0x0

    invoke-virtual {p1, v8, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;->marAsReadPushMessage(J)V

    .line 479
    sget v8, Lcom/yopeso/lieferando/R$id;->RightPane:I

    sget-object v9, Lcom/yopeso/lieferando/fragments/tablet/account/OrderFragmentTablet;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v8, v5, v12, v9}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    .line 482
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v4    # "msg":Ljava/lang/String;
    .end local v5    # "orderFragment":Lcom/yopeso/lieferando/fragments/tablet/account/OrderFragmentTablet;
    .end local v6    # "orderId":Ljava/lang/String;
    :cond_5
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->navigateTo(Landroid/content/Intent;)V

    .line 483
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 422
    invoke-super {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->onPause()V

    .line 423
    const-string v0, "SearchActivityTablet"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 427
    :cond_0
    return-void
.end method

.method public onRestaurantSelected(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 5
    .param p1, "r"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    const/4 v4, 0x0

    .line 763
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 765
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    .line 766
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

    .line 767
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v2

    new-instance v3, Lcom/yopeso/lieferando/activity/tablet/SearchActivity$3;

    invoke-direct {v3, p0, v0, p1}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity$3;-><init>(Lcom/yopeso/lieferando/activity/tablet/SearchActivity;Lcom/yopeso/lieferando/model/cart/ShoppingCart;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    .line 778
    new-instance v4, Lcom/yopeso/lieferando/activity/tablet/SearchActivity$4;

    invoke-direct {v4, p0, p1}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity$4;-><init>(Lcom/yopeso/lieferando/activity/tablet/SearchActivity;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    .line 767
    invoke-static {v2, p0, v3, v4}, Lcom/yopeso/lieferando/dialogs/CartNotEmptyDialog;->getDialog(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v1

    .line 784
    .local v1, "cartDialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 798
    .end local v0    # "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    .end local v1    # "cartDialog":Landroid/app/AlertDialog;
    :goto_0
    return-void

    .line 786
    .restart local v0    # "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
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

    .line 787
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->clear()V

    .line 789
    :cond_1
    invoke-virtual {v0, p1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setRestaurant(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    .line 790
    invoke-virtual {p0, p1, v4, v4}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->onAddRestaurantDetailsFragment(Lcom/yopeso/lieferando/model/restaurant/Restaurant;ZZ)V

    goto :goto_0

    .line 795
    .end local v0    # "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    :cond_2
    invoke-virtual {p0, p1, v4, v4}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->onAddRestaurantDetailsFragment(Lcom/yopeso/lieferando/model/restaurant/Restaurant;ZZ)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v10, 0x0

    .line 307
    invoke-super {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->onResume()V

    .line 310
    const-string v7, "SearchActivityTablet"

    const-string v8, "onResume"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "cancel_notification_key"

    invoke-virtual {v7, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 312
    sput v10, Lcom/yopeso/lieferando/util/UserStore;->shown_messages:I

    .line 315
    :cond_0
    :try_start_0
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v7

    invoke-virtual {v7, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 316
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v7

    invoke-virtual {v7, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V
    :try_end_0
    .catch Lde/greenrobot/event/EventBusException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :cond_1
    :goto_0
    sget v7, Lcom/yopeso/lieferando/R$id;->RightPane:I

    invoke-virtual {p0, v7}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 322
    .local v2, "frame":Landroid/widget/FrameLayout;
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v7

    invoke-interface {v7}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 323
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v7

    if-nez v7, :cond_2

    .line 324
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v7

    sget v8, Lcom/yopeso/lieferando/R$id;->RightPane:I

    new-instance v9, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;

    invoke-direct {v9}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;-><init>()V

    invoke-virtual {v7, v8, v9}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 326
    :cond_2
    invoke-virtual {v2, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 340
    :goto_1
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "go_to_order_action"

    invoke-virtual {v7, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 341
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "order_id_key"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 342
    .local v6, "orderId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "msg_key"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 343
    .local v4, "msg":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "go_to_order_action"

    invoke-virtual {v7, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 349
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 350
    .local v0, "b":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "go_to_order_action"

    invoke-virtual {v7, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 351
    const-string v7, "order_id_key"

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v7, "msg_key"

    invoke-virtual {v0, v7, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string v7, "AccountActivityTABLET"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "onResume+ACTION_GO_TO_THE_ORDER:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "MSG:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    new-instance v5, Lcom/yopeso/lieferando/fragments/tablet/account/OrderFragmentTablet;

    invoke-direct {v5}, Lcom/yopeso/lieferando/fragments/tablet/account/OrderFragmentTablet;-><init>()V

    .line 355
    .local v5, "orderFragment":Lcom/yopeso/lieferando/fragments/tablet/account/OrderFragmentTablet;
    invoke-virtual {v5, v0}, Lcom/yopeso/lieferando/fragments/tablet/account/OrderFragmentTablet;->setArguments(Landroid/os/Bundle;)V

    .line 356
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "notification_id"

    const-wide/16 v10, 0x0

    invoke-virtual {v7, v8, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;->marAsReadPushMessage(J)V

    .line 357
    sget v7, Lcom/yopeso/lieferando/R$id;->RightPane:I

    sget-object v8, Lcom/yopeso/lieferando/fragments/tablet/account/OrderFragmentTablet;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v7, v5, v12, v8}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    .line 359
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v4    # "msg":Ljava/lang/String;
    .end local v5    # "orderFragment":Lcom/yopeso/lieferando/fragments/tablet/account/OrderFragmentTablet;
    .end local v6    # "orderId":Ljava/lang/String;
    :cond_3
    const-string v7, "push_list_action"

    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 360
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v7, v13, v12}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 361
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "key_location"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/yopeso/lieferando/model/LocationSuggestion;

    .line 362
    .local v3, "ls":Lcom/yopeso/lieferando/model/LocationSuggestion;
    new-instance v7, Lcom/yopeso/lieferando/activity/tablet/SearchActivity$LocationPushListener;

    invoke-direct {v7, p0, v13}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity$LocationPushListener;-><init>(Lcom/yopeso/lieferando/activity/tablet/SearchActivity;Lcom/yopeso/lieferando/activity/tablet/SearchActivity$LocationPushListener;)V

    invoke-virtual {p0, v3, v7}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->performRequest(Lcom/yopeso/lieferando/model/LocationSuggestion;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    .line 364
    .end local v3    # "ls":Lcom/yopeso/lieferando/model/LocationSuggestion;
    :cond_4
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->navigateTo(Landroid/content/Intent;)V

    .line 365
    return-void

    .line 318
    .end local v2    # "frame":Landroid/widget/FrameLayout;
    :catch_0
    move-exception v1

    .line 319
    .local v1, "e":Lde/greenrobot/event/EventBusException;
    invoke-virtual {v1}, Lde/greenrobot/event/EventBusException;->printStackTrace()V

    goto/16 :goto_0

    .line 329
    .end local v1    # "e":Lde/greenrobot/event/EventBusException;
    .restart local v2    # "frame":Landroid/widget/FrameLayout;
    :cond_5
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v7

    if-nez v7, :cond_6

    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 330
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v7

    sget v8, Lcom/yopeso/lieferando/R$id;->RightPane:I

    new-instance v9, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;

    invoke-direct {v9}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;-><init>()V

    invoke-virtual {v7, v8, v9}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 331
    invoke-virtual {v2, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 332
    :cond_6
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v7

    if-nez v7, :cond_7

    .line 333
    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 335
    :cond_7
    invoke-virtual {v2, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 291
    invoke-super {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->onStart()V

    .line 293
    iget-boolean v0, p0, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->isPushNotification:Z

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    new-instance v1, Lcom/yopeso/lieferando/activity/tablet/SearchActivity$LocationPushListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity$LocationPushListener;-><init>(Lcom/yopeso/lieferando/activity/tablet/SearchActivity;Lcom/yopeso/lieferando/activity/tablet/SearchActivity$LocationPushListener;)V

    invoke-virtual {p0, v0, v1}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->performRequest(Lcom/yopeso/lieferando/model/LocationSuggestion;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    .line 295
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->isPushNotification:Z

    .line 298
    :cond_0
    return-void
.end method
