.class Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$2;
.super Ljava/lang/Object;
.source "RestaurantDetailsFragment.java"

# interfaces
.implements Lcom/actionbarsherlock/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 180
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->filterMenu(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;

    invoke-virtual {v0, v2}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->showHideLogoActionbar(Z)V

    .line 182
    return v2
.end method

.method public onMenuItemActionExpand(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->showHideLogoActionbar(Z)V

    .line 174
    const/4 v0, 0x1

    return v0
.end method
