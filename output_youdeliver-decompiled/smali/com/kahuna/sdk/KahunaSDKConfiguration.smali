.class public Lcom/kahuna/sdk/KahunaSDKConfiguration;
.super Ljava/lang/Object;
.source "KahunaSDKConfiguration.java"


# static fields
.field protected static final DEFAULT_FLUSH_EVENT_COUNT:J = 0x64L

.field protected static final DEFAULT_FLUSH_IMMEDIATELY_LIST:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final DEFAULT_FLUSH_INTERVAL_MINS:D = 5.0

.field protected static final DEFAULT_FLUSH_SOON_DELAY_MINS:D = 0.5

.field protected static final DEFAULT_FLUSH_SOON_EVENTS_LIST:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final DEFAULT_RETRY_ATTEMPT_COUNT:I = 0x5

.field private static final MAX_EVENT_COUNT:J = 0x1f4L

.field private static final MAX_FLUSH_INTERVAL:D = 43200.0

.field private static final MAX_FLUSH_SOON_DELAY_INTERVAL:D = 43200.0

.field private static final MAX_RETRY_ATTEMPT_COUNT:I = 0x1e

.field private static final MIN_EVENT_COUNT:J = 0x1L

.field private static final MIN_FLUSH_INTERVAL:D = 0.5

.field private static final MIN_FLUSH_SOON_DELAY_INTERVAL:D = 0.5

.field private static final MIN_RETRY_ATTEMPT_COUNT:I = 0x0

.field protected static final PREFS_FLUSH_INTERVAL_MINUTES_KEY:Ljava/lang/String; = "flush_interval_min"

.field protected static final PREFS_FLUSH_ON_EVENT_KEY:Ljava/lang/String; = "flush_on_event_count"

.field protected static final PREFS_FLUSH_SOON_DELAY_MINUTES_KEY:Ljava/lang/String; = "flush_soon_delay_min"

.field protected static final PREFS_FLUSH_SOON_EVENTS_KEY:Ljava/lang/String; = "flush_soon_events"

.field protected static final PREFS_MAX_RETRY_ATTEMPTS_KEY:Ljava/lang/String; = "retry_attempts"

.field protected static final PREFS_TRIGGER_EVENTS_KEY:Ljava/lang/String; = "trigger_events"

.field protected static final PREFS_VERSION_KEY:Ljava/lang/String; = "version"


# instance fields
.field private mFlushIntervalMinutes:D

.field private mFlushOnEventCount:J

.field private mFlushSoonDelayIntervalMinutes:D

.field private mFlushSoonEvents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxRetryAttempts:I

.field private mTriggerEvents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVersion:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 51
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "k_app_bg"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "k_user_logout"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/kahuna/sdk/KahunaSDKConfiguration;->DEFAULT_FLUSH_IMMEDIATELY_LIST:Ljava/util/HashSet;

    .line 56
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/kahuna/sdk/KahunaSDKConfiguration;->DEFAULT_FLUSH_SOON_EVENTS_LIST:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kahuna/sdk/KahunaSDKConfiguration;->mVersion:J

    .line 71
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    iput-wide v0, p0, Lcom/kahuna/sdk/KahunaSDKConfiguration;->mFlushIntervalMinutes:D

    .line 72
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/kahuna/sdk/KahunaSDKConfiguration;->mFlushOnEventCount:J

    .line 73
    sget-object v0, Lcom/kahuna/sdk/KahunaSDKConfiguration;->DEFAULT_FLUSH_IMMEDIATELY_LIST:Ljava/util/HashSet;

    iput-object v0, p0, Lcom/kahuna/sdk/KahunaSDKConfiguration;->mTriggerEvents:Ljava/util/Set;

    .line 74
    const/4 v0, 0x5

    iput v0, p0, Lcom/kahuna/sdk/KahunaSDKConfiguration;->mMaxRetryAttempts:I

    .line 75
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Lcom/kahuna/sdk/KahunaSDKConfiguration;->mFlushSoonDelayIntervalMinutes:D

    .line 76
    sget-object v0, Lcom/kahuna/sdk/KahunaSDKConfiguration;->DEFAULT_FLUSH_SOON_EVENTS_LIST:Ljava/util/HashSet;

    iput-object v0, p0, Lcom/kahuna/sdk/KahunaSDKConfiguration;->mFlushSoonEvents:Ljava/util/Set;

    .line 77
    return-void
