.class public Lcom/yopeso/lieferando/model/meal/Meal;
.super Lcom/yopeso/lieferando/model/meal/Menu;
.source "Meal.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yopeso/lieferando/model/meal/Meal$Deserializer;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yopeso/lieferando/model/meal/Meal;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x438ee81028c936beL


# instance fields
.field private isExcludeFromMinCost:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "excludeFromMinCost"
    .end annotation
.end field

.field private mAdditions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/meal/Addition;",
            ">;"
        }
    .end annotation
.end field

.field private mAdditives:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "additives"
    .end annotation
.end field

.field private mAlcoholVolume:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "alcoholVolume"
    .end annotation
.end field

.field private mCategoryId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "categoryId"
    .end annotation
.end field

.field private mComment:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "comment"
    .end annotation
.end field

.field private mCost:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cost"
    .end annotation
.end field

.field private mCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "count"
    .end annotation
.end field

.field private mDescription:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field private mDish:Lcom/yopeso/lieferando/model/meal/DishCategory;

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

.field private mImageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imageUrl"
    .end annotation
.end field

.field private mMaxAmount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "maxAmount"
    .end annotation
.end field

.field private mMinCount:I

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

.field private mSizeId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sizeId"
    .end annotation
.end field

.field private mSizes:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sizes"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/meal/Size;",
            ">;"
        }
    .end annotation
.end field

.field private mSubcategoryId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "subcategoryId"
    .end annotation
.end field

