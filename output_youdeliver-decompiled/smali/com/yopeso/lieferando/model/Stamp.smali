.class public Lcom/yopeso/lieferando/model/Stamp;
.super Ljava/lang/Object;
.source "Stamp.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yopeso/lieferando/model/Stamp;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x5L


# instance fields
.field private isDiscount:Z

.field private isExclusive:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "exclusive"
    .end annotation
.end field

.field private isExpired:Z

.field private isSelected:Z

.field private mDiscountValue:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "a"
    .end annotation
.end field

.field private mDiscounts:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "discounts"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/Discount;",
            ">;"
        }
    .end annotation
.end field

.field private mExpDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "d"
    .end annotation
.end field

.field private mHeaderText:Ljava/lang/String;

.field private mId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private mImageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "restaurantImage"
    .end annotation
.end field

.field private mNeededStamps:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mc"
    .end annotation
.end field

.field private mPendingStamps:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "p"
    .end annotation
.end field

.field private mRestaurantId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "restaurantId"
    .end annotation
.end field

.field private mRestaurantName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "restaurantName"
    .end annotation
.end field

.field private mUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "restaurantUrl"
    .end annotation
.end field

.field private mUsedDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ud"
    .end annotation
.end field

.field private mUserStamps:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "c"
    .end annotation
.end field

.field private mValidDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vd"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 261
    new-instance v0, Lcom/yopeso/lieferando/model/Stamp$1;

    invoke-direct {v0}, Lcom/yopeso/lieferando/model/Stamp$1;-><init>()V

    sput-object v0, Lcom/yopeso/lieferando/model/Stamp;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 269
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v1, p0, Lcom/yopeso/lieferando/model/Stamp;->mPendingStamps:I

    .line 33
    iput v1, p0, Lcom/yopeso/lieferando/model/Stamp;->mDiscountValue:I

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mValidDate:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mUsedDate:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mExpDate:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mHeaderText:Ljava/lang/String;

    .line 42
    iput-boolean v1, p0, Lcom/yopeso/lieferando/model/Stamp;->isExpired:Z

    .line 44
    iput-boolean v1, p0, Lcom/yopeso/lieferando/model/Stamp;->isSelected:Z

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mDiscounts:Ljava/util/ArrayList;

    .line 53
    iput-boolean v1, p0, Lcom/yopeso/lieferando/model/Stamp;->isDiscount:Z

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v2, p0, Lcom/yopeso/lieferando/model/Stamp;->mPendingStamps:I

    .line 33
    iput v2, p0, Lcom/yopeso/lieferando/model/Stamp;->mDiscountValue:I

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mValidDate:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mUsedDate:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mExpDate:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mHeaderText:Ljava/lang/String;

    .line 42
    iput-boolean v2, p0, Lcom/yopeso/lieferando/model/Stamp;->isExpired:Z

    .line 44
    iput-boolean v2, p0, Lcom/yopeso/lieferando/model/Stamp;->isSelected:Z

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mDiscounts:Ljava/util/ArrayList;

    .line 53
    iput-boolean v2, p0, Lcom/yopeso/lieferando/model/Stamp;->isDiscount:Z

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mId:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mRestaurantId:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mRestaurantName:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mUrl:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mImageUrl:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mUserStamps:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mNeededStamps:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mPendingStamps:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mDiscountValue:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mExpDate:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mHeaderText:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mUsedDate:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mValidDate:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/yopeso/lieferando/model/Stamp;->isExpired:Z

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/yopeso/lieferando/model/Stamp;->isSelected:Z

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_3

    :goto_2
    iput-boolean v1, p0, Lcom/yopeso/lieferando/model/Stamp;->isExclusive:Z

    .line 76
    iget-object v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mDiscounts:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mDiscounts:Ljava/util/ArrayList;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mDiscounts:Ljava/util/ArrayList;

    sget-object v1, Lcom/yopeso/lieferando/model/Discount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 81
    return-void

    :cond_1
    move v0, v2

    .line 73
    goto :goto_0

    :cond_2
    move v0, v2

    .line 74
    goto :goto_1

    :cond_3
    move v1, v2

    .line 75
    goto :goto_2
.end method


# virtual methods
.method public canCollect()Z
    .locals 2

    .prologue
    .line 146
    iget v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mUserStamps:I

    iget v1, p0, Lcom/yopeso/lieferando/model/Stamp;->mPendingStamps:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/yopeso/lieferando/model/Stamp;->mNeededStamps:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method public getDiscountValue()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mDiscountValue:I

    return v0
.end method

