.class Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint$1;
.super Ljava/lang/Object;
.source "FidelityPoint.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;
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
        "Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 141
    new-instance v0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;

    invoke-direct {v0, p1}, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint$1;->createFromParcel(Landroid/os/Parcel;)Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 145
    new-array v0, p1, [Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint$1;->newArray(I)[Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;

    move-result-object v0

    return-object v0
.end method
