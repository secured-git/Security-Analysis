.class public final enum Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;
.super Ljava/lang/Enum;
.source "AnalyticsEventCategory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;

.field public static final enum Crash:Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;

.field public static final enum Custom:Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;

.field public static final enum Interaction:Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;

.field public static final enum Session:Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;

    const-string v1, "Session"

    invoke-direct {v0, v1, v2}, Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;->Session:Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;

    .line 8
    new-instance v0, Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;

    const-string v1, "Interaction"

    invoke-direct {v0, v1, v3}, Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;->Interaction:Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;

    .line 9
    new-instance v0, Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;

    const-string v1, "Crash"

    invoke-direct {v0, v1, v4}, Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;->Crash:Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;

    .line 10
    new-instance v0, Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;

    const-string v1, "Custom"

    invoke-direct {v0, v1, v5}, Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;->Custom:Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;

    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;->Session:Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;

    aput-object v1, v0, v2

    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;->Interaction:Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;

    aput-object v1, v0, v3

    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;->Crash:Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;

    aput-object v1, v0, v4

    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;->Custom:Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;

    aput-object v1, v0, v5

    sput-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;->$VALUES:[Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;

    return-object v0
.end method

.method public static values()[Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;->$VALUES:[Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;

    invoke-virtual {v0}, [Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;

    return-object v0
.end method
