.class Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;
.super Ljava/lang/Object;
.source "DateTimeParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Time"
.end annotation


# instance fields
.field private hour:I

.field private minute:I

.field private second:I

.field private zone:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I
    .param p4, "zone"    # I

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;->hour:I

    .line 89
    iput p2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;->minute:I

    .line 90
    iput p3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;->second:I

    .line 91
    iput p4, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;->zone:I

    .line 92
    return-void
.end method


# virtual methods
.method public getHour()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;->hour:I

    return v0
.end method

.method public getMinute()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;->minute:I

    return v0
.end method

.method public getSecond()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;->second:I

    return v0
.end method

.method public getZone()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;->zone:I

    return v0
.end method
