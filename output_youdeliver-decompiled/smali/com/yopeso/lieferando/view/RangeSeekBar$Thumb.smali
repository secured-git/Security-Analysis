.class final enum Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;
.super Ljava/lang/Enum;
.source "RangeSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/view/RangeSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Thumb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;

.field public static final enum MAX:Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;

.field public static final enum MIN:Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 642
    new-instance v0, Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;

    const-string v1, "MIN"

    invoke-direct {v0, v1, v2}, Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;->MIN:Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;

    new-instance v0, Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;

    const-string v1, "MAX"

    invoke-direct {v0, v1, v3}, Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;->MAX:Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;

    .line 641
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;

    sget-object v1, Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;->MIN:Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;->MAX:Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;

    aput-object v1, v0, v3

    sput-object v0, Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;->ENUM$VALUES:[Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 641
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;

    return-object v0
.end method

.method public static values()[Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;->ENUM$VALUES:[Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;

    array-length v1, v0

    new-array v2, v1, [Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
