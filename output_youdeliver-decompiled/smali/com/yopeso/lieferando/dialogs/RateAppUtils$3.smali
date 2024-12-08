.class Lcom/yopeso/lieferando/dialogs/RateAppUtils$3;
.super Ljava/lang/Object;
.source "RateAppUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/dialogs/RateAppUtils;->showDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/dialogs/RateAppUtils$3;->val$context:Landroid/content/Context;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 136
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/yopeso/lieferando/dialogs/RateAppUtils$3;->val$context:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/yopeso/lieferando/dialogs/RateAppUtils;->setIfCanShowRateAppDialog(ZLandroid/content/Context;)V

    .line 138
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    const-string v2, "market://details?id=com.yourdelivery.pyszne"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 149
    .local v1, "marketUri":Landroid/net/Uri;
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 150
    .local v0, "marketIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/yopeso/lieferando/dialogs/RateAppUtils$3;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 151
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 152
    return-void

    .line 141
    .end local v0    # "marketIntent":Landroid/content/Intent;
    .end local v1    # "marketUri":Landroid/net/Uri;
    :cond_0
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 142
    const-string v2, "market://details?id=de.lieferservice.android"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 143
    .restart local v1    # "marketUri":Landroid/net/Uri;
    goto :goto_0

    .line 145
    .end local v1    # "marketUri":Landroid/net/Uri;
    :cond_1
    const-string v2, "market://details?id=com.yopeso.lieferando"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .restart local v1    # "marketUri":Landroid/net/Uri;
    goto :goto_0
.end method
