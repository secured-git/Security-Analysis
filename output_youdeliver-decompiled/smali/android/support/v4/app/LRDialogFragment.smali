.class public Landroid/support/v4/app/LRDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "LRDialogFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# instance fields
.field private mRequestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected buildAlertMessageNoGps()Landroid/app/AlertDialog$Builder;
    .locals 4

    .prologue
    .line 94
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/support/v4/app/LRDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 95
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v1, Lcom/yopeso/lieferando/R$string;->gpsCheck:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$string;->yes:I

    new-instance v3, Landroid/support/v4/app/LRDialogFragment$1;

    invoke-direct {v3, p0}, Landroid/support/v4/app/LRDialogFragment$1;-><init>(Landroid/support/v4/app/LRDialogFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 99
    sget v2, Lcom/yopeso/lieferando/R$string;->no:I

    new-instance v3, Landroid/support/v4/app/LRDialogFragment$2;

    invoke-direct {v3, p0}, Landroid/support/v4/app/LRDialogFragment$2;-><init>(Landroid/support/v4/app/LRDialogFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 104
    return-object v0
.end method

.method public getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Landroid/support/v4/app/LRDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/LieferandoApplication;

    return-object v0
.end method

.method public getRequestQueue()Lcom/android/volley/RequestQueue;
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Landroid/support/v4/app/LRDialogFragment;->mRequestQueue:Lcom/android/volley/RequestQueue;

    if-nez v0, :cond_0

    .line 47
    const-class v0, Lcom/yopeso/lieferando/custom/LRFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Calling getRequestQueue() and queue is null. Fragment not attached to an activity."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/LRDialogFragment;->mRequestQueue:Lcom/android/volley/RequestQueue;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 55
    invoke-static {p1}, Lcom/yopeso/lieferando/net/requests/base/QueueBuilder;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/LRDialogFragment;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 56
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    .line 60
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    .line 61
    iget-object v0, p0, Landroid/support/v4/app/LRDialogFragment;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->start()V

    .line 62
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    .line 66
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStop()V

    .line 67
    invoke-virtual {p0}, Landroid/support/v4/app/LRDialogFragment;->stopPendingRequests()V

    .line 68
    return-void
.end method

.method public show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I
    .locals 2
    .param p1, "transaction"    # Landroid/support/v4/app/FragmentTransaction;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 33
    iput-boolean v1, p0, Landroid/support/v4/app/LRDialogFragment;->mDismissed:Z

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/LRDialogFragment;->mShownByMe:Z

    .line 35
    invoke-virtual {p1, p0, p2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 36
    iput-boolean v1, p0, Landroid/support/v4/app/LRDialogFragment;->mViewDestroyed:Z

    .line 37
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/LRDialogFragment;->mBackStackId:I

    .line 38
    iget v0, p0, Landroid/support/v4/app/LRDialogFragment;->mBackStackId:I

    return v0
.end method

.method public show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    .locals 2
    .param p1, "manager"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 24
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/app/LRDialogFragment;->mDismissed:Z

    .line 25
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/app/LRDialogFragment;->mShownByMe:Z

    .line 26
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 27
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v0, p0, p2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 28
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 29
    return-void
.end method

.method protected stopPendingRequests()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Landroid/support/v4/app/LRDialogFragment;->mRequestQueue:Lcom/android/volley/RequestQueue;

    new-instance v1, Lcom/yopeso/lieferando/net/filters/IgnoreFavoriteFilter;

    invoke-direct {v1}, Lcom/yopeso/lieferando/net/filters/IgnoreFavoriteFilter;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->cancelAll(Lcom/android/volley/RequestQueue$RequestFilter;)V

    .line 80
    iget-object v0, p0, Landroid/support/v4/app/LRDialogFragment;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->stop()V

    .line 81
    return-void
.end method
