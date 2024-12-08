.class Lcom/yopeso/lieferando/activity/BaseSearchActivity$1;
.super Ljava/lang/Object;
.source "BaseSearchActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/activity/BaseSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/activity/BaseSearchActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$1;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    .line 127
    packed-switch p3, :pswitch_data_0

    .line 208
    :goto_0
    iget-object v2, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$1;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    iget-object v2, v2, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    .line 209
    return-void

    .line 130
    :pswitch_0
    const-string v2, "howDoesItWork"

    invoke-static {v2}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackView(Ljava/lang/String;)V

    .line 131
    iget-object v2, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$1;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    invoke-static {v2}, Lcom/yopeso/lieferando/util/DeviceUtils;->isHoneycombTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    iget-object v2, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$1;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    iget-object v3, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$1;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    sget v4, Lcom/yopeso/lieferando/R$string;->instructions_text:I

    invoke-virtual {v3, v4}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$1;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/SettingsContent;->getDynamicManualHTML()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/yopeso/lieferando/dialogs/WebViewDialog;->showWebViewDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :cond_0
    iget-object v2, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$1;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    invoke-static {v2}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->access$0(Lcom/yopeso/lieferando/activity/BaseSearchActivity;)V

    .line 145
    new-instance v1, Lcom/yopeso/lieferando/fragments/webview/WebViews;

    invoke-direct {v1}, Lcom/yopeso/lieferando/fragments/webview/WebViews;-><init>()V

    .line 146
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 147
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "title"

    sget v3, Lcom/yopeso/lieferando/R$string;->instructions_text:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 148
    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 149
    iget-object v2, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$1;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    sget v3, Lcom/yopeso/lieferando/R$id;->Content:I

    const-string v4, "WebViews"

    invoke-virtual {v2, v3, v1, v5, v4}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->addNewFragment(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    goto :goto_0

    .line 154
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    :pswitch_1
    const-string v2, "help"

    invoke-static {v2}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackView(Ljava/lang/String;)V

    .line 155
    iget-object v2, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$1;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    invoke-static {v2}, Lcom/yopeso/lieferando/util/DeviceUtils;->isHoneycombTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 158
    iget-object v2, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$1;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    iget-object v3, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$1;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    sget v4, Lcom/yopeso/lieferando/R$string;->help_text:I

    invoke-virtual {v3, v4}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$1;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/SettingsContent;->getDynamicFaqHTML()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/yopeso/lieferando/dialogs/WebViewDialog;->showWebViewDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :cond_1
    iget-object v2, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$1;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    invoke-static {v2}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->access$0(Lcom/yopeso/lieferando/activity/BaseSearchActivity;)V

    .line 168
    new-instance v1, Lcom/yopeso/lieferando/fragments/webview/WebViews;

    invoke-direct {v1}, Lcom/yopeso/lieferando/fragments/webview/WebViews;-><init>()V

    .line 169
    .restart local v1    # "fragment":Landroid/support/v4/app/Fragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 170
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v2, "title"

    sget v3, Lcom/yopeso/lieferando/R$string;->help_text:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 171
    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 172
    iget-object v2, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$1;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    sget v3, Lcom/yopeso/lieferando/R$id;->Content:I

    const-string v4, "WebViews"

    invoke-virtual {v2, v3, v1, v5, v4}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->addNewFragment(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 177
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    :pswitch_2
    const-string v2, "imprint"

    invoke-static {v2}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackView(Ljava/lang/String;)V

    .line 178
    iget-object v2, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$1;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    invoke-static {v2}, Lcom/yopeso/lieferando/util/DeviceUtils;->isHoneycombTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 180
    iget-object v2, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$1;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    iget-object v3, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$1;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    sget v4, Lcom/yopeso/lieferando/R$string;->impressions:I

    invoke-virtual {v3, v4}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$1;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/SettingsContent;->getSitenotice()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/yopeso/lieferando/dialogs/WebViewDialog;->showWebViewDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 189
    :cond_2
    iget-object v2, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$1;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    invoke-static {v2}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->access$0(Lcom/yopeso/lieferando/activity/BaseSearchActivity;)V

    .line 191
    new-instance v1, Lcom/yopeso/lieferando/fragments/webview/WebViews;

    invoke-direct {v1}, Lcom/yopeso/lieferando/fragments/webview/WebViews;-><init>()V

    .line 192
    .restart local v1    # "fragment":Landroid/support/v4/app/Fragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 193
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v2, "title"

    sget v3, Lcom/yopeso/lieferando/R$string;->impressions:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 194
    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 195
    iget-object v2, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$1;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    sget v3, Lcom/yopeso/lieferando/R$id;->Content:I

    const-string v4, "WebViews"

    invoke-virtual {v2, v3, v1, v5, v4}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->addNewFragment(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 203
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    :pswitch_3
    invoke-static {}, Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;->newInstance()Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;

    move-result-object v2

    iget-object v3, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$1;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    sget-object v4, Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
