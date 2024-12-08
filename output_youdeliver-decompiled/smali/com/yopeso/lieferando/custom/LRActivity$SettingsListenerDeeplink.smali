.class public Lcom/yopeso/lieferando/custom/LRActivity$SettingsListenerDeeplink;
.super Ljava/lang/Object;
.source "LRActivity.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/custom/LRActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SettingsListenerDeeplink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
        "<",
        "Lcom/yopeso/lieferando/model/SettingsContent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/custom/LRActivity;


# direct methods
.method protected constructor <init>(Lcom/yopeso/lieferando/custom/LRActivity;)V
    .locals 0

    .prologue
    .line 521
    iput-object p1, p0, Lcom/yopeso/lieferando/custom/LRActivity$SettingsListenerDeeplink;->this$0:Lcom/yopeso/lieferando/custom/LRActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 551
    iget-object v0, p0, Lcom/yopeso/lieferando/custom/LRActivity$SettingsListenerDeeplink;->this$0:Lcom/yopeso/lieferando/custom/LRActivity;

    invoke-virtual {v0, p1}, Lcom/yopeso/lieferando/custom/LRActivity;->handleNetworkError(Lcom/android/volley/VolleyError;)V

    .line 552
    return-void
.end method

.method public onResponse(Lcom/yopeso/lieferando/model/SettingsContent;)V
    .locals 6
    .param p1, "settings"    # Lcom/yopeso/lieferando/model/SettingsContent;

    .prologue
    const/4 v5, 0x0

    .line 527
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/SettingsContent;->isMaintenance()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 528
    iget-object v0, p0, Lcom/yopeso/lieferando/custom/LRActivity$SettingsListenerDeeplink;->this$0:Lcom/yopeso/lieferando/custom/LRActivity;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/SettingsContent;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/custom/LRActivity;->showServerMaintenanceDialog(Ljava/lang/String;)V

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 531
    :cond_1
    iget-object v0, p0, Lcom/yopeso/lieferando/custom/LRActivity$SettingsListenerDeeplink;->this$0:Lcom/yopeso/lieferando/custom/LRActivity;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/custom/LRActivity;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yopeso/lieferando/LieferandoApplication;->setSettingModel(Lcom/yopeso/lieferando/model/SettingsContent;)V

    .line 533
    iget-object v0, p0, Lcom/yopeso/lieferando/custom/LRActivity$SettingsListenerDeeplink;->this$0:Lcom/yopeso/lieferando/custom/LRActivity;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/custom/LRActivity;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/RestaurantRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/yopeso/lieferando/custom/LRActivity$SettingsListenerDeeplink;->this$0:Lcom/yopeso/lieferando/custom/LRActivity;

    iget-object v3, v3, Lcom/yopeso/lieferando/custom/LRActivity;->restaurantIDSettings:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/yopeso/lieferando/custom/LRActivity$RestaurantListenerDeepLinking;

    iget-object v4, p0, Lcom/yopeso/lieferando/custom/LRActivity$SettingsListenerDeeplink;->this$0:Lcom/yopeso/lieferando/custom/LRActivity;

    invoke-direct {v3, v4}, Lcom/yopeso/lieferando/custom/LRActivity$RestaurantListenerDeepLinking;-><init>(Lcom/yopeso/lieferando/custom/LRActivity;)V

    invoke-direct {v1, v2, v3}, Lcom/yopeso/lieferando/net/requests/RestaurantRequest;-><init>(Ljava/lang/String;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 534
    iget-object v0, p0, Lcom/yopeso/lieferando/custom/LRActivity$SettingsListenerDeeplink;->this$0:Lcom/yopeso/lieferando/custom/LRActivity;

    iput-object v5, v0, Lcom/yopeso/lieferando/custom/LRActivity;->restaurantID:Ljava/lang/String;

    .line 535
    iget-object v0, p0, Lcom/yopeso/lieferando/custom/LRActivity$SettingsListenerDeeplink;->this$0:Lcom/yopeso/lieferando/custom/LRActivity;

    iput-object v5, v0, Lcom/yopeso/lieferando/custom/LRActivity;->restaurantIDSettings:Ljava/lang/String;

    .line 536
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/SettingsContent;->shouldUpdate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 538
    iget-object v0, p0, Lcom/yopeso/lieferando/custom/LRActivity$SettingsListenerDeeplink;->this$0:Lcom/yopeso/lieferando/custom/LRActivity;

    invoke-static {v0}, Lcom/yopeso/lieferando/custom/LRActivity;->access$0(Lcom/yopeso/lieferando/custom/LRActivity;)V

    goto :goto_0

    .line 542
    :cond_2
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v0

    if-nez v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/yopeso/lieferando/custom/LRActivity$SettingsListenerDeeplink;->this$0:Lcom/yopeso/lieferando/custom/LRActivity;

    invoke-static {v0}, Lcom/yopeso/lieferando/util/IntentNavUtils;->startSyncUser(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/SettingsContent;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/custom/LRActivity$SettingsListenerDeeplink;->onResponse(Lcom/yopeso/lieferando/model/SettingsContent;)V

    return-void
.end method
