.class public Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$FacebookUnlinkListener;
.super Ljava/lang/Object;
.source "MainAccountFragment.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FacebookUnlinkListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;


# direct methods
.method public constructor <init>(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)V
    .locals 0

    .prologue
    .line 1187
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$FacebookUnlinkListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$FacebookUnlinkListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->access$20(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)V

    .line 1230
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$FacebookUnlinkListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->access$27(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;Lcom/android/volley/VolleyError;)V

    .line 1231
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$FacebookUnlinkListener;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 7
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1190
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$FacebookUnlinkListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-static {v3}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->access$20(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)V

    .line 1191
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->unlinkFacebook()V

    .line 1192
    invoke-static {v6}, Lcom/yopeso/lieferando/util/UserStore;->setLoggedInWithFb(Z)V

    .line 1195
    :try_start_0
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 1196
    .local v0, "currentSession":Lcom/facebook/Session;
    if-eqz v0, :cond_3

    .line 1197
    invoke-virtual {v0}, Lcom/facebook/Session;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1198
    invoke-virtual {v0}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    .line 1210
    :cond_0
    :goto_0
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/yopeso/lieferando/util/UserStore;->setLoggedInWithFb(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1215
    .end local v0    # "currentSession":Lcom/facebook/Session;
    :goto_1
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$FacebookUnlinkListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-static {v3}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->access$28(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)V

    .line 1217
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$FacebookUnlinkListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/SettingsContent;->isFidelityPointsActive()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1221
    :cond_1
    const/4 v3, -0x1

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$FacebookUnlinkListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    sget v5, Lcom/yopeso/lieferando/R$string;->fidelity_points_fb_disconnect:I

    invoke-virtual {v4, v5}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5, v6}, Lcom/yopeso/lieferando/dialogs/FidelityDialog;->newInstance(ILjava/lang/String;ZZ)Lcom/yopeso/lieferando/dialogs/FidelityDialog;

    move-result-object v2

    .line 1222
    .local v2, "fidelityDialog":Lcom/yopeso/lieferando/dialogs/FidelityDialog;
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$FacebookUnlinkListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/yopeso/lieferando/dialogs/FidelityDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1225
    .end local v2    # "fidelityDialog":Lcom/yopeso/lieferando/dialogs/FidelityDialog;
    :cond_2
    return-void

    .line 1203
    .restart local v0    # "currentSession":Lcom/facebook/Session;
    :cond_3
    :try_start_1
    new-instance v0, Lcom/facebook/Session;

    .end local v0    # "currentSession":Lcom/facebook/Session;
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$FacebookUnlinkListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/facebook/Session;-><init>(Landroid/content/Context;)V

    .line 1204
    .restart local v0    # "currentSession":Lcom/facebook/Session;
    invoke-static {v0}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 1206
    invoke-virtual {v0}, Lcom/facebook/Session;->closeAndClearTokenInformation()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1211
    .end local v0    # "currentSession":Lcom/facebook/Session;
    :catch_0
    move-exception v1

    .line 1212
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
