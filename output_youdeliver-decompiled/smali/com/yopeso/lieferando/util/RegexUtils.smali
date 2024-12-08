.class public Lcom/yopeso/lieferando/util/RegexUtils;
.super Ljava/lang/Object;
.source "RegexUtils.java"


# static fields
.field public static final NOT_VALID_CHARS:Ljava/lang/String; = "^[^{}]*$"

.field public static final PHONE_PL_REGEX:Ljava/lang/String; = "(0048)?[1-9][0-9]{8,8}"

.field public static final STREET_VAL_REGEX:Ljava/lang/String; = "[^\n]{0,30}"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
