.class Lcom/yopeso/lieferando/activity/SearchActivity$1;
.super Landroid/support/v4/app/ActionBarDrawerToggle;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/activity/SearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/activity/SearchActivity;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/activity/SearchActivity;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V
    .locals 6
    .param p2, "$anonymous0"    # Landroid/app/Activity;
    .param p3, "$anonymous1"    # Landroid/support/v4/widget/DrawerLayout;
    .param p4, "$anonymous2"    # I
    .param p5, "$anonymous3"    # I
    .param p6, "$anonymous4"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/activity/SearchActivity$1;->this$0:Lcom/yopeso/lieferando/activity/SearchActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 186
    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 1
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    .line 195
    invoke-super {p0, p1}, Landroid/support/v4/app/ActionBarDrawerToggle;->onDrawerClosed(Landroid/view/View;)V

    .line 199
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/SearchActivity$1;->this$0:Lcom/yopeso/lieferando/activity/SearchActivity;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/activity/SearchActivity;->supportInvalidateOptionsMenu()V

    .line 200
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 4
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 204
    invoke-super {p0, p1}, Landroid/support/v4/app/ActionBarDrawerToggle;->onDrawerOpened(Landroid/view/View;)V

    .line 209
    iget-object v1, p0, Lcom/yopeso/lieferando/activity/SearchActivity$1;->this$0:Lcom/yopeso/lieferando/activity/SearchActivity;

    iget-boolean v1, v1, Lcom/yopeso/lieferando/activity/SearchActivity;->mUserLearnedDrawer:Z

    if-nez v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/yopeso/lieferando/activity/SearchActivity$1;->this$0:Lcom/yopeso/lieferando/activity/SearchActivity;

    iput-boolean v3, v1, Lcom/yopeso/lieferando/activity/SearchActivity;->mUserLearnedDrawer:Z

    .line 214
    iget-object v1, p0, Lcom/yopeso/lieferando/activity/SearchActivity$1;->this$0:Lcom/yopeso/lieferando/activity/SearchActivity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 215
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "navigation_drawer_learned"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 218
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    iget-object v1, p0, Lcom/yopeso/lieferando/activity/SearchActivity$1;->this$0:Lcom/yopeso/lieferando/activity/SearchActivity;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/activity/SearchActivity;->supportInvalidateOptionsMenu()V

    .line 219
    return-void
.end method
