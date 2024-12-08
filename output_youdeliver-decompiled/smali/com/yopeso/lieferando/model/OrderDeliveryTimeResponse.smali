.class public Lcom/yopeso/lieferando/model/OrderDeliveryTimeResponse;
.super Ljava/lang/Object;
.source "OrderDeliveryTimeResponse.java"


# instance fields
.field private mDelivery:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "delivery"
    .end annotation
.end field

.field private mOrderId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private mRequired:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "required"
    .end annotation
.end field

.field private mStatus:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field

.field private myType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMyType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/yopeso/lieferando/model/OrderDeliveryTimeResponse;->myType:Ljava/lang/String;

    return-object v0
.end method

.method public getmDelivery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yopeso/lieferando/model/OrderDeliveryTimeResponse;->mDelivery:Ljava/lang/String;

    return-object v0
.end method

.method public getmOrderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/yopeso/lieferando/model/OrderDeliveryTimeResponse;->mOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public getmStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yopeso/lieferando/model/OrderDeliveryTimeResponse;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public ismRequired()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/OrderDeliveryTimeResponse;->mRequired:Z

    return v0
.end method

.method public setMyType(Ljava/lang/String;)V
    .locals 0
    .param p1, "myType"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/yopeso/lieferando/model/OrderDeliveryTimeResponse;->myType:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setmDelivery(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDelivery"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/yopeso/lieferando/model/OrderDeliveryTimeResponse;->mDelivery:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setmOrderId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mOrderId"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/yopeso/lieferando/model/OrderDeliveryTimeResponse;->mOrderId:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setmRequired(Z)V
    .locals 0
    .param p1, "mRequired"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/yopeso/lieferando/model/OrderDeliveryTimeResponse;->mRequired:Z

    .line 45
    return-void
.end method

.method public setmStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "mStatus"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/yopeso/lieferando/model/OrderDeliveryTimeResponse;->mStatus:Ljava/lang/String;

    .line 61
    return-void
.end method
