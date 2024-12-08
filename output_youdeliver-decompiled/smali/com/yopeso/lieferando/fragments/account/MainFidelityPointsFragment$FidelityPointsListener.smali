.class Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment$FidelityPointsListener;
.super Ljava/lang/Object;
.source "MainFidelityPointsFragment.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;
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
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment$FidelityPointsListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment$FidelityPointsListener;)V
    .locals 0

    .prologue
    .line 300
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment$FidelityPointsListener;-><init>(Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;)V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 319
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment$FidelityPointsListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->access$2(Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;)V

    .line 320
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment$FidelityPointsListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->access$5(Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;Lcom/android/volley/VolleyError;)V

    .line 321
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment$FidelityPointsListener;->onResponse(Ljava/util/List;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;)V
    .locals 2
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
    .line 304
    .local p1, "response":Ljava/util/List;, "Ljava/util/List<Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;>;"
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment$FidelityPointsListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->access$0(Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 305
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment$FidelityPointsListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->access$1(Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;)Lcom/yopeso/lieferando/adapters/MainFidelityPointsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/adapters/MainFidelityPointsAdapter;->notifyDataSetChanged()V

    .line 306
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment$FidelityPointsListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->access$2(Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;)V

    .line 309
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment$FidelityPointsListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->access$0(Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment$FidelityPointsListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->access$3(Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment$FidelityPointsListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->access$4(Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;)Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 315
    :cond_0
    return-void
.end method
