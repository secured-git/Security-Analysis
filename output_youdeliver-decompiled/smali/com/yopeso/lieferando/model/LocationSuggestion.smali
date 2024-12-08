.class public Lcom/yopeso/lieferando/model/LocationSuggestion;
.super Ljava/lang/Object;
.source "LocationSuggestion.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yopeso/lieferando/model/LocationSuggestion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cityId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private comment:Ljava/lang/String;

.field private company:Ljava/lang/String;

.field private etag:Ljava/lang/String;

.field private houseNumber:Ljava/lang/String;

.field private locationUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation
.end field

.field private mEmail:Ljava/lang/String;

.field private mLastName:Ljava/lang/String;

.field private mPhoneNumber:Ljava/lang/String;

.field private mPrename:Ljava/lang/String;

.field private mStreetUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "streetDataUrl"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private numRestaurants:I

.field private plz:Ljava/lang/String;

.field private regExp:Ljava/lang/String;

.field private streetName:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 270
    new-instance v0, Lcom/yopeso/lieferando/model/LocationSuggestion$1;

    invoke-direct {v0}, Lcom/yopeso/lieferando/model/LocationSuggestion$1;-><init>()V

    sput-object v0, Lcom/yopeso/lieferando/model/LocationSuggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 280
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->type:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->name:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->locationUrl:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->numRestaurants:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->cityId:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->plz:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->streetName:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->houseNumber:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->comment:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->company:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->etag:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->regExp:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->mPrename:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->mLastName:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->mStreetUrl:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->mPhoneNumber:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->mEmail:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/yopeso/lieferando/model/LocationSuggestion;)V
    .locals 1
    .param p1, "ls"    # Lcom/yopeso/lieferando/model/LocationSuggestion;

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->name:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getPlz()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->plz:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getCityId()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->cityId:I

    .line 113
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getLocationUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->locationUrl:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getNumRestaurants()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->numRestaurants:I

    .line 115
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getStreetName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->streetName:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->type:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getHouseNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->houseNumber:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getReqExp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->regExp:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getComment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->comment:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getEtag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->etag:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getCompany()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->company:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getPreName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->mPrename:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getLastName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->mLastName:Ljava/lang/String;

    .line 124
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getStreetUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->mStreetUrl:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->mPhoneNumber:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getmEmail()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->mEmail:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public constructor <init>(Lcom/yopeso/lieferando/model/user/Location;)V
    .locals 1
    .param p1, "location"    # Lcom/yopeso/lieferando/model/user/Location;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/Location;->getPlz()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->plz:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/Location;->getCityName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->name:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/Location;->getCityId()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->cityId:I

    .line 97
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/Location;->getStreet()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->streetName:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/Location;->getHnr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->houseNumber:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/Location;->getComment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->comment:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/Location;->getCompany()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->company:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/Location;->getEtage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->etag:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/Location;->getLocationUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->locationUrl:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/Location;->getPreName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->mPrename:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/Location;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->mLastName:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/Location;->getPhone()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->mPhoneNumber:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/Location;->getEmail()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->mEmail:Ljava/lang/String;

    .line 107
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x0

    return v0
.end method

.method public getCityId()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->cityId:I

    return v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getCompany()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->company:Ljava/lang/String;

    return-object v0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getHouseNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->houseNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->mLastName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->locationUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumRestaurants()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->numRestaurants:I

    return v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPlz()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->plz:Ljava/lang/String;

    return-object v0
.end method

.method public getPreName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->mPrename:Ljava/lang/String;

    return-object v0
.end method

.method public getReqExp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->regExp:Ljava/lang/String;

    return-object v0
.end method

.method public getStreetName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->streetName:Ljava/lang/String;

    return-object v0
.end method

.method public getStreetUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->mStreetUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getmEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method public setCityId(I)V
    .locals 0
    .param p1, "cityId"    # I

    .prologue
    .line 247
    iput p1, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->cityId:I

    .line 248
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->comment:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public setCompany(Ljava/lang/String;)V
    .locals 0
    .param p1, "company"    # Ljava/lang/String;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->company:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setEtag(Ljava/lang/String;)V
    .locals 0
    .param p1, "etag"    # Ljava/lang/String;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->etag:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setHouseNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "houseNumber"    # Ljava/lang/String;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->houseNumber:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setLocationUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "locationUrl"    # Ljava/lang/String;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->locationUrl:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->name:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public setNumRestaurants(I)V
    .locals 0
    .param p1, "numRestaurants"    # I

    .prologue
    .line 237
    iput p1, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->numRestaurants:I

    .line 238
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPhoneNumber"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->mPhoneNumber:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setPlz(Ljava/lang/String;)V
    .locals 0
    .param p1, "plz"    # Ljava/lang/String;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->plz:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public setRegExp(Ljava/lang/String;)V
    .locals 0
    .param p1, "regExp"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->regExp:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public setStreetName(Ljava/lang/String;)V
    .locals 0
    .param p1, "streetName"    # Ljava/lang/String;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->streetName:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->type:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public setmEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "mEmail"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->mEmail:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->name:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->plz:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->cityId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->locationUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->numRestaurants:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->cityId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->plz:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->streetName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->houseNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->comment:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->company:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->etag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->regExp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->mPrename:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->mLastName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->mStreetUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/yopeso/lieferando/model/LocationSuggestion;->mEmail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    return-void
.end method