.end method


# virtual methods
.method protected getFlushIntervalMinutes()D
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/kahuna/sdk/KahunaSDKConfiguration;->mFlushIntervalMinutes:D

    return-wide v0
.end method

.method protected getFlushIntervalSeconds()J
    .locals 4

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/kahuna/sdk/KahunaSDKConfiguration;->mFlushIntervalMinutes:D

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method protected getFlushOnEventCount()J
    .locals 2

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/kahuna/sdk/KahunaSDKConfiguration;->mFlushOnEventCount:J

    return-wide v0
.end method

.method protected getFlushSoonDelayIntervalMinutes()D
    .locals 2

    .prologue
    .line 153
    iget-wide v0, p0, Lcom/kahuna/sdk/KahunaSDKConfiguration;->mFlushSoonDelayIntervalMinutes:D

    return-wide v0
.end method

.method protected getFlushSoonDelayIntervalSeconds()J
    .locals 4

    .prologue
    .line 157
    iget-wide v0, p0, Lcom/kahuna/sdk/KahunaSDKConfiguration;->mFlushSoonDelayIntervalMinutes:D

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method protected getFlushSoonEvents()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/kahuna/sdk/KahunaSDKConfiguration;->mFlushSoonEvents:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/kahuna/sdk/KahunaSDKConfiguration;->mFlushSoonEvents:Ljava/util/Set;

    .line 178
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_0
.end method

.method protected getMaxRetryAttempts()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/kahuna/sdk/KahunaSDKConfiguration;->mMaxRetryAttempts:I

    return v0
.end method

.method protected getTriggerEvents()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/kahuna/sdk/KahunaSDKConfiguration;->mTriggerEvents:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/kahuna/sdk/KahunaSDKConfiguration;->mTriggerEvents:Ljava/util/Set;

    .line 129
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_0
.end method

.method protected getVersion()J
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/kahuna/sdk/KahunaSDKConfiguration;->mVersion:J

    return-wide v0
.end method

.method protected setFlushIntervalMinutes(D)V
    .locals 9
    .param p1, "flushInterval"    # D

    .prologue
    const-wide v6, 0x40e5180000000000L    # 43200.0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 96
    iput-wide p1, p0, Lcom/kahuna/sdk/KahunaSDKConfiguration;->mFlushIntervalMinutes:D

    .line 99
    iget-wide v0, p0, Lcom/kahuna/sdk/KahunaSDKConfiguration;->mFlushIntervalMinutes:D

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 100
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    iput-wide v0, p0, Lcom/kahuna/sdk/KahunaSDKConfiguration;->mFlushIntervalMinutes:D

    .line 103
    :cond_0
    iget-wide v0, p0, Lcom/kahuna/sdk/KahunaSDKConfiguration;->mFlushIntervalMinutes:D

    cmpg-double v0, v0, v4

    if-gez v0, :cond_2

    .line 104
    iput-wide v4, p0, Lcom/kahuna/sdk/KahunaSDKConfiguration;->mFlushIntervalMinutes:D

    .line 108
    :cond_1
    :goto_0
    return-void

    .line 105
    :cond_2
    iget-wide v0, p0, Lcom/kahuna/sdk/KahunaSDKConfiguration;->mFlushIntervalMinutes:D

    cmpl-double v0, v0, v6

    if-lez v0, :cond_1

    .line 106
    iput-wide v6, p0, Lcom/kahuna/sdk/KahunaSDKConfiguration;->mFlushIntervalMinutes:D

    goto :goto_0
.end method

