.class Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$FidelityPointsListener;
.super Ljava/lang/Object;
.source "FidelityPointsCollectFragment.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FidelityPointsListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$FidelityPointsListener;->this$0:Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$FidelityPointsListener;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$FidelityPointsListener;-><init>(Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;)V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$FidelityPointsListener;->this$0:Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;->access$5(Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;)V

    .line 103
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$FidelityPointsListener;->this$0:Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;->access$6(Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;Lcom/android/volley/VolleyError;)V

    .line 104
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$FidelityPointsListener;->onResponse(Ljava/util/List;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "response":Ljava/util/List;, "Ljava/util/List<Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;>;"
    invoke-static {p1}, Lcom/yopeso/lieferando/util/NetworkUtil;->removeFBfidelityPoints(Ljava/util/List;)V

    .line 90
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$FidelityPointsListener;->this$0:Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;->access$0(Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;)Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;->setOpenActions(Ljava/util/List;)V

    .line 91
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$FidelityPointsListener;->this$0:Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;->access$1(Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$FidelityPointsListener;->this$0:Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->open_points_title:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$FidelityPointsListener;->this$0:Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;

    invoke-static {v6}, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;->access$0(Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;)Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;->getTotal()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$FidelityPointsListener;->this$0:Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;

    new-instance v2, Lcom/yopeso/lieferando/adapters/FidelityActionAdapter;

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$FidelityPointsListener;->this$0:Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$FidelityPointsListener;->this$0:Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;

    invoke-static {v4}, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;->access$0(Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;)Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/yopeso/lieferando/adapters/FidelityActionAdapter;-><init>(Landroid/content/Context;Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;)V

    invoke-static {v1, v2}, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;->access$2(Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;Lcom/yopeso/lieferando/adapters/FidelityActionAdapter;)V

    .line 93
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$FidelityPointsListener;->this$0:Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;->access$3(Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;)Landroid/widget/ExpandableListView;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$FidelityPointsListener;->this$0:Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;

    invoke-static {v2}, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;->access$4(Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;)Lcom/yopeso/lieferando/adapters/FidelityActionAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 94
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$FidelityPointsListener;->this$0:Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;->access$4(Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;)Lcom/yopeso/lieferando/adapters/FidelityActionAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/adapters/FidelityActionAdapter;->getGroupCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$FidelityPointsListener;->this$0:Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;->access$5(Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;)V

    .line 98
    return-void

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$FidelityPointsListener;->this$0:Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;->access$3(Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;)Landroid/widget/ExpandableListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
