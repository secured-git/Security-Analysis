.class Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$5;
.super Ljava/lang/Object;
.source "MealOptionsAndExtrasListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$5;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;

    .line 570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 573
    const/4 v1, 0x1

    .line 574
    .local v1, "done":Z
    const/4 v3, -0x1

    .line 575
    .local v3, "positions":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$5;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;

    invoke-static {v4}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->access$13(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;)Lcom/yopeso/lieferando/model/meal/Size;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/meal/Size;->getAdditionsGroups()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v2, v4, :cond_2

    .line 589
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 590
    iget-object v4, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$5;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;

    invoke-static {v4}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->access$5(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;)Lcom/yopeso/lieferando/callback/MealOptionsAndExtraAdapterCallback;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/yopeso/lieferando/callback/MealOptionsAndExtraAdapterCallback;->setPositionInListView(I)V

    .line 592
    :cond_0
    if-eqz v1, :cond_1

    .line 593
    iget-object v4, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$5;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;

    invoke-static {v4}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->access$13(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;)Lcom/yopeso/lieferando/model/meal/Size;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/yopeso/lieferando/model/meal/Size;->setSelected(Z)V

    .line 594
    iget-object v4, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$5;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;

    invoke-static {v4}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->access$5(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;)Lcom/yopeso/lieferando/callback/MealOptionsAndExtraAdapterCallback;

    move-result-object v4

    invoke-interface {v4, v6}, Lcom/yopeso/lieferando/callback/MealOptionsAndExtraAdapterCallback;->addToCartButtonPressed(Z)V

    .line 596
    :cond_1
    return-void

    .line 576
    :cond_2
    iget-object v4, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$5;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;

    invoke-static {v4}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->access$13(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;)Lcom/yopeso/lieferando/model/meal/Size;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/meal/Size;->getAdditionsGroups()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;

    .line 577
    .local v0, "additionGroup":Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->getNumberOfItemSelected()I

    move-result v4

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->getMinChoices()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 578
    iget-object v4, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$5;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;

    invoke-static {v4}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->access$1(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;)Landroid/util/SparseBooleanArray;

    move-result-object v4

    invoke-virtual {v4, v2, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 579
    iget-object v4, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$5;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;

    invoke-static {v4}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->access$5(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;)Lcom/yopeso/lieferando/callback/MealOptionsAndExtraAdapterCallback;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/yopeso/lieferando/callback/MealOptionsAndExtraAdapterCallback;->expandTheGroup(I)V

    .line 580
    if-eqz v1, :cond_3

    .line 583
    move v3, v2

    .line 586
    :cond_3
    const/4 v1, 0x0

    .line 575
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
