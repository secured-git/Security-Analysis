.class public Lcom/yopeso/lieferando/model/user/Location;
.super Ljava/lang/Object;
.source "Location.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yopeso/lieferando/model/user/Location;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x20a1bba088f070L


# instance fields
.field private houseNumberEdited:Z

.field private mAgb:Z

.field private mCityId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cityId"
    .end annotation
.end field

.field private mCityName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "locationName"
    .end annotation
.end field

.field private mComment:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "comment"
    .end annotation
.end field

.field private mCompany:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "companyName"
    .end annotation
.end field

.field private mEmail:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "email"
    .end annotation
.end field

.field private mEtage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "level"
    .end annotation
.end field

.field private mHnr:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "number"
    .end annotation
.end field

.field private mId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private mLocationUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "locationUrl"
    .end annotation
.end field

.field private mName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "customerName"
    .end annotation
.end field

.field private mPhone:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tel"
    .end annotation
.end field

.field private mPlz:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "plz"
    .end annotation
.end field

.field private mPreName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "customerPrename"
    .end annotation
.end field

.field private mPrimary:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "primary"
    .end annotation
.end field

.field private mStreet:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "street"
    .end annotation
.end field

.field private streetEdited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 320
    new-instance v0, Lcom/yopeso/lieferando/model/user/Location$1;

    invoke-direct {v0}, Lcom/yopeso/lieferando/model/user/Location$1;-><init>()V

    sput-object v0, Lcom/yopeso/lieferando/model/user/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 328
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-boolean v0, p0, Lcom/yopeso/lieferando/model/user/Location;->houseNumberEdited:Z

    .line 66
    iput-boolean v0, p0, Lcom/yopeso/lieferando/model/user/Location;->streetEdited:Z

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-boolean v2, p0, Lcom/yopeso/lieferando/model/user/Location;->houseNumberEdited:Z

    .line 66
    iput-boolean v2, p0, Lcom/yopeso/lieferando/model/user/Location;->streetEdited:Z

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/model/user/Location;->mId:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/Location;->mPreName:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/Location;->mName:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/Location;->mEmail:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/Location;->mStreet:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/Location;->mCompany:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/Location;->mComment:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/model/user/Location;->mCityId:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/Location;->mCityName:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/Location;->mHnr:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/Location;->mPlz:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/Location;->mEtage:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/Location;->mPhone:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/Location;->mLocationUrl:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/yopeso/lieferando/model/user/Location;->mAgb:Z

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/yopeso/lieferando/model/user/Location;->houseNumberEdited:Z

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/yopeso/lieferando/model/user/Location;->streetEdited:Z

    .line 90
    return-void

    :cond_0
    move v0, v2

    .line 87
    goto :goto_0

    :cond_1
    move v0, v2

    .line 88
    goto :goto_1

    :cond_2
    move v1, v2

    .line 89
    goto :goto_2
.end method


# virtual methods
.method public clearLocationAddress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 303
    iput-object v1, p0, Lcom/yopeso/lieferando/model/user/Location;->mStreet:Ljava/lang/String;

    .line 304
    iput-object v1, p0, Lcom/yopeso/lieferando/model/user/Location;->mHnr:Ljava/lang/String;

    .line 305
    iput-object v1, p0, Lcom/yopeso/lieferando/model/user/Location;->mPlz:Ljava/lang/String;

    .line 306
    const/4 v0, -0x1

    iput v0, p0, Lcom/yopeso/lieferando/model/user/Location;->mCityId:I

    .line 307
    iput-object v1, p0, Lcom/yopeso/lieferando/model/user/Location;->mCityName:Ljava/lang/String;

    .line 308
    iput-object v1, p0, Lcom/yopeso/lieferando/model/user/Location;->mComment:Ljava/lang/String;

    .line 309
    iput-object v1, p0, Lcom/yopeso/lieferando/model/user/Location;->mEtage:Ljava/lang/String;

    .line 310
    iput-object v1, p0, Lcom/yopeso/lieferando/model/user/Location;->mCompany:Ljava/lang/String;

    .line 311
    iput-boolean v2, p0, Lcom/yopeso/lieferando/model/user/Location;->houseNumberEdited:Z

    .line 312
    iput-boolean v2, p0, Lcom/yopeso/lieferando/model/user/Location;->streetEdited:Z

    .line 313
    return-void