.method public getExpirationDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mExpDate:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstDiscount()Lcom/yopeso/lieferando/model/Discount;
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mDiscounts:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mDiscounts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mDiscounts:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/Discount;

    .line 257
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeaderText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mHeaderText:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mId:I

    return v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getNeededStamps()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mNeededStamps:I

    return v0
.end method

.method public getRestaurantId()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mRestaurantId:I

    return v0
.end method

.method public getRestaurantName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mRestaurantName:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUsedDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mUsedDate:Ljava/lang/String;

    return-object v0
.end method

.method public getUserStamps()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mUserStamps:I

    return v0
.end method

.method public getValidFromDate()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 198
    iget-object v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mValidDate:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mValidDate:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 199
    iget-object v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mValidDate:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 201
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getValidFromHour()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0xe

    .line 205
    iget-object v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mValidDate:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mValidDate:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_0

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yopeso/lieferando/model/Stamp;->mValidDate:Ljava/lang/String;

    const/16 v2, 0xb

    const/16 v3, 0xd

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/model/Stamp;->mValidDate:Ljava/lang/String;

    iget-object v2, p0, Lcom/yopeso/lieferando/model/Stamp;->mValidDate:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getmDiscounts()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/Discount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mDiscounts:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hasStampcardCampain()Z
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mNeededStamps:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDiscount()Z
    .locals 1

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/Stamp;->isDiscount:Z

    return v0
.end method

.method public isExclusive()Z
    .locals 1

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/Stamp;->isExclusive:Z

    return v0
.end method

.method public isExpired()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/Stamp;->isExpired:Z

    return v0
.end method

.method public isFull()Z
    .locals 2

    .prologue
    .line 142
    iget v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mUserStamps:I

    iget v1, p0, Lcom/yopeso/lieferando/model/Stamp;->mNeededStamps:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPending()Z
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mPendingStamps:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReadyForUse()Z
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mPendingStamps:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/Stamp;->isFull()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mDiscountValue:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/Stamp;->isSelected:Z

    return v0
.end method

.method public isUsed()Z
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mUsedDate:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDiscount(Z)V
    .locals 0
    .param p1, "isDiscount"    # Z

    .prologue
    .line 232
    iput-boolean p1, p0, Lcom/yopeso/lieferando/model/Stamp;->isDiscount:Z

    .line 233
    return-void
.end method

.method public setExclusive(Z)V
    .locals 0
    .param p1, "isExclusive"    # Z

    .prologue
    .line 245
    iput-boolean p1, p0, Lcom/yopeso/lieferando/model/Stamp;->isExclusive:Z

    .line 246
    return-void
.end method

.method public setExpirationDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/yopeso/lieferando/model/Stamp;->mExpDate:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public setExpired(Z)V
    .locals 0
    .param p1, "expired"    # Z

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/yopeso/lieferando/model/Stamp;->isExpired:Z

    .line 171
    return-void
.end method

.method public setHeaderText(Ljava/lang/String;)V
    .locals 0
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/yopeso/lieferando/model/Stamp;->mHeaderText:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setNeededStamps(I)V
    .locals 0
    .param p1, "stamps"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/yopeso/lieferando/model/Stamp;->mNeededStamps:I

    .line 139
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 224
    iput-boolean p1, p0, Lcom/yopeso/lieferando/model/Stamp;->isSelected:Z

    .line 225
    return-void
.end method

.method public setUserStamps(I)V
    .locals 0
    .param p1, "stamps"    # I

    .prologue
    .line 178
    iput p1, p0, Lcom/yopeso/lieferando/model/Stamp;->mUserStamps:I

    .line 179
    return-void
.end method

.method public setmDiscounts(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/Discount;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "mDiscounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/Discount;>;"
    iput-object p1, p0, Lcom/yopeso/lieferando/model/Stamp;->mDiscounts:Ljava/util/ArrayList;

    .line 110
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 85
    iget v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mRestaurantId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget-object v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mRestaurantName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mImageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mUserStamps:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mNeededStamps:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mPendingStamps:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mDiscountValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget-object v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mExpDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mHeaderText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mUsedDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mValidDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/Stamp;->isExpired:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 99
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/Stamp;->isSelected:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 100
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/Stamp;->isExclusive:Z

    if-eqz v0, :cond_2

    :goto_2
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 101
    iget-object v0, p0, Lcom/yopeso/lieferando/model/Stamp;->mDiscounts:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 102
    return-void

    :cond_0
    move v0, v2

    .line 98
    goto :goto_0

    :cond_1
    move v0, v2

    .line 99
    goto :goto_1

    :cond_2
    move v1, v2

    .line 100
    goto :goto_2
.end method
