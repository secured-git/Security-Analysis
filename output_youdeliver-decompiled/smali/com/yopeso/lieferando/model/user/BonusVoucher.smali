.class public Lcom/yopeso/lieferando/model/user/BonusVoucher;
.super Ljava/lang/Object;
.source "BonusVoucher.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yopeso/lieferando/model/user/BonusVoucher;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x31d0a7607f5ed63L


# instance fields
.field private mCode:Ljava/lang/String;

.field private mExpiration:J

.field private mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lcom/yopeso/lieferando/model/user/BonusVoucher$1;

    invoke-direct {v0}, Lcom/yopeso/lieferando/model/user/BonusVoucher$1;-><init>()V

    sput-object v0, Lcom/yopeso/lieferando/model/user/BonusVoucher;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/BonusVoucher;->mCode:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yopeso/lieferando/model/user/BonusVoucher;->mExpiration:J

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/BonusVoucher;->mText:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "details"    # Ljava/lang/String;
    .param p3, "expirationDateInMs"    # J

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/BonusVoucher;->mCode:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/yopeso/lieferando/model/user/BonusVoucher;->mText:Ljava/lang/String;

    .line 30
    iput-wide p3, p0, Lcom/yopeso/lieferando/model/user/BonusVoucher;->mExpiration:J

    .line 31
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 2
    .param p1, "another"    # Ljava/lang/Object;

    .prologue
    .line 65
    instance-of v0, p1, Lcom/yopeso/lieferando/model/user/BonusVoucher;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/BonusVoucher;->mCode:Ljava/lang/String;

    check-cast p1, Lcom/yopeso/lieferando/model/user/BonusVoucher;

    .end local p1    # "another":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/BonusVoucher;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 68
    :goto_0
    return v0

    .restart local p1    # "another":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/BonusVoucher;->mCode:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiration()J
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/yopeso/lieferando/model/user/BonusVoucher;->mExpiration:J

    return-wide v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/BonusVoucher;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/BonusVoucher;->mCode:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setExpiration(J)V
    .locals 1
    .param p1, "expiration"    # J

    .prologue
    .line 60
    iput-wide p1, p0, Lcom/yopeso/lieferando/model/user/BonusVoucher;->mExpiration:J

    .line 61
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/BonusVoucher;->mText:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/BonusVoucher;->mCode:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/BonusVoucher;->mCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-wide v0, p0, Lcom/yopeso/lieferando/model/user/BonusVoucher;->mExpiration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 85
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/BonusVoucher;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    return-void
.end method
