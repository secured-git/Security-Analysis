.class public Lcom/yopeso/lieferando/model/user/Street;
.super Ljava/lang/Object;
.source "Street.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yopeso/lieferando/model/user/Street;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cityId:I

.field private cityName:Ljava/lang/String;

.field private id:I

.field private name:Ljava/lang/String;

.field private numRestaurants:I

.field private plz:Ljava/lang/String;

.field private regExp:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "number_regex"
    .end annotation
.end field

.field private street:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 145
    new-instance v0, Lcom/yopeso/lieferando/model/user/Street$1;

    invoke-direct {v0}, Lcom/yopeso/lieferando/model/user/Street$1;-><init>()V

    sput-object v0, Lcom/yopeso/lieferando/model/user/Street;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 154
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/model/user/Street;->id:I

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/model/user/Street;->cityId:I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/Street;->name:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/Street;->regExp:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/Street;->plz:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/Street;->cityName:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/Street;->url:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/model/user/Street;->numRestaurants:I

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/Street;->street:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public getCityId()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/yopeso/lieferando/model/user/Street;->cityId:I

    return v0
.end method

.method public getCityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Street;->cityName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/yopeso/lieferando/model/user/Street;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Street;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumRestaurants()I
    .locals 2

    .prologue
    .line 113
    const-class v0, Lcom/yopeso/lieferando/model/user/Street;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getNumRestaurants"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget v0, p0, Lcom/yopeso/lieferando/model/user/Street;->numRestaurants:I

    return v0
.end method

.method public getPlz()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    const-class v0, Lcom/yopeso/lieferando/model/user/Street;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getPlz"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Street;->plz:Ljava/lang/String;

    return-object v0
.end method

.method public getRegExp()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    const-class v0, Lcom/yopeso/lieferando/model/user/Street;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getRegExp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Street;->regExp:Ljava/lang/String;

    return-object v0
.end method

.method public getStreet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Street;->street:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    const-class v0, Lcom/yopeso/lieferando/model/user/Street;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getUrl"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Street;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setCityId(I)V
    .locals 0
    .param p1, "cityId"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/yopeso/lieferando/model/user/Street;->cityId:I

    .line 64
    return-void
.end method

.method public setCityName(Ljava/lang/String;)V
    .locals 0
    .param p1, "cityName"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/Street;->cityName:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/yopeso/lieferando/model/user/Street;->id:I

    .line 48
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/Street;->name:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setNumRestaurants(I)V
    .locals 2
    .param p1, "numRestaurants"    # I

    .prologue
    .line 118
    const-class v0, Lcom/yopeso/lieferando/model/user/Street;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setNumRestaurants"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iput p1, p0, Lcom/yopeso/lieferando/model/user/Street;->numRestaurants:I

    .line 120
    return-void
.end method

.method public setPlz(Ljava/lang/String;)V
    .locals 2
    .param p1, "plz"    # Ljava/lang/String;

    .prologue
    .line 90
    const-class v0, Lcom/yopeso/lieferando/model/user/Street;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setPlz"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/Street;->plz:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setRegExp(Ljava/lang/String;)V
    .locals 2
    .param p1, "regExp"    # Ljava/lang/String;

    .prologue
    .line 80
    const-class v0, Lcom/yopeso/lieferando/model/user/Street;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setRegExp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/Street;->regExp:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setStreet(Ljava/lang/String;)V
    .locals 0
    .param p1, "street"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/Street;->street:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 108
    const-class v0, Lcom/yopeso/lieferando/model/user/Street;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setUrl"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/Street;->url:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Street;->street:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 134
    iget v0, p0, Lcom/yopeso/lieferando/model/user/Street;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget v0, p0, Lcom/yopeso/lieferando/model/user/Street;->cityId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Street;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Street;->regExp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Street;->plz:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Street;->cityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Street;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget v0, p0, Lcom/yopeso/lieferando/model/user/Street;->numRestaurants:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Street;->street:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    return-void
.end method
