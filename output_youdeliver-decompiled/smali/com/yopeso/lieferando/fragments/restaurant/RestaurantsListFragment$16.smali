.class Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$16;
.super Ljava/lang/Object;
.source "RestaurantsListFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$16;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    .line 1109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 1113
    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    const/4 v1, 0x6

    if-ne p2, v1, :cond_2

    .line 1115
    :cond_0
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$16;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    iget-object v1, v1, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mSearchInput:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$16;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    iget-object v1, v1, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mSearchInput:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$16;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    iget-object v1, v1, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLocationSuggestions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$16;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    iget-object v1, v1, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLocationSuggestions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1116
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$16;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$16;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    iget-object v2, v2, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLocationSuggestions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v1, v0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->onLocationSelected(Lcom/yopeso/lieferando/model/LocationSuggestion;)V

    .line 1118
    :cond_1
    const/4 v0, 0x1

    .line 1120
    :cond_2
    return v0
.end method
