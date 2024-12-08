.class Lcom/yopeso/lieferando/util/UpdateDialog$1;
.super Ljava/lang/Object;
.source "UpdateDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/util/UpdateDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/util/UpdateDialog;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/util/UpdateDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/util/UpdateDialog$1;->this$0:Lcom/yopeso/lieferando/util/UpdateDialog;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 119
    iget-object v2, p0, Lcom/yopeso/lieferando/util/UpdateDialog$1;->this$0:Lcom/yopeso/lieferando/util/UpdateDialog;

    invoke-static {v2}, Lcom/yopeso/lieferando/util/UpdateDialog;->access$0(Lcom/yopeso/lieferando/util/UpdateDialog;)Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/SettingsContent;->getmStoreURL()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 120
    iget-object v2, p0, Lcom/yopeso/lieferando/util/UpdateDialog$1;->this$0:Lcom/yopeso/lieferando/util/UpdateDialog;

    invoke-static {v2}, Lcom/yopeso/lieferando/util/UpdateDialog;->access$0(Lcom/yopeso/lieferando/util/UpdateDialog;)Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/SettingsContent;->getmStoreURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 126
    .local v1, "marketUri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 127
    .local v0, "marketIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/yopeso/lieferando/util/UpdateDialog$1;->this$0:Lcom/yopeso/lieferando/util/UpdateDialog;

    invoke-virtual {v2, v0}, Lcom/yopeso/lieferando/util/UpdateDialog;->startActivity(Landroid/content/Intent;)V

    .line 128
    iget-object v2, p0, Lcom/yopeso/lieferando/util/UpdateDialog$1;->this$0:Lcom/yopeso/lieferando/util/UpdateDialog;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/util/UpdateDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 131
    .end local v0    # "marketIntent":Landroid/content/Intent;
    .end local v1    # "marketUri":Landroid/net/Uri;
    :cond_0
    return-void
.end method
