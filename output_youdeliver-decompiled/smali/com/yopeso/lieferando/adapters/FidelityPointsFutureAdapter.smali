.class public Lcom/yopeso/lieferando/adapters/FidelityPointsFutureAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FidelityPointsFutureAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mModel:Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "model"    # Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 22
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/FidelityPointsFutureAdapter;->mContext:Landroid/content/Context;

    .line 23
    iput-object p3, p0, Lcom/yopeso/lieferando/adapters/FidelityPointsFutureAdapter;->mModel:Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;

    .line 24
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/FidelityPointsFutureAdapter;->mModel:Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;->getOpenActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 29
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/adapters/FidelityPointsFutureAdapter;->getItemViewType(I)I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v3, v2, :cond_1

    .line 30
    :cond_0
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/FidelityPointsFutureAdapter;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 31
    .local v0, "li":Landroid/view/LayoutInflater;
    sget v2, Lcom/yopeso/lieferando/R$layout;->fp_action_cell:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 32
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/adapters/FidelityPointsFutureAdapter;->getItemViewType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 34
    .end local v0    # "li":Landroid/view/LayoutInflater;
    :cond_1
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/FidelityPointsFutureAdapter;->mModel:Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;->getOpenActions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;

    .line 35
    .local v1, "point":Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;
    sget v2, Lcom/yopeso/lieferando/R$id;->FidelityPoints:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "+"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->getPoints()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    sget v2, Lcom/yopeso/lieferando/R$id;->PointsDescription:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/FidelityPointsFutureAdapter;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->getMessage(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    return-object p2
.end method
