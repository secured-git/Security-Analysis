.class public Lcom/yopeso/lieferando/model/restaurant/Restaurant;
.super Ljava/lang/Object;
.source "Restaurant.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yopeso/lieferando/model/restaurant/Restaurant$AdditionalContactDto;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/Restaurant;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private franchiseTypeId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "franchiseTypeId"
    .end annotation
.end field

.field private isOnline:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isOnline"
    .end annotation
.end field

.field private isOpen:Z

.field private mAdditionalContacts:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "additionalContacts"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/Restaurant$AdditionalContactDto;",
            ">;"
        }
    .end annotation
.end field

.field private mAddressNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "number"
    .end annotation
.end field

.field private mAddressStreet:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "street"
    .end annotation
.end field

.field private mAllowCash:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "paymentbar"
    .end annotation
.end field

.field private mCategory:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "restaurantCategory"
    .end annotation
.end field

.field private mCity:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "locationName"
    .end annotation
.end field

.field private mCityId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "locationId"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mContact:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "owner"
    .end annotation
.end field

.field private mCorporateName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "corporateName"
    .end annotation
.end field

.field private mDeliverAreas:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "areas"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;",
            ">;"
        }
    .end annotation
.end field

.field private mDeliverCost:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "delivercost"
    .end annotation
.end field

.field private mDescription:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field private mDishCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/meal/DishCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mEmail:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imprintEmail"
    .end annotation
.end field

.field private mFavouriteCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "favouriteCount"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mFax:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fax"
    .end annotation
.end field

.field private mFranchiseType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "franchiseType"
    .end annotation
.end field

.field private mHasSms:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sms"
    .end annotation
.end field

.field private mHolidays:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "holidays"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private mImgUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imageUrl"
    .end annotation
.end field

.field private mIsnew:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isnew"
    .end annotation
.end field

.field private mLatitude:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "latitude"
    .end annotation
.end field

.field private mLongitude:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "longitude"
    .end annotation
.end field

.field private mMinCost:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mincost"
    .end annotation
.end field

.field private mName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private mNoDeliverCostAbove:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "noDeliverCostAbove"
    .end annotation
.end field

.field private mOnlyCash:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "onlycash"
    .end annotation
.end field

.field private mOpeningSpecial:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "openingSpecial"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/Opening;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPreorder:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "preorder"
    .end annotation
.end field

.field private mPreorderOffset:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "preorderOffset"
    .end annotation
.end field

.field private mRatingAverage:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ratingAverage"
    .end annotation
.end field

.field private mRatingsCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ratingCount"
    .end annotation
.end field

.field private mRegisterCourt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "registerCourt"
    .end annotation
.end field

.field private mRegisterCourtNr:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "registerCourtNr"
    .end annotation
.end field

.field private mRestaurantAddress:Ljava/lang/String;

.field private mRestaurantPayment:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "restaurantPayments"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/RestaurantPayment;",
            ">;"
        }
    .end annotation
.end field

.field private mScheduleMerged:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/Opening;",
            ">;>;"
        }
    .end annotation
.end field

.field private mServiceUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation
.end field

.field private mStampCard:Lcom/yopeso/lieferando/model/Stamp;

.field private mTaxIdNr:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "taxIdNr"
    .end annotation
.end field

.field private mTelephone:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "telephone"
    .end annotation
.end field

.field private mTradeOffice:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tradeOffice"
    .end annotation
.end field

.field private mWeekSchedule:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "openings"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/Opening;",
            ">;"
        }
    .end annotation
.end field

