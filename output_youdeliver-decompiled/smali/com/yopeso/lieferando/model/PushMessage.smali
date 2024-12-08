.class public Lcom/yopeso/lieferando/model/PushMessage;
.super Ljava/lang/Object;
.source "PushMessage.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yopeso/lieferando/model/PushMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x6b1bff9L


# instance fields
.field private action:Ljava/lang/String;

.field private data:Ljava/lang/String;

.field private expr:Ljava/lang/String;

.field private id:J

.field private isVoucher:Z

.field private is_read:Z

.field private message:Ljava/lang/String;

.field private time:J

.field private type_id:I

.field private voucher:Ljava/lang/String;

.field private voucher_text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 183
    new-instance v0, Lcom/yopeso/lieferando/model/PushMessage$1;

    invoke-direct {v0}, Lcom/yopeso/lieferando/model/PushMessage$1;-><init>()V

    sput-object v0, Lcom/yopeso/lieferando/model/PushMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 191
    return-void
.end method

.method public constructor <init>(JILjava/lang/String;JLjava/lang/String;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "type_id"    # I
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "time"    # J
    .param p7, "action"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v0, p0, Lcom/yopeso/lieferando/model/PushMessage;->is_read:Z

    .line 23
    iput-boolean v0, p0, Lcom/yopeso/lieferando/model/PushMessage;->isVoucher:Z

    .line 42
    iput-wide p1, p0, Lcom/yopeso/lieferando/model/PushMessage;->id:J

    .line 43
    iput p3, p0, Lcom/yopeso/lieferando/model/PushMessage;->type_id:I

    .line 44
    iput-object p4, p0, Lcom/yopeso/lieferando/model/PushMessage;->message:Ljava/lang/String;

    .line 45
    iput-wide p5, p0, Lcom/yopeso/lieferando/model/PushMessage;->time:J

    .line 46
    iput-object p7, p0, Lcom/yopeso/lieferando/model/PushMessage;->action:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>(JILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "type_id"    # I
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "time"    # J
    .param p7, "action"    # Ljava/lang/String;
    .param p8, "data"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v0, p0, Lcom/yopeso/lieferando/model/PushMessage;->is_read:Z

    .line 23
    iput-boolean v0, p0, Lcom/yopeso/lieferando/model/PushMessage;->isVoucher:Z

    .line 51
    iput-wide p1, p0, Lcom/yopeso/lieferando/model/PushMessage;->id:J

    .line 52
    iput p3, p0, Lcom/yopeso/lieferando/model/PushMessage;->type_id:I

    .line 53
    iput-object p4, p0, Lcom/yopeso/lieferando/model/PushMessage;->message:Ljava/lang/String;

    .line 54
    iput-wide p5, p0, Lcom/yopeso/lieferando/model/PushMessage;->time:J

    .line 55
    iput-object p7, p0, Lcom/yopeso/lieferando/model/PushMessage;->action:Ljava/lang/String;

    .line 56
    iput-object p8, p0, Lcom/yopeso/lieferando/model/PushMessage;->data:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>(JILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "type_id"    # I
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "time"    # J
    .param p7, "voucher"    # Ljava/lang/String;
    .param p8, "expr"    # Ljava/lang/String;
    .param p9, "voucher_text"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v0, p0, Lcom/yopeso/lieferando/model/PushMessage;->is_read:Z

    .line 23
    iput-boolean v0, p0, Lcom/yopeso/lieferando/model/PushMessage;->isVoucher:Z

    .line 31
    iput-wide p1, p0, Lcom/yopeso/lieferando/model/PushMessage;->id:J

    .line 32
    iput-object p4, p0, Lcom/yopeso/lieferando/model/PushMessage;->message:Ljava/lang/String;

    .line 33
    iput-wide p5, p0, Lcom/yopeso/lieferando/model/PushMessage;->time:J

    .line 34
    iput-object p7, p0, Lcom/yopeso/lieferando/model/PushMessage;->voucher:Ljava/lang/String;

    .line 35
    iput-object p8, p0, Lcom/yopeso/lieferando/model/PushMessage;->expr:Ljava/lang/String;

    .line 36
    iput-object p9, p0, Lcom/yopeso/lieferando/model/PushMessage;->voucher_text:Ljava/lang/String;

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yopeso/lieferando/model/PushMessage;->isVoucher:Z

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v2, p0, Lcom/yopeso/lieferando/model/PushMessage;->is_read:Z

    .line 23
    iput-boolean v2, p0, Lcom/yopeso/lieferando/model/PushMessage;->isVoucher:Z

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/yopeso/lieferando/model/PushMessage;->id:J

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/model/PushMessage;->type_id:I

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/PushMessage;->message:Ljava/lang/String;

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/yopeso/lieferando/model/PushMessage;->time:J

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/yopeso/lieferando/model/PushMessage;->is_read:Z

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/PushMessage;->action:Ljava/lang/String;

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/PushMessage;->data:Ljava/lang/String;

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/yopeso/lieferando/model/PushMessage;->isVoucher:Z

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/PushMessage;->voucher:Ljava/lang/String;

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/PushMessage;->expr:Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/PushMessage;->voucher_text:Ljava/lang/String;

    .line 179
    return-void

    :cond_0
    move v0, v2

    .line 172
    goto :goto_0

    :cond_1
    move v1, v2

    .line 175
    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yopeso/lieferando/model/PushMessage;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/yopeso/lieferando/model/PushMessage;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getExpr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/yopeso/lieferando/model/PushMessage;->expr:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/yopeso/lieferando/model/PushMessage;->id:J

    return-wide v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yopeso/lieferando/model/PushMessage;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/yopeso/lieferando/model/PushMessage;->time:J

    return-wide v0
.end method

.method public getType_id()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/yopeso/lieferando/model/PushMessage;->type_id:I

    return v0
.end method

.method public getVoucher()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/yopeso/lieferando/model/PushMessage;->voucher:Ljava/lang/String;

    return-object v0
.end method

.method public getVoucher_text()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/yopeso/lieferando/model/PushMessage;->voucher_text:Ljava/lang/String;

    return-object v0
.end method

.method public isRead()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/PushMessage;->is_read:Z

    return v0
.end method

.method public isVoucher()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/PushMessage;->isVoucher:Z

    return v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/yopeso/lieferando/model/PushMessage;->action:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/yopeso/lieferando/model/PushMessage;->data:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setExpr(Ljava/lang/String;)V
    .locals 0
    .param p1, "expr"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/yopeso/lieferando/model/PushMessage;->expr:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 135
    iput-wide p1, p0, Lcom/yopeso/lieferando/model/PushMessage;->id:J

    .line 136
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/yopeso/lieferando/model/PushMessage;->message:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setRead(Z)V
    .locals 0
    .param p1, "isRead"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/yopeso/lieferando/model/PushMessage;->is_read:Z

    .line 79
    return-void
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 72
    iput-wide p1, p0, Lcom/yopeso/lieferando/model/PushMessage;->time:J

    .line 73
    return-void
.end method

.method public setType_id(I)V
    .locals 0
    .param p1, "type_id"    # I

    .prologue
    .line 149
    iput p1, p0, Lcom/yopeso/lieferando/model/PushMessage;->type_id:I

    .line 150
    return-void
.end method

.method public setVoucher(Ljava/lang/String;)V
    .locals 0
    .param p1, "voucher"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/yopeso/lieferando/model/PushMessage;->voucher:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setVoucher(Z)V
    .locals 0
    .param p1, "isVoucher"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/yopeso/lieferando/model/PushMessage;->isVoucher:Z

    .line 103
    return-void
.end method

.method public setVoucher_text(Ljava/lang/String;)V
    .locals 0
    .param p1, "voucher_text"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/yopeso/lieferando/model/PushMessage;->voucher_text:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 154
    iget-wide v4, p0, Lcom/yopeso/lieferando/model/PushMessage;->id:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 155
    iget v0, p0, Lcom/yopeso/lieferando/model/PushMessage;->type_id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget-object v0, p0, Lcom/yopeso/lieferando/model/PushMessage;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    iget-wide v4, p0, Lcom/yopeso/lieferando/model/PushMessage;->time:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 158
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/PushMessage;->is_read:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 159
    iget-object v0, p0, Lcom/yopeso/lieferando/model/PushMessage;->action:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/yopeso/lieferando/model/PushMessage;->data:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/PushMessage;->isVoucher:Z

    if-eqz v0, :cond_1

    :goto_1
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 162
    iget-object v0, p0, Lcom/yopeso/lieferando/model/PushMessage;->voucher:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/yopeso/lieferando/model/PushMessage;->expr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/yopeso/lieferando/model/PushMessage;->voucher_text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    return-void

    :cond_0
    move v0, v2

    .line 158
    goto :goto_0

    :cond_1
    move v1, v2

    .line 161
    goto :goto_1
.end method
