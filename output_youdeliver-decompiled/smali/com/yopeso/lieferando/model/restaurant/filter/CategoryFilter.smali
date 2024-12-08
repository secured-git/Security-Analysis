.class public Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;
.super Ljava/lang/Object;
.source "CategoryFilter.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEnabled:Z

.field private mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter$1;

    invoke-direct {v0}, Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter$1;-><init>()V

    sput-object v0, Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;->mName:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;->mEnabled:Z

    .line 25
    return-void

    .line 24
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;->mName:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;->mEnabled:Z

    .line 20
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;->mEnabled:Z

    return v0
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;->mEnabled:Z

    .line 41
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;->mName:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;->mEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;->mEnabled:Z

    .line 45
    return-void

    .line 44
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;->mEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