.end method

.method public clearUserSpecificFields()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 240
    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/Location;->mEmail:Ljava/lang/String;

    .line 241
    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/Location;->mName:Ljava/lang/String;

    .line 242
    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/Location;->mPreName:Ljava/lang/String;

    .line 243
    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/Location;->mPhone:Ljava/lang/String;

    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yopeso/lieferando/model/user/Location;->mAgb:Z

    .line 245
    return-void
.end method

.method public clone()Lcom/yopeso/lieferando/model/user/Location;
    .locals 2

    .prologue
    .line 283
    new-instance v0, Lcom/yopeso/lieferando/model/user/Location;

    invoke-direct {v0}, Lcom/yopeso/lieferando/model/user/Location;-><init>()V

    .line 284
    .local v0, "clone":Lcom/yopeso/lieferando/model/user/Location;
    iget v1, p0, Lcom/yopeso/lieferando/model/user/Location;->mCityId:I

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setCityId(I)V

    .line 285
    iget-object v1, p0, Lcom/yopeso/lieferando/model/user/Location;->mCityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setCityName(Ljava/lang/String;)V

    .line 286
    iget-object v1, p0, Lcom/yopeso/lieferando/model/user/Location;->mComment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setComment(Ljava/lang/String;)V

    .line 287
    iget-object v1, p0, Lcom/yopeso/lieferando/model/user/Location;->mCompany:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setCompany(Ljava/lang/String;)V

    .line 288
    iget-object v1, p0, Lcom/yopeso/lieferando/model/user/Location;->mEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setEmail(Ljava/lang/String;)V

    .line 289
    iget-object v1, p0, Lcom/yopeso/lieferando/model/user/Location;->mEtage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setEtage(Ljava/lang/String;)V

    .line 290
    iget-object v1, p0, Lcom/yopeso/lieferando/model/user/Location;->mHnr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setHnr(Ljava/lang/String;)V

    .line 291
    iget v1, p0, Lcom/yopeso/lieferando/model/user/Location;->mId:I

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setId(I)V

    .line 292
    iget-object v1, p0, Lcom/yopeso/lieferando/model/user/Location;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setName(Ljava/lang/String;)V

    .line 293
    iget-object v1, p0, Lcom/yopeso/lieferando/model/user/Location;->mPhone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setPhone(Ljava/lang/String;)V

    .line 294
    iget-object v1, p0, Lcom/yopeso/lieferando/model/user/Location;->mPlz:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setPlz(Ljava/lang/String;)V

    .line 295
    iget-object v1, p0, Lcom/yopeso/lieferando/model/user/Location;->mPreName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setPreName(Ljava/lang/String;)V

    .line 296
    iget-object v1, p0, Lcom/yopeso/lieferando/model/user/Location;->mStreet:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setStreet(Ljava/lang/String;)V

    .line 297
    iget-boolean v1, p0, Lcom/yopeso/lieferando/model/user/Location;->mPrimary:Z

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setPrimary(Z)V

    .line 298
    iget-object v1, p0, Lcom/yopeso/lieferando/model/user/Location;->mLocationUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setLocationUrl(Ljava/lang/String;)V

    .line 299
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/user/Location;->clone()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x0

    return v0
.end method

.method public getAgb()Z
    .locals 1

    .prologue
    .line 230
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    const/4 v0, 0x1

    .line 233
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/user/Location;->mAgb:Z

    goto :goto_0
.end method

.method public getCityId()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/yopeso/lieferando/model/user/Location;->mCityId:I

    return v0
.end method

.method public getCityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Location;->mCityName:Ljava/lang/String;

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Location;->mComment:Ljava/lang/String;

    return-object v0
.end method

.method public getCompany()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Location;->mCompany:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Location;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getEtage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Location;->mEtage:Ljava/lang/String;

    return-object v0
.end method

.method public getHnr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Location;->mHnr:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/yopeso/lieferando/model/user/Location;->mId:I

    return v0
.end method

.method public getLocationUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Location;->mLocationUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Location;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Location;->mPhone:Ljava/lang/String;

    return-object v0
