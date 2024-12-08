.class public Lcom/yopeso/lieferando/model/Discount;
.super Ljava/lang/Object;
.source "Discount.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final ABSOLUTE_DISCOUNT:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yopeso/lieferando/model/Discount;",
            ">;"
        }
    .end annotation
.end field

.field public static final RELATIVE_DISCOUNT:I = 0x0

.field private static final serialVersionUID:J = 0x7L


# instance fields
.field private mActive:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "active"
    .end annotation
.end field

.field private mDaytime:Lcom/yopeso/lieferando/model/Daytime;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "daytime"
    .end annotation
.end field

.field private mDiscountName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private mEndDate:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "endDate"
    .end annotation
.end field

.field private mId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private mKind:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "kind"
    .end annotation
.end field

.field private mMinAmount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "minAmount"
    .end annotation
.end field

.field private mNewCustomer:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "newCustomer"
    .end annotation
.end field

.field private mRabatt:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rabatt"
    .end annotation
.end field

.field private mStartDate:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "startDate"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 239
    new-instance v0, Lcom/yopeso/lieferando/model/Discount$1;

    invoke-direct {v0}, Lcom/yopeso/lieferando/model/Discount$1;-><init>()V

    sput-object v0, Lcom/yopeso/lieferando/model/Discount;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 247
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/model/Discount;->mId:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/Discount;->mDiscountName:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/model/Discount;->mKind:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/model/Discount;->mRabatt:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/model/Discount;->mMinAmount:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/yopeso/lieferando/model/Discount;->mNewCustomer:Z

    .line 60
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/Discount;->mStartDate:Ljava/util/Date;

    .line 61
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/Discount;->mEndDate:Ljava/util/Date;

    .line 62
    const-class v0, Lcom/yopeso/lieferando/model/Daytime;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/Daytime;

    iput-object v0, p0, Lcom/yopeso/lieferando/model/Discount;->mDaytime:Lcom/yopeso/lieferando/model/Daytime;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/yopeso/lieferando/model/Discount;->mActive:Z

    .line 64
    return-void

    :cond_0
    move v0, v2

    .line 59
    goto :goto_0

    :cond_1
    move v1, v2

    .line 63
    goto :goto_1
.end method

