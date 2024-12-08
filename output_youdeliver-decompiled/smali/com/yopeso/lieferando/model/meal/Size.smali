.class public Lcom/yopeso/lieferando/model/meal/Size;
.super Ljava/lang/Object;
.source "Size.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yopeso/lieferando/model/meal/Size;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x2cc39ceb039c420aL


# instance fields
.field private isSelected:Z

.field private mAdditionsGroups:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "additionsGroups"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mCost:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cost"
    .end annotation
.end field

.field private mHasSpecials:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hasSpecials"
    .end annotation
.end field

.field private mId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private mName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private mPfand:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pfand"
    .end annotation
.end field

.field private mPricePerUnit:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pricePerUnit"
    .end annotation
.end field

.field private mSizeId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sizeId"
    .end annotation
.end field

.field private mUnit:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "unit"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 176
    new-instance v0, Lcom/yopeso/lieferando/model/meal/Size$1;

    invoke-direct {v0}, Lcom/yopeso/lieferando/model/meal/Size$1;-><init>()V

    sput-object v0, Lcom/yopeso/lieferando/model/meal/Size;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 184
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/meal/Size;->mAdditionsGroups:Ljava/util/ArrayList;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yopeso/lieferando/model/meal/Size;->isSelected:Z

    .line 69
    return-void
.end method

