.class Lcom/yopeso/lieferando/model/OrderResponse$1;
.super Ljava/lang/Object;
.source "OrderResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/model/OrderResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/yopeso/lieferando/model/OrderResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/yopeso/lieferando/model/OrderResponse;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 127
    new-instance v0, Lcom/yopeso/lieferando/model/OrderResponse;

    invoke-direct {v0, p1}, Lcom/yopeso/lieferando/model/OrderResponse;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/model/OrderResponse$1;->createFromParcel(Landroid/os/Parcel;)Lcom/yopeso/lieferando/model/OrderResponse;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/yopeso/lieferando/model/OrderResponse;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 131
    new-array v0, p1, [Lcom/yopeso/lieferando/model/OrderResponse;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/model/OrderResponse$1;->newArray(I)[Lcom/yopeso/lieferando/model/OrderResponse;

    move-result-object v0

    return-object v0
.end method
