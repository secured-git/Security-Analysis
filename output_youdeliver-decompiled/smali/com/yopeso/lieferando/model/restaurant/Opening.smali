.class public Lcom/yopeso/lieferando/model/restaurant/Opening;
.super Ljava/lang/Object;
.source "Opening.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/Opening;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private mCloseHours:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "until"
    .end annotation
.end field

.field private mClosed:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "closed"
    .end annotation
.end field

.field private mOpenHours:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "from"
    .end annotation
.end field

.field private mPreOrderDate:Ljava/util/Date;

.field private mWeekDay:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "day"
    .end annotation
.end field

.field private pastMidnight:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 143
    new-instance v0, Lcom/yopeso/lieferando/model/restaurant/Opening$1;

    invoke-direct {v0}, Lcom/yopeso/lieferando/model/restaurant/Opening$1;-><init>()V

    sput-object v0, Lcom/yopeso/lieferando/model/restaurant/Opening;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 151
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean v0, p0, Lcom/yopeso/lieferando/model/restaurant/Opening;->pastMidnight:Z

    .line 43
    iput-boolean v0, p0, Lcom/yopeso/lieferando/model/restaurant/Opening;->mClosed:Z

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean v2, p0, Lcom/yopeso/lieferando/model/restaurant/Opening;->pastMidnight:Z

    .line 43
    iput-boolean v2, p0, Lcom/yopeso/lieferando/model/restaurant/Opening;->mClosed:Z

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/model/restaurant/Opening;->mWeekDay:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/yopeso/lieferando/model/restaurant/Opening;->pastMidnight:Z

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/yopeso/lieferando/model/restaurant/Opening;->mClosed:Z

    .line 52
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Opening;->mOpenHours:Ljava/util/Date;

    .line 53
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Opening;->mCloseHours:Ljava/util/Date;

    .line 54
    return-void

    :cond_0
    move v0, v2

    .line 50
    goto :goto_0

    :cond_1
    move v1, v2

    .line 51
    goto :goto_1
.end method


# virtual methods
.method public clone()Lcom/yopeso/lieferando/model/restaurant/Opening;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lcom/yopeso/lieferando/model/restaurant/Opening;

    invoke-direct {v0}, Lcom/yopeso/lieferando/model/restaurant/Opening;-><init>()V

    .line 58
    .local v0, "o":Lcom/yopeso/lieferando/model/restaurant/Opening;
    iget v1, p0, Lcom/yopeso/lieferando/model/restaurant/Opening;->mWeekDay:I

    iput v1, v0, Lcom/yopeso/lieferando/model/restaurant/Opening;->mWeekDay:I

    .line 59
    iget-object v1, p0, Lcom/yopeso/lieferando/model/restaurant/Opening;->mOpenHours:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    iput-object v1, v0, Lcom/yopeso/lieferando/model/restaurant/Opening;->mOpenHours:Ljava/util/Date;

    .line 60
    iget-object v1, p0, Lcom/yopeso/lieferando/model/restaurant/Opening;->mCloseHours:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    iput-object v1, v0, Lcom/yopeso/lieferando/model/restaurant/Opening;->mCloseHours:Ljava/util/Date;

    .line 61
    iget-boolean v1, p0, Lcom/yopeso/lieferando/model/restaurant/Opening;->mClosed:Z

    iput-boolean v1, v0, Lcom/yopeso/lieferando/model/restaurant/Opening;->mClosed:Z

    .line 63
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
    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/restaurant/Opening;->clone()Lcom/yopeso/lieferando/model/restaurant/Opening;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public getCloseHours()Ljava/util/Date;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Opening;->mCloseHours:Ljava/util/Date;

    return-object v0
.end method

.method public getOpenHours()Ljava/util/Date;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Opening;->mOpenHours:Ljava/util/Date;

    return-object v0
.end method

.method public getPreOrderDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Opening;->mPreOrderDate:Ljava/util/Date;

    return-object v0
.end method

.method public getWeekDay()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/yopeso/lieferando/model/restaurant/Opening;->mWeekDay:I

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/restaurant/Opening;->mClosed:Z

    return v0
.end method

.method public isPastMidnight()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/restaurant/Opening;->pastMidnight:Z

    return v0
.end method

.method public isValid()Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    .line 122
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    const-string v1, "00:00"

    iget-object v2, p0, Lcom/yopeso/lieferando/model/restaurant/Opening;->mCloseHours:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "00:00"

    iget-object v2, p0, Lcom/yopeso/lieferando/model/restaurant/Opening;->mOpenHours:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yopeso/lieferando/model/restaurant/Opening;->mCloseHours:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getDay()I

    move-result v1

    iget-object v2, p0, Lcom/yopeso/lieferando/model/restaurant/Opening;->mOpenHours:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getDay()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 124
    const/4 v1, 0x0

    .line 126
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setCloseHours(Ljava/util/Date;)V
    .locals 0
    .param p1, "closeHours"    # Ljava/util/Date;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/yopeso/lieferando/model/restaurant/Opening;->mCloseHours:Ljava/util/Date;

    .line 84
    return-void
.end method

.method public setClosed(Z)V
    .locals 0
    .param p1, "closed"    # Z

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/yopeso/lieferando/model/restaurant/Opening;->mClosed:Z

    .line 104
    return-void
.end method

.method public setOpenHours(Ljava/util/Date;)V
    .locals 0
    .param p1, "openHours"    # Ljava/util/Date;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/yopeso/lieferando/model/restaurant/Opening;->mOpenHours:Ljava/util/Date;

    .line 76
    return-void
.end method

.method public setPastMidnight(Z)V
    .locals 0
    .param p1, "pastMidnight"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/yopeso/lieferando/model/restaurant/Opening;->pastMidnight:Z

    .line 96
    return-void
.end method

.method public setPreOrderDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "preOrderDate"    # Ljava/util/Date;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/yopeso/lieferando/model/restaurant/Opening;->mPreOrderDate:Ljava/util/Date;

    .line 112
    return-void
.end method

.method public setWeekDay(I)V
    .locals 0
    .param p1, "weekDay"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/yopeso/lieferando/model/restaurant/Opening;->mWeekDay:I

    .line 68
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 136
    iget v0, p0, Lcom/yopeso/lieferando/model/restaurant/Opening;->mWeekDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/restaurant/Opening;->pastMidnight:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 138
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/restaurant/Opening;->mClosed:Z

    if-eqz v0, :cond_1

    :goto_1
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 139
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Opening;->mOpenHours:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 140
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Opening;->mCloseHours:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 141
    return-void

    :cond_0
    move v0, v2

    .line 137
    goto :goto_0

    :cond_1
    move v1, v2

    .line 138
    goto :goto_1
.end method
