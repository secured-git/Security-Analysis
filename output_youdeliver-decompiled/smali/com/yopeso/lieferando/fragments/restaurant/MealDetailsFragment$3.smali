.class Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$3;
.super Ljava/lang/Object;
.source "MealDetailsFragment.java"

# interfaces
.implements Lcom/actionbarsherlock/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$3;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 277
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$3;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mMealsAdapter:Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$3;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->showHideLogoActionbar(Z)V

    .line 279
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemActionExpand(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 271
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$3;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->showHideLogoActionbar(Z)V

    .line 272
    const/4 v0, 0x1

    return v0
.end method
