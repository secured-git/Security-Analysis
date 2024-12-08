.class public Lcom/yopeso/lieferando/custom/LRActivity$SettingsListener;
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
    name = "SettingsListener"
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
    .line 485
    iput-object p1, p0, Lcom/yopeso/lieferando/custom/LRActivity$SettingsListener;->this$0:Lcom/yopeso/lieferando/custom/LRActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 0
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 513
    return-void
.end method

.method public onResponse(Lcom/yopeso/lieferando/model/SettingsContent;)V
    .locals 2
    .param p1, "settings"    # Lcom/yopeso/lieferando/model/SettingsContent;

    .prologue
    .line 491
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/SettingsContent;->isMaintenance()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 492
    iget-object v0, p0, Lcom/yopeso/lieferando/custom/LRActivity$SettingsListener;->this$0:Lcom/yopeso/lieferando/custom/LRActivity;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/SettingsContent;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/custom/LRActivity;->showServerMaintenanceDialog(Ljava/lang/String;)V

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 495
    :cond_1
    iget-object v0, p0, Lcom/yopeso/lieferando/custom/LRActivity$SettingsListener;->this$0:Lcom/yopeso/lieferando/custom/LRActivity;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/custom/LRActivity;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yopeso/lieferando/LieferandoApplication;->setSettingModel(Lcom/yopeso/lieferando/model/SettingsContent;)V

    .line 497
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/SettingsContent;->shouldUpdate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 499
    iget-object v0, p0, Lcom/yopeso/lieferando/custom/LRActivity$SettingsListener;->this$0:Lcom/yopeso/lieferando/custom/LRActivity;

    invoke-static {v0}, Lcom/yopeso/lieferando/custom/LRActivity;->access$0(Lcom/yopeso/lieferando/custom/LRActivity;)V

    goto :goto_0

    .line 503
    :cond_2
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v0

    if-nez v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/yopeso/lieferando/custom/LRActivity$SettingsListener;->this$0:Lcom/yopeso/lieferando/custom/LRActivity;

    invoke-static {v0}, Lcom/yopeso/lieferando/util/IntentNavUtils;->startSyncUser(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/SettingsContent;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/custom/LRActivity$SettingsListener;->onResponse(Lcom/yopeso/lieferando/model/SettingsContent;)V

    return-void
.end method
