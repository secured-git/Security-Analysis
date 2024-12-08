.class public Lcom/yopeso/lieferando/model/user/Voucher;
.super Ljava/lang/Object;
.source "Voucher.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final ERROR_DATE_FINISHED:Ljava/lang/String;

.field public final ERROR_DATE_NOT_STARTED:Ljava/lang/String;

.field public final ERROR_MOBILE_DISCOUNT:Ljava/lang/String;

.field public final ERROR_NOT_EXIST:Ljava/lang/String;

.field public final ERROR_NOT_VALID:Ljava/lang/String;

.field public final ERROR_WRONG_AREA:Ljava/lang/String;

.field public final ERROR_WRONG_REST:Ljava/lang/String;

.field public final ERROR_WRONG_TIME:Ljava/lang/String;

.field private mCode:Ljava/lang/String;

.field private mInfo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "info"
    .end annotation
.end field

.field private mKind:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "kind"
    .end annotation
.end field

.field private mMinAmount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "minAmount"
    .end annotation
.end field

.field private mName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private mRabatt:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rabatt"
    .end annotation
.end field

.field private mStatus:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field

.field private mTag:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tag"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "yd-jig-discount-fail-not-valid"

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/Voucher;->ERROR_NOT_VALID:Ljava/lang/String;

    .line 20
    const-string v0, "yd-jig-discount-fail-not-exist"

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/Voucher;->ERROR_NOT_EXIST:Ljava/lang/String;

    .line 21
    const-string v0, "yd-jig-discount-fail-wrong-restaurant"

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/Voucher;->ERROR_WRONG_REST:Ljava/lang/String;

    .line 22
    const-string v0, "yd-jig-discount-fail-wrong-area"

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/Voucher;->ERROR_WRONG_AREA:Ljava/lang/String;

    .line 23
    const-string v0, "yd-jig-discount-fail-date-not-started"

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/Voucher;->ERROR_DATE_NOT_STARTED:Ljava/lang/String;

    .line 24
    const-string v0, "yd-jig-discount-fail-date-finished"

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/Voucher;->ERROR_DATE_FINISHED:Ljava/lang/String;

    .line 25
    const-string v0, "yd-jig-discount-fail-mobile-discount"

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/Voucher;->ERROR_MOBILE_DISCOUNT:Ljava/lang/String;

    .line 26
    const-string v0, "yd-jig-discount-fail-wrong-time"

    iput-object v0, p0, Lcom/yopeso/lieferando/model/user/Voucher;->ERROR_WRONG_TIME:Ljava/lang/String;

    .line 68
    return-void
.end method


# virtual methods
.method public canBeApplied(Lcom/yopeso/lieferando/model/cart/ShoppingCart;)Z
    .locals 2
    .param p1, "cart"    # Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    .prologue
    .line 190
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getOrderCostReached()I

    move-result v0

    iget v1, p0, Lcom/yopeso/lieferando/model/user/Voucher;->mMinAmount:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeDiscount(I)I
    .locals 1
    .param p1, "orderAmount"    # I

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/model/user/Voucher;->getVoucherValue(I)I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Voucher;->mCode:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Voucher;->mInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getKind()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/yopeso/lieferando/model/user/Voucher;->mKind:I

    return v0
.end method

.method public getMinAmount()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/yopeso/lieferando/model/user/Voucher;->mMinAmount:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Voucher;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getRabatt()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/yopeso/lieferando/model/user/Voucher;->mRabatt:I

    return v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Voucher;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Voucher;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getVoucherDiscount(I)I
    .locals 4
    .param p1, "orderAmount"    # I

    .prologue
    .line 173
    const/4 v0, 0x0

    .line 174
    .local v0, "voucherValue":I
    iget v1, p0, Lcom/yopeso/lieferando/model/user/Voucher;->mMinAmount:I

    if-lt p1, v1, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/user/Voucher;->isPercentageDiscount()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    int-to-float v1, p1

    iget v2, p0, Lcom/yopeso/lieferando/model/user/Voucher;->mRabatt:I

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 181
    :cond_0
    :goto_0
    return v0

    .line 178
    :cond_1
    iget v0, p0, Lcom/yopeso/lieferando/model/user/Voucher;->mRabatt:I

    goto :goto_0
.end method

.method public getVoucherValue(I)I
    .locals 4
    .param p1, "orderAmount"    # I

    .prologue
    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, "voucherValue":I
    iget v1, p0, Lcom/yopeso/lieferando/model/user/Voucher;->mMinAmount:I

    if-lt p1, v1, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/user/Voucher;->isPercentageDiscount()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    int-to-float v1, p1

    iget v2, p0, Lcom/yopeso/lieferando/model/user/Voucher;->mRabatt:I

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 162
    :cond_0
    :goto_0
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1

    .line 159
    :cond_1
    iget v0, p0, Lcom/yopeso/lieferando/model/user/Voucher;->mRabatt:I

    goto :goto_0
.end method

.method public isPercentageDiscount()Z
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/yopeso/lieferando/model/user/Voucher;->mKind:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/Voucher;->mCode:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/Voucher;->mInfo:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setKind(I)V
    .locals 0
    .param p1, "kind"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/yopeso/lieferando/model/user/Voucher;->mKind:I

    .line 80
    return-void
.end method

.method public setMinAmount(I)V
    .locals 0
    .param p1, "minAmount"    # I

    .prologue
    .line 95
    iput p1, p0, Lcom/yopeso/lieferando/model/user/Voucher;->mMinAmount:I

    .line 96
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/Voucher;->mName:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setRabatt(I)V
    .locals 0
    .param p1, "rabatt"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/yopeso/lieferando/model/user/Voucher;->mRabatt:I

    .line 88
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/Voucher;->mStatus:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/Voucher;->mTag:Ljava/lang/String;

    .line 112
    return-void
.end method
