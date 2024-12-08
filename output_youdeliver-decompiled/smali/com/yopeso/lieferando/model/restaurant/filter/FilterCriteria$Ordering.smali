.class public final enum Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;
.super Ljava/lang/Enum;
.source "FilterCriteria.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Ordering"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALPHABETIC:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

.field public static final enum ALPHABETIC_REVERSE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

.field public static final enum DELIVERY_COST:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

.field public static final enum DISTANCE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

.field private static final synthetic ENUM$VALUES:[Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

.field public static final enum MINORDER:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

.field public static final enum NEWCUSTOMER:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

.field public static final enum NONE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

.field public static final enum RATING:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

.field public static final enum REBATE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

.field public static final enum REVIEWS:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

.field public static final enum STAMPCARD:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    new-instance v0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->NONE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    new-instance v0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    const-string v1, "ALPHABETIC"

    invoke-direct {v0, v1, v4}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->ALPHABETIC:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    new-instance v0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    const-string v1, "REVIEWS"

    invoke-direct {v0, v1, v5}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->REVIEWS:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    new-instance v0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    const-string v1, "RATING"

    invoke-direct {v0, v1, v6}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->RATING:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    new-instance v0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    const-string v1, "DISTANCE"

    invoke-direct {v0, v1, v7}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->DISTANCE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    new-instance v0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    const-string v1, "NEWCUSTOMER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->NEWCUSTOMER:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    new-instance v0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    const-string v1, "REBATE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->REBATE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    new-instance v0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    const-string v1, "STAMPCARD"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->STAMPCARD:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    new-instance v0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    const-string v1, "ALPHABETIC_REVERSE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->ALPHABETIC_REVERSE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    new-instance v0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    const-string v1, "DELIVERY_COST"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->DELIVERY_COST:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    new-instance v0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    const-string v1, "MINORDER"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->MINORDER:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    .line 39
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    sget-object v1, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->NONE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->ALPHABETIC:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->REVIEWS:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->RATING:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->DISTANCE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->NEWCUSTOMER:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->REBATE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->STAMPCARD:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->ALPHABETIC_REVERSE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->DELIVERY_COST:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->MINORDER:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->ENUM$VALUES:[Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    return-object v0
.end method

.method public static values()[Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->ENUM$VALUES:[Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    array-length v1, v0

    new-array v2, v1, [Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
