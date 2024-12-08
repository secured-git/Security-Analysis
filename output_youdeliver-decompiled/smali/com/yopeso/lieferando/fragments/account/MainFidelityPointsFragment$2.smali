.class Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment$2;
.super Ljava/lang/Object;
.source "MainFidelityPointsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 172
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;

    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->access$6(Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;)Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;->getOpenActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;

    invoke-virtual {v1, v0}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->onFidelityPointSelected(Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;)V

    .line 173
    return-void
.end method
