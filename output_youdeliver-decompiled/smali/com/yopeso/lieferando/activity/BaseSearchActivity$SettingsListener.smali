.class public Lcom/yopeso/lieferando/activity/BaseSearchActivity$SettingsListener;
.super Ljava/lang/Object;
.source "BaseSearchActivity.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/activity/BaseSearchActivity;
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
.field final synthetic this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;


# direct methods
.method protected constructor <init>(Lcom/yopeso/lieferando/activity/BaseSearchActivity;)V
    .locals 0

    .prologue
    .line 906
    iput-object p1, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$SettingsListener;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 930
    iget-object v1, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$SettingsListener;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 931
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "config_status"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 932
    return-void
.end method

.method public onResponse(Lcom/yopeso/lieferando/model/SettingsContent;)V
    .locals 4
    .param p1, "settings"    # Lcom/yopeso/lieferando/model/SettingsContent;

    .prologue
    .line 912
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/SettingsContent;->isMaintenance()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 913
    iget-object v1, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$SettingsListener;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/SettingsContent;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->access$3(Lcom/yopeso/lieferando/activity/BaseSearchActivity;Ljava/lang/String;)V

    .line 925
    :goto_0
    return-void

    .line 916
    :cond_0
    iget-object v1, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$SettingsListener;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/yopeso/lieferando/LieferandoApplication;->setSettingModel(Lcom/yopeso/lieferando/model/SettingsContent;)V

    .line 918
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v1

    if-nez v1, :cond_1

    .line 919
    iget-object v1, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$SettingsListener;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    invoke-static {v1}, Lcom/yopeso/lieferando/util/IntentNavUtils;->startSyncUser(Landroid/content/Context;)V

    .line 922
    :cond_1
    iget-object v1, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$SettingsListener;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 923
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "config_status"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/SettingsContent;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/activity/BaseSearchActivity$SettingsListener;->onResponse(Lcom/yopeso/lieferando/model/SettingsContent;)V

    return-void
.end method
