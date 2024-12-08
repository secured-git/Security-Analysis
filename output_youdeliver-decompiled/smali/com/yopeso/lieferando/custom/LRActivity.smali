.class public Lcom/yopeso/lieferando/custom/LRActivity;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;
.source "LRActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yopeso/lieferando/custom/LRActivity$RestaurantListenerDeepLinking;,
        Lcom/yopeso/lieferando/custom/LRActivity$SettingsListener;,
        Lcom/yopeso/lieferando/custom/LRActivity$SettingsListenerDeeplink;
    }
.end annotation


# static fields
.field static final APP_URI:Landroid/net/Uri;

.field static final APP_URI_PL:Landroid/net/Uri;

.field static final WEB_URL:Landroid/net/Uri;

.field static final WEB_URL_PL:Landroid/net/Uri;

.field public static mealExtrasDialog:Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;


# instance fields
.field private mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mReqeustQueue:Lcom/android/volley/RequestQueue;

.field protected restaurantID:Ljava/lang/String;

.field protected restaurantIDSettings:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const-string v0, "android-app://com.yopeso.lieferando/lieferando-de/restaurant/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/yopeso/lieferando/custom/LRActivity;->APP_URI:Landroid/net/Uri;

    .line 88
    const-string v0, "https://lieferando.de/restaurant/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/yopeso/lieferando/custom/LRActivity;->WEB_URL:Landroid/net/Uri;

    .line 90
    const-string v0, "android-app://com.yourdelivery.pyszne/pyszne-pl/restaurant/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/yopeso/lieferando/custom/LRActivity;->APP_URI_PL:Landroid/net/Uri;

    .line 91
    const-string v0, "https://pyszne.pl/restaurant/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/yopeso/lieferando/custom/LRActivity;->WEB_URL_PL:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/custom/LRActivity;)V
    .locals 0

    .prologue
    .line 454
    invoke-direct {p0}, Lcom/yopeso/lieferando/custom/LRActivity;->showUpdateDialog()V

    return-void
.end method

