.class public Lcom/yopeso/lieferando/model/user/fidelity/Order;
.super Ljava/lang/Object;
.source "Order.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yopeso/lieferando/model/user/fidelity/Order;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHash:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hash"
    .end annotation
.end field

.field private mRestImg:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "restaurantImage"
    .end annotation
.end field

.field private mRestName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "restaurantName"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/yopeso/lieferando/model/user/fidelity/Order$1;

    invoke-direct {v0}, Lcom/yopeso/lieferando/model/user/fidelity/Order$1;-><init>()V

    sput-object v0, Lcom/yopeso/lieferando/model/user/fidelity/Order;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 75
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/fidelity/Order;->mHash:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/fidelity/Order;->mRestName:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/fidelity/Order;->mRestImg:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public getHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/fidelity/Order;->mHash:Ljava/lang/String;

    return-object v0
.end method

.method public getRestImg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/fidelity/Order;->mRestImg:Ljava/lang/String;

    return-object v0
.end method

.method public getRestName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/fidelity/Order;->mRestName:Ljava/lang/String;

    return-object v0
.end method

.method public setHash(Ljava/lang/String;)V
    .locals 0
    .param p1, "hash"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/fidelity/Order;->mHash:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setRestImg(Ljava/lang/String;)V
    .locals 0
    .param p1, "restImg"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/fidelity/Order;->mRestImg:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setRestName(Ljava/lang/String;)V
    .locals 0
    .param p1, "restName"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/fidelity/Order;->mRestName:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/fidelity/Order;->mHash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/fidelity/Order;->mRestImg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/fidelity/Order;->mRestName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    return-void
.end method
