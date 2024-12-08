.class public Lcom/yopeso/lieferando/model/Daytime;
.super Ljava/lang/Object;
.source "Daytime.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yopeso/lieferando/model/Daytime;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x8L


# instance fields
.field private mDays:[I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "days"
    .end annotation
.end field

.field private mFrom:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "from"
    .end annotation
.end field

.field private mUntill:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "until"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lcom/yopeso/lieferando/model/Daytime$1;

    invoke-direct {v0}, Lcom/yopeso/lieferando/model/Daytime$1;-><init>()V

    sput-object v0, Lcom/yopeso/lieferando/model/Daytime;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 105
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iget-object v0, p0, Lcom/yopeso/lieferando/model/Daytime;->mDays:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 33
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/Daytime;->mFrom:Ljava/util/Date;

    .line 34
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/Daytime;->mUntill:Ljava/util/Date;

    .line 35
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public getmDays()[I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yopeso/lieferando/model/Daytime;->mDays:[I

    return-object v0
.end method

.method public getmFrom()Ljava/util/Date;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/yopeso/lieferando/model/Daytime;->mFrom:Ljava/util/Date;

    return-object v0
.end method

.method public getmUntill()Ljava/util/Date;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/yopeso/lieferando/model/Daytime;->mUntill:Ljava/util/Date;

    return-object v0
.end method

.method public isActive(Ljava/util/Date;)Z
    .locals 8
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 42
    if-nez p1, :cond_1

    .line 58
    :cond_0
    :goto_0
    return v4

    .line 45
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 46
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 47
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v6, p0, Lcom/yopeso/lieferando/model/Daytime;->mDays:[I

    array-length v6, v6

    if-ge v3, v6, :cond_0

    .line 52
    iget-object v6, p0, Lcom/yopeso/lieferando/model/Daytime;->mDays:[I

    aget v6, v6, v3

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x7

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 53
    iget-object v6, p0, Lcom/yopeso/lieferando/model/Daytime;->mFrom:Ljava/util/Date;

    invoke-static {p1, v6, v4}, Lcom/yopeso/lieferando/util/OpeningUtils;->compareHours(Ljava/util/Date;Ljava/util/Date;Z)I

    move-result v1

    .line 54
    .local v1, "compareFrom":I
    iget-object v6, p0, Lcom/yopeso/lieferando/model/Daytime;->mUntill:Ljava/util/Date;

    invoke-static {p1, v6, v5}, Lcom/yopeso/lieferando/util/OpeningUtils;->compareHours(Ljava/util/Date;Ljava/util/Date;Z)I

    move-result v2

    .line 55
    .local v2, "compareUtill":I
    if-ltz v1, :cond_0

    if-gtz v2, :cond_0

    move v4, v5

    goto :goto_0

    .line 47
    .end local v1    # "compareFrom":I
    .end local v2    # "compareUtill":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public setmDays([I)V
    .locals 0
    .param p1, "mDays"    # [I

    .prologue
    .line 66
    iput-object p1, p0, Lcom/yopeso/lieferando/model/Daytime;->mDays:[I

    .line 67
    return-void
.end method

.method public setmFrom(Ljava/util/Date;)V
    .locals 0
    .param p1, "mFrom"    # Ljava/util/Date;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/yopeso/lieferando/model/Daytime;->mFrom:Ljava/util/Date;

    .line 75
    return-void
.end method

.method public setmUntill(Ljava/util/Date;)V
    .locals 0
    .param p1, "mUntill"    # Ljava/util/Date;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/yopeso/lieferando/model/Daytime;->mUntill:Ljava/util/Date;

    .line 83
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/yopeso/lieferando/model/Daytime;->mDays:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 93
    iget-object v0, p0, Lcom/yopeso/lieferando/model/Daytime;->mFrom:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 94
    iget-object v0, p0, Lcom/yopeso/lieferando/model/Daytime;->mUntill:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 95
    return-void
.end method
