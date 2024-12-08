.class public Lcom/yopeso/lieferando/SplashActivity;
.super Lcom/yopeso/lieferando/custom/LRActivity;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yopeso/lieferando/SplashActivity$DrawSplashTask;,
        Lcom/yopeso/lieferando/SplashActivity$PremiumRestoListener;,
        Lcom/yopeso/lieferando/SplashActivity$SettingsListener;
    }
.end annotation


# static fields
.field private static final MAX_SETTINGS_REQUESTS:I = 0xa


# instance fields
.field private mAnimationFinished:Z

.field private mCallsFinished:Z

.field private mLoadingPizza:Landroid/widget/ImageView;

.field private mTask:Lcom/yopeso/lieferando/SplashActivity$DrawSplashTask;

.field private request_count:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Lcom/yopeso/lieferando/custom/LRActivity;-><init>()V

    .line 58
    iput-boolean v0, p0, Lcom/yopeso/lieferando/SplashActivity;->mAnimationFinished:Z

    .line 59
    iput-boolean v0, p0, Lcom/yopeso/lieferando/SplashActivity;->mCallsFinished:Z

    .line 56
    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/SplashActivity;Z)V
    .locals 0

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/yopeso/lieferando/SplashActivity;->mAnimationFinished:Z

    return-void
.end method

.method static synthetic access$1(Lcom/yopeso/lieferando/SplashActivity;)V
    .locals 0

    .prologue
    .line 386
    invoke-direct {p0}, Lcom/yopeso/lieferando/SplashActivity;->startApplication()V

    return-void
.end method

.method static synthetic access$2(Lcom/yopeso/lieferando/SplashActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/SplashActivity;->showServerMaintenanceDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/yopeso/lieferando/SplashActivity;Z)V
    .locals 0

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/yopeso/lieferando/SplashActivity;->mCallsFinished:Z

    return-void
.end method

.method static synthetic access$4(Lcom/yopeso/lieferando/SplashActivity;)I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/yopeso/lieferando/SplashActivity;->request_count:I

    return v0
.end method

.method static synthetic access$5(Lcom/yopeso/lieferando/SplashActivity;I)V
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lcom/yopeso/lieferando/SplashActivity;->request_count:I

    return-void
.end method

.method static synthetic access$6(Lcom/yopeso/lieferando/SplashActivity;)V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/yopeso/lieferando/SplashActivity;->performConfigRequest()V

    return-void
.end method

