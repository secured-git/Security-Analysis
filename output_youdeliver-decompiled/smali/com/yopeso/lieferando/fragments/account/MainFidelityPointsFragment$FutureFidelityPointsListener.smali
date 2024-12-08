.class Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment$FutureFidelityPointsListener;
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
    name = "FutureFidelityPointsListener"
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
    .line 325
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment$FutureFidelityPointsListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment$FutureFidelityPointsListener;)V
    .locals 0

    .prologue
    .line 325
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment$FutureFidelityPointsListener;-><init>(Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;)V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 344
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment$FutureFidelityPointsListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->access$2(Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;)V

    .line 345
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment$FutureFidelityPointsListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->access$5(Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;Lcom/android/volley/VolleyError;)V

    .line 346
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment$FutureFidelityPointsListener;->onResponse(Ljava/util/List;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;)V
    .locals 1
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
    .line 330
    .local p1, "response":Ljava/util/List;, "Ljava/util/List<Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;>;"
    invoke-static {p1}, Lcom/yopeso/lieferando/util/NetworkUtil;->removeFBfidelityPoints(Ljava/util/List;)V

    .line 331
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment$FutureFidelityPointsListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->access$6(Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;)Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;->setOpenActions(Ljava/util/List;)V

    .line 332
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment$FutureFidelityPointsListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->access$7(Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;)Lcom/yopeso/lieferando/adapters/FidelityPointsFutureAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/adapters/FidelityPointsFutureAdapter;->notifyDataSetChanged()V

    .line 339
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment$FutureFidelityPointsListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->access$2(Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;)V

    .line 340
    return-void
.end method