.field private mTotal:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "total"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 353
    new-instance v0, Lcom/yopeso/lieferando/model/meal/Meal$1;

    invoke-direct {v0}, Lcom/yopeso/lieferando/model/meal/Meal$1;-><init>()V

    sput-object v0, Lcom/yopeso/lieferando/model/meal/Meal;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 361
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Lcom/yopeso/lieferando/model/meal/Menu;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mSizes:Ljava/util/ArrayList;

    .line 71
    iput v1, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mCategoryId:I

    .line 73
    iput v1, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mSubcategoryId:I

    .line 76
    new-instance v0, Lcom/yopeso/lieferando/model/meal/DishCategory;

    invoke-direct {v0}, Lcom/yopeso/lieferando/model/meal/DishCategory;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mDish:Lcom/yopeso/lieferando/model/meal/DishCategory;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mAdditions:Ljava/util/ArrayList;

    .line 87
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/util/ArrayList;Lcom/yopeso/lieferando/model/meal/DishCategory;I)V
    .locals 5
    .param p1, "id"    # J
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "imageUrl"    # Ljava/lang/String;
    .param p5, "description"    # Ljava/lang/String;
    .param p6, "excludeFromMinCost"    # Z
    .param p7, "minCount"    # I
    .param p9, "dish"    # Lcom/yopeso/lieferando/model/meal/DishCategory;
    .param p10, "maxAmount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZI",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/meal/Size;",
            ">;",
            "Lcom/yopeso/lieferando/model/meal/DishCategory;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p8, "sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/meal/Size;>;"
    const/4 v2, 0x0

    .line 89
    invoke-direct {p0}, Lcom/yopeso/lieferando/model/meal/Menu;-><init>()V

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mSizes:Ljava/util/ArrayList;

    .line 71
    iput v2, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mCategoryId:I

    .line 73
    iput v2, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mSubcategoryId:I

    .line 76
    new-instance v1, Lcom/yopeso/lieferando/model/meal/DishCategory;

    invoke-direct {v1}, Lcom/yopeso/lieferando/model/meal/DishCategory;-><init>()V

    iput-object v1, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mDish:Lcom/yopeso/lieferando/model/meal/DishCategory;

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mAdditions:Ljava/util/ArrayList;

    .line 90
    iput-wide p1, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mId:J

    .line 91
    iput-object p3, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mName:Ljava/lang/String;

    .line 92
    iput-object p4, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mImageUrl:Ljava/lang/String;

    .line 93
    iput-boolean p6, p0, Lcom/yopeso/lieferando/model/meal/Meal;->isExcludeFromMinCost:Z

    .line 94
    iput-object p5, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mDescription:Ljava/lang/String;

    .line 95
    iput p7, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mMinCount:I

    .line 96
    invoke-virtual {p8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 99
    iput-object p9, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mDish:Lcom/yopeso/lieferando/model/meal/DishCategory;

    .line 100
    iput p10, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mMaxAmount:I

    .line 101
    return-void

    .line 96
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/meal/Size;

    .line 97
    .local v0, "s":Lcom/yopeso/lieferando/model/meal/Size;
    iget-object v2, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mSizes:Ljava/util/ArrayList;

    new-instance v3, Lcom/yopeso/lieferando/model/meal/Size;

    invoke-direct {v3, v0}, Lcom/yopeso/lieferando/model/meal/Size;-><init>(Lcom/yopeso/lieferando/model/meal/Size;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 112
    invoke-direct {p0}, Lcom/yopeso/lieferando/model/meal/Menu;-><init>()V

    .line 55
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mSizes:Ljava/util/ArrayList;

    .line 71
    iput v1, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mCategoryId:I

    .line 73
    iput v1, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mSubcategoryId:I

    .line 76
    new-instance v2, Lcom/yopeso/lieferando/model/meal/DishCategory;

    invoke-direct {v2}, Lcom/yopeso/lieferando/model/meal/DishCategory;-><init>()V

    iput-object v2, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mDish:Lcom/yopeso/lieferando/model/meal/DishCategory;

    .line 78
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mAdditions:Ljava/util/ArrayList;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mId:J

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mMinCount:I

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mName:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mImageUrl:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mDescription:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/yopeso/lieferando/model/meal/Meal;->isExcludeFromMinCost:Z

    .line 119
    iget-object v0, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mSizes:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mSizes:Ljava/util/ArrayList;

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mSizes:Ljava/util/ArrayList;

    sget-object v1, Lcom/yopeso/lieferando/model/meal/Size;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/meal/DishCategory;

    iput-object v0, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mDish:Lcom/yopeso/lieferando/model/meal/DishCategory;

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mMaxAmount:I

    .line 125
    return-void

    :cond_1
    move v0, v1

    .line 118
    goto :goto_0
.end method

.method public constructor <init>(Lcom/yopeso/lieferando/model/meal/Meal;)V
    .locals 12
    .param p1, "meal"    # Lcom/yopeso/lieferando/model/meal/Meal;

    .prologue
    .line 109
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/Meal;->getId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/Meal;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/Meal;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/Meal;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/Meal;->isExcludeFromMinCost()Z

    move-result v7

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/Meal;->getMinCount()I

    move-result v8

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/Meal;->getSizes()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/Meal;->getDish()Lcom/yopeso/lieferando/model/meal/DishCategory;

    move-result-object v10

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/Meal;->getmMaxAmount()I

    move-result v11

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lcom/yopeso/lieferando/model/meal/Meal;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/util/ArrayList;Lcom/yopeso/lieferando/model/meal/DishCategory;I)V

    .line 110
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 350
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
    .line 258
    iget-object v0, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mAdditions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCategoryId()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mCategoryId:I

    return v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mComment:Ljava/lang/String;

    return-object v0
.end method

.method public getCost()I
    .locals 2

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/meal/Meal;->getSelectedSize()Lcom/yopeso/lieferando/model/meal/Size;

    move-result-object v0

    .line 179
    .local v0, "size":Lcom/yopeso/lieferando/model/meal/Size;
    if-nez v0, :cond_0

    .line 180
    const/4 v1, 0x0

    .line 181
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/meal/Meal;->getSelectedSize()Lcom/yopeso/lieferando/model/meal/Size;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/meal/Size;->getTotalCost()I

    move-result v1

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mCount:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDish()Lcom/yopeso/lieferando/model/meal/DishCategory;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mDish:Lcom/yopeso/lieferando/model/meal/DishCategory;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 141
    iget-wide v0, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mId:J

    return-wide v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMealDetailCost()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mCost:I

    return v0
.end method

.method public getMinCount()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mMinCount:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfExtrasSelected()I
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x0

    .line 317
    .local v0, "nr":I
    return v0
.end method

.method public getPfand()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mPfand:I

    return v0
.end method

.method public getPricePerUnit()Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 387
    iget-object v2, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mSizes:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mSizes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 395
    :cond_0
    :goto_0
    return-object v1

    .line 390
    :cond_1
    iget-object v2, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mSizes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/meal/Size;

    .line 391
    .local v0, "size":Lcom/yopeso/lieferando/model/meal/Size;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/meal/Size;->getmUnit()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/meal/Size;->getmPricePerUnit()I

    move-result v3

    if-eqz v3, :cond_2

    .line 392
    new-instance v1, Landroid/util/Pair;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/meal/Size;->getmPricePerUnit()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/meal/Size;->getmUnit()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getSelectedAdditions()Ljava/util/ArrayList;
    .locals 6
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
    .line 337
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 338
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/meal/Addition;>;"
    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/meal/Meal;->getSelectedSize()Lcom/yopeso/lieferando/model/meal/Size;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/meal/Size;->getAdditionsGroups()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 345
    return-object v2

    .line 338
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;

    .line 339
    .local v1, "additionGroup":Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->getAdditions()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/meal/Addition;

    .line 340
    .local v0, "addition":Lcom/yopeso/lieferando/model/meal/Addition;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/meal/Addition;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 341
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getSelectedSize()Lcom/yopeso/lieferando/model/meal/Size;
    .locals 3

    .prologue
    .line 201
    iget-object v1, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mSizes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 206
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 201
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/meal/Size;

    .line 202
    .local v0, "size":Lcom/yopeso/lieferando/model/meal/Size;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/meal/Size;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public getSizeId()J
    .locals 2

    .prologue
    .line 218
    iget-wide v0, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mSizeId:J

    return-wide v0
.end method

.method public getSizes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/meal/Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mSizes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSubcategoryId()I
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mSubcategoryId:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mTotal:I

    return v0
.end method

.method public getmAdditives()Ljava/lang/String;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mAdditives:Ljava/lang/String;

    return-object v0
.end method

.method public getmAlcoholVolume()D
    .locals 2

    .prologue
    .line 422
    iget-wide v0, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mAlcoholVolume:D

    return-wide v0
.end method

.method public getmMaxAmount()I
    .locals 1

    .prologue
    .line 307
    iget v0, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mMaxAmount:I

    return v0
.end method

.method public hasSingleSize()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 290
    iget-object v1, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mSizes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public haveSizeAdditionalsGroups(I)Z
    .locals 1
    .param p1, "sizeIndex"    # I

    .prologue
    .line 302
    iget-object v0, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mSizes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/meal/Size;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/meal/Size;->getAdditionsGroups()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mSizes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/meal/Size;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/meal/Size;->getAdditionsGroups()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExcludeFromMinCost()Z
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/meal/Meal;->isExcludeFromMinCost:Z

    return v0
.end method

.method public matchesQuery(Ljava/lang/String;)Z
    .locals 6
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 366
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 367
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 368
    .local v1, "trimmedQuerry":Ljava/lang/String;
    const-string v4, " "

    const-string v5, ".*"

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 369
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ".*"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 370
    iget-object v4, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mDescription:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mDescription:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 382
    .end local v1    # "trimmedQuerry":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 372
    .restart local v1    # "trimmedQuerry":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    .line 375
    goto :goto_0

    .line 380
    .end local v1    # "trimmedQuerry":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 381
    .local v0, "e":Ljava/util/regex/PatternSyntaxException;
    invoke-virtual {v0}, Ljava/util/regex/PatternSyntaxException;->printStackTrace()V

    move v2, v3

    .line 382
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
    .line 262
    .local p1, "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/meal/Addition;>;"
    iput-object p1, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mAdditions:Ljava/util/ArrayList;

    .line 263
    return-void
.end method

.method public setCategoryId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 278
    iput p1, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mCategoryId:I

    .line 279
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mComment:Ljava/lang/String;

    .line 255
    return-void
.end method

.method public setCost(I)V
    .locals 0
    .param p1, "cost"    # I

    .prologue
    .line 246
    iput p1, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mCost:I

    .line 247
    return-void
.end method

.method public setCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 230
    iput p1, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mCount:I

    .line 231
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mDescription:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setDish(Lcom/yopeso/lieferando/model/meal/DishCategory;)V
    .locals 0
    .param p1, "dc"    # Lcom/yopeso/lieferando/model/meal/DishCategory;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mDish:Lcom/yopeso/lieferando/model/meal/DishCategory;

    .line 299
    return-void
.end method

.method public setExcludeFromMinCost(Z)V
    .locals 0
    .param p1, "excludeFromMinCost"    # Z

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/yopeso/lieferando/model/meal/Meal;->isExcludeFromMinCost:Z

    .line 190
    return-void
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 145
    iput-wide p1, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mId:J

    .line 146
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mImageUrl:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setMinCount(I)V
    .locals 0
    .param p1, "minCount"    # I

    .prologue
    .line 197
    iput p1, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mMinCount:I

    .line 198
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mName:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setPfand(I)V
    .locals 0
    .param p1, "pfand"    # I

    .prologue
    .line 238
    iput p1, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mPfand:I

    .line 239
    return-void
.end method

.method public setSizeId(J)V
    .locals 1
    .param p1, "sizeId"    # J

    .prologue
    .line 222
    iput-wide p1, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mSizeId:J

    .line 223
    return-void
.end method

.method public setSizes(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/meal/Size;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p1, "sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/meal/Size;>;"
    iput-object p1, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mSizes:Ljava/util/ArrayList;

    .line 211
    return-void
.end method

.method public setSubcategoryId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 286
    iput p1, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mSubcategoryId:I

    .line 287
    return-void
.end method

.method public setTotal(I)V
    .locals 0
    .param p1, "total"    # I

    .prologue
    .line 266
    iput p1, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mTotal:I

    .line 267
    return-void
.end method

.method public setmAdditives(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAdditives"    # Ljava/lang/String;

    .prologue
    .line 418
    iput-object p1, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mAdditives:Ljava/lang/String;

    .line 419
    return-void
.end method

.method public setmAlcoholVolume(D)V
    .locals 1
    .param p1, "mAlcoholVolume"    # D

    .prologue
    .line 426
    iput-wide p1, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mAlcoholVolume:D

    .line 427
    return-void
.end method

.method public setmMaxAmount(I)V
    .locals 0
    .param p1, "mMaxAmount"    # I

    .prologue
    .line 311
    iput p1, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mMaxAmount:I

    .line 312
    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 321
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 322
    .local v2, "obj":Lorg/json/JSONObject;
    const-string v3, "id"

    iget-wide v4, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mId:J

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 323
    const-string v3, "sizeId"

    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/meal/Meal;->getSelectedSize()Lcom/yopeso/lieferando/model/meal/Size;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/meal/Size;->getSizeId()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 324
    const-string v3, "cost"

    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/meal/Meal;->getSelectedSize()Lcom/yopeso/lieferando/model/meal/Size;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/meal/Size;->getCost()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 325
    const-string v3, "name"

    iget-object v4, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 326
    const-string v3, "pfand"

    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/meal/Meal;->getSelectedSize()Lcom/yopeso/lieferando/model/meal/Size;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/meal/Size;->getPfand()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 327
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 328
    .local v1, "additions":Lorg/json/JSONArray;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/meal/Meal;->getSelectedAdditions()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 331
    const-string v3, "additions"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 333
    return-object v2

    .line 328
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/meal/Addition;

    .line 329
    .local v0, "add":Lcom/yopeso/lieferando/model/meal/Addition;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/meal/Addition;->toJson()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 130
    iget v0, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mMinCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget-object v0, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mImageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/meal/Meal;->isExcludeFromMinCost:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 135
    iget-object v0, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mSizes:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 136
    iget-object v0, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mDish:Lcom/yopeso/lieferando/model/meal/DishCategory;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 137
    iget v0, p0, Lcom/yopeso/lieferando/model/meal/Meal;->mMaxAmount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    return-void

    .line 134
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