.method private performConfigRequest()V
    .locals 6

    .prologue
    .line 197
    new-instance v2, Lcom/yopeso/lieferando/net/requests/SettingsRequest;

    new-instance v3, Lcom/yopeso/lieferando/SplashActivity$SettingsListener;

    invoke-direct {v3, p0}, Lcom/yopeso/lieferando/SplashActivity$SettingsListener;-><init>(Lcom/yopeso/lieferando/SplashActivity;)V

    invoke-direct {v2, p0, v3}, Lcom/yopeso/lieferando/net/requests/SettingsRequest;-><init>(Landroid/content/Context;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    .line 198
    .local v2, "request":Lcom/yopeso/lieferando/net/requests/SettingsRequest;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/net/requests/SettingsRequest;->setShouldCache(Z)V

    .line 199
    invoke-static {p0}, Lcom/yopeso/lieferando/util/NetworkUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 200
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 202
    new-instance v0, Lcom/yopeso/lieferando/net/requests/RestaurantsRequestPremium;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/SplashActivity;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v3

    new-instance v4, Lcom/yopeso/lieferando/SplashActivity$PremiumRestoListener;

    invoke-direct {v4, p0}, Lcom/yopeso/lieferando/SplashActivity$PremiumRestoListener;-><init>(Lcom/yopeso/lieferando/SplashActivity;)V

    invoke-direct {v0, v3, v4}, Lcom/yopeso/lieferando/net/requests/RestaurantsRequestPremium;-><init>(Lcom/yopeso/lieferando/LieferandoApplication;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    .line 203
    .local v0, "areasRequest":Lcom/yopeso/lieferando/net/requests/RestaurantsRequestPremium;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/SplashActivity;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 205
    .end local v0    # "areasRequest":Lcom/yopeso/lieferando/net/requests/RestaurantsRequestPremium;
    :cond_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/SplashActivity;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 227
    :goto_0
    return-void

    .line 207
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 208
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    sget v3, Lcom/yopeso/lieferando/R$string;->no_resp_try_again:I

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$string;->yes:I

    new-instance v5, Lcom/yopeso/lieferando/SplashActivity$1;

    invoke-direct {v5, p0}, Lcom/yopeso/lieferando/SplashActivity$1;-><init>(Lcom/yopeso/lieferando/SplashActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 213
    sget v4, Lcom/yopeso/lieferando/R$string;->open_wifi_settings:I

    new-instance v5, Lcom/yopeso/lieferando/SplashActivity$2;

    invoke-direct {v5, p0}, Lcom/yopeso/lieferando/SplashActivity$2;-><init>(Lcom/yopeso/lieferando/SplashActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 218
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/yopeso/lieferando/SplashActivity$3;

    invoke-direct {v4, p0}, Lcom/yopeso/lieferando/SplashActivity$3;-><init>(Lcom/yopeso/lieferando/SplashActivity;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 225
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private showUpdateDialog()V
    .locals 4

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/yopeso/lieferando/SplashActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "update_dialog_tag"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 410
    .local v0, "updateDialog":Landroid/support/v4/app/Fragment;
    if-nez v0, :cond_0

    .line 411
    new-instance v1, Lcom/yopeso/lieferando/util/UpdateDialog;

    invoke-direct {v1}, Lcom/yopeso/lieferando/util/UpdateDialog;-><init>()V

    invoke-virtual {p0}, Lcom/yopeso/lieferando/SplashActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "update_dialog_tag"

    invoke-virtual {v1, v2, v3}, Lcom/yopeso/lieferando/util/UpdateDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 413
    :cond_0
    return-void
.end method

.method private startApplication()V
    .locals 3

    .prologue
    .line 387
    iget-boolean v2, p0, Lcom/yopeso/lieferando/SplashActivity;->mCallsFinished:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/yopeso/lieferando/SplashActivity;->mAnimationFinished:Z

    if-eqz v2, :cond_0

    .line 388
    invoke-virtual {p0}, Lcom/yopeso/lieferando/SplashActivity;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v1

    .line 389
    .local v1, "settings":Lcom/yopeso/lieferando/model/SettingsContent;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/SettingsContent;->shouldUpdate()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 390
    invoke-direct {p0}, Lcom/yopeso/lieferando/SplashActivity;->showUpdateDialog()V

    .line 406
    .end local v1    # "settings":Lcom/yopeso/lieferando/model/SettingsContent;
    :cond_0
    :goto_0
    return-void

    .line 394
    .restart local v1    # "settings":Lcom/yopeso/lieferando/model/SettingsContent;
    :cond_1
    invoke-static {p0}, Lcom/yopeso/lieferando/util/DeviceUtils;->isHoneycombTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 396
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 397
    .local v0, "runApp":Landroid/content/Intent;
    const/high16 v2, 0x10000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 398
    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 403
    :goto_1
    invoke-virtual {p0}, Lcom/yopeso/lieferando/SplashActivity;->finish()V

    goto :goto_0

    .line 400
    .end local v0    # "runApp":Landroid/content/Intent;
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/yopeso/lieferando/activity/SearchActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 401
    .restart local v0    # "runApp":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/SplashActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 66
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/LRActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const-string v1, "start"

    invoke-static {v1}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackView(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/yopeso/lieferando/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x400000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 71
    invoke-virtual {p0}, Lcom/yopeso/lieferando/SplashActivity;->finish()V

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iput v3, p0, Lcom/yopeso/lieferando/SplashActivity;->request_count:I

    .line 80
    invoke-virtual {p0}, Lcom/yopeso/lieferando/SplashActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/ActionBar;->hide()V

    .line 82
    invoke-static {p0}, Lcom/yopeso/lieferando/util/DeviceUtils;->isHoneycombTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    invoke-virtual {p0, v3}, Lcom/yopeso/lieferando/SplashActivity;->setRequestedOrientation(I)V

    .line 87
    :goto_1
    sget v1, Lcom/yopeso/lieferando/R$layout;->splash:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/SplashActivity;->setContentView(I)V

    .line 90
    sget v1, Lcom/yopeso/lieferando/R$id;->PizzaAnim:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/yopeso/lieferando/SplashActivity;->mLoadingPizza:Landroid/widget/ImageView;

    .line 94
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 95
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "first_start"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "first_start"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 85
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :cond_2
    invoke-virtual {p0, v4}, Lcom/yopeso/lieferando/SplashActivity;->setRequestedOrientation(I)V

    goto :goto_1
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 190
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRActivity;->onPause()V

    .line 191
    iget-object v0, p0, Lcom/yopeso/lieferando/SplashActivity;->mTask:Lcom/yopeso/lieferando/SplashActivity$DrawSplashTask;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/yopeso/lieferando/SplashActivity;->mTask:Lcom/yopeso/lieferando/SplashActivity$DrawSplashTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/SplashActivity$DrawSplashTask;->cancel(Z)Z

    .line 194
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/yopeso/lieferando/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackOpenApp(Landroid/content/Context;)V

    .line 179
    new-instance v0, Lcom/yopeso/lieferando/SplashActivity$DrawSplashTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yopeso/lieferando/SplashActivity$DrawSplashTask;-><init>(Lcom/yopeso/lieferando/SplashActivity;Lcom/yopeso/lieferando/SplashActivity$DrawSplashTask;)V

    iput-object v0, p0, Lcom/yopeso/lieferando/SplashActivity;->mTask:Lcom/yopeso/lieferando/SplashActivity$DrawSplashTask;

    .line 180
    iget-object v0, p0, Lcom/yopeso/lieferando/SplashActivity;->mTask:Lcom/yopeso/lieferando/SplashActivity$DrawSplashTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    instance-of v2, v0, Landroid/os/AsyncTask;

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/SplashActivity$DrawSplashTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 182
    :goto_0
    invoke-direct {p0}, Lcom/yopeso/lieferando/SplashActivity;->performConfigRequest()V

    .line 184
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRActivity;->onResume()V

    .line 186
    return-void

    .line 180
    :cond_0
    check-cast v0, Landroid/os/AsyncTask;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 416
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRActivity;->onStop()V

    .line 418
    invoke-static {}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackActivityStart()V

    .line 419
    return-void
.end method
