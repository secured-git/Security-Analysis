.class Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$4;
.super Ljava/lang/Object;
.source "RestaurantsListFragment.java"

# interfaces
.implements Lcom/actionbarsherlock/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 515
    const-string v0, "RestaurantsFragment"

    const-string v1, "onMenuItemActionCollapse->filterRestaurants txt:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->filterRestaurants(Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-virtual {v0, v2}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->showHideLogoActionbar(Z)V

    .line 518
    return v2
.end method

.method public onMenuItemActionExpand(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 508
    const-string v0, "RestaurantsFragment"

    const-string v1, "onMenuItemActionExpand R.id.menu_search"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->showHideLogoActionbar(Z)V

    .line 510
    const/4 v0, 0x1

    return v0
.end method