.method private isActiveDate(Ljava/util/Date;)Z
    .locals 3
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 97
    if-nez p1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v0

    .line 100
    :cond_1
    iget-object v2, p0, Lcom/yopeso/lieferando/model/Discount;->mStartDate:Ljava/util/Date;

    if-nez v2, :cond_3

    .line 101
    iget-object v0, p0, Lcom/yopeso/lieferando/model/Discount;->mEndDate:Ljava/util/Date;

    if-nez v0, :cond_2

    move v0, v1

    .line 102
    goto :goto_0

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/yopeso/lieferando/model/Discount;->mEndDate:Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    goto :goto_0

    .line 109
    :cond_3
    iget-object v2, p0, Lcom/yopeso/lieferando/model/Discount;->mEndDate:Ljava/util/Date;

    if-nez v2, :cond_4

    .line 110
    iget-object v0, p0, Lcom/yopeso/lieferando/model/Discount;->mStartDate:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    goto :goto_0

    .line 113
    :cond_4
    iget-object v2, p0, Lcom/yopeso/lieferando/model/Discount;->mStartDate:Ljava/util/Date;

    invoke-virtual {p1, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/yopeso/lieferando/model/Discount;->mEndDate:Ljava/util/Date;

    invoke-virtual {v2, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/yopeso/lieferando/model/Discount;->mId:I

    return v0
.end method

.method public getmDaytime()Lcom/yopeso/lieferando/model/Daytime;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/yopeso/lieferando/model/Discount;->mDaytime:Lcom/yopeso/lieferando/model/Daytime;

    return-object v0
.end method

.method public getmDiscountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/yopeso/lieferando/model/Discount;->mDiscountName:Ljava/lang/String;

    return-object v0
.end method

.method public getmEndDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/yopeso/lieferando/model/Discount;->mEndDate:Ljava/util/Date;

    return-object v0
.end method

.method public getmId()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/yopeso/lieferando/model/Discount;->mId:I

    return v0
.end method

.method public getmKind()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/yopeso/lieferando/model/Discount;->mKind:I

    return v0
.end method

.method public getmMinAmount()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/yopeso/lieferando/model/Discount;->mMinAmount:I

    return v0
.end method

.method public getmRabatt()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/yopeso/lieferando/model/Discount;->mRabatt:I

    return v0
.end method

.method public getmStartDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/yopeso/lieferando/model/Discount;->mStartDate:Ljava/util/Date;

    return-object v0
.end method

.method public isActive(Ljava/util/Date;)Z
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/yopeso/lieferando/model/Discount;->mDaytime:Lcom/yopeso/lieferando/model/Daytime;

    if-nez v0, :cond_0

    .line 124
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/model/Discount;->isActiveDate(Ljava/util/Date;)Z

    move-result v0

    .line 127
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/model/Discount;->isActiveDate(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yopeso/lieferando/model/Discount;->mDaytime:Lcom/yopeso/lieferando/model/Daytime;

    invoke-virtual {v0, p1}, Lcom/yopeso/lieferando/model/Daytime;->isActive(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBetterDiscount(Lcom/yopeso/lieferando/model/Discount;)Z
    .locals 4
    .param p1, "discountToCompare"    # Lcom/yopeso/lieferando/model/Discount;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 254
    iget v2, p0, Lcom/yopeso/lieferando/model/Discount;->mKind:I

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/Discount;->getmKind()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 256
    iget v2, p0, Lcom/yopeso/lieferando/model/Discount;->mRabatt:I

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/Discount;->getmRabatt()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 264
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 256
    goto :goto_0

    .line 259
    :cond_2
    iget v2, p0, Lcom/yopeso/lieferando/model/Discount;->mKind:I

    if-ne v2, v0, :cond_3

    .line 261
    iget v2, p0, Lcom/yopeso/lieferando/model/Discount;->mRabatt:I

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/Discount;->getmRabatt()I

    move-result v3

    mul-int/lit8 v3, v3, 0x11

    div-int/lit8 v3, v3, 0x64

    if-gt v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 264
    :cond_3
    iget v2, p0, Lcom/yopeso/lieferando/model/Discount;->mRabatt:I

    mul-int/lit8 v2, v2, 0x11

    div-int/lit8 v2, v2, 0x64

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/Discount;->getmRabatt()I

    move-result v3

    if-gt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public ismActive()Z
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/Discount;->mActive:Z

    return v0
.end method

.method public ismNewCustomer()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/Discount;->mNewCustomer:Z

    return v0
.end method

.method public setmActive(Z)V
    .locals 0
    .param p1, "mActive"    # Z

    .prologue
    .line 236
    iput-boolean p1, p0, Lcom/yopeso/lieferando/model/Discount;->mActive:Z

    .line 237
    return-void
.end method

.method public setmDaytime(Lcom/yopeso/lieferando/model/Daytime;)V
    .locals 0
    .param p1, "mDaytime"    # Lcom/yopeso/lieferando/model/Daytime;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/yopeso/lieferando/model/Discount;->mDaytime:Lcom/yopeso/lieferando/model/Daytime;

    .line 227
    return-void
.end method

.method public setmDiscountName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDiscountName"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/yopeso/lieferando/model/Discount;->mDiscountName:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setmEndDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "mEndDate"    # Ljava/util/Date;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/yopeso/lieferando/model/Discount;->mEndDate:Ljava/util/Date;

    .line 217
    return-void
.end method

.method public setmId(I)V
    .locals 0
    .param p1, "mId"    # I

    .prologue
    .line 146
    iput p1, p0, Lcom/yopeso/lieferando/model/Discount;->mId:I

    .line 147
    return-void
.end method

.method public setmKind(I)V
    .locals 0
    .param p1, "mKind"    # I

    .prologue
    .line 166
    iput p1, p0, Lcom/yopeso/lieferando/model/Discount;->mKind:I

    .line 167
    return-void
.end method

.method public setmMinAmount(I)V
    .locals 0
    .param p1, "mMinAmount"    # I

    .prologue
    .line 186
    iput p1, p0, Lcom/yopeso/lieferando/model/Discount;->mMinAmount:I

    .line 187
    return-void
.end method

.method public setmNewCustomer(Z)V
    .locals 0
    .param p1, "mNewCustomer"    # Z

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/yopeso/lieferando/model/Discount;->mNewCustomer:Z

    .line 197
    return-void
.end method

.method public setmRabatt(I)V
    .locals 0
    .param p1, "mRabatt"    # I

    .prologue
    .line 176
    iput p1, p0, Lcom/yopeso/lieferando/model/Discount;->mRabatt:I

    .line 177
    return-void
.end method

.method public setmStartDates(Ljava/util/Date;)V
    .locals 0
    .param p1, "mStartDate"    # Ljava/util/Date;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/yopeso/lieferando/model/Discount;->mStartDate:Ljava/util/Date;

    .line 207
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 68
    iget v0, p0, Lcom/yopeso/lieferando/model/Discount;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget-object v0, p0, Lcom/yopeso/lieferando/model/Discount;->mDiscountName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget v0, p0, Lcom/yopeso/lieferando/model/Discount;->mKind:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget v0, p0, Lcom/yopeso/lieferando/model/Discount;->mRabatt:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget v0, p0, Lcom/yopeso/lieferando/model/Discount;->mMinAmount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/Discount;->mNewCustomer:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 74
    iget-object v0, p0, Lcom/yopeso/lieferando/model/Discount;->mStartDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 75
    iget-object v0, p0, Lcom/yopeso/lieferando/model/Discount;->mEndDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 76
    iget-object v0, p0, Lcom/yopeso/lieferando/model/Discount;->mDaytime:Lcom/yopeso/lieferando/model/Daytime;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 77
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/Discount;->mActive:Z

    if-eqz v0, :cond_1

    :goto_1
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 78
    return-void

    :cond_0
    move v0, v2

    .line 73
    goto :goto_0

    :cond_1
    move v1, v2

    .line 77
    goto :goto_1
.end method
