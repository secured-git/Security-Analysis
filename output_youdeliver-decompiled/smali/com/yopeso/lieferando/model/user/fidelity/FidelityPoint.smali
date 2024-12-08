.class public Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;
.super Ljava/lang/Object;
.source "FidelityPoint.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint$Type;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mOrder:Lcom/yopeso/lieferando/model/user/fidelity/Order;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "order"
    .end annotation
.end field

.field private mPoints:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "points"
    .end annotation
.end field

.field private mTime:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "time"
    .end annotation
.end field

.field private mType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 139
    new-instance v0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint$1;

    invoke-direct {v0}, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint$1;-><init>()V

    sput-object v0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 147
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->mPoints:I

    .line 52
    return-void
.end method

.method private getFidelityDate()Ljava/lang/String;
    .locals 4

    .prologue
    .line 136
    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDateFormatter()Ljava/text/SimpleDateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->mTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public getMessage(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "collectable"    # Z

    .prologue
    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 94
    if-eqz p2, :cond_4

    .line 95
    const-string v0, "ADD_ACCOUNT_IMAGE"

    iget-object v1, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    sget v0, Lcom/yopeso/lieferando/R$string;->collect_add_image:I

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->mPoints:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 132
    :goto_0
    return-object v0

    .line 97
    :cond_0
    const-string v0, "FACEBOOK_CONNECT"

    iget-object v1, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    sget v0, Lcom/yopeso/lieferando/R$string;->collect_facebook_connect:I

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->mPoints:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 99
    :cond_1
    const-string v0, "FACEBOOK_FAN"

    iget-object v1, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    const-string v0, "Facebook fan will be removed from API"

    goto :goto_0

    .line 101
    :cond_2
    const-string v0, "RATE_HIGH"

    iget-object v1, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "RATE_LOW"

    iget-object v1, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 102
    :cond_3
    sget v0, Lcom/yopeso/lieferando/R$string;->collect_rate_high:I

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->mPoints:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 106
    :cond_4
    const-string v0, "ADD_ACCOUNT_IMAGE"

    iget-object v1, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 107
    sget v0, Lcom/yopeso/lieferando/R$string;->fidelity_add_image:I

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->mPoints:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 108
    :cond_5
    const-string v0, "FACEBOOK_CONNECT"

    iget-object v1, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 109
    sget v0, Lcom/yopeso/lieferando/R$string;->fidelity_facebook_connect:I

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->mPoints:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 110
    :cond_6
    const-string v0, "FACEBOOK_FAN"

    iget-object v1, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 111
    const-string v0, "Facebook fan will be removed from API"

    goto/16 :goto_0

    .line 112
    :cond_7
    const-string v0, "ORDER"

    iget-object v1, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 113
    sget v0, Lcom/yopeso/lieferando/R$string;->fidelity_order:I

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->mOrder:Lcom/yopeso/lieferando/model/user/fidelity/Order;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/fidelity/Order;->getRestName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-direct {p0}, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->getFidelityDate()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iget v2, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->mPoints:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 114
    :cond_8
    const-string v0, "RATE_HIGH"

    iget-object v1, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "RATE_LOW"

    iget-object v1, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 115
    :cond_9
    sget v0, Lcom/yopeso/lieferando/R$string;->fidelity_rate_high:I

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->mOrder:Lcom/yopeso/lieferando/model/user/fidelity/Order;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/fidelity/Order;->getRestName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->mPoints:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 116
    :cond_a
    const-string v0, "REDEEM_POINTS_BONUS"

    iget-object v1, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 117
    sget v0, Lcom/yopeso/lieferando/R$string;->fidelity_redeem_points:I

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->mPoints:I

    neg-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 118
    :cond_b
    const-string v0, "REGISTER"

    iget-object v1, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 119
    sget v0, Lcom/yopeso/lieferando/R$string;->fidelity_register:I

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->mPoints:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 120
    :cond_c
    const-string v0, "REGISTER_AFTER_SALE"

    iget-object v1, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 121
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->mOrder:Lcom/yopeso/lieferando/model/user/fidelity/Order;

    if-nez v0, :cond_d

    .line 122
    sget v0, Lcom/yopeso/lieferando/R$string;->fidelity_register_after_sale_null:I

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->getFidelityDate()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->mPoints:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 124
    :cond_d
    sget v0, Lcom/yopeso/lieferando/R$string;->fidelity_register_after_sale:I

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->mOrder:Lcom/yopeso/lieferando/model/user/fidelity/Order;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/fidelity/Order;->getRestName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-direct {p0}, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->getFidelityDate()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iget v2, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->mPoints:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 127
    :cond_e
    const-string v0, "MANUAL"

    iget-object v1, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 128
    sget v0, Lcom/yopeso/lieferando/R$string;->manual:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 132
    :cond_f
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->mType:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public getOrder()Lcom/yopeso/lieferando/model/user/fidelity/Order;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->mOrder:Lcom/yopeso/lieferando/model/user/fidelity/Order;

    return-object v0
.end method

.method public getPoints()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->mPoints:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public setOrder(Lcom/yopeso/lieferando/model/user/fidelity/Order;)V
    .locals 0
    .param p1, "order"    # Lcom/yopeso/lieferando/model/user/fidelity/Order;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->mOrder:Lcom/yopeso/lieferando/model/user/fidelity/Order;

    .line 78
    return-void
.end method

.method public setPoints(I)V
    .locals 0
    .param p1, "mPoints"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->mPoints:I

    .line 65
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->mType:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 56
    iget v0, p0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->mPoints:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    return-void
.end method
