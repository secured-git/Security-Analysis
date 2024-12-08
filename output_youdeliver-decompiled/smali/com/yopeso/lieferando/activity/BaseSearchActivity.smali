.class public abstract Lcom/yopeso/lieferando/activity/BaseSearchActivity;
.super Lcom/yopeso/lieferando/custom/FBActivity;
.source "BaseSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yopeso/lieferando/activity/BaseSearchActivity$AuthenticateListener;,
        Lcom/yopeso/lieferando/activity/BaseSearchActivity$DiscountsListner;,
        Lcom/yopeso/lieferando/activity/BaseSearchActivity$FacebookLoginListener;,
        Lcom/yopeso/lieferando/activity/BaseSearchActivity$GetUserDataListener;,
        Lcom/yopeso/lieferando/activity/BaseSearchActivity$ResetPasswordListener;,
        Lcom/yopeso/lieferando/activity/BaseSearchActivity$SettingsListener;,
        Lcom/yopeso/lieferando/activity/BaseSearchActivity$StampsListener;,
        Lcom/yopeso/lieferando/activity/BaseSearchActivity$StampsListenerResume;
    }
.end annotation


# static fields
.field public static final ACTION_VOUCHER:Ljava/lang/String; = "voucher_action"

.field public static final ACTION_WEBAD:Ljava/lang/String; = "webad_action"

.field public static final KEY_URL:Ljava/lang/String; = "key_url"

.field public static final KEY_VOUCHER:Ljava/lang/String; = "key_voucher"

.field public static final PREF_USER_LEARNED_DRAWER:Ljava/lang/String; = "navigation_drawer_learned"

.field public static final REQUEST_REGISTER:I = 0x4d2

.field public static menueItemSelected:Z


# instance fields
.field public drawler_onclick_listner:Landroid/widget/AdapterView$OnItemClickListener;

.field public mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field public mDrawerList:Landroid/widget/ListView;

.field public mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

