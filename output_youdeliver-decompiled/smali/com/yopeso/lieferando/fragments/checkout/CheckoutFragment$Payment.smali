.class public final enum Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;
.super Ljava/lang/Enum;
.source "CheckoutFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Payment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

.field public static final enum bar:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

.field public static final enum clickandbuy:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

.field public static final enum credit:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

.field public static final enum ebanking:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

.field public static final enum ec:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

.field public static final enum paypal:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

.field public static final enum payu:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 120
    new-instance v0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    const-string v1, "bar"

    invoke-direct {v0, v1, v3}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->bar:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    new-instance v0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    const-string v1, "paypal"

    invoke-direct {v0, v1, v4}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->paypal:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    new-instance v0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    const-string v1, "credit"

    invoke-direct {v0, v1, v5}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->credit:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    new-instance v0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    const-string v1, "ebanking"

    invoke-direct {v0, v1, v6}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->ebanking:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    new-instance v0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    const-string v1, "clickandbuy"

    invoke-direct {v0, v1, v7}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->clickandbuy:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    new-instance v0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    const-string v1, "payu"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->payu:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    new-instance v0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    const-string v1, "ec"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->ec:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    .line 119
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    sget-object v1, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->bar:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->paypal:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->credit:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->ebanking:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->clickandbuy:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->payu:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->ec:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->ENUM$VALUES:[Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    return-object v0
.end method

.method public static values()[Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->ENUM$VALUES:[Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    array-length v1, v0

    new-array v2, v1, [Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
