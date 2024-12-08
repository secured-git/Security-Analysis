.class public Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;
.super Lcom/yopeso/lieferando/custom/FBActivity;
.source "RegistrationActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity$DiscountsListner;,
        Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity$FacebookLoginListener;,
        Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity$RegisterListener;,
        Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity$StampsListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/yopeso/lieferando/custom/FBActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;Lcom/android/volley/VolleyError;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;->handleNetworkError(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method static synthetic access$1(Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;->notifyRegisterSuccess()V

    return-void
.end method

.method static synthetic access$2(Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;->dismissLoadingIndicator()V

    return-void
.end method

.method private notifyRegisterSuccess()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;->setResult(I)V

    .line 95
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;->finish()V

    .line 96
    return-void
.end method


# virtual methods
.method public doFacebookLogin(Ljava/lang/String;)V
    .locals 3
    .param p1, "fbToken"    # Ljava/lang/String;

    .prologue
    .line 67
    sget v0, Lcom/yopeso/lieferando/R$string;->pleaseWait:I

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;->showLoadingIndicator(I)V

    .line 68
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity$FacebookLoginListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity$FacebookLoginListener;-><init>(Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity$FacebookLoginListener;)V

    invoke-static {p1, v1}, Lcom/yopeso/lieferando/net/requests/LoginRequest;->withFacebook(Ljava/lang/String;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)Lcom/yopeso/lieferando/net/requests/LoginRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 69
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 35
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/FBActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-static {p0}, Lcom/yopeso/lieferando/util/DeviceUtils;->isHoneycombTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;->setRequestedOrientation(I)V

    .line 41
    :goto_0
    sget v1, Lcom/yopeso/lieferando/R$layout;->single_pane:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;->setContentView(I)V

    .line 43
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/actionbarsherlock/ActionBarSherlock;->getActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 44
    if-nez p1, :cond_0

    .line 45
    new-instance v0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;

    invoke-direct {v0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;-><init>()V

    .line 46
    .local v0, "frag":Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$id;->SingleContent:I

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 48
    .end local v0    # "frag":Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;
    :cond_0
    return-void

    .line 39
    :cond_1
    invoke-virtual {p0, v2}, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 52
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;->finish()V

    .line 54
    const/4 v0, 0x1

    .line 56
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/FBActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
