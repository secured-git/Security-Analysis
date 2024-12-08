.class public Lcom/yopeso/lieferando/adapters/MainFidelityPointsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MainFidelityPointsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;",
        ">;"
    }
.end annotation


# static fields
.field private static final VIEW_TYPE_FP:I = 0x1

.field private static final VIEW_TYPE_HEADER:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFidelityPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p3, "objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/adapters/MainFidelityPointsAdapter;->mFidelityPoints:Ljava/util/ArrayList;

    .line 34
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/MainFidelityPointsAdapter;->mContext:Landroid/content/Context;

    .line 35
    iput-object p3, p0, Lcom/yopeso/lieferando/adapters/MainFidelityPointsAdapter;->mFidelityPoints:Ljava/util/ArrayList;

    .line 36
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 110
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/MainFidelityPointsAdapter;->mFidelityPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 114
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/MainFidelityPointsAdapter;->mFidelityPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x1

    .line 96
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v1

    if-nez v1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v0

    .line 100
    :cond_1
    if-nez p1, :cond_0

    .line 101
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 40
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/adapters/MainFidelityPointsAdapter;->getItemViewType(I)I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v3, v2, :cond_1

    .line 41
    :cond_0
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/MainFidelityPointsAdapter;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 42
    .local v0, "li":Landroid/view/LayoutInflater;
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/adapters/MainFidelityPointsAdapter;->getItemViewType(I)I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 43
    sget v2, Lcom/yopeso/lieferando/R$layout;->fidelity_points_cell:I

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 47
    :goto_0
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/adapters/MainFidelityPointsAdapter;->getItemViewType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 49
    .end local v0    # "li":Landroid/view/LayoutInflater;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/adapters/MainFidelityPointsAdapter;->getItemViewType(I)I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 50
    const/4 v1, 0x0

    .line 51
    .local v1, "point":Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/MainFidelityPointsAdapter;->mFidelityPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v2, p1, :cond_2

    .line 52
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 53
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/MainFidelityPointsAdapter;->mFidelityPoints:Ljava/util/ArrayList;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "point":Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;
    check-cast v1, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;

    .line 59
    .restart local v1    # "point":Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;
    :goto_1
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

    .line 60
    sget v2, Lcom/yopeso/lieferando/R$id;->PointsDescription:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/MainFidelityPointsAdapter;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->getMessage(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    .end local v1    # "point":Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;
    :cond_2
    return-object p2

    .line 45
    .restart local v0    # "li":Landroid/view/LayoutInflater;
    :cond_3
    sget v2, Lcom/yopeso/lieferando/R$layout;->fp_header:I

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 56
    .end local v0    # "li":Landroid/view/LayoutInflater;
    .restart local v1    # "point":Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;
    :cond_4
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/MainFidelityPointsAdapter;->mFidelityPoints:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "point":Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;
    check-cast v1, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;

    .restart local v1    # "point":Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;
    goto :goto_1
.end method