.method public static cancelDialogs()V
    .locals 4

    .prologue
    .line 587
    sget-object v1, Lcom/yopeso/lieferando/custom/LRActivity;->mealExtrasDialog:Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;

    if-eqz v1, :cond_0

    .line 589
    :try_start_0
    sget-object v1, Lcom/yopeso/lieferando/custom/LRActivity;->mealExtrasDialog:Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->dismissAllowingStateLoss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 593
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    const/4 v1, 0x0

    sput-object v1, Lcom/yopeso/lieferando/custom/LRActivity;->mealExtrasDialog:Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;

    .line 595
    :cond_0
    return-void

    .line 590
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 591
    .restart local v0    # "e":Ljava/lang/Exception;
    const-class v1, Lcom/yopeso/lieferando/custom/LRActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mealExtrasDialog.dismissAllowingStateLoss():"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkForCrashes()V
    .locals 1

    .prologue
    .line 327
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->getHockeyId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/hockeyapp/android/CrashManager;->register(Landroid/content/Context;Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method private checkForUpdates()V
    .locals 1

    .prologue
    .line 331
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->getHockeyId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/hockeyapp/android/UpdateManager;->register(Landroid/app/Activity;Ljava/lang/String;)V

    .line 332
    return-void
.end method

.method private clearUserData()V
    .locals 4

    .prologue
    .line 393
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->clear()V

    .line 394
    invoke-virtual {p0}, Lcom/yopeso/lieferando/custom/LRActivity;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryAddress()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v1

    .line 395
    .local v1, "delivery":Lcom/yopeso/lieferando/model/user/Location;
    if-eqz v1, :cond_0

    .line 400
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/Location;->clearUserSpecificFields()V

    .line 402
    :cond_0
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedInWithFb()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 404
    :try_start_0
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 405
    .local v0, "currentSession":Lcom/facebook/Session;
    if-eqz v0, :cond_3

    .line 406
    invoke-virtual {v0}, Lcom/facebook/Session;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 407
    invoke-virtual {v0}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    .line 419
    :cond_1
    :goto_0
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/yopeso/lieferando/util/UserStore;->setLoggedInWithFb(Z)V

    .line 424
    .end local v0    # "currentSession":Lcom/facebook/Session;
    :cond_2
    :goto_1
    return-void

    .line 412
    .restart local v0    # "currentSession":Lcom/facebook/Session;
    :cond_3
    new-instance v0, Lcom/facebook/Session;

    .end local v0    # "currentSession":Lcom/facebook/Session;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/custom/LRActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/facebook/Session;-><init>(Landroid/content/Context;)V

    .line 413
    .restart local v0    # "currentSession":Lcom/facebook/Session;
    invoke-static {v0}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 415
    invoke-virtual {v0}, Lcom/facebook/Session;->closeAndClearTokenInformation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 420
    .end local v0    # "currentSession":Lcom/facebook/Session;
    :catch_0
    move-exception v2

    .line 421
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private performConfigRequest()V
    .locals 2

    .prologue
    .line 437
    new-instance v0, Lcom/yopeso/lieferando/net/requests/SettingsRequest;

    new-instance v1, Lcom/yopeso/lieferando/custom/LRActivity$SettingsListener;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/custom/LRActivity$SettingsListener;-><init>(Lcom/yopeso/lieferando/custom/LRActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/yopeso/lieferando/net/requests/SettingsRequest;-><init>(Landroid/content/Context;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    .line 438
    .local v0, "sr":Lcom/yopeso/lieferando/net/requests/SettingsRequest;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/net/requests/SettingsRequest;->setShouldCache(Z)V

    .line 439
    iget-object v1, p0, Lcom/yopeso/lieferando/custom/LRActivity;->mReqeustQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 440
    return-void
.end method

.method private showUpdateDialog()V
    .locals 4

    .prologue
    .line 455
    invoke-virtual {p0}, Lcom/yopeso/lieferando/custom/LRActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "update_dialog_tag"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 456
    .local v0, "updateDialog":Landroid/support/v4/app/Fragment;
    if-nez v0, :cond_0

    .line 457
    new-instance v1, Lcom/yopeso/lieferando/util/UpdateDialog;

    invoke-direct {v1}, Lcom/yopeso/lieferando/util/UpdateDialog;-><init>()V

    invoke-virtual {p0}, Lcom/yopeso/lieferando/custom/LRActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "update_dialog_tag"

    invoke-virtual {v1, v2, v3}, Lcom/yopeso/lieferando/util/UpdateDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 459
    :cond_0
    return-void
.end method


# virtual methods
.method public addNewFragment(ILandroid/support/v4/app/Fragment;)V
    .locals 5
    .param p1, "layoutId"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/yopeso/lieferando/custom/LRActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$anim;->fragment_fade_in:I

    sget v2, Lcom/yopeso/lieferando/R$anim;->fragment_fade_out:I

    sget v3, Lcom/yopeso/lieferando/R$anim;->fragment_fade_in:I

    sget v4, Lcom/yopeso/lieferando/R$anim;->fragment_fade_out:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 270
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 271
    return-void
.end method

.method protected addNewFragment(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .locals 5
    .param p1, "layoutId"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/yopeso/lieferando/custom/LRActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$anim;->fragment_fade_in:I

    sget v2, Lcom/yopeso/lieferando/R$anim;->fragment_fade_out:I

    sget v3, Lcom/yopeso/lieferando/R$anim;->fragment_fade_in:I

    sget v4, Lcom/yopeso/lieferando/R$anim;->fragment_fade_out:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 286
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 287
    return-void
.end method

.method public addNewFragment(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V
    .locals 5
    .param p1, "layoutId"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "addToBackStack"    # Z
    .param p4, "tag"    # Ljava/lang/String;

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/yopeso/lieferando/custom/LRActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$anim;->fragment_fade_in:I

    sget v2, Lcom/yopeso/lieferando/R$anim;->fragment_fade_out:I

    sget v3, Lcom/yopeso/lieferando/R$anim;->fragment_fade_in:I

    sget v4, Lcom/yopeso/lieferando/R$anim;->fragment_fade_out:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 304
    invoke-virtual {v0, p1, p2, p4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    if-eqz p3, :cond_0

    .end local p4    # "tag":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, p4}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 305
    return-void

    .line 304
    .restart local p4    # "tag":Ljava/lang/String;
    :cond_0
    const/4 p4, 0x0

    goto :goto_0
.end method

.method protected addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V
    .locals 5
    .param p1, "layoutId"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "addToBackStack"    # Z
    .param p4, "tag"    # Ljava/lang/String;

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/yopeso/lieferando/custom/LRActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 316
    .local v1, "tx":Landroid/support/v4/app/FragmentTransaction;
    if-eqz p3, :cond_0

    .line 317
    invoke-virtual {v1, p4}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 320
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :goto_0
    return-void

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Ljava/lang/Exception;
    const-class v2, Lcom/yopeso/lieferando/custom/LRActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "tx.commitAllowingStateLoss:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected dismissLoadingIndicator()V
    .locals 2

    .prologue
    .line 474
    iget-object v0, p0, Lcom/yopeso/lieferando/custom/LRActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/yopeso/lieferando/custom/LRActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 477
    :cond_0
    const-class v0, Lcom/yopeso/lieferando/custom/LRActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dismissLoadingIndicator"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    return-void
.end method

.method public doLogout()V
    .locals 2

    .prologue
    .line 377
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedInWithFb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    const-string v0, "fb"

    invoke-static {v0}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackLogOut(Ljava/lang/String;)V

    .line 383
    :goto_0
    invoke-direct {p0}, Lcom/yopeso/lieferando/custom/LRActivity;->clearUserData()V

    .line 384
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/events/AuthenticationEvent;

    invoke-direct {v1}, Lcom/yopeso/lieferando/events/AuthenticationEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 385
    invoke-static {p0}, Lcom/yopeso/lieferando/util/IntentNavUtils;->updateAddressWidgets(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/custom/LRActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 386
    const-class v0, Lcom/yopeso/lieferando/custom/LRActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "doLogout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    return-void

    .line 381
    :cond_0
    const-string v0, "email"

    invoke-static {v0}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackLogOut(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;
    .locals 1

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/yopeso/lieferando/custom/LRActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/LieferandoApplication;

    return-object v0
.end method

.method public getRequestQueue()Lcom/android/volley/RequestQueue;
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/yopeso/lieferando/custom/LRActivity;->mReqeustQueue:Lcom/android/volley/RequestQueue;

    if-nez v0, :cond_0

    .line 245
    const-class v0, Lcom/yopeso/lieferando/custom/LRActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Calling getRequestQueue() before onStart(). This will result in a null return"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/custom/LRActivity;->mReqeustQueue:Lcom/android/volley/RequestQueue;

    return-object v0
.end method

.method protected handleNetworkError(Lcom/android/volley/VolleyError;)V
    .locals 11
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    const/4 v6, 0x0

    .line 558
    invoke-virtual {p0}, Lcom/yopeso/lieferando/custom/LRActivity;->dismissLoadingIndicator()V

    .line 559
    const-class v4, Lcom/yopeso/lieferando/custom/LRActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "handleNetworkError:"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v4, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-nez v4, :cond_1

    .line 562
    sget v4, Lcom/yopeso/lieferando/R$string;->no_internet:I

    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 584
    :cond_0
    :goto_0
    return-void

    .line 563
    :cond_1
    instance-of v4, p1, Lcom/yopeso/lieferando/net/requests/base/ApiError;

    if-eqz v4, :cond_5

    move-object v0, p1

    .line 565
    check-cast v0, Lcom/yopeso/lieferando/net/requests/base/ApiError;

    .line 566
    .local v0, "apiError":Lcom/yopeso/lieferando/net/requests/base/ApiError;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/custom/LRActivity;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/SettingsContent;->getErrorCodes()Ljava/util/Map;

    move-result-object v3

    .line 568
    .local v3, "errors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/yopeso/lieferando/net/requests/base/ApiError;->getErrorCodes()[I

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Lcom/yopeso/lieferando/net/requests/base/ApiError;->getErrorCodes()[I

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_4

    .line 569
    const-string v2, ""

    .line 570
    .local v2, "errorMsg":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/net/requests/base/ApiError;->getErrorCodes()[I

    move-result-object v7

    array-length v8, v7

    move v5, v6

    :goto_1
    if-lt v5, v8, :cond_2

    .line 576
    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 570
    :cond_2
    aget v1, v7, v5

    .line 571
    .local v1, "code":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 572
    new-instance v9, Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " \n"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 570
    :cond_3
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_1

    .line 578
    .end local v1    # "code":I
    .end local v2    # "errorMsg":Ljava/lang/String;
    :cond_4
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/net/requests/base/ApiError;->getErrorCodes()[I

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/net/requests/base/ApiError;->getErrorCodes()[I

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_0

    iget-object v4, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget v4, v4, Lcom/android/volley/NetworkResponse;->statusCode:I

    const/16 v5, 0x196

    if-ne v4, v5, :cond_0

    .line 579
    sget v4, Lcom/yopeso/lieferando/R$string;->invalid_input:I

    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 582
    .end local v0    # "apiError":Lcom/yopeso/lieferando/net/requests/base/ApiError;
    .end local v3    # "errors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    sget v4, Lcom/yopeso/lieferando/R$string;->serverError:I

    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-static {p0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v1

    iput-object v1, p0, Lcom/yopeso/lieferando/custom/LRActivity;->mReqeustQueue:Lcom/android/volley/RequestQueue;

    .line 100
    invoke-virtual {p0}, Lcom/yopeso/lieferando/custom/LRActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 103
    :try_start_0
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isLive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    sget v1, Lcom/yopeso/lieferando/R$string;->live_relic:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/custom/LRActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/newrelic/agent/android/NewRelic;->withApplicationToken(Ljava/lang/String;)Lcom/newrelic/agent/android/NewRelic;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yopeso/lieferando/custom/LRActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/newrelic/agent/android/NewRelic;->start(Landroid/content/Context;)V

    .line 112
    :cond_0
    new-instance v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/google/android/gms/appindexing/AppIndex;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    iput-object v1, p0, Lcom/yopeso/lieferando/custom/LRActivity;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/custom/LRActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/custom/LRActivity;->onNewIntentDeepLink(Landroid/content/Intent;)V

    .line 118
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onNewIntentDeepLink(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 157
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/adjust/sdk/Adjust;->appWillOpenUrl(Landroid/net/Uri;)V

    .line 159
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "data":Ljava/lang/String;
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    .line 162
    iget-object v3, p0, Lcom/yopeso/lieferando/custom/LRActivity;->restaurantID:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/yopeso/lieferando/custom/LRActivity;->restaurantID:Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 163
    iput-object v7, p0, Lcom/yopeso/lieferando/custom/LRActivity;->restaurantID:Ljava/lang/String;

    .line 172
    :goto_0
    const-class v3, Lcom/yopeso/lieferando/custom/LRActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onNewIntentDeepLink:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/yopeso/lieferando/custom/LRActivity;->restaurantID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v3, p0, Lcom/yopeso/lieferando/custom/LRActivity;->restaurantID:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 174
    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v3

    if-nez v3, :cond_3

    .line 175
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/yopeso/lieferando/custom/LRActivity;->restaurantID:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/yopeso/lieferando/custom/LRActivity;->restaurantIDSettings:Ljava/lang/String;

    .line 177
    new-instance v2, Lcom/yopeso/lieferando/net/requests/SettingsRequest;

    new-instance v3, Lcom/yopeso/lieferando/custom/LRActivity$SettingsListenerDeeplink;

    invoke-direct {v3, p0}, Lcom/yopeso/lieferando/custom/LRActivity$SettingsListenerDeeplink;-><init>(Lcom/yopeso/lieferando/custom/LRActivity;)V

    invoke-direct {v2, p0, v3}, Lcom/yopeso/lieferando/net/requests/SettingsRequest;-><init>(Landroid/content/Context;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    .line 178
    .local v2, "sr":Lcom/yopeso/lieferando/net/requests/SettingsRequest;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/net/requests/SettingsRequest;->setShouldCache(Z)V

    .line 179
    iget-object v3, p0, Lcom/yopeso/lieferando/custom/LRActivity;->mReqeustQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v3, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 186
    .end local v2    # "sr":Lcom/yopeso/lieferando/net/requests/SettingsRequest;
    :cond_0
    :goto_1
    return-void

    .line 166
    :cond_1
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/yopeso/lieferando/custom/LRActivity;->restaurantID:Ljava/lang/String;

    goto :goto_0

    .line 170
    :cond_2
    iput-object v7, p0, Lcom/yopeso/lieferando/custom/LRActivity;->restaurantID:Ljava/lang/String;

    goto :goto_0

    .line 182
    :cond_3
    invoke-virtual {p0}, Lcom/yopeso/lieferando/custom/LRActivity;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v3

    new-instance v4, Lcom/yopeso/lieferando/net/requests/RestaurantRequest;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/yopeso/lieferando/custom/LRActivity;->restaurantID:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/yopeso/lieferando/custom/LRActivity$RestaurantListenerDeepLinking;

    invoke-direct {v6, p0}, Lcom/yopeso/lieferando/custom/LRActivity$RestaurantListenerDeepLinking;-><init>(Lcom/yopeso/lieferando/custom/LRActivity;)V

    invoke-direct {v4, v5, v6}, Lcom/yopeso/lieferando/net/requests/RestaurantRequest;-><init>(Ljava/lang/String;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v3, v4}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 183
    iput-object v7, p0, Lcom/yopeso/lieferando/custom/LRActivity;->restaurantID:Ljava/lang/String;

    goto :goto_1
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 599
    const-class v0, Lcom/yopeso/lieferando/custom/LRActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onOptionsItemSelected():"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 605
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 602
    :pswitch_0
    invoke-static {}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackBackNavi()V

    .line 603
    const/4 v0, 0x1

    goto :goto_0

    .line 600
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 365
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onPause()V

    .line 367
    invoke-static {}, Lcom/adjust/sdk/Adjust;->onPause()V

    .line 368
    const-class v0, Lcom/yopeso/lieferando/util/TrackingUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "track onPause"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/adjust/sdk/Adjust;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-virtual {p0}, Lcom/yopeso/lieferando/custom/LRActivity;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/LieferandoApplication;->startActivityTransitionTimer()V

    .line 371
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 336
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onResume()V

    .line 337
    invoke-static {}, Lcom/adjust/sdk/Adjust;->onResume()V

    .line 338
    const-class v0, Lcom/yopeso/lieferando/custom/LRActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :try_start_0
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->getFacebookId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackFacebookInstall(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :goto_0
    invoke-direct {p0}, Lcom/yopeso/lieferando/custom/LRActivity;->performConfigRequest()V

    .line 346
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isLive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    invoke-direct {p0}, Lcom/yopeso/lieferando/custom/LRActivity;->checkForCrashes()V

    .line 348
    invoke-direct {p0}, Lcom/yopeso/lieferando/custom/LRActivity;->checkForUpdates()V

    .line 353
    :cond_0
    invoke-static {}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackAdjustKahuna()V

    .line 354
    const-class v0, Lcom/yopeso/lieferando/util/TrackingUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "track onResume"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/adjust/sdk/Adjust;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-virtual {p0}, Lcom/yopeso/lieferando/custom/LRActivity;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v0

    iget-boolean v0, v0, Lcom/yopeso/lieferando/LieferandoApplication;->wasInBackground:Z

    if-eqz v0, :cond_1

    .line 358
    invoke-virtual {p0}, Lcom/yopeso/lieferando/custom/LRActivity;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/LieferandoApplication;->startSyncPrinters()V

    .line 361
    :cond_1
    invoke-virtual {p0}, Lcom/yopeso/lieferando/custom/LRActivity;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/LieferandoApplication;->stopActivityTransitionTimer()V

    .line 362
    return-void

    .line 341
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 430
    const-string v0, "BUG_FIX"

    const-string v1, "fix"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 433
    invoke-virtual {p0}, Lcom/yopeso/lieferando/custom/LRActivity;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/LieferandoApplication;->shouldSaveData()V

    .line 434
    return-void
.end method

.method protected onStart()V
    .locals 5

    .prologue
    .line 122
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onStart()V

    .line 123
    const-class v2, Lcom/yopeso/lieferando/custom/LRActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onStart"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-static {p0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v2

    iput-object v2, p0, Lcom/yopeso/lieferando/custom/LRActivity;->mReqeustQueue:Lcom/android/volley/RequestQueue;

    .line 125
    invoke-static {}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackActivityStart()V

    .line 126
    invoke-virtual {p0}, Lcom/yopeso/lieferando/custom/LRActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackFBStart(Landroid/content/Context;)V

    .line 129
    iget-object v2, p0, Lcom/yopeso/lieferando/custom/LRActivity;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 134
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    const-string v0, "pyszne.pl"

    .line 136
    .local v0, "title":Ljava/lang/String;
    const-string v2, "http://schema.org/ViewAction"

    sget-object v3, Lcom/yopeso/lieferando/custom/LRActivity;->WEB_URL_PL:Landroid/net/Uri;

    sget-object v4, Lcom/yopeso/lieferando/custom/LRActivity;->APP_URI_PL:Landroid/net/Uri;

    invoke-static {v2, v0, v3, v4}, Lcom/google/android/gms/appindexing/Action;->newAction(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)Lcom/google/android/gms/appindexing/Action;

    move-result-object v1

    .line 143
    .local v1, "viewAction":Lcom/google/android/gms/appindexing/Action;
    :goto_0
    sget-object v2, Lcom/google/android/gms/appindexing/AppIndex;->AppIndexApi:Lcom/google/android/gms/appindexing/AppIndexApi;

    iget-object v3, p0, Lcom/yopeso/lieferando/custom/LRActivity;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v2, v3, v1}, Lcom/google/android/gms/appindexing/AppIndexApi;->start(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/appindexing/Action;)Lcom/google/android/gms/common/api/PendingResult;

    .line 145
    invoke-virtual {p0}, Lcom/yopeso/lieferando/custom/LRActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/yopeso/lieferando/custom/LRActivity;->onNewIntentDeepLink(Landroid/content/Intent;)V

    .line 152
    return-void

    .line 139
    .end local v0    # "title":Ljava/lang/String;
    .end local v1    # "viewAction":Lcom/google/android/gms/appindexing/Action;
    :cond_0
    const-string v0, "lieferando.de"

    .line 140
    .restart local v0    # "title":Ljava/lang/String;
    const-string v2, "http://schema.org/ViewAction"

    sget-object v3, Lcom/yopeso/lieferando/custom/LRActivity;->WEB_URL:Landroid/net/Uri;

    sget-object v4, Lcom/yopeso/lieferando/custom/LRActivity;->APP_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v3, v4}, Lcom/google/android/gms/appindexing/Action;->newAction(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)Lcom/google/android/gms/appindexing/Action;

    move-result-object v1

    .restart local v1    # "viewAction":Lcom/google/android/gms/appindexing/Action;
    goto :goto_0
.end method

.method protected onStop()V
    .locals 5

    .prologue
    .line 204
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onStop()V

    .line 205
    invoke-virtual {p0}, Lcom/yopeso/lieferando/custom/LRActivity;->stopPendingRequests()V

    .line 206
    iget-object v2, p0, Lcom/yopeso/lieferando/custom/LRActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_0

    .line 207
    iget-object v2, p0, Lcom/yopeso/lieferando/custom/LRActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 209
    :cond_0
    const-class v2, Lcom/yopeso/lieferando/custom/LRActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onStop"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-static {}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackActivityStop()V

    .line 218
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 219
    const-string v0, "pyszne.pl"

    .line 220
    .local v0, "title":Ljava/lang/String;
    const-string v2, "http://schema.org/ViewAction"

    sget-object v3, Lcom/yopeso/lieferando/custom/LRActivity;->WEB_URL_PL:Landroid/net/Uri;

    sget-object v4, Lcom/yopeso/lieferando/custom/LRActivity;->APP_URI_PL:Landroid/net/Uri;

    invoke-static {v2, v0, v3, v4}, Lcom/google/android/gms/appindexing/Action;->newAction(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)Lcom/google/android/gms/appindexing/Action;

    move-result-object v1

    .line 227
    .local v1, "viewAction":Lcom/google/android/gms/appindexing/Action;
    :goto_0
    sget-object v2, Lcom/google/android/gms/appindexing/AppIndex;->AppIndexApi:Lcom/google/android/gms/appindexing/AppIndexApi;

    iget-object v3, p0, Lcom/yopeso/lieferando/custom/LRActivity;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v2, v3, v1}, Lcom/google/android/gms/appindexing/AppIndexApi;->end(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/appindexing/Action;)Lcom/google/android/gms/common/api/PendingResult;

    .line 228
    iget-object v2, p0, Lcom/yopeso/lieferando/custom/LRActivity;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 229
    return-void

    .line 224
    .end local v0    # "title":Ljava/lang/String;
    .end local v1    # "viewAction":Lcom/google/android/gms/appindexing/Action;
    :cond_1
    const-string v0, "lieferando.de"

    .line 225
    .restart local v0    # "title":Ljava/lang/String;
    const-string v2, "http://schema.org/ViewAction"

    sget-object v3, Lcom/yopeso/lieferando/custom/LRActivity;->WEB_URL:Landroid/net/Uri;

    sget-object v4, Lcom/yopeso/lieferando/custom/LRActivity;->APP_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v3, v4}, Lcom/google/android/gms/appindexing/Action;->newAction(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)Lcom/google/android/gms/appindexing/Action;

    move-result-object v1

    .restart local v1    # "viewAction":Lcom/google/android/gms/appindexing/Action;
    goto :goto_0
.end method

.method protected showLoadingIndicator(I)V
    .locals 2
    .param p1, "string"    # I

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/yopeso/lieferando/custom/LRActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 463
    .local v0, "msg":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/custom/LRActivity;->showLoadingIndicator(Ljava/lang/String;)V

    .line 464
    return-void
.end method

.method protected showLoadingIndicator(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 467
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yopeso/lieferando/custom/LRActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 468
    iget-object v0, p0, Lcom/yopeso/lieferando/custom/LRActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 469
    iget-object v0, p0, Lcom/yopeso/lieferando/custom/LRActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 470
    iget-object v0, p0, Lcom/yopeso/lieferando/custom/LRActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 471
    return-void
.end method

.method protected showServerMaintenanceDialog(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 444
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 445
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    if-eqz p1, :cond_0

    .end local p1    # "message":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$string;->yes:I

    new-instance v3, Lcom/yopeso/lieferando/custom/LRActivity$1;

    invoke-direct {v3, p0}, Lcom/yopeso/lieferando/custom/LRActivity$1;-><init>(Lcom/yopeso/lieferando/custom/LRActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 450
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 451
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 452
    return-void

    .line 445
    .restart local p1    # "message":Ljava/lang/String;
    :cond_0
    sget v1, Lcom/yopeso/lieferando/R$string;->maintenace:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/custom/LRActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method protected stopPendingRequests()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/yopeso/lieferando/custom/LRActivity;->mReqeustQueue:Lcom/android/volley/RequestQueue;

    new-instance v1, Lcom/yopeso/lieferando/net/filters/MatchAllFilter;

    invoke-direct {v1}, Lcom/yopeso/lieferando/net/filters/MatchAllFilter;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->cancelAll(Lcom/android/volley/RequestQueue$RequestFilter;)V

    .line 240
    iget-object v0, p0, Lcom/yopeso/lieferando/custom/LRActivity;->mReqeustQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->stop()V

    .line 241
    return-void
.end method
