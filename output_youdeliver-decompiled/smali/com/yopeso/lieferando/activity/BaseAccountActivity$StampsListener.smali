.class Lcom/yopeso/lieferando/activity/BaseAccountActivity$StampsListener;
.super Ljava/lang/Object;
.source "BaseAccountActivity.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/activity/BaseAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StampsListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/yopeso/lieferando/model/Stamp;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/activity/BaseAccountActivity;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/activity/BaseAccountActivity;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/yopeso/lieferando/activity/BaseAccountActivity$StampsListener;->this$0:Lcom/yopeso/lieferando/activity/BaseAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/activity/BaseAccountActivity;Lcom/yopeso/lieferando/activity/BaseAccountActivity$StampsListener;)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/activity/BaseAccountActivity$StampsListener;-><init>(Lcom/yopeso/lieferando/activity/BaseAccountActivity;)V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/BaseAccountActivity$StampsListener;->this$0:Lcom/yopeso/lieferando/activity/BaseAccountActivity;

    invoke-static {v0}, Lcom/yopeso/lieferando/activity/BaseAccountActivity;->access$1(Lcom/yopeso/lieferando/activity/BaseAccountActivity;)V

    .line 130
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/BaseAccountActivity$StampsListener;->this$0:Lcom/yopeso/lieferando/activity/BaseAccountActivity;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/activity/BaseAccountActivity;->access$2(Lcom/yopeso/lieferando/activity/BaseAccountActivity;Lcom/android/volley/VolleyError;)V

    .line 131
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/activity/BaseAccountActivity$StampsListener;->onResponse(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onResponse(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/Stamp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "stamps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/Stamp;>;"
    const/4 v3, 0x0

    .line 106
    invoke-static {}, Lcom/yopeso/lieferando/activity/BaseAccountActivity;->access$0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StampsListener onResponse "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v1, p0, Lcom/yopeso/lieferando/activity/BaseAccountActivity$StampsListener;->this$0:Lcom/yopeso/lieferando/activity/BaseAccountActivity;

    invoke-static {v1}, Lcom/yopeso/lieferando/activity/BaseAccountActivity;->access$1(Lcom/yopeso/lieferando/activity/BaseAccountActivity;)V

    .line 108
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/yopeso/lieferando/model/user/UserData;->setStampCards(Ljava/util/ArrayList;)V

    .line 115
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yopeso/lieferando/activity/BaseAccountActivity$StampsListener;->this$0:Lcom/yopeso/lieferando/activity/BaseAccountActivity;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/activity/BaseAccountActivity;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/SettingsContent;->isFidelityPointsActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/yopeso/lieferando/activity/BaseAccountActivity$StampsListener;->this$0:Lcom/yopeso/lieferando/activity/BaseAccountActivity;

    sget v2, Lcom/yopeso/lieferando/R$string;->fidelity_points_fb_connect:I

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/activity/BaseAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v3, v1, v2, v3}, Lcom/yopeso/lieferando/dialogs/FidelityDialog;->newInstance(ILjava/lang/String;ZZ)Lcom/yopeso/lieferando/dialogs/FidelityDialog;

    move-result-object v0

    .line 120
    .local v0, "fidelityDialog":Lcom/yopeso/lieferando/dialogs/FidelityDialog;
    iget-object v1, p0, Lcom/yopeso/lieferando/activity/BaseAccountActivity$StampsListener;->this$0:Lcom/yopeso/lieferando/activity/BaseAccountActivity;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/activity/BaseAccountActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yopeso/lieferando/dialogs/FidelityDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 125
    .end local v0    # "fidelityDialog":Lcom/yopeso/lieferando/dialogs/FidelityDialog;
    :cond_1
    return-void
.end method
