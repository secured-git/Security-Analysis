.class public Lcom/yopeso/lieferando/service/SyncUserService;
.super Landroid/app/IntentService;
.source "SyncUserService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yopeso/lieferando/service/SyncUserService$DiscountsListner;,
        Lcom/yopeso/lieferando/service/SyncUserService$StampsListener;
    }
.end annotation


# static fields
.field public static final USER_UPDATE_KEY:Ljava/lang/String; = "updateUser"


# instance fields
.field private mRequestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/yopeso/lieferando/service/SyncUserService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/service/SyncUserService;Lcom/android/volley/RequestQueue;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/yopeso/lieferando/service/SyncUserService;->mRequestQueue:Lcom/android/volley/RequestQueue;

    return-void
.end method

.method static synthetic access$1(Lcom/yopeso/lieferando/service/SyncUserService;)Lcom/android/volley/RequestQueue;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yopeso/lieferando/service/SyncUserService;->mRequestQueue:Lcom/android/volley/RequestQueue;

    return-object v0
.end method


# virtual methods
.method public getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/yopeso/lieferando/service/SyncUserService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/LieferandoApplication;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 70
    iget-object v0, p0, Lcom/yopeso/lieferando/service/SyncUserService;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->stop()V

    .line 71
    const-class v0, Lcom/yopeso/lieferando/service/SyncUserService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Syncing user data...onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 44
    const-class v0, Lcom/yopeso/lieferando/service/SyncUserService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Syncing user data..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {p0}, Lcom/yopeso/lieferando/service/SyncUserService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/service/SyncUserService;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 48
    iget-object v0, p0, Lcom/yopeso/lieferando/service/SyncUserService;->mRequestQueue:Lcom/android/volley/RequestQueue;

    new-instance v1, Lcom/yopeso/lieferando/net/requests/GetUserDataRequest;

    new-instance v2, Lcom/yopeso/lieferando/service/SyncUserService$1;

    invoke-direct {v2, p0}, Lcom/yopeso/lieferando/service/SyncUserService$1;-><init>(Lcom/yopeso/lieferando/service/SyncUserService;)V

    invoke-direct {v1, v2}, Lcom/yopeso/lieferando/net/requests/GetUserDataRequest;-><init>(Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    .line 63
    invoke-virtual {v1}, Lcom/yopeso/lieferando/net/requests/GetUserDataRequest;->withAuth()Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 64
    const-class v0, Lcom/yopeso/lieferando/service/SyncUserService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Syncing user data... onHandleIntent DONE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method
