.class public Lcom/yopeso/lieferando/custom/LRFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "LRFragment.java"


# static fields
.field protected static mLastClickTime:J


# instance fields
.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRequestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/yopeso/lieferando/custom/LRFragment;->mLastClickTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method

.method protected static deleySelection()Z
    .locals 4

    .prologue
    .line 237
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/yopeso/lieferando/custom/LRFragment;->mLastClickTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 238
    const/4 v0, 0x1

    .line 240
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected addNewFragment(ILandroid/support/v4/app/Fragment;)V
    .locals 5
    .param p1, "layoutId"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$anim;->fragment_fade_in:I

    sget v2, Lcom/yopeso/lieferando/R$anim;->fragment_fade_out:I

    sget v3, Lcom/yopeso/lieferando/R$anim;->fragment_fade_in:I

    sget v4, Lcom/yopeso/lieferando/R$anim;->fragment_fade_out:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 180
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 181
    return-void
.end method

.method protected addNewFragment(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .locals 5
    .param p1, "layoutId"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$anim;->fragment_fade_in:I

    sget v2, Lcom/yopeso/lieferando/R$anim;->fragment_fade_out:I

    sget v3, Lcom/yopeso/lieferando/R$anim;->fragment_fade_in:I

    sget v4, Lcom/yopeso/lieferando/R$anim;->fragment_fade_out:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 209
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 210
    return-void
.end method

.method protected addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V
    .locals 2
    .param p1, "layoutId"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "addToBackStack"    # Z
    .param p4, "tag"    # Ljava/lang/String;

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 192
    .local v0, "tx":Landroid/support/v4/app/FragmentTransaction;
    if-eqz p3, :cond_0

    .line 193
    invoke-virtual {v0, p4}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 195
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 197
    return-void
.end method

.method protected buildAlertMessageNoGps()Landroid/app/AlertDialog$Builder;
    .locals 4

    .prologue
    .line 223
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 224
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v1, Lcom/yopeso/lieferando/R$string;->gpsCheck:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$string;->yes:I

    new-instance v3, Lcom/yopeso/lieferando/custom/LRFragment$1;

    invoke-direct {v3, p0}, Lcom/yopeso/lieferando/custom/LRFragment$1;-><init>(Lcom/yopeso/lieferando/custom/LRFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 228
    sget v2, Lcom/yopeso/lieferando/R$string;->no:I

    new-instance v3, Lcom/yopeso/lieferando/custom/LRFragment$2;

    invoke-direct {v3, p0}, Lcom/yopeso/lieferando/custom/LRFragment$2;-><init>(Lcom/yopeso/lieferando/custom/LRFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 233
    return-object v0
.end method

.method protected dismissLoadingIndicator()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/yopeso/lieferando/custom/LRFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/yopeso/lieferando/custom/LRFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 141
    :cond_0
    return-void
.end method

.method public getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/LieferandoApplication;

    .line 60
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLRActivity()Lcom/yopeso/lieferando/custom/LRActivity;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/custom/LRActivity;

    return-object v0
.end method

.method public getRequestQueue()Lcom/android/volley/RequestQueue;
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/yopeso/lieferando/custom/LRFragment;->mRequestQueue:Lcom/android/volley/RequestQueue;

    if-nez v0, :cond_0

    .line 70
    const-class v0, Lcom/yopeso/lieferando/custom/LRFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Calling getRequestQueue() and queue is null. Fragment not attached to an activity."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/custom/LRFragment;->mRequestQueue:Lcom/android/volley/RequestQueue;

    return-object v0
.end method

.method protected getTitle()I
    .locals 1

    .prologue
    .line 162
    sget v0, Lcom/yopeso/lieferando/R$string;->app_name:I

    return v0
.end method

.method protected handleNetworkError(Lcom/android/volley/VolleyError;)V
    .locals 11
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    const/4 v6, 0x0

    .line 255
    invoke-virtual {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->dismissLoadingIndicator()V

    .line 256
    const-class v4, Lcom/yopeso/lieferando/custom/LRFragment;

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

    .line 257
    if-eqz p1, :cond_0

    iget-object v4, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-nez v4, :cond_1

    .line 259
    :cond_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->no_internet:I

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 282
    :goto_0
    return-void

    .line 260
    :cond_1
    instance-of v4, p1, Lcom/yopeso/lieferando/net/requests/base/ApiError;

    if-eqz v4, :cond_6

    move-object v0, p1

    .line 261
    check-cast v0, Lcom/yopeso/lieferando/net/requests/base/ApiError;

    .line 262
    .local v0, "apiError":Lcom/yopeso/lieferando/net/requests/base/ApiError;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/SettingsContent;->getErrorCodes()Ljava/util/Map;

    move-result-object v3

    .line 264
    .local v3, "errors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/yopeso/lieferando/net/requests/base/ApiError;->getErrorCodes()[I

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Lcom/yopeso/lieferando/net/requests/base/ApiError;->getErrorCodes()[I

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_4

    .line 265
    const-string v2, ""

    .line 266
    .local v2, "errorMsg":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/net/requests/base/ApiError;->getErrorCodes()[I

    move-result-object v7

    array-length v8, v7

    move v5, v6

    :goto_1
    if-lt v5, v8, :cond_2

    .line 272
    invoke-virtual {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 266
    :cond_2
    aget v1, v7, v5

    .line 267
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

    .line 268
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

    .line 266
    :cond_3
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_1

    .line 273
    .end local v1    # "code":I
    .end local v2    # "errorMsg":Ljava/lang/String;
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/yopeso/lieferando/net/requests/base/ApiError;->getErrorCodes()[I

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Lcom/yopeso/lieferando/net/requests/base/ApiError;->getErrorCodes()[I

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_5

    iget-object v4, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget v4, v4, Lcom/android/volley/NetworkResponse;->statusCode:I

    const/16 v5, 0x196

    if-ne v4, v5, :cond_5

    .line 274
    invoke-virtual {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->invalid_input:I

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 277
    :cond_5
    invoke-virtual {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->serverError:I

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 280
    .end local v0    # "apiError":Lcom/yopeso/lieferando/net/requests/base/ApiError;
    .end local v3    # "errors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    invoke-virtual {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->serverError:I

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 157
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 158
    invoke-virtual {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->getTitle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 159
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onAttach(Landroid/app/Activity;)V

    .line 78
    invoke-static {p1}, Lcom/yopeso/lieferando/net/requests/base/QueueBuilder;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/custom/LRFragment;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 79
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreate(Landroid/os/Bundle;)V

    .line 146
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/custom/LRFragment;->setHasOptionsMenu(Z)V

    .line 147
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 151
    const-string v0, "WORKAROUND_FOR_BUG_19917_KEY"

    const-string v1, "WORKAROUND_FOR_BUG_19917_VALUE"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 153
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onStart()V

    .line 84
    iget-object v0, p0, Lcom/yopeso/lieferando/custom/LRFragment;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->start()V

    .line 85
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 91
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onStop()V

    .line 92
    invoke-virtual {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->stopPendingRequests()V

    .line 93
    iget-object v1, p0, Lcom/yopeso/lieferando/custom/LRFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/yopeso/lieferando/custom/LRFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 98
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 99
    return-void
.end method

.method public setHomeAsUpEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 167
    return-void
.end method

.method public showHideLogoActionbar(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 289
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    if-eqz p1, :cond_1

    .line 291
    invoke-virtual {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$drawable;->actionbar_icon:I

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v0

    if-nez v0, :cond_2

    .line 295
    invoke-virtual {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$drawable;->actionbar_icon_short:I

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V

    goto :goto_0

    .line 298
    :cond_2
    invoke-virtual {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$drawable;->lieferservice_home_logo:I

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V

    goto :goto_0
.end method

.method protected showLoadingIndicator(I)V
    .locals 2
    .param p1, "string"    # I

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/yopeso/lieferando/custom/LRFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yopeso/lieferando/custom/LRFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->dismissLoadingIndicator()V

    .line 119
    :cond_0
    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/custom/LRFragment;->showLoadingIndicator(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method protected showLoadingIndicator(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 123
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yopeso/lieferando/custom/LRFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 124
    iget-object v0, p0, Lcom/yopeso/lieferando/custom/LRFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 125
    iget-object v0, p0, Lcom/yopeso/lieferando/custom/LRFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lcom/yopeso/lieferando/custom/LRFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 127
    return-void
.end method

.method protected showOrderLoadingIndicator(I)V
    .locals 3
    .param p1, "res"    # I

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/yopeso/lieferando/custom/LRFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 132
    iget-object v1, p0, Lcom/yopeso/lieferando/custom/LRFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 133
    iget-object v1, p0, Lcom/yopeso/lieferando/custom/LRFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v1, p0, Lcom/yopeso/lieferando/custom/LRFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 135
    return-void
.end method

.method protected stopPendingRequests()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/yopeso/lieferando/custom/LRFragment;->mRequestQueue:Lcom/android/volley/RequestQueue;

    new-instance v1, Lcom/yopeso/lieferando/net/filters/IgnoreFavoriteFilter;

    invoke-direct {v1}, Lcom/yopeso/lieferando/net/filters/IgnoreFavoriteFilter;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->cancelAll(Lcom/android/volley/RequestQueue$RequestFilter;)V

    .line 111
    iget-object v0, p0, Lcom/yopeso/lieferando/custom/LRFragment;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->stop()V

    .line 112
    return-void
.end method