.end method

.method public getPlz()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Location;->mPlz:Ljava/lang/String;

    return-object v0
.end method

.method public getPreName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Location;->mPreName:Ljava/lang/String;

    return-object v0
.end method

.method public getStreet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Location;->mStreet:Ljava/lang/String;

    return-object v0
.end method

.method public isPrimary()Z
    .locals 1

    .prologue
    .line 335
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/user/Location;->mPrimary:Z

    return v0
.end method

.method public setAgb(Z)V
    .locals 0
    .param p1, "agb"    # Z

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/yopeso/lieferando/model/user/Location;->mAgb:Z

    .line 227
    return-void
.end method

.method public setCityId(I)V
    .locals 0
    .param p1, "mCityId"    # I

    .prologue
    .line 198
    iput p1, p0, Lcom/yopeso/lieferando/model/user/Location;->mCityId:I

    .line 199
    return-void
.end method

.method public setCityName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mCityName"    # Ljava/lang/String;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/Location;->mCityName:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .param p1, "mComment"    # Ljava/lang/String;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/Location;->mComment:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setCompany(Ljava/lang/String;)V
    .locals 0
    .param p1, "mCompany"    # Ljava/lang/String;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/Location;->mCompany:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "mEmail"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/Location;->mEmail:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setEtage(Ljava/lang/String;)V
    .locals 0
    .param p1, "mEtage"    # Ljava/lang/String;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/Location;->mEtage:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setHnr(Ljava/lang/String;)V
    .locals 0
    .param p1, "mHnr"    # Ljava/lang/String;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/Location;->mHnr:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setHouseNumberEdited(Z)V
    .locals 0
    .param p1, "edited"    # Z

    .prologue
    .line 339
    iput-boolean p1, p0, Lcom/yopeso/lieferando/model/user/Location;->houseNumberEdited:Z

    .line 340
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "mId"    # I

    .prologue
    .line 118
    iput p1, p0, Lcom/yopeso/lieferando/model/user/Location;->mId:I

    .line 119
    return-void
.end method

.method public setLocationUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "locationUrl"    # Ljava/lang/String;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/Location;->mLocationUrl:Ljava/lang/String;

    .line 219
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mName"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/Location;->mName:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/Location;->mPhone:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public setPlz(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPlz"    # Ljava/lang/String;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/Location;->mPlz:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public setPreName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPreName"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/Location;->mPreName:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setPrimary(Z)V
    .locals 0
    .param p1, "primary"    # Z

    .prologue
    .line 331
    iput-boolean p1, p0, Lcom/yopeso/lieferando/model/user/Location;->mPrimary:Z

    .line 332
    return-void
.end method

.method public setStreet(Ljava/lang/String;)V
    .locals 0
    .param p1, "mStreet"    # Ljava/lang/String;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/Location;->mStreet:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setStreetEdited(Z)V
    .locals 0
    .param p1, "edited"    # Z

    .prologue
    .line 347
    iput-boolean p1, p0, Lcom/yopeso/lieferando/model/user/Location;->streetEdited:Z

    .line 348
    return-void
.end method

.method public toJsonObject()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 268
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 269
    .local v0, "object":Lorg/json/JSONObject;
    const-string v1, "street"

    iget-object v2, p0, Lcom/yopeso/lieferando/model/user/Location;->mStreet:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 270
    const-string v1, "number"

    iget-object v2, p0, Lcom/yopeso/lieferando/model/user/Location;->mHnr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    const-string v1, "cityId"

    iget v2, p0, Lcom/yopeso/lieferando/model/user/Location;->mCityId:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 272
    const-string v1, "plz"

    iget-object v2, p0, Lcom/yopeso/lieferando/model/user/Location;->mPlz:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 273
    const-string v1, "tel"

    iget-object v2, p0, Lcom/yopeso/lieferando/model/user/Location;->mPhone:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 274
    const-string v1, "companyName"

    iget-object v2, p0, Lcom/yopeso/lieferando/model/user/Location;->mCompany:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 275
    const-string v1, "comment"

    iget-object v2, p0, Lcom/yopeso/lieferando/model/user/Location;->mComment:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 276
    const-string v1, "level"

    iget-object v2, p0, Lcom/yopeso/lieferando/model/user/Location;->mEtage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    const-string v1, "primary"

    iget-boolean v2, p0, Lcom/yopeso/lieferando/model/user/Location;->mPrimary:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 278
    return-object v0
