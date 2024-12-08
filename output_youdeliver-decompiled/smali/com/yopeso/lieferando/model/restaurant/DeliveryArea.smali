.class public Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;
.super Ljava/lang/Object;
.source "DeliveryArea.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mCityId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cityId"
    .end annotation
.end field

.field private mCityName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private mDeliverCost:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "delivercost"
    .end annotation
.end field

.field private mDeliverCostUnit:Ljava/lang/String;

.field private mLocationName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "locationName"
    .end annotation
.end field

.field private mMinCost:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mincost"
    .end annotation
.end field

.field private mNoDeliverCostAbove:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "noDeliverCostAbove"
    .end annotation
.end field

.field private mPlz:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "plz"
    .end annotation
.end field

.field private mPreorderOffset:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "preorderOffset"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 144
    new-instance v0, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea$1;

    invoke-direct {v0}, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea$1;-><init>()V

    sput-object v0, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 152
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;->mNoDeliverCostAbove:I

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;->mNoDeliverCostAbove:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;->mCityId:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;->mDeliverCost:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;->mPlz:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;->mMinCost:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;->mPreorderOffset:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;->mCityName:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;->mDeliverCostUnit:Ljava/lang/String;

    .line 57
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

.method public getCityId()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;->mCityId:I

    return v0
.end method

.method public getCityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;->mCityName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeliverCost()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;->mDeliverCost:I

    return v0
.end method

.method public getDeliverCostUnit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;->mDeliverCostUnit:Ljava/lang/String;

    return-object v0
.end method

.method public getMinCost()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;->mMinCost:I

    return v0
.end method

.method public getNoDeliverCostAbove()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;->mNoDeliverCostAbove:I

    return v0
.end method

.method public getPlz()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;->mPlz:Ljava/lang/String;

    return-object v0
.end method

.method public getPreorderOffset()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;->mPreorderOffset:I

    return v0
.end method

.method public getmLocationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;->mLocationName:Ljava/lang/String;

    return-object v0
.end method

.method public setCityId(I)V
    .locals 0
    .param p1, "cityId"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;->mCityId:I

    .line 72
    return-void
.end method

.method public setCityName(Ljava/lang/String;)V
    .locals 0
    .param p1, "cityName"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;->mCityName:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setDeliverCost(I)V
    .locals 0
    .param p1, "deliverCost"    # I

    .prologue
    .line 95
    iput p1, p0, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;->mDeliverCost:I

    .line 96
    return-void
.end method

.method public setDeliverCostUnit(Ljava/lang/String;)V
    .locals 0
    .param p1, "deliverCostUnit"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;->mDeliverCostUnit:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setMinCost(I)V
    .locals 0
    .param p1, "minCost"    # I

    .prologue
    .line 103
    iput p1, p0, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;->mMinCost:I

    .line 104
    return-void
.end method

.method public setNoDeliverCostAbove(I)V
    .locals 0
    .param p1, "noDeliverCostAbove"    # I

    .prologue
    .line 137
    iput p1, p0, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;->mNoDeliverCostAbove:I

    .line 138
    return-void
.end method

.method public setPlz(Ljava/lang/String;)V
    .locals 0
    .param p1, "plz"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;->mPlz:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setPreorderOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 123
    iput p1, p0, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;->mPreorderOffset:I

    .line 124
    return-void
.end method

.method public setmLocationName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mLocationName"    # Ljava/lang/String;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;->mLocationName:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;->mCityName:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 61
    iget v0, p0, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;->mCityId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget v0, p0, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;->mDeliverCost:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;->mPlz:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget v0, p0, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;->mMinCost:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget v0, p0, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;->mPreorderOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;->mCityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;->mDeliverCostUnit:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    return-void
.end method
