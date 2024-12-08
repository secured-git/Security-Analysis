.class public Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;
.super Ljava/lang/Object;
.source "MealAdditionGroup.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x10d9e8453dbae20dL


# instance fields
.field private mAdditions:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "additions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/meal/Addition;",
            ">;"
        }
    .end annotation
.end field

.field private mDescription:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field private mId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private mMaxChoices:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "maxChoices"
    .end annotation
.end field

.field private mMinChoices:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "minChoices"
    .end annotation
.end field

.field private mName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 146
    new-instance v0, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup$1;

    invoke-direct {v0}, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup$1;-><init>()V

    sput-object v0, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 154
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->mAdditions:Ljava/util/ArrayList;

    .line 51
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;IILjava/util/ArrayList;)V
    .locals 5
    .param p1, "id"    # J
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "description"    # Ljava/lang/String;
    .param p5, "maxChoices"    # I
    .param p6, "minChoices"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/meal/Addition;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p7, "alternatives":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/meal/Addition;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->mAdditions:Ljava/util/ArrayList;

    .line 35
    iput-wide p1, p0, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->mId:J

    .line 36
    iput-object p3, p0, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->mName:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->mDescription:Ljava/lang/String;

    .line 38
    iput p5, p0, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->mMaxChoices:I

    .line 39
    iput p6, p0, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->mMinChoices:I

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->mAdditions:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {p7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 44
    return-void

    .line 41
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/meal/Addition;

    .line 42
    .local v0, "optionAlternative":Lcom/yopeso/lieferando/model/meal/Addition;
    iget-object v2, p0, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->mAdditions:Ljava/util/ArrayList;

    new-instance v3, Lcom/yopeso/lieferando/model/meal/Addition;

    invoke-direct {v3, v0}, Lcom/yopeso/lieferando/model/meal/Addition;-><init>(Lcom/yopeso/lieferando/model/meal/Addition;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->mAdditions:Ljava/util/ArrayList;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->mDescription:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->mName:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->mMaxChoices:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->mMinChoices:I

    .line 58
    iget-object v0, p0, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->mAdditions:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->mAdditions:Ljava/util/ArrayList;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->mAdditions:Ljava/util/ArrayList;

    sget-object v1, Lcom/yopeso/lieferando/model/meal/Addition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;)V
    .locals 9
    .param p1, "mealOption"    # Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;

    .prologue
    .line 47
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->getId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->getMaxChoices()I

    move-result v6

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->getMinChoices()I

    move-result v7

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->getAdditions()Ljava/util/ArrayList;

    move-result-object v8

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;-><init>(JLjava/lang/String;Ljava/lang/String;IILjava/util/ArrayList;)V

    .line 48
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public getAdditions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/meal/Addition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->mAdditions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupPrice()I
    .locals 5

    .prologue
    .line 101
    const/4 v1, 0x0

    .line 102
    .local v1, "cost":I
    iget-object v2, p0, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->mAdditions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 107
    return v1

    .line 102
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/meal/Addition;

    .line 103
    .local v0, "addition":Lcom/yopeso/lieferando/model/meal/Addition;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/meal/Addition;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/meal/Addition;->getCost()I

    move-result v3

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/meal/Addition;->getAmount()I

    move-result v4

    mul-int/2addr v3, v4

    add-int/2addr v1, v3

    goto :goto_0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->mId:J

    return-wide v0
.end method

.method public getMaxChoices()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->mMaxChoices:I

    return v0
.end method

.method public getMinChoices()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->mMinChoices:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfItemSelected()I
    .locals 4

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "nr":I
    iget-object v2, p0, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->mAdditions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 129
    return v0

    .line 124
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/model/meal/Addition;

    .line 125
    .local v1, "o":Lcom/yopeso/lieferando/model/meal/Addition;
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/meal/Addition;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 126
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/meal/Addition;->getAmount()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0
.end method

.method public setAdditions(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/meal/Addition;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "alternatives":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/meal/Addition;>;"
    iput-object p1, p0, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->mAdditions:Ljava/util/ArrayList;

    .line 120
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->mDescription:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->mId:J

    .line 70
    return-void
.end method

.method public setMaxChoices(I)V
    .locals 0
    .param p1, "choices"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->mMaxChoices:I

    .line 94
    return-void
.end method

.method public setMinChoices(I)V
    .locals 0
    .param p1, "minChoices"    # I

    .prologue
    .line 111
    iput p1, p0, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->mMinChoices:I

    .line 112
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->mName:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget v0, p0, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->mMaxChoices:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget v0, p0, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->mMinChoices:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget-object v0, p0, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->mAdditions:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 144
    return-void
.end method
