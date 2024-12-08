.class public Lcom/yopeso/lieferando/model/cart/CartItem;
.super Ljava/lang/Object;
.source "CartItem.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yopeso/lieferando/model/cart/CartItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "count"
    .end annotation
.end field

.field private mMeal:Lcom/yopeso/lieferando/model/meal/Meal;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "meal"
    .end annotation
.end field

.field private mOptionalNotes:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/yopeso/lieferando/model/cart/CartItem$1;

    invoke-direct {v0}, Lcom/yopeso/lieferando/model/cart/CartItem$1;-><init>()V

    sput-object v0, Lcom/yopeso/lieferando/model/cart/CartItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 90
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/yopeso/lieferando/model/cart/CartItem;->mOptionalNotes:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(ILcom/yopeso/lieferando/model/meal/Meal;Ljava/lang/String;)V
    .locals 1
    .param p1, "count"    # I
    .param p2, "meal"    # Lcom/yopeso/lieferando/model/meal/Meal;
    .param p3, "optionalNotes"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/yopeso/lieferando/model/cart/CartItem;->mOptionalNotes:Ljava/lang/String;

    .line 41
    iput p1, p0, Lcom/yopeso/lieferando/model/cart/CartItem;->mCount:I

    .line 42
    new-instance v0, Lcom/yopeso/lieferando/model/meal/Meal;

    invoke-direct {v0, p2}, Lcom/yopeso/lieferando/model/meal/Meal;-><init>(Lcom/yopeso/lieferando/model/meal/Meal;)V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/cart/CartItem;->mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

    .line 43
    iput-object p3, p0, Lcom/yopeso/lieferando/model/cart/CartItem;->mOptionalNotes:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/yopeso/lieferando/model/cart/CartItem;->mOptionalNotes:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/model/cart/CartItem;->mCount:I

    .line 66
    const-class v0, Lcom/yopeso/lieferando/model/meal/Meal;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/meal/Meal;

    iput-object v0, p0, Lcom/yopeso/lieferando/model/cart/CartItem;->mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/cart/CartItem;->mOptionalNotes:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/yopeso/lieferando/model/cart/CartItem;)V
    .locals 3
    .param p1, "cart"    # Lcom/yopeso/lieferando/model/cart/CartItem;

    .prologue
    .line 47
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/cart/CartItem;->getCount()I

    move-result v0

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/cart/CartItem;->getMeal()Lcom/yopeso/lieferando/model/meal/Meal;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/cart/CartItem;->getOptionalNotes()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/yopeso/lieferando/model/cart/CartItem;-><init>(ILcom/yopeso/lieferando/model/meal/Meal;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/yopeso/lieferando/model/meal/Meal;)V
    .locals 1
    .param p1, "m"    # Lcom/yopeso/lieferando/model/meal/Meal;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/yopeso/lieferando/model/cart/CartItem;->mOptionalNotes:Ljava/lang/String;

    .line 60
    const/4 v0, 0x1

    iput v0, p0, Lcom/yopeso/lieferando/model/cart/CartItem;->mCount:I

    .line 61
    iput-object p1, p0, Lcom/yopeso/lieferando/model/cart/CartItem;->mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

    .line 62
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public equalIds(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 199
    instance-of v1, p1, Lcom/yopeso/lieferando/model/cart/CartItem;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 200
    check-cast v0, Lcom/yopeso/lieferando/model/cart/CartItem;

    .line 201
    .local v0, "otherItem":Lcom/yopeso/lieferando/model/cart/CartItem;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/CartItem;->getMeal()Lcom/yopeso/lieferando/model/meal/Meal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/meal/Meal;->getId()J

    move-result-wide v2

    iget-object v1, p0, Lcom/yopeso/lieferando/model/cart/CartItem;->mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/meal/Meal;->getId()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 202
    const/4 v1, 0x1

    .line 205
    .end local v0    # "otherItem":Lcom/yopeso/lieferando/model/cart/CartItem;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public equalToMeal(Lcom/yopeso/lieferando/model/meal/Meal;)Z
    .locals 4
    .param p1, "m"    # Lcom/yopeso/lieferando/model/meal/Meal;

    .prologue
    .line 209
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/Meal;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/yopeso/lieferando/model/cart/CartItem;->mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/meal/Meal;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 210
    const/4 v0, 0x1

    .line 212
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 188
    instance-of v1, p1, Lcom/yopeso/lieferando/model/cart/CartItem;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 189
    check-cast v0, Lcom/yopeso/lieferando/model/cart/CartItem;

    .line 190
    .local v0, "otherItem":Lcom/yopeso/lieferando/model/cart/CartItem;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/CartItem;->getMeal()Lcom/yopeso/lieferando/model/meal/Meal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/meal/Meal;->getId()J

    move-result-wide v2

    iget-object v1, p0, Lcom/yopeso/lieferando/model/cart/CartItem;->mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/meal/Meal;->getId()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/CartItem;->getMealContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/cart/CartItem;->getMealContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/CartItem;->getMeal()Lcom/yopeso/lieferando/model/meal/Meal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/meal/Meal;->getSelectedSize()Lcom/yopeso/lieferando/model/meal/Size;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/meal/Size;->getId()J

    move-result-wide v2

    iget-object v1, p0, Lcom/yopeso/lieferando/model/cart/CartItem;->mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/meal/Meal;->getSelectedSize()Lcom/yopeso/lieferando/model/meal/Size;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/meal/Size;->getId()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 191
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/CartItem;->getMeal()Lcom/yopeso/lieferando/model/meal/Meal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/meal/Meal;->getCost()I

    move-result v1

    iget-object v2, p0, Lcom/yopeso/lieferando/model/cart/CartItem;->mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/meal/Meal;->getCost()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/CartItem;->getOptionalNotes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/cart/CartItem;->getOptionalNotes()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    const/4 v1, 0x1

    .line 195
    .end local v0    # "otherItem":Lcom/yopeso/lieferando/model/cart/CartItem;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCostForMinOrder()I
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/CartItem;->mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/meal/Meal;->isExcludeFromMinCost()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const/4 v0, 0x0

    .line 113
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/CartItem;->mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/meal/Meal;->getCost()I

    move-result v0

    iget v1, p0, Lcom/yopeso/lieferando/model/cart/CartItem;->mCount:I

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/yopeso/lieferando/model/cart/CartItem;->mCount:I

    return v0
.end method

.method public getDescriptionMeal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/CartItem;->mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/meal/Meal;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemCost()I
    .locals 2

    .prologue
    .line 98
    iget-object v1, p0, Lcom/yopeso/lieferando/model/cart/CartItem;->mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/meal/Meal;->getCost()I

    move-result v0

    .line 99
    .local v0, "cost":I
    iget v1, p0, Lcom/yopeso/lieferando/model/cart/CartItem;->mCount:I

    mul-int/2addr v1, v0

    return v1
.end method

.method public getMeal()Lcom/yopeso/lieferando/model/meal/Meal;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/CartItem;->mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

    return-object v0
.end method

.method public getMealContent()Ljava/lang/String;
    .locals 5

    .prologue
    .line 123
    const-string v1, ""

    .line 124
    .local v1, "content":Ljava/lang/String;
    iget-object v2, p0, Lcom/yopeso/lieferando/model/cart/CartItem;->mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/meal/Meal;->getSelectedAdditions()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 127
    return-object v1

    .line 124
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/meal/Addition;

    .line 125
    .local v0, "add":Lcom/yopeso/lieferando/model/meal/Addition;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "+ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/meal/Addition;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/meal/Addition;->getAmount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getOptionalNotes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/CartItem;->mOptionalNotes:Ljava/lang/String;

    return-object v0
.end method

.method public haveSizeAdditions()Z
    .locals 3

    .prologue
    .line 135
    iget-object v1, p0, Lcom/yopeso/lieferando/model/cart/CartItem;->mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/meal/Meal;->getSizes()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 140
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 135
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/meal/Size;

    .line 136
    .local v0, "size":Lcom/yopeso/lieferando/model/meal/Size;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/meal/Size;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/meal/Size;->getAdditionsGroups()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/meal/Size;->getAdditionsGroups()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 137
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 153
    iput p1, p0, Lcom/yopeso/lieferando/model/cart/CartItem;->mCount:I

    .line 154
    return-void
.end method

.method public setMeal(Lcom/yopeso/lieferando/model/meal/Meal;)V
    .locals 0
    .param p1, "meal"    # Lcom/yopeso/lieferando/model/meal/Meal;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/yopeso/lieferando/model/cart/CartItem;->mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

    .line 162
    return-void
.end method

.method public setOptionalNotes(Ljava/lang/String;)V
    .locals 0
    .param p1, "notes"    # Ljava/lang/String;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/yopeso/lieferando/model/cart/CartItem;->mOptionalNotes:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public toOrderJson()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 169
    iget-object v1, p0, Lcom/yopeso/lieferando/model/cart/CartItem;->mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/meal/Meal;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    .line 170
    .local v0, "obj":Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/yopeso/lieferando/model/cart/CartItem;->mOptionalNotes:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yopeso/lieferando/model/cart/CartItem;->mOptionalNotes:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 171
    const-string v1, "comment"

    iget-object v2, p0, Lcom/yopeso/lieferando/model/cart/CartItem;->mOptionalNotes:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    :cond_0
    const-string v1, "total"

    iget-object v2, p0, Lcom/yopeso/lieferando/model/cart/CartItem;->mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/meal/Meal;->getCost()I

    move-result v2

    iget v3, p0, Lcom/yopeso/lieferando/model/cart/CartItem;->mCount:I

    mul-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 174
    const-string v1, "count"

    iget v2, p0, Lcom/yopeso/lieferando/model/cart/CartItem;->mCount:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 175
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 72
    iget v0, p0, Lcom/yopeso/lieferando/model/cart/CartItem;->mCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/CartItem;->mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 74
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/CartItem;->mOptionalNotes:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    return-void
.end method
