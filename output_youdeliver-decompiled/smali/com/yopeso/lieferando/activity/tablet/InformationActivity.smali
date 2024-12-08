.class public Lcom/yopeso/lieferando/activity/tablet/InformationActivity;
.super Lcom/yopeso/lieferando/custom/LRActivity;
.source "InformationActivity.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# static fields
.field public static final DISPLAY_KEY:Ljava/lang/String; = "display"

.field public static final INSTRUCTIONS:Ljava/lang/String; = "InstructionsDisplay"

.field public static final SITENOTICE:Ljava/lang/String; = "SitenoticeFragDisplay"


# instance fields
.field private bundle:Landroid/os/Bundle;

.field private fragment:Lcom/yopeso/lieferando/fragments/webview/WebViews;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/yopeso/lieferando/custom/LRActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 32
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/LRActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    sget v1, Lcom/yopeso/lieferando/R$layout;->single_pane:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/activity/tablet/InformationActivity;->setContentView(I)V

    .line 34
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/InformationActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 35
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/InformationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "key":Ljava/lang/String;
    const-string v1, "SitenoticeFragDisplay"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    new-instance v1, Lcom/yopeso/lieferando/fragments/webview/WebViews;

    invoke-direct {v1}, Lcom/yopeso/lieferando/fragments/webview/WebViews;-><init>()V

    iput-object v1, p0, Lcom/yopeso/lieferando/activity/tablet/InformationActivity;->fragment:Lcom/yopeso/lieferando/fragments/webview/WebViews;

    .line 38
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/yopeso/lieferando/activity/tablet/InformationActivity;->bundle:Landroid/os/Bundle;

    .line 39
    iget-object v1, p0, Lcom/yopeso/lieferando/activity/tablet/InformationActivity;->bundle:Landroid/os/Bundle;

    const-string v2, "title"

    sget v3, Lcom/yopeso/lieferando/R$string;->impressions:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 40
    iget-object v1, p0, Lcom/yopeso/lieferando/activity/tablet/InformationActivity;->fragment:Lcom/yopeso/lieferando/fragments/webview/WebViews;

    iget-object v2, p0, Lcom/yopeso/lieferando/activity/tablet/InformationActivity;->bundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/fragments/webview/WebViews;->setArguments(Landroid/os/Bundle;)V

    .line 41
    sget v1, Lcom/yopeso/lieferando/R$id;->SingleContent:I

    iget-object v2, p0, Lcom/yopeso/lieferando/activity/tablet/InformationActivity;->fragment:Lcom/yopeso/lieferando/fragments/webview/WebViews;

    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/yopeso/lieferando/activity/tablet/InformationActivity;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    .line 49
    :goto_0
    return-void

    .line 43
    :cond_0
    new-instance v1, Lcom/yopeso/lieferando/fragments/webview/WebViews;

    invoke-direct {v1}, Lcom/yopeso/lieferando/fragments/webview/WebViews;-><init>()V

    iput-object v1, p0, Lcom/yopeso/lieferando/activity/tablet/InformationActivity;->fragment:Lcom/yopeso/lieferando/fragments/webview/WebViews;

    .line 44
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/yopeso/lieferando/activity/tablet/InformationActivity;->bundle:Landroid/os/Bundle;

    .line 45
    iget-object v1, p0, Lcom/yopeso/lieferando/activity/tablet/InformationActivity;->bundle:Landroid/os/Bundle;

    const-string v2, "title"

    sget v3, Lcom/yopeso/lieferando/R$string;->instructions_text:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 46
    iget-object v1, p0, Lcom/yopeso/lieferando/activity/tablet/InformationActivity;->fragment:Lcom/yopeso/lieferando/fragments/webview/WebViews;

    iget-object v2, p0, Lcom/yopeso/lieferando/activity/tablet/InformationActivity;->bundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/fragments/webview/WebViews;->setArguments(Landroid/os/Bundle;)V

    .line 47
    sget v1, Lcom/yopeso/lieferando/R$id;->SingleContent:I

    iget-object v2, p0, Lcom/yopeso/lieferando/activity/tablet/InformationActivity;->fragment:Lcom/yopeso/lieferando/fragments/webview/WebViews;

    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/yopeso/lieferando/activity/tablet/InformationActivity;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 53
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 60
    :goto_0
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/LRActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0

    .line 55
    :pswitch_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/InformationActivity;->finish()V

    goto :goto_0

    .line 53
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
