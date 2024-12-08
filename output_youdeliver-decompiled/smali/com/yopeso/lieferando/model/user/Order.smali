.class public Lcom/yopeso/lieferando/model/user/Order;
.super Ljava/lang/Object;
.source "Order.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yopeso/lieferando/model/user/Order$Deserializer;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yopeso/lieferando/model/user/Order;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x5a9ea8b8fc7070a3L


# instance fields
.field private isCreateUser:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "createuser"
    .end annotation
.end field

.field private isRateable:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rateable"
    .end annotation
.end field

.field private isRated:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rated"
    .end annotation
.end field

.field private mCharge:I

.field private mComment:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "comment"
    .end annotation
.end field

.field private mDeliveryCost:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "delivercost"
    .end annotation
.end field

.field private mDeliveryDay:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deliverday"
    .end annotation
.end field

.field private mDeliveryTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "delivertime"
    .end annotation
.end field

.field private mDiscountAmount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "discountAmount"
    .end annotation
.end field

.field private mDiscountCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "discountCode"
    .end annotation
.end field

.field private mDiscountType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "discountType"
    .end annotation
.end field

.field private mHash:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hashtag"
    .end annotation
.end field

.field private mId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private mIsFavorite:Z

.field private mLocation:Lcom/yopeso/lieferando/model/user/Location;

.field private mMeals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yopeso/lieferando/model/meal/Meal;",
            ">;"
        }
    .end annotation
.end field

.field private mNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "nr"
    .end annotation
.end field

.field private mOrderDay:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "orderday"
    .end annotation
.end field

.field private mOrderTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ordertime"
    .end annotation
.end field

.field private mPaymentMethod:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "payment"
    .end annotation
.end field

.field private mRating:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rating"
    .end annotation
.end field

.field private mRatingAuthor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ratingAuthor"
    .end annotation
.end field

.field private mRatingComment:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ratingComment"
    .end annotation
.end field

.field private mRatingDelivery:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ratingDelivery"
    .end annotation
.end field

.field private mRatingQuality:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ratingQuality"
    .end annotation
.end field

.field private mRatingTime:Ljava/util/Date;

.field private mRatingTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ratingTitle"
    .end annotation
.end field

.field private mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

.field private mState:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "state"
    .end annotation
.end field

.field private mTaxes:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "taxes"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/user/Tax;",
            ">;"
        }
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
    .line 476
    new-instance v0, Lcom/yopeso/lieferando/model/user/Order$1;

    invoke-direct {v0}, Lcom/yopeso/lieferando/model/user/Order$1;-><init>()V

    sput-object v0, Lcom/yopeso/lieferando/model/user/Order;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 484
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mTaxes:Ljava/util/ArrayList;

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mTaxes:Ljava/util/ArrayList;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mId:I

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mDeliveryCost:I

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mTotal:I

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mPaymentMethod:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/yopeso/lieferando/model/user/Order;->isRated:Z

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/yopeso/lieferando/model/user/Order;->isRateable:Z

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mComment:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mHash:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_3

    :goto_2
    iput-boolean v1, p0, Lcom/yopeso/lieferando/model/user/Order;->isCreateUser:Z

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mDiscountCode:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mDiscountType:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mDiscountAmount:I

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mRating:F

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mRatingQuality:I

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mRatingDelivery:I

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mRatingComment:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mRatingTitle:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mState:I

    .line 129
    const-class v0, Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/user/Location;

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mLocation:Lcom/yopeso/lieferando/model/user/Location;

    .line 130
    const-class v0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mOrderDay:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mOrderTime:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mDeliveryDay:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mDeliveryTime:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mMeals:Ljava/util/List;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mMeals:Ljava/util/List;

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mMeals:Ljava/util/List;

    sget-object v1, Lcom/yopeso/lieferando/model/meal/Meal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mNumber:Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mTaxes:Ljava/util/ArrayList;

    sget-object v1, Lcom/yopeso/lieferando/model/user/Tax;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 155
    return-void

    :cond_1
    move v0, v2

    .line 115
    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 116
    goto/16 :goto_1

    :cond_3
    move v1, v2

    .line 119
    goto/16 :goto_2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 473
    const/4 v0, 0x0

    return v0
.end method

.method public getCharge()I
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mCharge:I

    return v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mComment:Ljava/lang/String;

    return-object v0
.end method

.method public getDeliveryCost()I
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mDeliveryCost:I

    return v0
.end method

.method public getDeliveryDate()Ljava/lang/String;
    .locals 2

    .prologue
    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yopeso/lieferando/model/user/Order;->mDeliveryDay:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/model/user/Order;->mDeliveryTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeliveryDay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mDeliveryDay:Ljava/lang/String;

    return-object v0
.end method

.method public getDeliveryRating()I
    .locals 1

    .prologue
    .line 436
    iget v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mRatingDelivery:I

    return v0
.end method

.method public getDeliveryTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mDeliveryTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscountAmount()I
    .locals 1

    .prologue
    .line 316
    iget v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mDiscountAmount:I

    return v0
