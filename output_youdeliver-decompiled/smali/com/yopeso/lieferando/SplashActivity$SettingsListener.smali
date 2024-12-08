.class public Lcom/yopeso/lieferando/SplashActivity$SettingsListener;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/SplashActivity;
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
.field final synthetic this$0:Lcom/yopeso/lieferando/SplashActivity;


# direct methods
.method protected constructor <init>(Lcom/yopeso/lieferando/SplashActivity;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lcom/yopeso/lieferando/SplashActivity$SettingsListener;->this$0:Lcom/yopeso/lieferando/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    const/4 v3, 0x0

    .line 344
    iget-object v1, p0, Lcom/yopeso/lieferando/SplashActivity$SettingsListener;->this$0:Lcom/yopeso/lieferando/SplashActivity;

    invoke-static {v1}, Lcom/yopeso/lieferando/SplashActivity;->access$4(Lcom/yopeso/lieferando/SplashActivity;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/yopeso/lieferando/SplashActivity;->access$5(Lcom/yopeso/lieferando/SplashActivity;I)V

    const/16 v1, 0xa

    if-gt v2, v1, :cond_0

    .line 345
    iget-object v1, p0, Lcom/yopeso/lieferando/SplashActivity$SettingsListener;->this$0:Lcom/yopeso/lieferando/SplashActivity;

    sget v2, Lcom/yopeso/lieferando/R$string;->serverError:I

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 346
    iget-object v1, p0, Lcom/yopeso/lieferando/SplashActivity$SettingsListener;->this$0:Lcom/yopeso/lieferando/SplashActivity;

    invoke-static {v1}, Lcom/yopeso/lieferando/SplashActivity;->access$6(Lcom/yopeso/lieferando/SplashActivity;)V

    .line 366
    :goto_0
    return-void

    .line 351
    :cond_0
    iget-object v1, p0, Lcom/yopeso/lieferando/SplashActivity$SettingsListener;->this$0:Lcom/yopeso/lieferando/SplashActivity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 352
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "config_status"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 353
    iget-object v1, p0, Lcom/yopeso/lieferando/SplashActivity$SettingsListener;->this$0:Lcom/yopeso/lieferando/SplashActivity;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/SplashActivity;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/LieferandoApplication;->isConfigDataExpired()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 355
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 356
    iget-object v1, p0, Lcom/yopeso/lieferando/SplashActivity$SettingsListener;->this$0:Lcom/yopeso/lieferando/SplashActivity;

    invoke-static {v1}, Lcom/yopeso/lieferando/util/IntentNavUtils;->startSyncUser(Landroid/content/Context;)V

    .line 358
    :cond_1
    iget-object v1, p0, Lcom/yopeso/lieferando/SplashActivity$SettingsListener;->this$0:Lcom/yopeso/lieferando/SplashActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/yopeso/lieferando/SplashActivity;->access$3(Lcom/yopeso/lieferando/SplashActivity;Z)V

    .line 359
    iget-object v1, p0, Lcom/yopeso/lieferando/SplashActivity$SettingsListener;->this$0:Lcom/yopeso/lieferando/SplashActivity;

    invoke-static {v1}, Lcom/yopeso/lieferando/SplashActivity;->access$1(Lcom/yopeso/lieferando/SplashActivity;)V

    goto :goto_0

    .line 362
    :cond_2
    iget-object v1, p0, Lcom/yopeso/lieferando/SplashActivity$SettingsListener;->this$0:Lcom/yopeso/lieferando/SplashActivity;

    sget v2, Lcom/yopeso/lieferando/R$string;->serverError:I

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onResponse(Lcom/yopeso/lieferando/model/SettingsContent;)V
    .locals 4
    .param p1, "settings"    # Lcom/yopeso/lieferando/model/SettingsContent;

    .prologue
    const/4 v3, 0x1

    .line 325
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/SettingsContent;->isMaintenance()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    iget-object v1, p0, Lcom/yopeso/lieferando/SplashActivity$SettingsListener;->this$0:Lcom/yopeso/lieferando/SplashActivity;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/SettingsContent;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yopeso/lieferando/SplashActivity;->access$2(Lcom/yopeso/lieferando/SplashActivity;Ljava/lang/String;)V

    .line 340
    :goto_0
    return-void

    .line 329
    :cond_0
    iget-object v1, p0, Lcom/yopeso/lieferando/SplashActivity$SettingsListener;->this$0:Lcom/yopeso/lieferando/SplashActivity;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/SplashActivity;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/yopeso/lieferando/LieferandoApplication;->setSettingModel(Lcom/yopeso/lieferando/model/SettingsContent;)V

    .line 331
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 332
    iget-object v1, p0, Lcom/yopeso/lieferando/SplashActivity$SettingsListener;->this$0:Lcom/yopeso/lieferando/SplashActivity;

    invoke-static {v1}, Lcom/yopeso/lieferando/util/IntentNavUtils;->startSyncUser(Landroid/content/Context;)V

    .line 334
    :cond_1
    iget-object v1, p0, Lcom/yopeso/lieferando/SplashActivity$SettingsListener;->this$0:Lcom/yopeso/lieferando/SplashActivity;

    invoke-static {v1, v3}, Lcom/yopeso/lieferando/SplashActivity;->access$3(Lcom/yopeso/lieferando/SplashActivity;Z)V

    .line 336
    iget-object v1, p0, Lcom/yopeso/lieferando/SplashActivity$SettingsListener;->this$0:Lcom/yopeso/lieferando/SplashActivity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 337
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "config_status"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 338
    iget-object v1, p0, Lcom/yopeso/lieferando/SplashActivity$SettingsListener;->this$0:Lcom/yopeso/lieferando/SplashActivity;

    invoke-static {v1}, Lcom/yopeso/lieferando/SplashActivity;->access$1(Lcom/yopeso/lieferando/SplashActivity;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/SettingsContent;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/SplashActivity$SettingsListener;->onResponse(Lcom/yopeso/lieferando/model/SettingsContent;)V

    return-void
.end method
