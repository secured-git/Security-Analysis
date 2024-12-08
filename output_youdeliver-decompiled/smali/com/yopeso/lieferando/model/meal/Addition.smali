.class public Lcom/yopeso/lieferando/model/meal/Addition;
.super Ljava/lang/Object;
.source "Addition.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yopeso/lieferando/model/meal/Addition;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x649471ec6af7bd11L


# instance fields
.field private mAmount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "count"
    .end annotation
.end field

.field private mCost:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cost"
    .end annotation
.end field

.field private mId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private mMaxAmmount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "maxAmount"
    .end annotation
.end field

.field private mName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private mSelected:Z

.field private mTotal:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "total"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    new-instance v0, Lcom/yopeso/lieferando/model/meal/Addition$1;

    invoke-direct {v0}, Lcom/yopeso/lieferando/model/meal/Addition$1;-><init>()V

    sput-object v0, Lcom/yopeso/lieferando/model/meal/Addition;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 144
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/yopeso/lieferando/model/meal/Addition;->mAmount:I

    .line 54
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;ZIII)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "selected"    # Z
    .param p5, "cost"    # I
    .param p6, "maxAmmount"    # I
    .param p7, "amount"    # I

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/yopeso/lieferando/model/meal/Addition;->mAmount:I

    .line 45
    iput-wide p1, p0, Lcom/yopeso/lieferando/model/meal/Addition;->mId:J

    .line 46
    iput-object p3, p0, Lcom/yopeso/lieferando/model/meal/Addition;->mName:Ljava/lang/String;

    .line 47
    iput-boolean p4, p0, Lcom/yopeso/lieferando/model/meal/Addition;->mSelected:Z

    .line 48
    iput p5, p0, Lcom/yopeso/lieferando/model/meal/Addition;->mCost:I

    .line 49
    iput p6, p0, Lcom/yopeso/lieferando/model/meal/Addition;->mMaxAmmount:I

    .line 50
    iput p7, p0, Lcom/yopeso/lieferando/model/meal/Addition;->mAmount:I

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v0, p0, Lcom/yopeso/lieferando/model/meal/Addition;->mAmount:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/yopeso/lieferando/model/meal/Addition;->mId:J

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yopeso/lieferando/model/meal/Addition;->mName:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/yopeso/lieferando/model/meal/Addition;->mSelected:Z

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/model/meal/Addition;->mCost:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/model/meal/Addition;->mMaxAmmount:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/model/meal/Addition;->mAmount:I

    .line 63
    return-void

    .line 59
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/yopeso/lieferando/model/meal/Addition;)V
    .locals 9
    .param p1, "optionAlternative"    # Lcom/yopeso/lieferando/model/meal/Addition;

    .prologue
    .line 41
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/Addition;->getId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/Addition;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/Addition;->isSelected()Z

    move-result v5

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/Addition;->getCost()I

    move-result v6

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/Addition;->getMaxAmmount()I

    move-result v7

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/Addition;->getAmount()I

    move-result v8

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/yopeso/lieferando/model/meal/Addition;-><init>(JLjava/lang/String;ZIII)V

    .line 42
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public getAmount()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/yopeso/lieferando/model/meal/Addition;->mAmount:I

    return v0
.end method

.method public getCost()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/yopeso/lieferando/model/meal/Addition;->mCost:I

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/yopeso/lieferando/model/meal/Addition;->mId:J

    return-wide v0
.end method

.method public getMaxAmmount()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/yopeso/lieferando/model/meal/Addition;->mMaxAmmount:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/yopeso/lieferando/model/meal/Addition;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/yopeso/lieferando/model/meal/Addition;->mTotal:I

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/meal/Addition;->mSelected:Z

    return v0
.end method

.method public setAmount(I)V
    .locals 0
    .param p1, "amount"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/yopeso/lieferando/model/meal/Addition;->mAmount:I

    .line 99
    return-void
.end method

.method public setCost(I)V
    .locals 0
    .param p1, "cost"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/yopeso/lieferando/model/meal/Addition;->mCost:I

    .line 111
    return-void
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 70
    iput-wide p1, p0, Lcom/yopeso/lieferando/model/meal/Addition;->mId:J

    .line 71
    return-void
.end method

.method public setMaxAmmount(I)V
    .locals 0
    .param p1, "maxAmmount"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/yopeso/lieferando/model/meal/Addition;->mMaxAmmount:I

    .line 91
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/yopeso/lieferando/model/meal/Addition;->mName:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/yopeso/lieferando/model/meal/Addition;->mSelected:Z

    .line 83
    return-void
.end method

.method public setTotal(I)V
    .locals 0
    .param p1, "total"    # I

    .prologue
    .line 118
    iput p1, p0, Lcom/yopeso/lieferando/model/meal/Addition;->mTotal:I

    .line 119
    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 147
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 148
    .local v0, "addition":Lorg/json/JSONObject;
    const-string v1, "name"

    iget-object v2, p0, Lcom/yopeso/lieferando/model/meal/Addition;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    const-string v1, "count"

    iget v2, p0, Lcom/yopeso/lieferando/model/meal/Addition;->mAmount:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 150
    const-string v1, "id"

    iget-wide v2, p0, Lcom/yopeso/lieferando/model/meal/Addition;->mId:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 151
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 128
    iget-wide v0, p0, Lcom/yopeso/lieferando/model/meal/Addition;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 129
    iget-object v0, p0, Lcom/yopeso/lieferando/model/meal/Addition;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/meal/Addition;->mSelected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 131
    iget v0, p0, Lcom/yopeso/lieferando/model/meal/Addition;->mCost:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget v0, p0, Lcom/yopeso/lieferando/model/meal/Addition;->mMaxAmmount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget v0, p0, Lcom/yopeso/lieferando/model/meal/Addition;->mAmount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    return-void

    .line 130
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