.end method

.method public getDiscountCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mDiscountCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mDiscountType:Ljava/lang/String;

    return-object v0
.end method

.method public getHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mHash:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mId:I

    return v0
.end method

.method public getLocation()Lcom/yopeso/lieferando/model/user/Location;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mLocation:Lcom/yopeso/lieferando/model/user/Location;

    return-object v0
.end method

.method public getMeals()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yopeso/lieferando/model/meal/Meal;",
            ">;"
        }
    .end annotation

    .prologue
    .line 400
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mMeals:Ljava/util/List;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderDate()Ljava/lang/String;
    .locals 2

    .prologue
    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yopeso/lieferando/model/user/Order;->mOrderDay:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/model/user/Order;->mOrderTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrderDay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mOrderDay:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mOrderTime:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mPaymentMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getQualityRating()I
    .locals 1

    .prologue
    .line 444
    iget v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mRatingQuality:I

    return v0
.end method

.method public getRating()F
    .locals 1

    .prologue
    .line 424
    iget v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mRating:F

    return v0
.end method

.method public getRatingAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mRatingAuthor:Ljava/lang/String;

    return-object v0
.end method

.method public getRatingComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mRatingComment:Ljava/lang/String;

    return-object v0
.end method

.method public getRatingTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mRatingTime:Ljava/util/Date;

    return-object v0
.end method

.method public getRatingTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mRatingTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 372
    iget v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mState:I

    return v0
.end method

.method public getTaxes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/user/Tax;",
            ">;"
        }
    .end annotation

    .prologue
    .line 388
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mTaxes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mTotal:I

    return v0
.end method

.method public isCreateUser()Z
    .locals 1

    .prologue
    .line 348
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/user/Order;->isCreateUser:Z

    return v0
.end method

.method public isFavorite()Z
    .locals 1

    .prologue
    .line 380
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mIsFavorite:Z

    return v0
.end method

.method public isIsFavorite()Z
    .locals 1

    .prologue
    .line 356
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mIsFavorite:Z

    return v0
.end method

.method public isRateable()Z
    .locals 1

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/user/Order;->isRateable:Z

    return v0
.end method

.method public isRated()Z
    .locals 1

    .prologue
    .line 332
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/user/Order;->isRated:Z

    return v0
.end method

.method public setCharge(I)V
    .locals 0
    .param p1, "charge"    # I

    .prologue
    .line 292
    iput p1, p0, Lcom/yopeso/lieferando/model/user/Order;->mCharge:I

    .line 293
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 368
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/Order;->mComment:Ljava/lang/String;

    .line 369
    return-void
.end method

.method public setCreateUser(Z)V
    .locals 0
    .param p1, "isCreateUser"    # Z

    .prologue
    .line 352
    iput-boolean p1, p0, Lcom/yopeso/lieferando/model/user/Order;->isCreateUser:Z

    .line 353
    return-void
.end method

.method public setDeliveryCost(I)V
    .locals 0
    .param p1, "deliveryCost"    # I

    .prologue
    .line 300
    iput p1, p0, Lcom/yopeso/lieferando/model/user/Order;->mDeliveryCost:I

    .line 301
    return-void
.end method

.method public setDeliveryDay(Ljava/lang/String;)V
    .locals 0
    .param p1, "deliveryDay"    # Ljava/lang/String;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/Order;->mDeliveryDay:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public setDeliveryRating(I)V
    .locals 0
    .param p1, "rating"    # I

    .prologue
    .line 432
    iput p1, p0, Lcom/yopeso/lieferando/model/user/Order;->mRatingDelivery:I

    .line 433
    return-void
.end method

.method public setDeliveryTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "deliveryTime"    # Ljava/lang/String;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/Order;->mDeliveryTime:Ljava/lang/String;

    .line 249
    return-void
.end method

.method public setDiscountAmount(I)V
    .locals 0
    .param p1, "discountAmount"    # I

    .prologue
    .line 320
    iput p1, p0, Lcom/yopeso/lieferando/model/user/Order;->mDiscountAmount:I

    .line 321
    return-void
.end method

.method public setDiscountCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "discountCode"    # Ljava/lang/String;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/Order;->mDiscountCode:Ljava/lang/String;

    .line 313
    return-void
.end method

.method public setFavorite(Z)V
    .locals 0
    .param p1, "isFavorite"    # Z

    .prologue
    .line 384
    iput-boolean p1, p0, Lcom/yopeso/lieferando/model/user/Order;->mIsFavorite:Z

    .line 385
    return-void
.end method

.method public setHash(Ljava/lang/String;)V
    .locals 0
    .param p1, "hash"    # Ljava/lang/String;

    .prologue
    .line 420
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/Order;->mHash:Ljava/lang/String;

    .line 421
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 212
    iput p1, p0, Lcom/yopeso/lieferando/model/user/Order;->mId:I

    .line 213
    return-void
.end method