.method public constructor <init>(JJILjava/lang/String;ILjava/util/ArrayList;ZZILjava/lang/String;)V
    .locals 5
    .param p1, "id"    # J
    .param p3, "sizeId"    # J
    .param p5, "cost"    # I
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "pfandm"    # I
    .param p9, "isSelected"    # Z
    .param p10, "hasSpecials"    # Z
    .param p11, "price"    # I
    .param p12, "unit"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;",
            ">;ZZI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    .local p8, "additionsGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/yopeso/lieferando/model/meal/Size;->mAdditionsGroups:Ljava/util/ArrayList;

    .line 45
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/yopeso/lieferando/model/meal/Size;->isSelected:Z

    .line 52
    iput-wide p1, p0, Lcom/yopeso/lieferando/model/meal/Size;->mId:J

    .line 53
    iput-wide p3, p0, Lcom/yopeso/lieferando/model/meal/Size;->mSizeId:J

    .line 54
    iput p5, p0, Lcom/yopeso/lieferando/model/meal/Size;->mCost:I

    .line 55
    iput-object p6, p0, Lcom/yopeso/lieferando/model/meal/Size;->mName:Ljava/lang/String;

    .line 56
    iput p7, p0, Lcom/yopeso/lieferando/model/meal/Size;->mPfand:I

    .line 57
    if-eqz p8, :cond_0

    .line 58
    invoke-virtual {p8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 62
    :cond_0
    iput-boolean p9, p0, Lcom/yopeso/lieferando/model/meal/Size;->isSelected:Z

    .line 63
    iput-boolean p10, p0, Lcom/yopeso/lieferando/model/meal/Size;->mHasSpecials:Z

    .line 64
    move/from16 v0, p11

    iput v0, p0, Lcom/yopeso/lieferando/model/meal/Size;->mPricePerUnit:I

    .line 65
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/yopeso/lieferando/model/meal/Size;->mUnit:Ljava/lang/String;

    .line 66
    return-void

    .line 58
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;

    .line 59
    .local v1, "option":Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;
    iget-object v3, p0, Lcom/yopeso/lieferando/model/meal/Size;->mAdditionsGroups:Ljava/util/ArrayList;

    new-instance v4, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;

    invoke-direct {v4, v1}, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;-><init>(Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/meal/Size;->mAdditionsGroups:Ljava/util/ArrayList;

    .line 45
    iput-boolean v2, p0, Lcom/yopeso/lieferando/model/meal/Size;->isSelected:Z

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/yopeso/lieferando/model/meal/Size;->mId:J

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/yopeso/lieferando/model/meal/Size;->mSizeId:J

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/model/meal/Size;->mCost:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/meal/Size;->mName:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/model/meal/Size;->mPfand:I

    .line 77
    iget-object v0, p0, Lcom/yopeso/lieferando/model/meal/Size;->mAdditionsGroups:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/meal/Size;->mAdditionsGroups:Ljava/util/ArrayList;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/model/meal/Size;->mAdditionsGroups:Ljava/util/ArrayList;

    sget-object v3, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/yopeso/lieferando/model/meal/Size;->isSelected:Z

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_1
    iput-boolean v1, p0, Lcom/yopeso/lieferando/model/meal/Size;->mHasSpecials:Z

    .line 83
    return-void

    :cond_1
    move v0, v2

    .line 81
    goto :goto_0

    :cond_2
    move v1, v2

    .line 82
    goto :goto_1
.end method

.method public constructor <init>(Lcom/yopeso/lieferando/model/meal/Size;)V
    .locals 14
    .param p1, "size"    # Lcom/yopeso/lieferando/model/meal/Size;

    .prologue
    .line 48
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/Size;->getId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/Size;->getSizeId()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/Size;->getCost()I

    move-result v6

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/Size;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/Size;->getPfand()I

    move-result v8

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/Size;->getAdditionsGroups()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/Size;->isSelected()Z

    move-result v10

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/Size;->getHasSpecials()Z

    move-result v11

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/Size;->getmPricePerUnit()I

    move-result v12

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/Size;->getmUnit()Ljava/lang/String;

    move-result-object v13

    move-object v1, p0

    invoke-direct/range {v1 .. v13}, Lcom/yopeso/lieferando/model/meal/Size;-><init>(JJILjava/lang/String;ILjava/util/ArrayList;ZZILjava/lang/String;)V

    .line 49
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public getAdditionsGroups()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/yopeso/lieferando/model/meal/Size;->mAdditionsGroups:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCost()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/yopeso/lieferando/model/meal/Size;->mCost:I

    return v0
.end method

.method public getHasSpecials()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/meal/Size;->mHasSpecials:Z

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/yopeso/lieferando/model/meal/Size;->mId:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/yopeso/lieferando/model/meal/Size;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPfand()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/yopeso/lieferando/model/meal/Size;->mPfand:I

    return v0
.end method

.method public getSizeId()J
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/yopeso/lieferando/model/meal/Size;->mSizeId:J

    return-wide v0
.end method

.method public getTotalCost()I
    .locals 4

    .prologue
    .line 150
    iget v1, p0, Lcom/yopeso/lieferando/model/meal/Size;->mCost:I

    .line 151
    .local v1, "cost":I
    iget-object v2, p0, Lcom/yopeso/lieferando/model/meal/Size;->mAdditionsGroups:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 152
    iget-object v2, p0, Lcom/yopeso/lieferando/model/meal/Size;->mAdditionsGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 156
    :cond_0
    return v1

    .line 152
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;

    .line 153
    .local v0, "additionGroup":Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->getGroupPrice()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0
.end method

.method public getmPricePerUnit()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/yopeso/lieferando/model/meal/Size;->mPricePerUnit:I

    return v0
.end method

.method public getmUnit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/yopeso/lieferando/model/meal/Size;->mUnit:Ljava/lang/String;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/meal/Size;->isSelected:Z

    return v0
.end method

.method public setAdditionsGroups(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, "additionsGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;>;"
    iput-object p1, p0, Lcom/yopeso/lieferando/model/meal/Size;->mAdditionsGroups:Ljava/util/ArrayList;

    .line 135
    return-void
.end method

.method public setCost(I)V
    .locals 0
    .param p1, "cost"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/yopeso/lieferando/model/meal/Size;->mCost:I

    .line 103
    return-void
.end method

.method public setHasSpecials(Z)V
    .locals 0
    .param p1, "hasSpecials"    # Z

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/yopeso/lieferando/model/meal/Size;->mHasSpecials:Z

    .line 131
    return-void
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 86
    iput-wide p1, p0, Lcom/yopeso/lieferando/model/meal/Size;->mId:J

    .line 87
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/yopeso/lieferando/model/meal/Size;->mName:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setPfand(I)V
    .locals 0
    .param p1, "pfand"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/yopeso/lieferando/model/meal/Size;->mPfand:I

    .line 123
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "isSelected"    # Z

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/yopeso/lieferando/model/meal/Size;->isSelected:Z

    .line 143
    return-void
.end method

.method public setSizeId(J)V
    .locals 1
    .param p1, "sizeId"    # J

    .prologue
    .line 98
    iput-wide p1, p0, Lcom/yopeso/lieferando/model/meal/Size;->mSizeId:J

    .line 99
    return-void
.end method

.method public setmPricePerUnit(I)V
    .locals 0
    .param p1, "mPricePerUnit"    # I

    .prologue
    .line 191
    iput p1, p0, Lcom/yopeso/lieferando/model/meal/Size;->mPricePerUnit:I

    .line 192
    return-void
.end method

.method public setmUnit(Ljava/lang/String;)V
    .locals 0
    .param p1, "mUnit"    # Ljava/lang/String;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/yopeso/lieferando/model/meal/Size;->mUnit:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 166
    iget-wide v4, p0, Lcom/yopeso/lieferando/model/meal/Size;->mId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 167
    iget-wide v4, p0, Lcom/yopeso/lieferando/model/meal/Size;->mSizeId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 168
    iget v0, p0, Lcom/yopeso/lieferando/model/meal/Size;->mCost:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget-object v0, p0, Lcom/yopeso/lieferando/model/meal/Size;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    iget v0, p0, Lcom/yopeso/lieferando/model/meal/Size;->mPfand:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget-object v0, p0, Lcom/yopeso/lieferando/model/meal/Size;->mAdditionsGroups:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 172
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/meal/Size;->isSelected:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/meal/Size;->mHasSpecials:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    return-void

    :cond_0
    move v0, v2

    .line 172
    goto :goto_0

    :cond_1
    move v1, v2

    .line 173
    goto :goto_1
.end method