.field public mDrawlerTitles:[Ljava/lang/String;

.field public mUserLearnedDrawer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    sput-boolean v0, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->menueItemSelected:Z

    .line 120
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/yopeso/lieferando/custom/FBActivity;-><init>()V

    .line 122
    new-instance v0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$1;

    invoke-direct {v0, p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity$1;-><init>(Lcom/yopeso/lieferando/activity/BaseSearchActivity;)V

    iput-object v0, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->drawler_onclick_listner:Landroid/widget/AdapterView$OnItemClickListener;

    .line 97
    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/activity/BaseSearchActivity;)V
    .locals 0

    .prologue
    .line 582
    invoke-direct {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->organizeBackStack()V

    return-void
.end method

.method static synthetic access$1(Lcom/yopeso/lieferando/activity/BaseSearchActivity;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->dismissLoadingIndicator()V

    return-void
.end method

.method static synthetic access$2(Lcom/yopeso/lieferando/activity/BaseSearchActivity;Lcom/android/volley/VolleyError;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->handleNetworkError(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method static synthetic access$3(Lcom/yopeso/lieferando/activity/BaseSearchActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->showServerMaintenanceDialog(Ljava/lang/String;)V

    return-void
.end method

.method private isFragmentOnTop(Ljava/lang/String;)Z
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 575
    const/4 v1, 0x0

    .line 579
    :goto_0
    return v1

    .line 577
    :cond_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v1

    invoke-interface {v1}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 578
    .local v0, "tagCurrent":Ljava/lang/String;
    const-class v1, Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method private organizeBackStack()V
    .locals 4

    .prologue
    .line 583
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    .line 584
    .local v0, "backStackCount":I
    if-lez v0, :cond_1

    .line 585
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v2

    invoke-interface {v2}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 586
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v2, "ProposeFragment"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "WebViews"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 588
    :cond_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 591
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private organizeBackStackLogout()V
    .locals 5

    .prologue
    .line 594
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    .line 595
    .local v0, "backStackCount":I
    if-lez v0, :cond_1

    .line 596
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v2

    invoke-interface {v2}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 597
    .local v1, "name":Ljava/lang/String;
    const-class v2, Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "name:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    if-eqz v1, :cond_1

    .line 599
    const-string v2, "ProposeFragment"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "WebViews"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 600
    const-string v2, "MainAccountFragment"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "MainAccountFragment"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/yopeso/lieferando/fragments/tablet/account/MainAddressFragmentTablet;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 601
    sget-object v2, Lcom/yopeso/lieferando/fragments/tablet/account/FavoriteFragmentTablet;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/yopeso/lieferando/fragments/tablet/account/OrderFragmentTablet;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 602
    sget-object v2, Lcom/yopeso/lieferando/fragments/tablet/account/MainFidelityPointsFragmentTablet;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 603
    :cond_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->removeBackStack()V

    .line 627
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private showLoginDialog()V
    .locals 9

    .prologue
    .line 632
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 633
    .local v2, "li":Landroid/view/LayoutInflater;
    sget v6, Lcom/yopeso/lieferando/R$layout;->login_dialog:I

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 634
    .local v1, "dialogView":Landroid/view/View;
    sget v6, Lcom/yopeso/lieferando/R$id;->EmailInput:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 635
    .local v5, "userText":Landroid/widget/EditText;
    sget v6, Lcom/yopeso/lieferando/R$id;->PasswordInput:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 636
    .local v4, "passwordText":Landroid/widget/EditText;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 637
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    sget v7, Lcom/yopeso/lieferando/R$string;->loginTitle:I

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    sget v7, Lcom/yopeso/lieferando/R$string;->cancel_button_text:I

    new-instance v8, Lcom/yopeso/lieferando/activity/BaseSearchActivity$2;

    invoke-direct {v8, p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity$2;-><init>(Lcom/yopeso/lieferando/activity/BaseSearchActivity;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 641
    const v7, 0x104000a

    new-instance v8, Lcom/yopeso/lieferando/activity/BaseSearchActivity$3;

    invoke-direct {v8, p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity$3;-><init>(Lcom/yopeso/lieferando/activity/BaseSearchActivity;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 646
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 647
    .local v3, "loginDialog":Landroid/app/AlertDialog;
    sget v6, Lcom/yopeso/lieferando/R$id;->LoginWithFbBtn:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/yopeso/lieferando/activity/BaseSearchActivity$4;

    invoke-direct {v7, p0, v3}, Lcom/yopeso/lieferando/activity/BaseSearchActivity$4;-><init>(Lcom/yopeso/lieferando/activity/BaseSearchActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 654
    new-instance v6, Lcom/yopeso/lieferando/activity/BaseSearchActivity$5;

    invoke-direct {v6, p0, v5, v4, v3}, Lcom/yopeso/lieferando/activity/BaseSearchActivity$5;-><init>(Lcom/yopeso/lieferando/activity/BaseSearchActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/AlertDialog;)V

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 674
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 675
    return-void
.end method


# virtual methods
.method protected checkConfigStatus()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 891
    const-class v2, Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "checkConfigStatus"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 893
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "config_status"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 895
    new-instance v1, Lcom/yopeso/lieferando/net/requests/SettingsRequest;

    new-instance v2, Lcom/yopeso/lieferando/activity/BaseSearchActivity$SettingsListener;

    invoke-direct {v2, p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity$SettingsListener;-><init>(Lcom/yopeso/lieferando/activity/BaseSearchActivity;)V

    invoke-direct {v1, p0, v2}, Lcom/yopeso/lieferando/net/requests/SettingsRequest;-><init>(Landroid/content/Context;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    .line 896
    .local v1, "sr":Lcom/yopeso/lieferando/net/requests/SettingsRequest;
    invoke-virtual {v1, v4}, Lcom/yopeso/lieferando/net/requests/SettingsRequest;->setShouldCache(Z)V

    .line 897
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 899
    .end local v1    # "sr":Lcom/yopeso/lieferando/net/requests/SettingsRequest;
    :cond_0
    return-void
.end method

.method public doFacebookLogin(Ljava/lang/String;)V
    .locals 3
    .param p1, "fbToken"    # Ljava/lang/String;

    .prologue
    .line 700
    sget v0, Lcom/yopeso/lieferando/R$string;->pleaseWait:I

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->showLoadingIndicator(I)V

    .line 701
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/activity/BaseSearchActivity$FacebookLoginListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/yopeso/lieferando/activity/BaseSearchActivity$FacebookLoginListener;-><init>(Lcom/yopeso/lieferando/activity/BaseSearchActivity;Lcom/yopeso/lieferando/activity/BaseSearchActivity$FacebookLoginListener;)V

    invoke-static {p1, v1}, Lcom/yopeso/lieferando/net/requests/LoginRequest;->withFacebook(Ljava/lang/String;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)Lcom/yopeso/lieferando/net/requests/LoginRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 702
    return-void
.end method

.method public doLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 686
    invoke-static {p1, p2}, Lcom/yopeso/lieferando/util/Base64Util;->getAuthBase64Header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 687
    .local v0, "auth":Ljava/lang/String;
    sget v1, Lcom/yopeso/lieferando/R$string;->pleaseWait:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->showLoadingIndicator(I)V

    .line 688
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    new-instance v2, Lcom/yopeso/lieferando/activity/BaseSearchActivity$AuthenticateListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/yopeso/lieferando/activity/BaseSearchActivity$AuthenticateListener;-><init>(Lcom/yopeso/lieferando/activity/BaseSearchActivity;Lcom/yopeso/lieferando/activity/BaseSearchActivity$AuthenticateListener;)V

    invoke-static {v0, v2}, Lcom/yopeso/lieferando/net/requests/LoginRequest;->withBase64(Ljava/lang/String;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)Lcom/yopeso/lieferando/net/requests/LoginRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 690
    return-void
.end method

.method public doLogout()V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 810
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/FBActivity;->doLogout()V

    .line 811
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->invalidateOptionsMenu()V

    .line 812
    invoke-direct {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->organizeBackStackLogout()V

    .line 819
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 788
    invoke-super {p0, p1, p2, p3}, Lcom/yopeso/lieferando/custom/FBActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 789
    const/16 v0, 0x4d2

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 790
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->onLoginSuccess()V

    .line 792
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 938
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->mDrawerList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 939
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    .line 944
    :goto_0
    return-void

    .line 942
    :cond_0
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/FBActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 749
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/FBActivity;->onCreate(Landroid/os/Bundle;)V

    .line 750
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "voucher_action"

    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 751
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->processVoucherIntent(Landroid/content/Intent;)V

    .line 753
    :cond_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "webad_action"

    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 754
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->processWebAdIntent(Landroid/content/Intent;)V

    .line 757
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 706
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 708
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$menu;->account_menu:I

    invoke-virtual {v2, v3, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 709
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v1

    .line 710
    .local v1, "user":Lcom/yopeso/lieferando/model/user/UserData;
    const-string v0, ""

    .line 711
    .local v0, "displayedName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 712
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/UserData;->getNickName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/UserData;->getNickName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 713
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/UserData;->getNickName()Ljava/lang/String;

    move-result-object v0

    .line 718
    :cond_0
    :goto_0
    sget v2, Lcom/yopeso/lieferando/R$id;->AccountMenuTitle:I

    invoke-interface {p1, v2}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/actionbarsherlock/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/view/MenuItem;

    .line 719
    const-class v2, Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onCreateOptionsMenu logged in"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    .end local v0    # "displayedName":Ljava/lang/String;
    .end local v1    # "user":Lcom/yopeso/lieferando/model/user/UserData;
    :goto_1
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isLive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 726
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$menu;->version_menu:I

    invoke-virtual {v2, v3, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 730
    :cond_1
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/FBActivity;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    .line 731
    const/4 v2, 0x1

    return v2

    .line 715
    .restart local v0    # "displayedName":Ljava/lang/String;
    .restart local v1    # "user":Lcom/yopeso/lieferando/model/user/UserData;
    :cond_2
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/UserData;->getPreName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 722
    .end local v0    # "displayedName":Ljava/lang/String;
    .end local v1    # "user":Lcom/yopeso/lieferando/model/user/UserData;
    :cond_3
    const-class v2, Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onCreateOptionsMenu logged out"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$menu;->login_menu:I

    invoke-virtual {v2, v3, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 948
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/FBActivity;->onDestroy()V

    .line 949
    invoke-static {}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackCloseApp()V

    .line 955
    return-void
.end method

.method protected onLoginSuccess()V
    .locals 2

    .prologue
    .line 822
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedInWithFb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 823
    const-string v0, "fb"

    invoke-static {v0}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackLogin(Ljava/lang/String;)V

    .line 830
    :goto_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->initDeliveryForUser(Lcom/yopeso/lieferando/model/user/UserData;)V

    .line 832
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/events/AuthenticationEvent;

    invoke-direct {v1}, Lcom/yopeso/lieferando/events/AuthenticationEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 833
    const-class v0, Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onLoginSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/events/FacebookUpdateEvent;

    invoke-direct {v1}, Lcom/yopeso/lieferando/events/FacebookUpdateEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 835
    invoke-static {p0}, Lcom/yopeso/lieferando/util/IntentNavUtils;->updateAddressWidgets(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 836
    return-void

    .line 826
    :cond_0
    const-string v0, "email"

    invoke-static {v0}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackLogin(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 763
    const-string v0, "voucher_action"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 764
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->processVoucherIntent(Landroid/content/Intent;)V

    .line 766
    :cond_0
    const-string v0, "webad_action"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 767
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->processWebAdIntent(Landroid/content/Intent;)V

    .line 769
    :cond_1
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/FBActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 770
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 13
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 356
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v5

    .line 357
    .local v5, "itemId":I
    const v9, 0x102002c

    if-ne v5, v9, :cond_0

    .line 358
    invoke-static {}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackBackNavi()V

    .line 359
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v9

    if-eqz v9, :cond_1

    .line 360
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->onBackPressed()V

    .line 361
    const/4 v9, 0x1

    .line 557
    :goto_0
    return v9

    .line 363
    :cond_0
    sget v9, Lcom/yopeso/lieferando/R$id;->LoginMenu:I

    if-ne v5, v9, :cond_2

    .line 364
    invoke-direct {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->showLoginDialog()V

    .line 557
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/FBActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v9

    goto :goto_0

    .line 365
    :cond_2
    sget v9, Lcom/yopeso/lieferando/R$id;->ForgotPassword:I

    if-ne v5, v9, :cond_3

    .line 366
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->showForgotPasswordDialog()V

    goto :goto_1

    .line 367
    :cond_3
    sget v9, Lcom/yopeso/lieferando/R$id;->LogoutMenu:I

    if-ne v5, v9, :cond_4

    .line 368
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->doLogout()V

    goto :goto_1

    .line 369
    :cond_4
    sget v9, Lcom/yopeso/lieferando/R$id;->AccountMenu:I

    if-ne v5, v9, :cond_6

    .line 370
    invoke-static {}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackViewAccount()V

    .line 371
    invoke-static {p0}, Lcom/yopeso/lieferando/util/DeviceUtils;->isHoneycombTablet(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 374
    const/4 v9, 0x1

    sput-boolean v9, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->menueItemSelected:Z

    .line 375
    const-string v9, "MainAccountFragment"

    invoke-direct {p0, v9}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->isFragmentOnTop(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 376
    new-instance v6, Lcom/yopeso/lieferando/fragments/tablet/account/MainAccountFragmentTablet;

    invoke-direct {v6}, Lcom/yopeso/lieferando/fragments/tablet/account/MainAccountFragmentTablet;-><init>()V

    .line 377
    .local v6, "mainAccountFragmentTablet":Lcom/yopeso/lieferando/fragments/tablet/account/MainAccountFragmentTablet;
    sget v9, Lcom/yopeso/lieferando/R$id;->RightPane:I

    const/4 v10, 0x1

    const-string v11, "MainAccountFragment"

    invoke-virtual {p0, v9, v6, v10, v11}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    goto :goto_1

    .line 383
    .end local v6    # "mainAccountFragmentTablet":Lcom/yopeso/lieferando/fragments/tablet/account/MainAccountFragmentTablet;
    :cond_5
    const-string v9, "MainAccountFragment"

    invoke-direct {p0, v9}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->isFragmentOnTop(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 384
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v9

    sget v10, Lcom/yopeso/lieferando/R$id;->Content:I

    new-instance v11, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-direct {v11}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;-><init>()V

    const-string v12, "MainAccountFragment"

    invoke-virtual {v9, v10, v11, v12}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v9

    const-string v10, "MainAccountFragment"

    invoke-virtual {v9, v10}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_1

    .line 388
    :cond_6
    sget v9, Lcom/yopeso/lieferando/R$id;->RegisterMenu:I

    if-ne v5, v9, :cond_7

    .line 389
    new-instance v9, Landroid/content/Intent;

    const-class v10, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;

    invoke-direct {v9, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v10, 0x4d2

    invoke-virtual {p0, v9, v10}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 390
    :cond_7
    sget v9, Lcom/yopeso/lieferando/R$id;->VersionMenu:I

    if-ne v5, v9, :cond_8

    .line 391
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 394
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    :try_start_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 395
    .local v4, "info":Landroid/content/pm/PackageInfo;
    const-string v9, "Version"

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 396
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v10

    invoke-interface {v10}, Lcom/yopeso/lieferando/net/config/IConfig;->getVersionName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 397
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 398
    .end local v4    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    .line 399
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 401
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_8
    sget v9, Lcom/yopeso/lieferando/R$id;->AddressMenu:I

    if-ne v5, v9, :cond_a

    .line 402
    invoke-static {}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackViewAddress()V

    .line 403
    invoke-static {p0}, Lcom/yopeso/lieferando/util/DeviceUtils;->isHoneycombTablet(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 406
    const-class v9, Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "itemId == R.id.AddressMenu:start MainAddressFragmentTablet"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const/4 v9, 0x1

    sput-boolean v9, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->menueItemSelected:Z

    .line 408
    sget-object v9, Lcom/yopeso/lieferando/fragments/tablet/account/MainAddressFragmentTablet;->TAG:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->isFragmentOnTop(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 409
    sget v9, Lcom/yopeso/lieferando/R$id;->RightPane:I

    new-instance v10, Lcom/yopeso/lieferando/fragments/tablet/account/MainAddressFragmentTablet;

    invoke-direct {v10}, Lcom/yopeso/lieferando/fragments/tablet/account/MainAddressFragmentTablet;-><init>()V

    const/4 v11, 0x1

    sget-object v12, Lcom/yopeso/lieferando/fragments/tablet/account/MainAddressFragmentTablet;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    goto/16 :goto_1

    .line 414
    :cond_9
    sget-object v9, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->TAG:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->isFragmentOnTop(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 415
    sget v9, Lcom/yopeso/lieferando/R$id;->Content:I

    new-instance v10, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;

    invoke-direct {v10}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;-><init>()V

    const/4 v11, 0x1

    sget-object v12, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->addNewFragment(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    goto/16 :goto_1

    .line 418
    :cond_a
    sget v9, Lcom/yopeso/lieferando/R$id;->FavoritesMenu:I

    if-ne v5, v9, :cond_c

    .line 419
    invoke-static {}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackViewFavourites()V

    .line 420
    invoke-static {p0}, Lcom/yopeso/lieferando/util/DeviceUtils;->isHoneycombTablet(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 423
    const/4 v9, 0x1

    sput-boolean v9, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->menueItemSelected:Z

    .line 424
    sget-object v9, Lcom/yopeso/lieferando/fragments/tablet/account/FavoriteFragmentTablet;->TAG:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->isFragmentOnTop(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 425
    sget v9, Lcom/yopeso/lieferando/R$id;->RightPane:I

    new-instance v10, Lcom/yopeso/lieferando/fragments/tablet/account/FavoriteFragmentTablet;

    invoke-direct {v10}, Lcom/yopeso/lieferando/fragments/tablet/account/FavoriteFragmentTablet;-><init>()V

    const/4 v11, 0x1

    sget-object v12, Lcom/yopeso/lieferando/fragments/tablet/account/FavoriteFragmentTablet;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    goto/16 :goto_1

    .line 431
    :cond_b
    sget-object v9, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->TAG:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->isFragmentOnTop(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 432
    sget v9, Lcom/yopeso/lieferando/R$id;->Content:I

    new-instance v10, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;

    invoke-direct {v10}, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;-><init>()V

    const/4 v11, 0x1

    sget-object v12, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->addNewFragment(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    goto/16 :goto_1

    .line 437
    :cond_c
    sget v9, Lcom/yopeso/lieferando/R$id;->OrdersMenu:I

    if-ne v5, v9, :cond_e

    .line 438
    invoke-static {}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackViewOrders()V

    .line 439
    invoke-static {p0}, Lcom/yopeso/lieferando/util/DeviceUtils;->isHoneycombTablet(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 442
    const/4 v9, 0x1

    sput-boolean v9, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->menueItemSelected:Z

    .line 443
    sget-object v9, Lcom/yopeso/lieferando/fragments/tablet/account/OrderFragmentTablet;->TAG:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->isFragmentOnTop(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 444
    sget v9, Lcom/yopeso/lieferando/R$id;->RightPane:I

    new-instance v10, Lcom/yopeso/lieferando/fragments/tablet/account/OrderFragmentTablet;

    invoke-direct {v10}, Lcom/yopeso/lieferando/fragments/tablet/account/OrderFragmentTablet;-><init>()V

    const/4 v11, 0x1

    sget-object v12, Lcom/yopeso/lieferando/fragments/tablet/account/OrderFragmentTablet;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    goto/16 :goto_1

    .line 450
    :cond_d
    sget-object v9, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->TAG:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->isFragmentOnTop(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 451
    sget v9, Lcom/yopeso/lieferando/R$id;->Content:I

    new-instance v10, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;

    invoke-direct {v10}, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;-><init>()V

    const/4 v11, 0x1

    sget-object v12, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->addNewFragment(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    goto/16 :goto_1

    .line 456
    :cond_e
    sget v9, Lcom/yopeso/lieferando/R$id;->FidelityPointsMenu:I

    if-ne v5, v9, :cond_10

    .line 457
    invoke-static {}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackViewFidelity()V

    .line 458
    invoke-static {p0}, Lcom/yopeso/lieferando/util/DeviceUtils;->isHoneycombTablet(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 461
    const/4 v9, 0x1

    sput-boolean v9, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->menueItemSelected:Z

    .line 463
    sget-object v9, Lcom/yopeso/lieferando/fragments/tablet/account/MainFidelityPointsFragmentTablet;->TAG:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->isFragmentOnTop(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 464
    sget v9, Lcom/yopeso/lieferando/R$id;->RightPane:I

    new-instance v10, Lcom/yopeso/lieferando/fragments/tablet/account/MainFidelityPointsFragmentTablet;

    invoke-direct {v10}, Lcom/yopeso/lieferando/fragments/tablet/account/MainFidelityPointsFragmentTablet;-><init>()V

    const/4 v11, 0x1

    sget-object v12, Lcom/yopeso/lieferando/fragments/tablet/account/MainFidelityPointsFragmentTablet;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    goto/16 :goto_1

    .line 470
    :cond_f
    sget-object v9, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->TAG:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->isFragmentOnTop(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 471
    sget v9, Lcom/yopeso/lieferando/R$id;->Content:I

    new-instance v10, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;

    invoke-direct {v10}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;-><init>()V

    const/4 v11, 0x1

    sget-object v12, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->addNewFragment(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    goto/16 :goto_1

    .line 475
    :cond_10
    sget v9, Lcom/yopeso/lieferando/R$id;->StampsMenu:I

    if-ne v5, v9, :cond_12

    .line 476
    invoke-static {}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackViewStamps()V

    .line 477
    invoke-static {p0}, Lcom/yopeso/lieferando/util/DeviceUtils;->isHoneycombTablet(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 480
    const/4 v9, 0x1

    sput-boolean v9, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->menueItemSelected:Z

    .line 481
    sget-object v9, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->TAG:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->isFragmentOnTop(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 482
    sget v9, Lcom/yopeso/lieferando/R$id;->RightPane:I

    new-instance v10, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;

    invoke-direct {v10}, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;-><init>()V

    const/4 v11, 0x1

    sget-object v12, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    goto/16 :goto_1

    .line 488
    :cond_11
    sget-object v9, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->TAG:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->isFragmentOnTop(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 489
    sget v9, Lcom/yopeso/lieferando/R$id;->Content:I

    new-instance v10, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;

    invoke-direct {v10}, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;-><init>()V

    const/4 v11, 0x1

    sget-object v12, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->addNewFragment(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    goto/16 :goto_1

    .line 493
    :cond_12
    sget v9, Lcom/yopeso/lieferando/R$id;->BonusShopMenu:I

    if-ne v5, v9, :cond_13

    .line 494
    invoke-static {}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackViewBonusShop()V

    .line 495
    new-instance v0, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->getBonusShopUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v0, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 496
    .local v0, "browserIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 497
    .end local v0    # "browserIntent":Landroid/content/Intent;
    :cond_13
    sget v9, Lcom/yopeso/lieferando/R$id;->InboxMenu:I

    if-ne v5, v9, :cond_16

    .line 498
    const-string v9, "inbox"

    invoke-static {v9}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackView(Ljava/lang/String;)V

    .line 500
    sget-object v9, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;->TAG:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->isFragmentOnTop(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 501
    invoke-static {p0}, Lcom/yopeso/lieferando/util/DeviceUtils;->isHoneycombTablet(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 503
    sget v9, Lcom/yopeso/lieferando/R$id;->RightPane:I

    invoke-virtual {p0, v9}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 504
    .local v3, "frame":Landroid/widget/FrameLayout;
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_14

    .line 506
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 508
    :cond_14
    sget v9, Lcom/yopeso/lieferando/R$id;->RightPane:I

    new-instance v10, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;

    invoke-direct {v10}, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;-><init>()V

    const/4 v11, 0x1

    sget-object v12, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    goto/16 :goto_1

    .line 511
    .end local v3    # "frame":Landroid/widget/FrameLayout;
    :cond_15
    sget v9, Lcom/yopeso/lieferando/R$id;->Content:I

    new-instance v10, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;

    invoke-direct {v10}, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;-><init>()V

    const/4 v11, 0x1

    sget-object v12, Lcom/yopeso/lieferando/fragments/account/PushMessagesFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->addNewFragment(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    goto/16 :goto_1

    .line 514
    :cond_16
    sget v9, Lcom/yopeso/lieferando/R$id;->MoreMenu:I

    if-ne v5, v9, :cond_17

    .line 515
    const-string v9, "more"

    invoke-static {v9}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackView(Ljava/lang/String;)V

    .line 516
    iget-object v9, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(I)V

    goto/16 :goto_1

    .line 517
    :cond_17
    sget v9, Lcom/yopeso/lieferando/R$id;->HomeMenu:I

    if-ne v5, v9, :cond_19

    .line 518
    invoke-static {p0}, Lcom/yopeso/lieferando/util/DeviceUtils;->isHoneycombTablet(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 524
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->removeBackStack()V

    goto/16 :goto_1

    .line 528
    :cond_18
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->removeBackStack()V

    goto/16 :goto_1

    .line 531
    :cond_19
    sget v9, Lcom/yopeso/lieferando/R$id;->menu_add_address:I

    if-ne v5, v9, :cond_1b

    .line 532
    const-class v9, Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v9, "itemId == R.id.menu_add_address:"

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v9

    sget v12, Lcom/yopeso/lieferando/R$id;->menu_add_address:I

    if-ne v9, v12, :cond_1a

    const/4 v9, 0x1

    :goto_2
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    invoke-static {p0}, Lcom/yopeso/lieferando/util/DeviceUtils;->isHoneycombTablet(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 535
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v9

    sget v10, Lcom/yopeso/lieferando/R$id;->RightPane:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->newInstance(ZI)Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    move-result-object v11

    sget-object v12, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v9, v10, v11, v12}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v9

    .line 536
    sget-object v10, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 537
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 532
    :cond_1a
    const/4 v9, 0x0

    goto :goto_2

    .line 539
    :cond_1b
    sget v9, Lcom/yopeso/lieferando/R$id;->AccountMenuTitle:I

    if-eq v5, v9, :cond_1c

    sget v9, Lcom/yopeso/lieferando/R$id;->LoginMenuTitle:I

    if-ne v5, v9, :cond_1

    .line 541
    :cond_1c
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getSubMenu()Lcom/actionbarsherlock/view/SubMenu;

    move-result-object v9

    sget v10, Lcom/yopeso/lieferando/R$id;->InboxMenu:I

    invoke-interface {v9, v10}, Lcom/actionbarsherlock/view/SubMenu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v7

    .line 543
    .local v7, "menuItem1":Lcom/actionbarsherlock/view/MenuItem;
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getUnreadMessagesCount()I

    move-result v8

    .line 544
    .local v8, "unread_messages":I
    if-lez v8, :cond_1

    .line 545
    new-instance v9, Ljava/lang/StringBuilder;

    sget v10, Lcom/yopeso/lieferando/R$string;->inbox:I

    invoke-virtual {p0, v10}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "    ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Lcom/actionbarsherlock/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/view/MenuItem;

    goto/16 :goto_1
.end method

.method public onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 737
    sget v2, Lcom/yopeso/lieferando/R$id;->InboxMenu:I

    invoke-interface {p1, v2}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    .line 739
    .local v0, "menuItem":Lcom/actionbarsherlock/view/MenuItem;
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getUnreadMessagesCount()I

    move-result v1

    .line 740
    .local v1, "unread_messages":I
    if-lez v1, :cond_0

    .line 741
    new-instance v2, Ljava/lang/StringBuilder;

    sget v3, Lcom/yopeso/lieferando/R$string;->inbox:I

    invoke-virtual {p0, v3}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "    ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/actionbarsherlock/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/view/MenuItem;

    .line 743
    :cond_0
    const-class v2, Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onPrepareOptionsMenu"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/FBActivity;->onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v2

    return v2
.end method

.method protected onResume()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 775
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/FBActivity;->onResume()V

    .line 776
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->checkConfigStatus()V

    .line 777
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->invalidateOptionsMenu()V

    .line 779
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v0

    if-nez v0, :cond_0

    .line 780
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/StampCustomerRequest;

    const-string v2, "/customer/stamps/current"

    new-instance v3, Lcom/yopeso/lieferando/activity/BaseSearchActivity$StampsListenerResume;

    invoke-direct {v3, p0, v4}, Lcom/yopeso/lieferando/activity/BaseSearchActivity$StampsListenerResume;-><init>(Lcom/yopeso/lieferando/activity/BaseSearchActivity;Lcom/yopeso/lieferando/activity/BaseSearchActivity$StampsListenerResume;)V

    invoke-direct {v1, v2, v3}, Lcom/yopeso/lieferando/net/requests/StampCustomerRequest;-><init>(Ljava/lang/String;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v1}, Lcom/yopeso/lieferando/net/requests/StampCustomerRequest;->withAuth()Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 781
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/GetUserDiscountsRequest;

    new-instance v2, Lcom/yopeso/lieferando/activity/BaseSearchActivity$DiscountsListner;

    invoke-direct {v2, p0, v4}, Lcom/yopeso/lieferando/activity/BaseSearchActivity$DiscountsListner;-><init>(Lcom/yopeso/lieferando/activity/BaseSearchActivity;Lcom/yopeso/lieferando/activity/BaseSearchActivity$DiscountsListner;)V

    invoke-direct {v1, v2}, Lcom/yopeso/lieferando/net/requests/GetUserDiscountsRequest;-><init>(Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v1}, Lcom/yopeso/lieferando/net/requests/GetUserDiscountsRequest;->withAuth()Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 783
    :cond_0
    return-void
.end method

.method protected performRequest(Lcom/yopeso/lieferando/model/LocationSuggestion;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V
    .locals 2
    .param p1, "ls"    # Lcom/yopeso/lieferando/model/LocationSuggestion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yopeso/lieferando/model/LocationSuggestion;",
            "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
            "<",
            "Lcom/yopeso/lieferando/model/LocationSuggestion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 886
    .local p2, "listener":Lcom/yopeso/lieferando/net/requests/base/VolleyListener;, "Lcom/yopeso/lieferando/net/requests/base/VolleyListener<Lcom/yopeso/lieferando/model/LocationSuggestion;>;"
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/LocationPushRequest;

    invoke-direct {v1, p1, p2}, Lcom/yopeso/lieferando/net/requests/LocationPushRequest;-><init>(Lcom/yopeso/lieferando/model/LocationSuggestion;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 887
    return-void
.end method

.method protected performResetpassword(Ljava/lang/String;)V
    .locals 6
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 876
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 878
    .local v1, "postData":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "email"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 882
    :goto_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    new-instance v3, Lcom/yopeso/lieferando/net/requests/ResetPasswordRequest;

    new-instance v4, Lcom/yopeso/lieferando/activity/BaseSearchActivity$ResetPasswordListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/yopeso/lieferando/activity/BaseSearchActivity$ResetPasswordListener;-><init>(Lcom/yopeso/lieferando/activity/BaseSearchActivity;Lcom/yopeso/lieferando/activity/BaseSearchActivity$ResetPasswordListener;)V

    invoke-direct {v3, v1, v4}, Lcom/yopeso/lieferando/net/requests/ResetPasswordRequest;-><init>(Lorg/json/JSONObject;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v2, v3}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 883
    return-void

    .line 879
    :catch_0
    move-exception v0

    .line 880
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method protected processVoucherIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 795
    const-string v2, "key_voucher"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/user/BonusVoucher;

    .line 796
    .local v0, "voucher":Lcom/yopeso/lieferando/model/user/BonusVoucher;
    invoke-static {v0}, Lcom/yopeso/lieferando/dialogs/VoucherDialog;->newInstance(Lcom/yopeso/lieferando/model/user/BonusVoucher;)Lcom/yopeso/lieferando/dialogs/VoucherDialog;

    move-result-object v1

    .line 797
    .local v1, "voucherDialog":Lcom/yopeso/lieferando/dialogs/VoucherDialog;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/yopeso/lieferando/dialogs/VoucherDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 798
    return-void
.end method

.method protected processWebAdIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 801
    const-string v1, "key_url"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 802
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Lcom/yopeso/lieferando/dialogs/WebAdDialog;->newInstance(Ljava/lang/String;)Lcom/yopeso/lieferando/dialogs/WebAdDialog;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "web_dialog_fragment"

    invoke-virtual {v1, v2, v3}, Lcom/yopeso/lieferando/dialogs/WebAdDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 803
    return-void
.end method

.method protected removeBackStack()V
    .locals 3

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 571
    return-void
.end method

.method public showForgotPasswordDialog()V
    .locals 8

    .prologue
    .line 839
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 840
    .local v4, "inflater":Landroid/view/LayoutInflater;
    sget v5, Lcom/yopeso/lieferando/R$layout;->forgot_password_dialog:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 841
    .local v2, "dialog":Landroid/view/View;
    sget v5, Lcom/yopeso/lieferando/R$id;->EmailAddress:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 842
    .local v1, "costumerEmailAddress":Landroid/widget/EditText;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 843
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    sget v6, Lcom/yopeso/lieferando/R$string;->forgot_password_title_dialog:I

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    sget v6, Lcom/yopeso/lieferando/R$string;->cancel_button_text:I

    new-instance v7, Lcom/yopeso/lieferando/activity/BaseSearchActivity$6;

    invoke-direct {v7, p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity$6;-><init>(Lcom/yopeso/lieferando/activity/BaseSearchActivity;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 847
    sget v6, Lcom/yopeso/lieferando/R$string;->ok_button_text:I

    new-instance v7, Lcom/yopeso/lieferando/activity/BaseSearchActivity$7;

    invoke-direct {v7, p0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity$7;-><init>(Lcom/yopeso/lieferando/activity/BaseSearchActivity;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 852
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 853
    .local v3, "forgotPasswordDialog":Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 855
    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    new-instance v6, Lcom/yopeso/lieferando/activity/BaseSearchActivity$8;

    invoke-direct {v6, p0, v1, v3}, Lcom/yopeso/lieferando/activity/BaseSearchActivity$8;-><init>(Lcom/yopeso/lieferando/activity/BaseSearchActivity;Landroid/widget/EditText;Landroid/app/AlertDialog;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 873
    return-void
.end method
