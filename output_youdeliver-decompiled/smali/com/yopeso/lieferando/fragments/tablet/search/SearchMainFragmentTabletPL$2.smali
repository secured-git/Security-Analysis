.class Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL$2;
.super Ljava/lang/Object;
.source "SearchMainFragmentTabletPL.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL$2;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;

    .line 97
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

    .line 101
    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    const/4 v1, 0x6

    if-ne p2, v1, :cond_2

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL$2;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->access$2(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;)Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL$2;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->access$2(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;)Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL$2;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->access$3(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL$2;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->access$3(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 103
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL$2;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL$2;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;

    invoke-static {v2}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->access$3(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/user/Street;

    invoke-virtual {v1, v0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->onStreetSelected(Lcom/yopeso/lieferando/model/user/Street;)V

    .line 105
    :cond_1
    const/4 v0, 0x1

    .line 107
    :cond_2
    return v0
.end method
