.class public Lcom/yopeso/lieferando/model/restaurant/RestaurantPayment;
.super Ljava/lang/Object;
.source "RestaurantPayment.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xbaadfaL


# instance fields
.field private fee:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fee"
    .end annotation
.end field

.field private payment:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "payment"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public getFee()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/yopeso/lieferando/model/restaurant/RestaurantPayment;->fee:I

    return v0
.end method

.method public getPayment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/RestaurantPayment;->payment:Ljava/lang/String;

    return-object v0
.end method

.method public setFee(I)V
    .locals 0
    .param p1, "fee"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/yopeso/lieferando/model/restaurant/RestaurantPayment;->fee:I

    .line 34
    return-void
.end method

.method public setPayment(Ljava/lang/String;)V
    .locals 0
    .param p1, "payment"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/yopeso/lieferando/model/restaurant/RestaurantPayment;->payment:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/RestaurantPayment;->payment:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    iget v0, p0, Lcom/yopeso/lieferando/model/restaurant/RestaurantPayment;->fee:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    return-void
.end method