.method protected setFlushOnEventCount(J)V
    .locals 7
    .param p1, "eventCount"    # J

    .prologue
    const-wide/16 v4, 0x1f4

    const-wide/16 v2, 0x1

    .line 115
    iput-wide p1, p0, Lcom/kahuna/sdk/KahunaSDKConfiguration;->mFlushOnEventCount:J

    .line 118
    iget-wide v0, p0, Lcom/kahuna/sdk/KahunaSDKConfiguration;->mFlushOnEventCount:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 119
    iput-wide v2, p0, Lcom/kahuna/sdk/KahunaSDKConfiguration;->mFlushOnEventCount:J

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-wide v0, p0, Lcom/kahuna/sdk/KahunaSDKConfiguration;->mFlushOnEventCount:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 122
    iput-wide v4, p0, Lcom/kahuna/sdk/KahunaSDKConfiguration;->mFlushOnEventCount:J

    goto :goto_0
.end method

.method protected setFlushSoonDelayIntervalMinutes(D)V
    .locals 9
    .param p1, "flushInterval"    # D

    .prologue
    const-wide v6, 0x40e5180000000000L    # 43200.0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 161
    iput-wide p1, p0, Lcom/kahuna/sdk/KahunaSDKConfiguration;->mFlushSoonDelayIntervalMinutes:D

    .line 164
    iget-wide v0, p0, Lcom/kahuna/sdk/KahunaSDKConfiguration;->mFlushSoonDelayIntervalMinutes:D

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 165
    iput-wide v4, p0, Lcom/kahuna/sdk/KahunaSDKConfiguration;->mFlushSoonDelayIntervalMinutes:D

    .line 168
    :cond_0
    iget-wide v0, p0, Lcom/kahuna/sdk/KahunaSDKConfiguration;->mFlushSoonDelayIntervalMinutes:D

    cmpg-double v0, v0, v4

    if-gez v0, :cond_2

    .line 169
    iput-wide v4, p0, Lcom/kahuna/sdk/KahunaSDKConfiguration;->mFlushSoonDelayIntervalMinutes:D

    .line 173
    :cond_1
    :goto_0
    return-void

    .line 170
    :cond_2
    iget-wide v0, p0, Lcom/kahuna/sdk/KahunaSDKConfiguration;->mFlushSoonDelayIntervalMinutes:D

    cmpl-double v0, v0, v6

    if-lez v0, :cond_1

    .line 171
    iput-wide v6, p0, Lcom/kahuna/sdk/KahunaSDKConfiguration;->mFlushSoonDelayIntervalMinutes:D

    goto :goto_0
.end method

.method protected setFlushSoonEvents(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p1, "events":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/kahuna/sdk/KahunaSDKConfiguration;->mFlushSoonEvents:Ljava/util/Set;

    .line 183
    return-void
.end method

.method protected setMaxRetryAttempts(I)V
    .locals 2
    .param p1, "retryCount"    # I

    .prologue
    const/16 v1, 0x1e

    .line 141
    iput p1, p0, Lcom/kahuna/sdk/KahunaSDKConfiguration;->mMaxRetryAttempts:I

    .line 144
    iget v0, p0, Lcom/kahuna/sdk/KahunaSDKConfiguration;->mMaxRetryAttempts:I

    if-gez v0, :cond_1

    .line 145
    const/4 v0, 0x0

    iput v0, p0, Lcom/kahuna/sdk/KahunaSDKConfiguration;->mMaxRetryAttempts:I

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget v0, p0, Lcom/kahuna/sdk/KahunaSDKConfiguration;->mMaxRetryAttempts:I

    if-le v0, v1, :cond_0

    .line 148
    iput v1, p0, Lcom/kahuna/sdk/KahunaSDKConfiguration;->mMaxRetryAttempts:I

    goto :goto_0
.end method

.method protected setTriggerEvents(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, "events":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/kahuna/sdk/KahunaSDKConfiguration;->mTriggerEvents:Ljava/util/Set;

    .line 134
    return-void
.end method

.method protected setVersion(J)V
    .locals 1
    .param p1, "version"    # J

    .prologue
    .line 84
    iput-wide p1, p0, Lcom/kahuna/sdk/KahunaSDKConfiguration;->mVersion:J

    .line 85
    return-void
.end method