.method public setIsFavorite(Z)V
    .locals 0
    .param p1, "isFavorite"    # Z

    .prologue
    .line 360
    iput-boolean p1, p0, Lcom/yopeso/lieferando/model/user/Order;->mIsFavorite:Z

    .line 361
    return-void
.end method

.method public setLocation(Lcom/yopeso/lieferando/model/user/Location;)V
    .locals 0
    .param p1, "location"    # Lcom/yopeso/lieferando/model/user/Location;

    .prologue
    .line 396
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/Order;->mLocation:Lcom/yopeso/lieferando/model/user/Location;

    .line 397
    return-void
.end method

.method public setMeals(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yopeso/lieferando/model/meal/Meal;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 404
    .local p1, "meals":Ljava/util/List;, "Ljava/util/List<Lcom/yopeso/lieferando/model/meal/Meal;>;"
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/Order;->mMeals:Ljava/util/List;

    .line 405
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 412
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/Order;->mNumber:Ljava/lang/String;

    .line 413
    return-void
.end method

.method public setOrderDay(Ljava/lang/String;)V
    .locals 0
    .param p1, "orderDay"    # Ljava/lang/String;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/Order;->mOrderDay:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setOrderTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/Order;->mOrderTime:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public setPaymentMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "paymentMethod"    # Ljava/lang/String;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/Order;->mPaymentMethod:Ljava/lang/String;

    .line 329
    return-void
.end method

.method public setQualityRating(I)V
    .locals 0
    .param p1, "rating"    # I

    .prologue
    .line 440
    iput p1, p0, Lcom/yopeso/lieferando/model/user/Order;->mRatingQuality:I

    .line 441
    return-void
.end method

.method public setRateable(Z)V
    .locals 0
    .param p1, "isRateable"    # Z

    .prologue
    .line 344
    iput-boolean p1, p0, Lcom/yopeso/lieferando/model/user/Order;->isRateable:Z

    .line 345
    return-void
.end method

.method public setRated(Z)V
    .locals 0
    .param p1, "isRated"    # Z

    .prologue
    .line 336
    iput-boolean p1, p0, Lcom/yopeso/lieferando/model/user/Order;->isRated:Z

    .line 337
    return-void
.end method

.method public setRating(F)V
    .locals 0
    .param p1, "rating"    # F

    .prologue
    .line 428
    iput p1, p0, Lcom/yopeso/lieferando/model/user/Order;->mRating:F

    .line 429
    return-void
.end method

.method public setRatingAuthor(Ljava/lang/String;)V
    .locals 0
    .param p1, "author"    # Ljava/lang/String;

    .prologue
    .line 464
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/Order;->mRatingAuthor:Ljava/lang/String;

    .line 465
    return-void
.end method

.method public setRatingComment(Ljava/lang/String;)V
    .locals 0
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 452
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/Order;->mRatingComment:Ljava/lang/String;

    .line 453
    return-void
.end method

.method public setRatingTime(Ljava/lang/String;)V
    .locals 6
    .param p1, "ratingTime"    # Ljava/lang/String;

    .prologue
    .line 265
    :try_start_0
    new-instance v1, Ljava/util/Date;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, p0, Lcom/yopeso/lieferando/model/user/Order;->mRatingTime:Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :goto_0
    return-void

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setRatingTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "ratingTime"    # Ljava/util/Date;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/Order;->mRatingTime:Ljava/util/Date;

    .line 261
    return-void
.end method

.method public setRatingTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 460
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/Order;->mRatingTitle:Ljava/lang/String;

    .line 461
    return-void
.end method

.method public setRestaurant(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 0
    .param p1, "restaurant"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/Order;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .line 285
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 376
    iput p1, p0, Lcom/yopeso/lieferando/model/user/Order;->mState:I

    .line 377
    return-void
.end method

.method public setTotal(I)V
    .locals 0
    .param p1, "total"    # I

    .prologue
    .line 276
    iput p1, p0, Lcom/yopeso/lieferando/model/user/Order;->mTotal:I

    .line 277
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 159
    iget v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mDeliveryCost:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mTotal:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mPaymentMethod:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/user/Order;->isRated:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 164
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/user/Order;->isRateable:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 165
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mComment:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mHash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/user/Order;->isCreateUser:Z

    if-eqz v0, :cond_2

    :goto_2
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 168
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mDiscountCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mDiscountType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    iget v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mDiscountAmount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mRating:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 172
    iget v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mRatingQuality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    iget v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mRatingDelivery:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mRatingComment:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mRatingTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    iget v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mLocation:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 179
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 180
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mOrderDay:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mOrderTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mDeliveryDay:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mDeliveryTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mMeals:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 185
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Order;->mTaxes:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 205
    return-void

    :cond_0
    move v0, v2

    .line 163
    goto :goto_0

    :cond_1
    move v0, v2

    .line 164
    goto :goto_1

    :cond_2
    move v1, v2

    .line 167
    goto :goto_2
.end method
