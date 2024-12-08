.class public Lcom/yopeso/lieferando/util/FormatUtils;
.super Ljava/lang/Object;
.source "FormatUtils.java"


# static fields
.field private static final DATE_FORMATTER:Ljava/text/SimpleDateFormat;

.field private static final DATE_ONLY_FORMATTER:Ljava/text/SimpleDateFormat;

.field private static final DATE_ONLY_FORMATTER_REVERS:Ljava/text/SimpleDateFormat;

.field public static final DATE_ONLY_REVERSE:Ljava/lang/String; = "dd.MM.yyyy"

.field private static final DECIMAL_FORMATTER:Ljava/text/DecimalFormat;

.field public static final DELIVERY_MY_TIME:Ljava/lang/String; = "HH:mm (dd.MM.yyyy)"

.field public static final DELIVERY_TIME:Ljava/lang/String; = "EEE, dd MMM yyyyy HH:mm:ss z"

.field private static final HASH_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final PREORDER_FORMATTER:Ljava/text/SimpleDateFormat;

.field public static final STAMP_DATE_FORMAT:Ljava/lang/String; = "dd.MM.yyyy.HH.mm"

.field public static final STAMP_FORMATTER:Ljava/text/SimpleDateFormat;

.field public static final TIME_FORMAT:Ljava/lang/String; = "HH:mm"

.field private static final TIME_FORMATTER:Ljava/text/SimpleDateFormat;

.field private static otherSymbols:Ljava/text/DecimalFormatSymbols;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yopeso/lieferando/util/FormatUtils;->TIME_FORMATTER:Ljava/text/SimpleDateFormat;

    .line 24
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd.MM.yyyy, HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yopeso/lieferando/util/FormatUtils;->DATE_FORMATTER:Ljava/text/SimpleDateFormat;

    .line 25
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy.MM.dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yopeso/lieferando/util/FormatUtils;->DATE_ONLY_FORMATTER:Ljava/text/SimpleDateFormat;

    .line 26
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd.MM.yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yopeso/lieferando/util/FormatUtils;->DATE_ONLY_FORMATTER_REVERS:Ljava/text/SimpleDateFormat;

    .line 27
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE dd.MM HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yopeso/lieferando/util/FormatUtils;->PREORDER_FORMATTER:Ljava/text/SimpleDateFormat;

    .line 28
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yopeso/lieferando/util/FormatUtils;->HASH_FORMAT:Ljava/text/SimpleDateFormat;

    .line 30
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd.MM.yyyy.HH.mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yopeso/lieferando/util/FormatUtils;->STAMP_FORMATTER:Ljava/text/SimpleDateFormat;

    .line 32
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v0}, Ljava/text/DecimalFormatSymbols;-><init>()V

    sput-object v0, Lcom/yopeso/lieferando/util/FormatUtils;->otherSymbols:Ljava/text/DecimalFormatSymbols;

    .line 35
    sget-object v0, Lcom/yopeso/lieferando/util/FormatUtils;->otherSymbols:Ljava/text/DecimalFormatSymbols;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    .line 36
    sget-object v0, Lcom/yopeso/lieferando/util/FormatUtils;->otherSymbols:Ljava/text/DecimalFormatSymbols;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    .line 38
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.00"

    sget-object v2, Lcom/yopeso/lieferando/util/FormatUtils;->otherSymbols:Ljava/text/DecimalFormatSymbols;

    invoke-direct {v0, v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    sput-object v0, Lcom/yopeso/lieferando/util/FormatUtils;->DECIMAL_FORMATTER:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeDateFormat(Ljava/lang/Long;)Ljava/lang/String;
    .locals 4
    .param p0, "dateLong"    # Ljava/lang/Long;

    .prologue
    .line 78
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd.MM.yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, "newFormat":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static declared-synchronized getDateFormatter()Ljava/text/SimpleDateFormat;
    .locals 2

    .prologue
    .line 45
    const-class v0, Lcom/yopeso/lieferando/util/FormatUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/yopeso/lieferando/util/FormatUtils;->DATE_FORMATTER:Ljava/text/SimpleDateFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getDecimalFormatter()Ljava/text/DecimalFormat;
    .locals 2

    .prologue
    .line 49
    const-class v0, Lcom/yopeso/lieferando/util/FormatUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/yopeso/lieferando/util/FormatUtils;->DECIMAL_FORMATTER:Ljava/text/DecimalFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getHashDateFormat()Ljava/text/SimpleDateFormat;
    .locals 2

    .prologue
    .line 61
    const-class v0, Lcom/yopeso/lieferando/util/FormatUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/yopeso/lieferando/util/FormatUtils;->HASH_FORMAT:Ljava/text/SimpleDateFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getPreorderFromat()Ljava/text/SimpleDateFormat;
    .locals 2

    .prologue
    .line 65
    const-class v0, Lcom/yopeso/lieferando/util/FormatUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/yopeso/lieferando/util/FormatUtils;->PREORDER_FORMATTER:Ljava/text/SimpleDateFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getSimpleDateFormatter()Ljava/text/SimpleDateFormat;
    .locals 2

    .prologue
    .line 53
    const-class v0, Lcom/yopeso/lieferando/util/FormatUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/yopeso/lieferando/util/FormatUtils;->DATE_ONLY_FORMATTER:Ljava/text/SimpleDateFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getSimpleDateFormatterReverse()Ljava/text/SimpleDateFormat;
    .locals 2

    .prologue
    .line 57
    const-class v0, Lcom/yopeso/lieferando/util/FormatUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/yopeso/lieferando/util/FormatUtils;->DATE_ONLY_FORMATTER_REVERS:Ljava/text/SimpleDateFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getStampFromat()Ljava/text/SimpleDateFormat;
    .locals 2

    .prologue
    .line 69
    const-class v0, Lcom/yopeso/lieferando/util/FormatUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/yopeso/lieferando/util/FormatUtils;->STAMP_FORMATTER:Ljava/text/SimpleDateFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getTimeFormatter()Ljava/text/SimpleDateFormat;
    .locals 2

    .prologue
    .line 41
    const-class v0, Lcom/yopeso/lieferando/util/FormatUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/yopeso/lieferando/util/FormatUtils;->TIME_FORMATTER:Ljava/text/SimpleDateFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