.field private mZipCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "plz"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1287
    new-instance v0, Lcom/yopeso/lieferando/model/restaurant/Restaurant$1;

    invoke-direct {v0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant$1;-><init>()V

    sput-object v0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1295
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput v2, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mCityId:I

    .line 63
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mAllowCash:Ljava/lang/Boolean;

    .line 65
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mOnlyCash:Ljava/lang/Boolean;

    .line 67
    iput v2, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mMinCost:I

    .line 71
    iput v2, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mDeliverCost:I

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mRestaurantPayment:Ljava/util/ArrayList;

    .line 107
    iput-boolean v1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mIsnew:Z

    .line 109
    iput-boolean v1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen:Z

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mAdditionalContacts:Ljava/util/ArrayList;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mWeekSchedule:Ljava/util/ArrayList;

    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mOpeningSpecial:Ljava/util/Map;

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mHolidays:Ljava/util/Map;

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mScheduleMerged:Ljava/util/Map;

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mDeliverAreas:Ljava/util/ArrayList;

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mDishCategories:Ljava/util/ArrayList;

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mDeliverAreas:Ljava/util/ArrayList;

    .line 294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mWeekSchedule:Ljava/util/ArrayList;

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mDishCategories:Ljava/util/ArrayList;

    .line 296
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput v3, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mCityId:I

    .line 63
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mAllowCash:Ljava/lang/Boolean;

    .line 65
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mOnlyCash:Ljava/lang/Boolean;

    .line 67
    iput v3, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mMinCost:I

    .line 71
    iput v3, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mDeliverCost:I

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mRestaurantPayment:Ljava/util/ArrayList;

    .line 107
    iput-boolean v2, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mIsnew:Z

    .line 109
    iput-boolean v2, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen:Z

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mAdditionalContacts:Ljava/util/ArrayList;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mWeekSchedule:Ljava/util/ArrayList;

    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mOpeningSpecial:Ljava/util/Map;

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mHolidays:Ljava/util/Map;

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mScheduleMerged:Ljava/util/Map;

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mDeliverAreas:Ljava/util/ArrayList;

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mDishCategories:Ljava/util/ArrayList;

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mId:I

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mAllowCash:Ljava/lang/Boolean;

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mOnlyCash:Ljava/lang/Boolean;

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mName:Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mImgUrl:Ljava/lang/String;

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mTelephone:Ljava/lang/String;

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mAddressStreet:Ljava/lang/String;

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mZipCode:Ljava/lang/String;

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mCity:Ljava/lang/String;

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mCityId:I

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mCategory:Ljava/lang/String;

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mLatitude:D

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mLongitude:D

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOnline:Ljava/lang/Boolean;

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mFavouriteCount:I

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mServiceUrl:Ljava/lang/String;

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mAddressNumber:Ljava/lang/String;

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mPreorderOffset:I

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mPreorder:Ljava/lang/String;

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mNoDeliverCostAbove:I

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mDescription:Ljava/lang/String;

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_6

    :goto_3
    iput-boolean v1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen:Z

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mMinCost:I

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mDeliverCost:I

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mRatingsCount:I

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mRatingAverage:F

    .line 226
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mWeekSchedule:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mWeekSchedule:Ljava/util/ArrayList;

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mWeekSchedule:Ljava/util/ArrayList;

    sget-object v1, Lcom/yopeso/lieferando/model/restaurant/Opening;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 231
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mDeliverAreas:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mDeliverAreas:Ljava/util/ArrayList;

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mDeliverAreas:Ljava/util/ArrayList;

    sget-object v1, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 236
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mDishCategories:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mDishCategories:Ljava/util/ArrayList;

    .line 239
    :cond_2
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mDishCategories:Ljava/util/ArrayList;

    sget-object v1, Lcom/yopeso/lieferando/model/meal/DishCategory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mRestaurantAddress:Ljava/lang/String;

    .line 241
    return-void

    :cond_3
    move v0, v2

    .line 193
    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 194
    goto/16 :goto_1

    :cond_5
    move v0, v2

    .line 209
    goto/16 :goto_2

    :cond_6
    move v1, v2

    .line 220
    goto :goto_3
.end method

.method public static getCreator()Landroid/os/Parcelable$Creator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/Restaurant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1602
    sget-object v0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->CREATOR:Landroid/os/Parcelable$Creator;

    return-object v0
.end method

.method public static getSerialversionuid()J
    .locals 2

    .prologue
    .line 1453
    const-wide/16 v0, 0x2

    return-wide v0
.end method

.method private hasOrdered()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1321
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1322
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/UserData;->getmRestaurantOrders()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1323
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/UserData;->getmRestaurantOrders()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v2

    iget v3, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mId:I

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/model/user/UserData;->getStampsForRestaurant(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1329
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1323
    goto :goto_0

    .line 1326
    :cond_2
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v2

    iget v3, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mId:I

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/model/user/UserData;->getStampsForRestaurant(I)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v2

    iget v3, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mId:I

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/model/user/UserData;->getStampsForRestaurant(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public addOpenings(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/Opening;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 593
    .local p1, "openings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Opening;>;"
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mWeekSchedule:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mWeekSchedule:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 598
    :goto_0
    return-void

    .line 596
    :cond_0
    iput-object p1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mWeekSchedule:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public clearScheduleMerged()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mScheduleMerged:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 189
    return-void
.end method

.method public containsCityId(I)Z
    .locals 3
    .param p1, "cityId"    # I

    .prologue
    .line 391
    iget-object v1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mDeliverAreas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 396
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 391
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;

    .line 392
    .local v0, "da":Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;->getCityId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 393
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public cutOpenings(Lcom/yopeso/lieferando/model/restaurant/Opening;Ljava/util/Date;Ljava/util/Calendar;Z)Ljava/util/ArrayList;
    .locals 12
    .param p1, "opening"    # Lcom/yopeso/lieferando/model/restaurant/Opening;
    .param p2, "startDate"    # Ljava/util/Date;
    .param p3, "currentDay"    # Ljava/util/Calendar;
    .param p4, "isToday"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yopeso/lieferando/model/restaurant/Opening;",
            "Ljava/util/Date;",
            "Ljava/util/Calendar;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1085
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1086
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Date;>;"
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1088
    .local v2, "cutTime":Ljava/util/Calendar;
    if-eqz p4, :cond_7

    .line 1090
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Opening;->isValid()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1091
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Opening;->getOpenHours()Ljava/util/Date;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {p2, v8, v9}, Lcom/yopeso/lieferando/util/OpeningUtils;->compareHours(Ljava/util/Date;Ljava/util/Date;Z)I

    move-result v1

    .line 1092
    .local v1, "compareOpen":I
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Opening;->getCloseHours()Ljava/util/Date;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {p2, v8, v9}, Lcom/yopeso/lieferando/util/OpeningUtils;->compareHours(Ljava/util/Date;Ljava/util/Date;Z)I

    move-result v0

    .line 1094
    .local v0, "compareClose":I
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Opening;->isPastMidnight()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1095
    neg-int v0, v0

    .line 1098
    :cond_0
    const/4 v8, -0x1

    if-ne v0, v8, :cond_1

    const/4 v8, 0x1

    if-eq v1, v8, :cond_2

    :cond_1
    if-nez v1, :cond_6

    .line 1099
    :cond_2
    invoke-virtual {v2, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1100
    const/16 v8, 0xd

    iget v9, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mPreorderOffset:I

    invoke-virtual {v2, v8, v9}, Ljava/util/Calendar;->add(II)V

    .line 1130
    .end local v0    # "compareClose":I
    .end local v1    # "compareOpen":I
    :cond_3
    :goto_0
    invoke-virtual {v2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Calendar;

    .line 1131
    .local v7, "upperBoundry":Ljava/util/Calendar;
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Opening;->getCloseHours()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1132
    const/4 v8, 0x1

    invoke-virtual {p3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x2

    invoke-virtual {p3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/4 v10, 0x5

    invoke-virtual {p3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v7, v8, v9, v10}, Ljava/util/Calendar;->set(III)V

    .line 1134
    const/16 v8, 0xc

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1136
    .local v3, "minutes":I
    if-nez v3, :cond_b

    .line 1137
    const/16 v8, 0xc

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 1149
    :cond_4
    :goto_1
    const/16 v8, 0xd

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 1151
    :goto_2
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v8

    if-ltz v8, :cond_f

    .line 1156
    .end local v3    # "minutes":I
    .end local v7    # "upperBoundry":Ljava/util/Calendar;
    :cond_5
    return-object v4

    .line 1101
    .restart local v0    # "compareClose":I
    .restart local v1    # "compareOpen":I
    :cond_6
    const/4 v8, -0x1

    if-ne v1, v8, :cond_5

    .line 1102
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Opening;->getOpenHours()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1103
    const/4 v8, 0x1

    invoke-virtual {p3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x2

    invoke-virtual {p3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/4 v10, 0x5

    invoke-virtual {p3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v2, v8, v9, v10}, Ljava/util/Calendar;->set(III)V

    .line 1104
    const/16 v8, 0xd

    iget v9, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mPreorderOffset:I

    invoke-virtual {v2, v8, v9}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 1110
    .end local v0    # "compareClose":I
    .end local v1    # "compareOpen":I
    :cond_7
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Opening;->getOpenHours()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1111
    const/4 v8, 0x1

    invoke-virtual {p3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x2

    invoke-virtual {p3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/4 v10, 0x5

    invoke-virtual {p3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v2, v8, v9, v10}, Ljava/util/Calendar;->set(III)V

    .line 1112
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Opening;->isPastMidnight()Z

    move-result v8

    if-nez v8, :cond_3

    .line 1113
    iget v8, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mPreorderOffset:I

    const/16 v9, 0x1c20

    if-ge v8, v9, :cond_8

    .line 1114
    const/16 v8, 0xd

    iget v9, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mPreorderOffset:I

    invoke-virtual {v2, v8, v9}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_0

    .line 1116
    :cond_8
    invoke-virtual {v2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Calendar;

    .line 1117
    .local v6, "tempTime":Ljava/util/Calendar;
    invoke-virtual {v6, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1118
    const/16 v8, 0xd

    iget v9, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mPreorderOffset:I

    invoke-virtual {v6, v8, v9}, Ljava/util/Calendar;->add(II)V

    .line 1119
    invoke-virtual {v6, v2}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v8

    if-ltz v8, :cond_9

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v8

    if-nez v8, :cond_a

    .line 1120
    :cond_9
    const/16 v8, 0xc

    const/16 v9, 0x2d

    invoke-virtual {v2, v8, v9}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_0

    .line 1122
    :cond_a
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    sub-long/2addr v8, v10

    long-to-int v8, v8

    div-int/lit16 v5, v8, 0x3e8

    .line 1123
    .local v5, "sec":I
    const/16 v8, 0xd

    invoke-virtual {v2, v8, v5}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_0

    .line 1138
    .end local v5    # "sec":I
    .end local v6    # "tempTime":Ljava/util/Calendar;
    .restart local v3    # "minutes":I
    .restart local v7    # "upperBoundry":Ljava/util/Calendar;
    :cond_b
    const/16 v8, 0xf

    if-gt v3, v8, :cond_c

    .line 1139
    const/16 v8, 0xc

    const/16 v9, 0xf

    invoke-virtual {v2, v8, v9}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_1

    .line 1140
    :cond_c
    const/16 v8, 0x1e

    if-gt v3, v8, :cond_d

    .line 1141
    const/16 v8, 0xc

    const/16 v9, 0x1e

    invoke-virtual {v2, v8, v9}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_1

    .line 1142
    :cond_d
    const/16 v8, 0x2d

    if-gt v3, v8, :cond_e

    .line 1143
    const/16 v8, 0xc

    const/16 v9, 0x2d

    invoke-virtual {v2, v8, v9}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_1

    .line 1144
    :cond_e
    const/16 v8, 0x3b

    if-gt v3, v8, :cond_4

    .line 1145
    const/16 v8, 0xc

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 1146
    const/16 v8, 0xa

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_1

    .line 1152
    :cond_f
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1153
    const/16 v8, 0xc

    const/16 v9, 0xf

    invoke-virtual {v2, v8, v9}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_2
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1179
    const/4 v0, 0x0

    return v0
.end method

.method public displayAdditives()Z
    .locals 1

    .prologue
    .line 1409
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAddressNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mAddressNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressStreet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mAddressStreet:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method public getDeliverAreas()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;",
            ">;"
        }
    .end annotation

    .prologue
    .line 400
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mDeliverAreas:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDeliverCost()I
    .locals 1

    .prologue
    .line 424
    iget v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mDeliverCost:I

    return v0
.end method

.method public getDeliverCostForCity(I)I
    .locals 3
    .param p1, "cityId"    # I

    .prologue
    .line 539
    iget-object v1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mDeliverAreas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 544
    const v1, 0x7fffffff

    :goto_0
    return v1

    .line 539
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;

    .line 540
    .local v0, "da":Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;->getCityId()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 541
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;->getDeliverCost()I

    move-result v1

    goto :goto_0
.end method

.method public getDeliveryAreaForCity(I)Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;
    .locals 3
    .param p1, "cityId"    # I

    .prologue
    .line 557
    iget-object v1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mDeliverAreas:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 558
    iget-object v1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mDeliverAreas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 564
    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 558
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;

    .line 559
    .local v0, "da":Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;->getCityId()I

    move-result v2

    if-ne p1, v2, :cond_0

    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDishCategories()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/meal/DishCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mDishCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getECPaymentFee()I
    .locals 4

    .prologue
    .line 1353
    iget-object v1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mRestaurantPayment:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mRestaurantPayment:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1354
    iget-object v1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mRestaurantPayment:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1360
    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 1354
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/restaurant/RestaurantPayment;

    .line 1355
    .local v0, "rp":Lcom/yopeso/lieferando/model/restaurant/RestaurantPayment;
    const-string v2, "ec"

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/restaurant/RestaurantPayment;->getPayment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1356
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/restaurant/RestaurantPayment;->getFee()I

    move-result v1

    goto :goto_0
.end method

.method public getFranchiseTypeId()I
    .locals 1

    .prologue
    .line 1445
    iget v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->franchiseTypeId:I

    return v0
.end method

.method public getHasSms()Z
    .locals 1

    .prologue
    .line 359
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mHasSms:Z

    return v0
.end method

.method public getHolidays()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 585
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mHolidays:Ljava/util/Map;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mId:I

    return v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mImgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIsOnline()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1485
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOnline:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 493
    iget-wide v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 497
    iget-wide v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mLongitude:D

    return-wide v0
.end method

.method public getMinCost()I
    .locals 1

    .prologue
    .line 1174
    iget v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mMinCost:I

    return v0
.end method

.method public getMinCostForCity(I)I
    .locals 3
    .param p1, "cityId"    # I

    .prologue
    .line 548
    iget-object v1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mDeliverAreas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 553
    const v1, 0x7fffffff

    :goto_0
    return v1

    .line 548
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;

    .line 549
    .local v0, "da":Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;->getCityId()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 550
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;->getMinCost()I

    move-result v1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNoDeliverCostAbove()I
    .locals 1

    .prologue
    .line 452
    iget v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mNoDeliverCostAbove:I

    return v0
.end method

.method public getOpeningSpecial()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/Opening;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 573
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mOpeningSpecial:Ljava/util/Map;

    return-object v0
.end method

.method public getOpenings()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/Opening;",
            ">;"
        }
    .end annotation

    .prologue
    .line 601
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mWeekSchedule:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOpeningsForDay(I)Ljava/util/ArrayList;
    .locals 4
    .param p1, "day"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/Opening;",
            ">;"
        }
    .end annotation

    .prologue
    .line 685
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 686
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Opening;>;"
    iget-object v2, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mWeekSchedule:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 687
    iget-object v2, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mWeekSchedule:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 693
    :cond_1
    return-object v1

    .line 687
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/restaurant/Opening;

    .line 688
    .local v0, "opening":Lcom/yopeso/lieferando/model/restaurant/Opening;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/restaurant/Opening;->getWeekDay()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 689
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getOpeningsForWeek(Landroid/content/Context;)Ljava/lang/String;
    .locals 16
    .param p1, "c"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat",
            "UseSparseArrays"
        }
    .end annotation

    .prologue
    .line 789
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 790
    .local v8, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v13, "HH:mm"

    invoke-direct {v10, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 791
    .local v10, "sdf":Ljava/text/SimpleDateFormat;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/4 v13, 0x7

    if-lt v4, v13, :cond_0

    .line 819
    const/4 v13, 0x7

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v8, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-interface {v8, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    const/4 v3, 0x0

    .line 822
    .local v3, "firstIndex":I
    const/4 v6, 0x0

    .line 823
    .local v6, "lastIndex":I
    const-string v9, ""

    .line 824
    .local v9, "schedule":Ljava/lang/String;
    const/4 v4, 0x1

    :goto_1
    const/16 v13, 0x8

    if-lt v4, v13, :cond_5

    .line 854
    return-object v9

    .line 792
    .end local v3    # "firstIndex":I
    .end local v6    # "lastIndex":I
    .end local v9    # "schedule":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getOpeningsForDay(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 794
    .local v2, "currentDay":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Opening;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-nez v13, :cond_1

    .line 795
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    sget v14, Lcom/yopeso/lieferando/R$string;->closed:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v8, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 799
    :cond_1
    const-string v11, ""

    .line 800
    .local v11, "today":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lt v5, v13, :cond_2

    .line 815
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v8, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 801
    :cond_2
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/yopeso/lieferando/model/restaurant/Opening;

    .line 802
    .local v12, "todayOpenings":Lcom/yopeso/lieferando/model/restaurant/Opening;
    if-lez v5, :cond_3

    .line 803
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 805
    :cond_3
    invoke-virtual {v12}, Lcom/yopeso/lieferando/model/restaurant/Opening;->getCloseHours()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 806
    .local v1, "close":Ljava/lang/String;
    const-string v13, "00:00"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 807
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getTimeFormatter()Ljava/text/SimpleDateFormat;

    move-result-object v14

    invoke-virtual {v12}, Lcom/yopeso/lieferando/model/restaurant/Opening;->getOpenHours()Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "24:00"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 800
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 810
    :cond_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getTimeFormatter()Ljava/text/SimpleDateFormat;

    move-result-object v14

    invoke-virtual {v12}, Lcom/yopeso/lieferando/model/restaurant/Opening;->getOpenHours()Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getTimeFormatter()Ljava/text/SimpleDateFormat;

    move-result-object v14

    invoke-virtual {v12}, Lcom/yopeso/lieferando/model/restaurant/Opening;->getCloseHours()Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    .line 826
    .end local v1    # "close":Ljava/lang/String;
    .end local v2    # "currentDay":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Opening;>;"
    .end local v5    # "j":I
    .end local v11    # "today":Ljava/lang/String;
    .end local v12    # "todayOpenings":Lcom/yopeso/lieferando/model/restaurant/Opening;
    .restart local v3    # "firstIndex":I
    .restart local v6    # "lastIndex":I
    .restart local v9    # "schedule":Ljava/lang/String;
    :cond_5
    add-int/lit8 v7, v4, 0x1

    .line 827
    .local v7, "nextday":I
    const/16 v13, 0x8

    if-ne v7, v13, :cond_6

    .line 828
    const/4 v7, 0x1

    .line 831
    :cond_6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v8, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v8, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    const/4 v13, 0x7

    if-eq v4, v13, :cond_9

    .line 832
    if-nez v3, :cond_7

    .line 833
    move v3, v4

    .line 835
    :cond_7
    move v6, v7

    .line 837
    const/4 v13, 0x7

    if-ne v4, v13, :cond_8

    if-eqz v3, :cond_8

    if-eqz v6, :cond_8

    .line 838
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/yopeso/lieferando/util/OpeningUtils;->getDayOfWeek(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x7

    invoke-static {v14}, Lcom/yopeso/lieferando/util/OpeningUtils;->getDayOfWeek(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v8, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 824
    :cond_8
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 843
    :cond_9
    if-nez v3, :cond_a

    if-nez v6, :cond_a

    .line 844
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/yopeso/lieferando/util/OpeningUtils;->getDayOfWeek(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v8, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 849
    :goto_6
    const/4 v3, 0x0

    .line 850
    const/4 v6, 0x0

    goto :goto_5

    .line 846
    :cond_a
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/yopeso/lieferando/util/OpeningUtils;->getDayOfWeek(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v6}, Lcom/yopeso/lieferando/util/OpeningUtils;->getDayOfWeek(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v8, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_6
.end method

.method public getPaymentFee(Ljava/lang/String;)I
    .locals 3
    .param p1, "payment"    # Ljava/lang/String;

    .prologue
    .line 1364
    iget-object v1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mRestaurantPayment:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mRestaurantPayment:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1365
    iget-object v1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mRestaurantPayment:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1371
    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 1365
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/restaurant/RestaurantPayment;

    .line 1366
    .local v0, "rp":Lcom/yopeso/lieferando/model/restaurant/RestaurantPayment;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/restaurant/RestaurantPayment;->getPayment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1367
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/restaurant/RestaurantPayment;->getFee()I

    move-result v1

    goto :goto_0
.end method

.method public getPreorder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mPreorder:Ljava/lang/String;

    return-object v0
.end method

.method public getPreorderOffset()I
    .locals 1

    .prologue
    .line 432
    iget v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mPreorderOffset:I

    return v0
.end method

.method public getRatingAverage()F
    .locals 1

    .prologue
    .line 416
    iget v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mRatingAverage:F

    return v0
.end method

.method public getRatingsCount()I
    .locals 1

    .prologue
    .line 408
    iget v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mRatingsCount:I

    return v0
.end method

.method public getRestaurantAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mRestaurantAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getScheduleMerged(Ljava/util/Date;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/Opening;",
            ">;"
        }
    .end annotation

    .prologue
    .line 568
    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getHashDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 569
    .local v0, "hashKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mScheduleMerged:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    return-object v1
.end method

.method public getServiceUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mServiceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStamp()Lcom/yopeso/lieferando/model/Stamp;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mStampCard:Lcom/yopeso/lieferando/model/Stamp;

    return-object v0
.end method

.method public getTelephone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mTelephone:Ljava/lang/String;

    return-object v0
.end method

.method public getWeekOpenings(Ljava/util/Date;)Ljava/util/ArrayList;
    .locals 14
    .param p1, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x5

    const/4 v12, 0x1

    .line 1003
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1005
    .local v7, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Date;>;"
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1006
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1008
    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Calendar;

    .line 1009
    .local v8, "upperBoundry":Ljava/util/Calendar;
    iget-object v9, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mPreorder:Ljava/lang/String;

    if-eqz v9, :cond_0

    const-string v9, "day"

    iget-object v10, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mPreorder:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1010
    invoke-virtual {v8, v13, v12}, Ljava/util/Calendar;->add(II)V

    .line 1015
    :goto_0
    const/16 v9, 0xa

    const/16 v10, 0x17

    invoke-virtual {v8, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 1016
    const/16 v9, 0xc

    const/16 v10, 0x3b

    invoke-virtual {v8, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 1018
    const/4 v3, 0x0

    .line 1020
    .local v3, "isPassMidnight":Z
    :goto_1
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v9

    if-ltz v9, :cond_1

    .line 1069
    return-object v7

    .line 1013
    .end local v3    # "isPassMidnight":Z
    :cond_0
    const/4 v9, 0x7

    invoke-virtual {v8, v13, v9}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 1022
    .restart local v3    # "isPassMidnight":Z
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1023
    .local v6, "openingsForToday":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Opening;>;"
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->openingsForDay(Ljava/util/Date;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_5

    .line 1027
    if-eqz v3, :cond_3

    .line 1028
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_6

    .line 1038
    :cond_3
    :goto_3
    const/4 v3, 0x0

    .line 1039
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_7

    .line 1049
    :goto_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_9

    .line 1066
    invoke-virtual {v0, v13, v12}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    .line 1023
    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yopeso/lieferando/model/restaurant/Opening;

    .line 1024
    .local v5, "opening":Lcom/yopeso/lieferando/model/restaurant/Opening;
    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/restaurant/Opening;->clone()Lcom/yopeso/lieferando/model/restaurant/Opening;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1028
    .end local v5    # "opening":Lcom/yopeso/lieferando/model/restaurant/Opening;
    :cond_6
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yopeso/lieferando/model/restaurant/Opening;

    .line 1030
    .restart local v5    # "opening":Lcom/yopeso/lieferando/model/restaurant/Opening;
    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getTimeFormatter()Ljava/text/SimpleDateFormat;

    move-result-object v10

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/restaurant/Opening;->getOpenHours()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 1032
    .local v4, "open":Ljava/lang/String;
    const-string v10, "00:00"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1033
    invoke-virtual {v5, v12}, Lcom/yopeso/lieferando/model/restaurant/Opening;->setPastMidnight(Z)V

    goto :goto_3

    .line 1039
    .end local v4    # "open":Ljava/lang/String;
    .end local v5    # "opening":Lcom/yopeso/lieferando/model/restaurant/Opening;
    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yopeso/lieferando/model/restaurant/Opening;

    .line 1041
    .restart local v5    # "opening":Lcom/yopeso/lieferando/model/restaurant/Opening;
    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getTimeFormatter()Ljava/text/SimpleDateFormat;

    move-result-object v10

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/restaurant/Opening;->getCloseHours()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 1043
    .local v1, "close":Ljava/lang/String;
    const-string v10, "00:00"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    const-string v10, "24:00"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1044
    :cond_8
    const/4 v3, 0x1

    .line 1045
    goto :goto_4

    .line 1049
    .end local v1    # "close":Ljava/lang/String;
    .end local v5    # "opening":Lcom/yopeso/lieferando/model/restaurant/Opening;
    :cond_9
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yopeso/lieferando/model/restaurant/Opening;

    .line 1050
    .restart local v5    # "opening":Lcom/yopeso/lieferando/model/restaurant/Opening;
    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getTimeFormatter()Ljava/text/SimpleDateFormat;

    move-result-object v10

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/restaurant/Opening;->getCloseHours()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 1051
    .restart local v1    # "close":Ljava/lang/String;
    const-string v10, "00:00"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1053
    :try_start_0
    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getTimeFormatter()Ljava/text/SimpleDateFormat;

    move-result-object v10

    const-string v11, "23:59"

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/yopeso/lieferando/model/restaurant/Opening;->setCloseHours(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1059
    :cond_a
    :goto_6
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1060
    invoke-virtual {p0, v5, p1, v0, v12}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->cutOpenings(Lcom/yopeso/lieferando/model/restaurant/Opening;Ljava/util/Date;Ljava/util/Calendar;Z)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_5

    .line 1054
    :catch_0
    move-exception v2

    .line 1055
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_6

    .line 1062
    .end local v2    # "e":Ljava/text/ParseException;
    :cond_b
    const/4 v10, 0x0

    invoke-virtual {p0, v5, p1, v0, v10}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->cutOpenings(Lcom/yopeso/lieferando/model/restaurant/Opening;Ljava/util/Date;Ljava/util/Calendar;Z)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_5
.end method

.method public getZipCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mZipCode:Ljava/lang/String;

    return-object v0
.end method

.method public getmAdditionalContacts()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/Restaurant$AdditionalContactDto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1569
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mAdditionalContacts:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getmAddressNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1469
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mAddressNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getmAddressStreet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1465
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mAddressStreet:Ljava/lang/String;

    return-object v0
.end method

.method public getmAllowCash()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1489
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mAllowCash:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getmCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1521
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getmCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1481
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method public getmCityId()I
    .locals 1

    .prologue
    .line 1477
    iget v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mCityId:I

    return v0
.end method

.method public getmContact()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1437
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mContact:Ljava/lang/String;

    return-object v0
.end method

.method public getmCorporateName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1565
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mCorporateName:Ljava/lang/String;

    return-object v0
.end method

.method public getmDeliverAreas()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1594
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mDeliverAreas:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getmDeliverCost()I
    .locals 1

    .prologue
    .line 1227
    iget v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mDeliverCost:I

    return v0
.end method

.method public getmDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1505
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getmDishCategories()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/meal/DishCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1598
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mDishCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getmEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1421
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getmFavouriteCount()I
    .locals 1

    .prologue
    .line 1533
    iget v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mFavouriteCount:I

    return v0
.end method

.method public getmFax()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1429
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mFax:Ljava/lang/String;

    return-object v0
.end method

.method public getmFranchiseType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1401
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mFranchiseType:Ljava/lang/String;

    return-object v0
.end method

.method public getmHolidays()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1586
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mHolidays:Ljava/util/Map;

    return-object v0
.end method

.method public getmId()I
    .locals 1

    .prologue
    .line 1457
    iget v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mId:I

    return v0
.end method

.method public getmImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1497
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mImgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getmLatitude()D
    .locals 2

    .prologue
    .line 1525
    iget-wide v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mLatitude:D

    return-wide v0
.end method

.method public getmLongitude()D
    .locals 2

    .prologue
    .line 1529
    iget-wide v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mLongitude:D

    return-wide v0
.end method

.method public getmMinCost()I
    .locals 1

    .prologue
    .line 1219
    iget v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mMinCost:I

    return v0
.end method

.method public getmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1461
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getmNoDeliverCostAbove()I
    .locals 1

    .prologue
    .line 1243
    iget v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mNoDeliverCostAbove:I

    return v0
.end method

.method public getmOnlyCash()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1493
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mOnlyCash:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getmOpeningSpecial()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/Opening;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1582
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mOpeningSpecial:Ljava/util/Map;

    return-object v0
.end method

.method public getmPreorder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1501
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mPreorder:Ljava/lang/String;

    return-object v0
.end method

.method public getmPreorderOffset()I
    .locals 1

    .prologue
    .line 1235
    iget v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mPreorderOffset:I

    return v0
.end method

.method public getmRatingAverage()F
    .locals 1

    .prologue
    .line 1513
    iget v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mRatingAverage:F

    return v0
.end method

.method public getmRatingsCount()I
    .locals 1

    .prologue
    .line 1509
    iget v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mRatingsCount:I

    return v0
.end method

.method public getmRegisterCourt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1553
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mRegisterCourt:Ljava/lang/String;

    return-object v0
.end method

.method public getmRegisterCourtNr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1557
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mRegisterCourtNr:Ljava/lang/String;

    return-object v0
.end method

.method public getmRestaurantAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1574
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mRestaurantAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getmRestaurantPayment()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/RestaurantPayment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mRestaurantPayment:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getmScheduleMerged()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/Opening;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1590
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mScheduleMerged:Ljava/util/Map;

    return-object v0
.end method

.method public getmServiceUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1537
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mServiceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getmStampCard()Lcom/yopeso/lieferando/model/Stamp;
    .locals 1

    .prologue
    .line 1545
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mStampCard:Lcom/yopeso/lieferando/model/Stamp;

    return-object v0
.end method

.method public getmTaxIdNr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1561
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mTaxIdNr:Ljava/lang/String;

    return-object v0
.end method

.method public getmTelephone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1473
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mTelephone:Ljava/lang/String;

    return-object v0
.end method

.method public getmTradeOffice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1549
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mTradeOffice:Ljava/lang/String;

    return-object v0
.end method

.method public getmWeekSchedule()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/Opening;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1578
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mWeekSchedule:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getmZipCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1413
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mZipCode:Ljava/lang/String;

    return-object v0
.end method

.method public hasECPayment()Z
    .locals 4

    .prologue
    .line 1342
    iget-object v1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mRestaurantPayment:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mRestaurantPayment:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1343
    iget-object v1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mRestaurantPayment:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1349
    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 1343
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/restaurant/RestaurantPayment;

    .line 1344
    .local v0, "rp":Lcom/yopeso/lieferando/model/restaurant/RestaurantPayment;
    const-string v2, "ec"

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/restaurant/RestaurantPayment;->getPayment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1345
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hasValidStampsOrDiscounts(Z)Z
    .locals 5
    .param p1, "stampCampaintActive"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1301
    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1317
    :cond_0
    :goto_0
    return v1

    .line 1304
    :cond_1
    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/Stamp;->hasStampcardCampain()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p1, :cond_2

    move v1, v2

    .line 1305
    goto :goto_0

    .line 1307
    :cond_2
    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/Stamp;->getmDiscounts()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/Stamp;->getmDiscounts()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1310
    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/Stamp;->getmDiscounts()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/Discount;

    .line 1311
    .local v0, "discount":Lcom/yopeso/lieferando/model/Discount;
    sget-object v4, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {v0, v4}, Lcom/yopeso/lieferando/model/Discount;->isActive(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1312
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/Discount;->ismNewCustomer()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->hasOrdered()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/Discount;->ismNewCustomer()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_5
    move v1, v2

    .line 1313
    goto :goto_0
.end method

.method public isAllowCash()Z
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mAllowCash:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 478
    const/4 v0, 0x0

    .line 480
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mAllowCash:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public isHoliday(Ljava/util/Date;)Z
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 697
    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getHashDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 698
    .local v0, "dayHashKey":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mHolidays:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mHolidays:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 699
    const/4 v1, 0x1

    .line 701
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNew()Z
    .locals 1

    .prologue
    .line 1298
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mIsnew:Z

    return v0
.end method

.method public isOnline()Z
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOnline:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 352
    const/4 v0, 0x0

    .line 354
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOnline:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public isOnlyCash()Z
    .locals 1

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mOnlyCash:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 1195
    const/4 v0, 0x0

    .line 1197
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mOnlyCash:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 629
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen:Z

    return v0
.end method

.method public isOpen(Ljava/util/Date;)Z
    .locals 10
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 649
    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOnline()Z

    move-result v5

    if-nez v5, :cond_0

    .line 650
    invoke-virtual {p0, v6}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->setIsOpen(Z)V

    move v5, v6

    .line 681
    :goto_0
    return v5

    .line 654
    :cond_0
    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getHashDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 656
    .local v2, "hashKey":Ljava/lang/String;
    iget-object v5, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mScheduleMerged:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    .line 657
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mergeOpenings(Ljava/util/Date;)Ljava/util/ArrayList;

    move-result-object v3

    .line 658
    .local v3, "mergedOpening":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Opening;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 659
    invoke-virtual {p0, v6}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->setIsOpen(Z)V

    move v5, v6

    .line 660
    goto :goto_0

    .line 662
    :cond_1
    iget-object v5, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mScheduleMerged:Ljava/util/Map;

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    .end local v3    # "mergedOpening":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Opening;>;"
    :cond_2
    iget-object v5, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mScheduleMerged:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_4

    .line 680
    invoke-virtual {p0, v6}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->setIsOpen(Z)V

    move v5, v6

    .line 681
    goto :goto_0

    .line 665
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yopeso/lieferando/model/restaurant/Opening;

    .line 666
    .local v4, "opening":Lcom/yopeso/lieferando/model/restaurant/Opening;
    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/restaurant/Opening;->isValid()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 667
    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/restaurant/Opening;->getOpenHours()Ljava/util/Date;

    move-result-object v8

    invoke-static {p1, v8, v6}, Lcom/yopeso/lieferando/util/OpeningUtils;->compareHours(Ljava/util/Date;Ljava/util/Date;Z)I

    move-result v1

    .line 668
    .local v1, "compareOpen":I
    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/restaurant/Opening;->getCloseHours()Ljava/util/Date;

    move-result-object v8

    invoke-static {p1, v8, v7}, Lcom/yopeso/lieferando/util/OpeningUtils;->compareHours(Ljava/util/Date;Ljava/util/Date;Z)I

    move-result v0

    .line 670
    .local v0, "compareClose":I
    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/restaurant/Opening;->isPastMidnight()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/restaurant/Opening;->getCloseHours()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getDay()I

    move-result v8

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/restaurant/Opening;->getOpenHours()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Date;->getDay()I

    move-result v9

    if-gt v8, v9, :cond_5

    .line 671
    neg-int v0, v0

    .line 674
    :cond_5
    const/4 v8, -0x1

    if-ne v0, v8, :cond_6

    if-eq v1, v7, :cond_7

    :cond_6
    if-nez v1, :cond_3

    .line 675
    :cond_7
    invoke-virtual {p0, v7}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->setIsOpen(Z)V

    move v5, v7

    .line 676
    goto :goto_0
.end method

.method public isPreoderEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 459
    iget-object v1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mPreorder:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 460
    const-string v1, "disabled"

    iget-object v2, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mPreorder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 461
    const/4 v0, 0x0

    .line 470
    :cond_0
    :goto_0
    return v0

    .line 464
    :cond_1
    const-string v1, "day"

    iget-object v2, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mPreorder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "enabled"

    iget-object v2, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mPreorder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public ismHasSms()Z
    .locals 1

    .prologue
    .line 1517
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mHasSms:Z

    return v0
.end method

.method public ismIsnew()Z
    .locals 1

    .prologue
    .line 1541
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mIsnew:Z

    return v0
.end method

.method public matchesCriteria(Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;)Z
    .locals 4
    .param p1, "criteria"    # Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    .prologue
    .line 1257
    const/4 v0, 0x1

    .line 1259
    .local v0, "matches":Z
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->isOnlyOnline()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mOnlyCash:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1260
    const/4 v0, 0x0

    .line 1262
    :cond_0
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->isOnlyOpened()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen:Z

    if-nez v2, :cond_1

    .line 1263
    const/4 v0, 0x0

    .line 1265
    :cond_1
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->isOnlyStample()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1266
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1267
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v2

    iget v3, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mId:I

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/model/user/UserData;->getStampsForRestaurant(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1268
    .local v1, "stamps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/Stamp;>;"
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 1269
    :cond_2
    const/4 v0, 0x0

    .line 1278
    .end local v1    # "stamps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/Stamp;>;"
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mCategory:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->isCategoryFilterEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mCategory:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->containsCategory(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1279
    const/4 v0, 0x0

    .line 1281
    :cond_4
    iget-object v2, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mCategory:Ljava/lang/String;

    if-nez v2, :cond_5

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->isCategoryFilterEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1282
    const/4 v0, 0x0

    .line 1284
    :cond_5
    return v0

    .line 1272
    :cond_6
    iget-object v2, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mStampCard:Lcom/yopeso/lieferando/model/Stamp;

    if-nez v2, :cond_3

    .line 1273
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeOpenings(Ljava/util/Date;)Ljava/util/ArrayList;
    .locals 19
    .param p1, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/Opening;",
            ">;"
        }
    .end annotation

    .prologue
    .line 714
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 715
    .local v1, "cal":Ljava/util/Calendar;
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 717
    invoke-static {v1}, Lcom/yopeso/lieferando/util/OpeningUtils;->getWeekDay(Ljava/util/Calendar;)I

    move-result v7

    .line 718
    .local v7, "today":I
    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getHashDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 720
    .local v8, "todayHashKey":Ljava/lang/String;
    const/4 v15, 0x5

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Ljava/util/Calendar;->add(II)V

    .line 721
    invoke-static {v1}, Lcom/yopeso/lieferando/util/OpeningUtils;->getWeekDay(Ljava/util/Calendar;)I

    move-result v11

    .line 722
    .local v11, "tomorrow":I
    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getHashDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v15

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    .line 726
    .local v12, "tomorrowHashKey":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 729
    .local v6, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Opening;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mOpeningSpecial:Ljava/util/Map;

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mOpeningSpecial:Ljava/util/Map;

    invoke-interface {v15, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_3

    .line 730
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mOpeningSpecial:Ljava/util/Map;

    invoke-interface {v15, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 740
    .local v10, "todaySchedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Opening;>;"
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mOpeningSpecial:Ljava/util/Map;

    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mOpeningSpecial:Ljava/util/Map;

    invoke-interface {v15, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_5

    .line 741
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mOpeningSpecial:Ljava/util/Map;

    invoke-interface {v15, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    .line 751
    .local v14, "tomorrowSchedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Opening;>;"
    :cond_1
    :goto_1
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-nez v15, :cond_7

    .line 785
    :cond_2
    return-object v6

    .line 731
    .end local v10    # "todaySchedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Opening;>;"
    .end local v14    # "tomorrowSchedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Opening;>;"
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mHolidays:Ljava/util/Map;

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mHolidays:Ljava/util/Map;

    invoke-interface {v15, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_4

    .line 732
    const/16 v15, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getOpeningsForDay(I)Ljava/util/ArrayList;

    move-result-object v10

    .line 733
    .restart local v10    # "todaySchedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Opening;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 734
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getOpeningsForDay(I)Ljava/util/ArrayList;

    move-result-object v10

    .line 736
    goto :goto_0

    .line 737
    .end local v10    # "todaySchedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Opening;>;"
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getOpeningsForDay(I)Ljava/util/ArrayList;

    move-result-object v10

    .restart local v10    # "todaySchedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Opening;>;"
    goto :goto_0

    .line 742
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mHolidays:Ljava/util/Map;

    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mHolidays:Ljava/util/Map;

    invoke-interface {v15, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_6

    .line 743
    const/16 v15, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getOpeningsForDay(I)Ljava/util/ArrayList;

    move-result-object v14

    .line 744
    .restart local v14    # "tomorrowSchedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Opening;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 745
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getOpeningsForDay(I)Ljava/util/ArrayList;

    move-result-object v14

    .line 747
    goto :goto_1

    .line 748
    .end local v14    # "tomorrowSchedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Opening;>;"
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getOpeningsForDay(I)Ljava/util/ArrayList;

    move-result-object v14

    .restart local v14    # "tomorrowSchedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Opening;>;"
    goto :goto_1

    .line 756
    :cond_7
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_8

    const/4 v15, 0x0

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/yopeso/lieferando/model/restaurant/Opening;

    invoke-virtual {v15}, Lcom/yopeso/lieferando/model/restaurant/Opening;->isClosed()Z

    move-result v15

    if-nez v15, :cond_2

    .line 759
    :cond_8
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_9
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/yopeso/lieferando/model/restaurant/Opening;

    .line 760
    .local v9, "todayOpenings":Lcom/yopeso/lieferando/model/restaurant/Opening;
    const/4 v2, 0x1

    .line 761
    .local v2, "canAdd":Z
    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getTimeFormatter()Ljava/text/SimpleDateFormat;

    move-result-object v16

    invoke-virtual {v9}, Lcom/yopeso/lieferando/model/restaurant/Opening;->getCloseHours()Ljava/util/Date;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 762
    .local v3, "close":Ljava/lang/String;
    const-string v16, "00:00"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_a

    const-string v16, "24:00"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c

    .line 763
    :cond_a
    if-eqz v14, :cond_c

    .line 764
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_b
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_d

    .line 779
    :cond_c
    if-eqz v2, :cond_9

    .line 780
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 764
    :cond_d
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/yopeso/lieferando/model/restaurant/Opening;

    .line 765
    .local v13, "tomorrowOpening":Lcom/yopeso/lieferando/model/restaurant/Opening;
    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getTimeFormatter()Ljava/text/SimpleDateFormat;

    move-result-object v17

    invoke-virtual {v13}, Lcom/yopeso/lieferando/model/restaurant/Opening;->getOpenHours()Ljava/util/Date;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 766
    .local v5, "open":Ljava/lang/String;
    const-string v17, "00:00"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    invoke-virtual {v13}, Lcom/yopeso/lieferando/model/restaurant/Opening;->isClosed()Z

    move-result v17

    if-nez v17, :cond_b

    .line 767
    new-instance v4, Lcom/yopeso/lieferando/model/restaurant/Opening;

    invoke-direct {v4}, Lcom/yopeso/lieferando/model/restaurant/Opening;-><init>()V

    .line 768
    .local v4, "newOpening":Lcom/yopeso/lieferando/model/restaurant/Opening;
    invoke-virtual {v9}, Lcom/yopeso/lieferando/model/restaurant/Opening;->getWeekDay()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/yopeso/lieferando/model/restaurant/Opening;->setWeekDay(I)V

    .line 769
    invoke-virtual {v9}, Lcom/yopeso/lieferando/model/restaurant/Opening;->getOpenHours()Ljava/util/Date;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/yopeso/lieferando/model/restaurant/Opening;->setOpenHours(Ljava/util/Date;)V

    .line 770
    invoke-virtual {v13}, Lcom/yopeso/lieferando/model/restaurant/Opening;->getCloseHours()Ljava/util/Date;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/yopeso/lieferando/model/restaurant/Opening;->setCloseHours(Ljava/util/Date;)V

    .line 771
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/yopeso/lieferando/model/restaurant/Opening;->setPastMidnight(Z)V

    .line 772
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 773
    const/4 v2, 0x0

    goto :goto_3
.end method

.method public openingsForDay(Ljava/util/Date;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/Opening;",
            ">;"
        }
    .end annotation

    .prologue
    .line 964
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 965
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 967
    invoke-static {v0}, Lcom/yopeso/lieferando/util/OpeningUtils;->getWeekDay(Ljava/util/Calendar;)I

    move-result v2

    .line 968
    .local v2, "today":I
    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getHashDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 971
    .local v3, "todayHashKey":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 973
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Opening;>;"
    iget-object v5, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mOpeningSpecial:Ljava/util/Map;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mOpeningSpecial:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 974
    iget-object v5, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mOpeningSpecial:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 984
    .local v4, "todaySchedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Opening;>;"
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_4

    .line 992
    .end local v1    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Opening;>;"
    :cond_1
    :goto_1
    return-object v1

    .line 975
    .end local v4    # "todaySchedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Opening;>;"
    .restart local v1    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Opening;>;"
    :cond_2
    iget-object v5, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mHolidays:Ljava/util/Map;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mHolidays:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 976
    const/16 v5, 0xa

    invoke-virtual {p0, v5}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getOpeningsForDay(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 977
    .restart local v4    # "todaySchedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Opening;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 978
    invoke-virtual {p0, v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getOpeningsForDay(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 980
    goto :goto_0

    .line 981
    .end local v4    # "todaySchedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Opening;>;"
    :cond_3
    invoke-virtual {p0, v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getOpeningsForDay(I)Ljava/util/ArrayList;

    move-result-object v4

    .restart local v4    # "todaySchedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Opening;>;"
    goto :goto_0

    .line 988
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yopeso/lieferando/model/restaurant/Opening;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/restaurant/Opening;->isClosed()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_5
    move-object v1, v4

    .line 992
    goto :goto_1
.end method

.method public setAddressNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "addressNumber"    # Ljava/lang/String;

    .prologue
    .line 387
    iput-object p1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mAddressNumber:Ljava/lang/String;

    .line 388
    return-void
.end method

.method public setAddressStreet(Ljava/lang/String;)V
    .locals 0
    .param p1, "addressStreet"    # Ljava/lang/String;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mAddressStreet:Ljava/lang/String;

    .line 332
    return-void
.end method

.method public setAllowCash(Z)V
    .locals 1
    .param p1, "allowCash"    # Z

    .prologue
    .line 1206
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mAllowCash:Ljava/lang/Boolean;

    .line 1207
    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 339
    iput-object p1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mCategory:Ljava/lang/String;

    .line 340
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    .line 527
    iput-object p1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mCity:Ljava/lang/String;

    .line 528
    return-void
.end method

.method public setDeliverCost(I)V
    .locals 0
    .param p1, "deliverCost"    # I

    .prologue
    .line 428
    iput p1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mDeliverCost:I

    .line 429
    return-void
.end method

.method public setDeliveryArea(Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;)V
    .locals 1
    .param p1, "da"    # Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;

    .prologue
    .line 1210
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;->getMinCost()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mMinCost:I

    .line 1211
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;->getDeliverCost()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mDeliverCost:I

    .line 1212
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;->getPreorderOffset()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mPreorderOffset:I

    .line 1213
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;->getNoDeliverCostAbove()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mNoDeliverCostAbove:I

    .line 1214
    return-void
.end method

.method public setDeliveryAreas(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 404
    .local p1, "da":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;>;"
    iput-object p1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mDeliverAreas:Ljava/util/ArrayList;

    .line 405
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 485
    iput-object p1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mDescription:Ljava/lang/String;

    .line 486
    return-void
.end method

.method public setDishCategories(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/meal/DishCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1160
    .local p1, "dishCategories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/meal/DishCategory;>;"
    iput-object p1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mDishCategories:Ljava/util/ArrayList;

    .line 1161
    return-void
.end method

.method public setFavouriteCount(I)V
    .locals 0
    .param p1, "favouriteCount"    # I

    .prologue
    .line 371
    iput p1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mFavouriteCount:I

    .line 372
    return-void
.end method

.method public setFranchiseTypeId(I)V
    .locals 0
    .param p1, "franchiseTypeId"    # I

    .prologue
    .line 1449
    iput p1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->franchiseTypeId:I

    .line 1450
    return-void
.end method

.method public setHasSms(Z)V
    .locals 0
    .param p1, "hasSms"    # Z

    .prologue
    .line 363
    iput-boolean p1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mHasSms:Z

    .line 364
    return-void
.end method

.method public setHolidays(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 589
    .local p1, "holidays":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mHolidays:Ljava/util/Map;

    .line 590
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 299
    iput p1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mId:I

    .line 300
    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "imgUrl"    # Ljava/lang/String;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mImgUrl:Ljava/lang/String;

    .line 316
    return-void
.end method

.method public setIsOpen(Z)V
    .locals 0
    .param p1, "open"    # Z

    .prologue
    .line 633
    iput-boolean p1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen:Z

    .line 634
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mName:Ljava/lang/String;

    .line 308
    return-void
.end method

.method public setNoDeliverCostAbove(I)V
    .locals 0
    .param p1, "noDeliverCostAbove"    # I

    .prologue
    .line 448
    iput p1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mNoDeliverCostAbove:I

    .line 449
    return-void
.end method

.method public setOnline(Z)V
    .locals 1
    .param p1, "online"    # Z

    .prologue
    .line 347
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOnline:Ljava/lang/Boolean;

    .line 348
    return-void
.end method

.method public setOnlyCash(Z)V
    .locals 1
    .param p1, "onlyCash"    # Z

    .prologue
    .line 1187
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mOnlyCash:Ljava/lang/Boolean;

    .line 1188
    return-void
.end method

.method public setOpeningSpecial(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/Opening;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 577
    .local p1, "openingSpecial":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Opening;>;>;"
    iput-object p1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mOpeningSpecial:Ljava/util/Map;

    .line 578
    return-void
.end method

.method public setOpenings(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/Opening;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 581
    .local p1, "openings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Opening;>;"
    iput-object p1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mWeekSchedule:Ljava/util/ArrayList;

    .line 582
    return-void
.end method

.method public setPreorder(Ljava/lang/String;)V
    .locals 0
    .param p1, "preorder"    # Ljava/lang/String;

    .prologue
    .line 444
    iput-object p1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mPreorder:Ljava/lang/String;

    .line 445
    return-void
.end method

.method public setPreorderOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 436
    iput p1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mPreorderOffset:I

    .line 437
    return-void
.end method

.method public setRatingAverage(F)V
    .locals 0
    .param p1, "ratingAverage"    # F

    .prologue
    .line 420
    iput p1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mRatingAverage:F

    .line 421
    return-void
.end method

.method public setRatingsCount(I)V
    .locals 0
    .param p1, "ratingsCount"    # I

    .prologue
    .line 412
    iput p1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mRatingsCount:I

    .line 413
    return-void
.end method

.method public setRestaurantAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "restaurantAddress"    # Ljava/lang/String;

    .prologue
    .line 605
    iput-object p1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mRestaurantAddress:Ljava/lang/String;

    .line 606
    return-void
.end method

.method public setServiceUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceUrl"    # Ljava/lang/String;

    .prologue
    .line 379
    iput-object p1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mServiceUrl:Ljava/lang/String;

    .line 380
    return-void
.end method

.method public setStamp(Lcom/yopeso/lieferando/model/Stamp;)V
    .locals 0
    .param p1, "card"    # Lcom/yopeso/lieferando/model/Stamp;

    .prologue
    .line 617
    iput-object p1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mStampCard:Lcom/yopeso/lieferando/model/Stamp;

    .line 618
    return-void
.end method

.method public setTelephone(Ljava/lang/String;)V
    .locals 0
    .param p1, "telephone"    # Ljava/lang/String;

    .prologue
    .line 323
    iput-object p1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mTelephone:Ljava/lang/String;

    .line 324
    return-void
.end method

.method public setZipCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "zipCode"    # Ljava/lang/String;

    .prologue
    .line 512
    iput-object p1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mZipCode:Ljava/lang/String;

    .line 513
    return-void
.end method

.method public setmContact(Ljava/lang/String;)V
    .locals 0
    .param p1, "mContact"    # Ljava/lang/String;

    .prologue
    .line 1441
    iput-object p1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mContact:Ljava/lang/String;

    .line 1442
    return-void
.end method

.method public setmDeliverCost(I)V
    .locals 0
    .param p1, "mDeliverCost"    # I

    .prologue
    .line 1231
    iput p1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mDeliverCost:I

    .line 1232
    return-void
.end method

.method public setmEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "mEmail"    # Ljava/lang/String;

    .prologue
    .line 1425
    iput-object p1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mEmail:Ljava/lang/String;

    .line 1426
    return-void
.end method

.method public setmFax(Ljava/lang/String;)V
    .locals 0
    .param p1, "mFax"    # Ljava/lang/String;

    .prologue
    .line 1433
    iput-object p1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mFax:Ljava/lang/String;

    .line 1434
    return-void
.end method

.method public setmFranchiseType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mFranchiseType"    # Ljava/lang/String;

    .prologue
    .line 1405
    iput-object p1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mFranchiseType:Ljava/lang/String;

    .line 1406
    return-void
.end method

.method public setmMinCost(I)V
    .locals 0
    .param p1, "mMinCost"    # I

    .prologue
    .line 1223
    iput p1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mMinCost:I

    .line 1224
    return-void
.end method

.method public setmNoDeliverCostAbove(I)V
    .locals 0
    .param p1, "mNoDeliverCostAbove"    # I

    .prologue
    .line 1247
    iput p1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mNoDeliverCostAbove:I

    .line 1248
    return-void
.end method

.method public setmPreorderOffset(I)V
    .locals 0
    .param p1, "mPreorderOffset"    # I

    .prologue
    .line 1239
    iput p1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mPreorderOffset:I

    .line 1240
    return-void
.end method

.method public setmRestaurantPayment(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/RestaurantPayment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1338
    .local p1, "mRestaurantPayment":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/RestaurantPayment;>;"
    iput-object p1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mRestaurantPayment:Ljava/util/ArrayList;

    .line 1339
    return-void
.end method

.method public setmZipCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "mZipCode"    # Ljava/lang/String;

    .prologue
    .line 1417
    iput-object p1, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mZipCode:Ljava/lang/String;

    .line 1418
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 245
    iget v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mAllowCash:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 247
    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOnlyCash()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 249
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mImgUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mTelephone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mAddressStreet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mZipCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mCity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 257
    iget v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mCityId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mCategory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 259
    iget-wide v4, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mLatitude:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 261
    iget-wide v4, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mLongitude:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 263
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOnline:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 264
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 269
    :goto_2
    iget v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mFavouriteCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mServiceUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mAddressNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 273
    iget v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mPreorderOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mPreorder:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 276
    iget v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mNoDeliverCostAbove:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 279
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen:Z

    if-eqz v0, :cond_4

    :goto_3
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 280
    iget v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mMinCost:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    iget v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mDeliverCost:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    iget v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mRatingsCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    iget v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mRatingAverage:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 285
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mWeekSchedule:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 287
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mDeliverAreas:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 288
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mDishCategories:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 289
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->mRestaurantAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 290
    return-void

    :cond_0
    move v0, v2

    .line 246
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 247
    goto/16 :goto_1

    .line 267
    :cond_2
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOnline:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_4
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_4

    :cond_4
    move v1, v2

    .line 279
    goto :goto_3
.end method
