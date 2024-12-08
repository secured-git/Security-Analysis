.class public Lcom/yopeso/lieferando/adapters/FidelityActionAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "FidelityActionAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mModel:Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "model"    # Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/FidelityActionAdapter;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/yopeso/lieferando/adapters/FidelityActionAdapter;->mModel:Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;

    .line 28
    return-void
.end method


# virtual methods
.method public getChild(II)Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/yopeso/lieferando/adapters/FidelityActionAdapter;->getGroupCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 33
    if-nez p1, :cond_0

    .line 34
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/FidelityActionAdapter;->mModel:Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;->getOpenRatingsActions()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;

    .line 42
    :goto_0
    return-object v0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/FidelityActionAdapter;->mModel:Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;->getOtherActions()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;

    goto :goto_0

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/FidelityActionAdapter;->mModel:Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;->hasOpenRatingsAction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/FidelityActionAdapter;->mModel:Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;->getOpenRatingsActions()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;

    goto :goto_0

    .line 42
    :cond_2
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/FidelityActionAdapter;->mModel:Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;->getOtherActions()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;

    goto :goto_0
.end method

.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/yopeso/lieferando/adapters/FidelityActionAdapter;->getChild(II)Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 49
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 54
    if-nez p4, :cond_0

    .line 55
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/FidelityActionAdapter;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 56
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/yopeso/lieferando/R$layout;->fp_action_cell:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 57
    const/4 v2, 0x0

    invoke-virtual {p4, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 59
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/yopeso/lieferando/adapters/FidelityActionAdapter;->getChild(II)Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;

    move-result-object v1

    .line 60
    .local v1, "point":Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;
    sget v2, Lcom/yopeso/lieferando/R$id;->ActionPoints:I

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->getPoints()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->getPoints()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->getPoints()I

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    sget v2, Lcom/yopeso/lieferando/R$id;->pointsText:I

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/FidelityActionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$string;->point:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    :cond_1
    sget v2, Lcom/yopeso/lieferando/R$id;->ActionDescription:I

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/FidelityActionAdapter;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->getMessage(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/FidelityActionAdapter;->mModel:Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;

    invoke-virtual {v2, v1}, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;->isLastItem(Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 67
    sget v2, Lcom/yopeso/lieferando/R$drawable;->background_view_rounded_bottom:I

    invoke-virtual {p4, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 71
    :goto_0
    return-object p4

    .line 69
    :cond_2
    sget v2, Lcom/yopeso/lieferando/R$drawable;->background_view_rounded_middle:I

    invoke-virtual {p4, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 3
    .param p1, "groupPosition"    # I

    .prologue
    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/yopeso/lieferando/adapters/FidelityActionAdapter;->getGroupCount()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 78
    if-nez p1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/FidelityActionAdapter;->mModel:Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;->getOpenRatingsActions()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 90
    :goto_0
    return v0

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/FidelityActionAdapter;->mModel:Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;->getOtherActions()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 83
    goto :goto_0

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/FidelityActionAdapter;->mModel:Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;->hasOpenRatingsAction()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 85
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/FidelityActionAdapter;->mModel:Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;->getOpenRatingsActions()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 86
    goto :goto_0

    .line 87
    :cond_2
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/FidelityActionAdapter;->mModel:Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;->getOtherActions()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 2

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "count":I
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/FidelityActionAdapter;->mModel:Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;->hasOpenRatingsAction()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    add-int/lit8 v0, v0, 0x1

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/FidelityActionAdapter;->mModel:Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;->hasOtherActions()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    add-int/lit8 v0, v0, 0x1

    .line 107
    :cond_1
    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 112
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 117
    if-nez p3, :cond_0

    .line 118
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/FidelityActionAdapter;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 119
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/yopeso/lieferando/R$layout;->fp_action_header:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 121
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/FidelityActionAdapter;->mModel:Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;->hasOpenRatingsAction()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    sget v1, Lcom/yopeso/lieferando/R$id;->HeaderTitle:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/FidelityActionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->points_to_collect:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    sget v1, Lcom/yopeso/lieferando/R$id;->HeaderPoints:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/FidelityActionAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/yopeso/lieferando/R$string;->fidelity_points:I

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/yopeso/lieferando/adapters/FidelityActionAdapter;->mModel:Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;->getRatingsActionPoints()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    :goto_0
    return-object p3

    .line 125
    :cond_1
    sget v1, Lcom/yopeso/lieferando/R$id;->HeaderTitle:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/FidelityActionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->other:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    sget v1, Lcom/yopeso/lieferando/R$id;->HeaderPoints:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/FidelityActionAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/yopeso/lieferando/R$string;->fidelity_points:I

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/yopeso/lieferando/adapters/FidelityActionAdapter;->mModel:Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;->getOtherActionPoints()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 138
    const/4 v0, 0x1

    return v0
.end method
