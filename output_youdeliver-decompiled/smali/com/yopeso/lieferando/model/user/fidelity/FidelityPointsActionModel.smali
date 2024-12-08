.class public Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;
.super Ljava/lang/Object;
.source "FidelityPointsActionModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mOpenActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mOpenRatingsActions:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mOtherActions:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    new-instance v0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel$1;

    invoke-direct {v0}, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel$1;-><init>()V

    sput-object v0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 144
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;->mOpenActions:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;->mOpenRatingsActions:Ljava/util/LinkedList;

    .line 25
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;->mOtherActions:Ljava/util/LinkedList;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;->mOpenActions:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;->mOpenRatingsActions:Ljava/util/LinkedList;

    .line 25
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;->mOtherActions:Ljava/util/LinkedList;

    .line 31
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;->mOpenActions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;->mOpenActions:Ljava/util/List;

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;->mOpenActions:Ljava/util/List;

    sget-object v1, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 36
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;->mOpenRatingsActions:Ljava/util/LinkedList;

    sget-object v1, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 38
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;->mOtherActions:Ljava/util/LinkedList;

    sget-object v1, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 39
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public getOpenActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;->mOpenActions:Ljava/util/List;

    return-object v0
.end method

.method public getOpenRatingsActions()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;->mOpenRatingsActions:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getOtherActionPoints()I
    .locals 4

    .prologue
    .line 113
    const/4 v1, 0x0

    .line 114
    .local v1, "points":I
    iget-object v2, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;->mOtherActions:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 117
    return v1

    .line 114
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;

    .line 115
    .local v0, "a":Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->getPoints()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0
.end method

.method public getOtherActions()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;->mOtherActions:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getRatingsActionPoints()I
    .locals 4

    .prologue
    .line 101
    const/4 v1, 0x0

    .line 102
    .local v1, "points":I
    iget-object v2, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;->mOpenRatingsActions:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 105
    return v1

    .line 102
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;

    .line 103
    .local v0, "a":Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->getPoints()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0
.end method

.method public getTotal()I
    .locals 4

    .prologue
    .line 124
    const/4 v1, 0x0

    .line 125
    .local v1, "total":I
    iget-object v2, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;->mOpenActions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 128
    return v1

    .line 125
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;

    .line 126
    .local v0, "fpa":Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->getPoints()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0
.end method

.method public hasOpenRatingsAction()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;->mOpenRatingsActions:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOtherActions()Z
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;->mOtherActions:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLastItem(Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;)Z
    .locals 2
    .param p1, "item"    # Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;

    .prologue
    .line 90
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ORDER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;->mOpenRatingsActions:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 93
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;->mOtherActions:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public setOpenActions(Ljava/util/List;)V
    .locals 4
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
    .line 49
    .local p1, "openActions":Ljava/util/List;, "Ljava/util/List<Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;>;"
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;->mOpenActions:Ljava/util/List;

    .line 50
    iget-object v1, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;->mOpenRatingsActions:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 51
    iget-object v1, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;->mOtherActions:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 52
    iget-object v1, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;->mOpenActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 59
    return-void

    .line 52
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;

    .line 53
    .local v0, "fpa":Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ORDER"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 54
    iget-object v2, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;->mOpenRatingsActions:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 56
    :cond_1
    iget-object v2, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;->mOtherActions:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;->mOpenActions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 44
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;->mOpenRatingsActions:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 45
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;->mOtherActions:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 46
    return-void
.end method