.end method

.method public toOrderJson()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 254
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 255
    .local v0, "object":Lorg/json/JSONObject;
    const-string v1, "street"

    iget-object v2, p0, Lcom/yopeso/lieferando/model/user/Location;->mStreet:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    const-string v1, "number"

    iget-object v2, p0, Lcom/yopeso/lieferando/model/user/Location;->mHnr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 257
    const-string v1, "plz"

    iget-object v2, p0, Lcom/yopeso/lieferando/model/user/Location;->mPlz:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 258
    const-string v1, "cityId"

    iget v2, p0, Lcom/yopeso/lieferando/model/user/Location;->mCityId:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 259
    const-string v1, "locationName"

    iget-object v2, p0, Lcom/yopeso/lieferando/model/user/Location;->mCityName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 260
    const-string v1, "tel"

    iget-object v2, p0, Lcom/yopeso/lieferando/model/user/Location;->mPhone:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    const-string v1, "comment"

    iget-object v2, p0, Lcom/yopeso/lieferando/model/user/Location;->mComment:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 262
    const-string v1, "level"

    iget-object v2, p0, Lcom/yopeso/lieferando/model/user/Location;->mEtage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    const-string v1, "companyName"

    iget-object v2, p0, Lcom/yopeso/lieferando/model/user/Location;->mCompany:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/yopeso/lieferando/model/user/Location;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 356
    const-string v1, " mPreName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/model/user/Location;->mPreName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 357
    const-string v1, " mName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/model/user/Location;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 358
    const-string v1, " mEmail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/model/user/Location;->mEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 359
    const-string v1, " mStreet:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/model/user/Location;->mStreet:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 360
    const-string v1, " mCompany:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/model/user/Location;->mCompany:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 361
    const-string v1, " mComment:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/model/user/Location;->mComment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 362
    const-string v1, " mCityId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yopeso/lieferando/model/user/Location;->mCityId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 363
    const-string v1, " mCityName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/model/user/Location;->mCityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 364
    const-string v1, " mHnr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/model/user/Location;->mHnr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 365
    const-string v1, " mPlz:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/model/user/Location;->mPlz:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 366
    const-string v1, " mEtage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/model/user/Location;->mEtage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 367
    const-string v1, " mPhone:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/model/user/Location;->mPhone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 368
    const-string v1, " mLocationUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/model/user/Location;->mLocationUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 369
    const-string v1, " mAgb:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yopeso/lieferando/model/user/Location;->mAgb:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 370
    const-string v1, " houseNumberEdited:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yopeso/lieferando/model/user/Location;->houseNumberEdited:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 371
    const-string v1, " streetEdited:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yopeso/lieferando/model/user/Location;->streetEdited:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 355
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wasHouseNumberEdited()Z
    .locals 1

    .prologue
    .line 343
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/user/Location;->houseNumberEdited:Z

    return v0
.end method

.method public wasStreetEdited()Z
    .locals 1

    .prologue
    .line 351
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/user/Location;->streetEdited:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 94
    iget v0, p0, Lcom/yopeso/lieferando/model/user/Location;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Location;->mPreName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Location;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Location;->mEmail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Location;->mStreet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Location;->mCompany:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Location;->mComment:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget v0, p0, Lcom/yopeso/lieferando/model/user/Location;->mCityId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Location;->mCityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Location;->mHnr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Location;->mPlz:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Location;->mEtage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Location;->mPhone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Location;->mLocationUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/user/Location;->mAgb:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 109
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/user/Location;->houseNumberEdited:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 110
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/user/Location;->streetEdited:Z

    if-eqz v0, :cond_2

    :goto_2
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 111
    return-void

    :cond_0
    move v0, v2

    .line 108
    goto :goto_0

    :cond_1
    move v0, v2

    .line 109
    goto :goto_1

    :cond_2
    move v1, v2

    .line 110
    goto :goto_2
.end method
