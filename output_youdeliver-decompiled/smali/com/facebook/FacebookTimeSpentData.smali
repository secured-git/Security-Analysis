.class Lcom/facebook/FacebookTimeSpentData;
.super Ljava/lang/Object;
.source "FacebookTimeSpentData.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/FacebookTimeSpentData$SerializationProxyV1;,
        Lcom/facebook/FacebookTimeSpentData$SerializationProxyV2;
    }
.end annotation


# static fields
.field private static final APP_ACTIVATE_SUPPRESSION_PERIOD_IN_MILLISECONDS:J = 0x493e0L

.field private static final FIRST_TIME_LOAD_RESUME_TIME:J = -0x1L

.field private static final INACTIVE_SECONDS_QUANTA:[J

.field private static final INTERRUPTION_THRESHOLD_MILLISECONDS:J = 0x3e8L

.field private static final NUM_MILLISECONDS_IDLE_TO_BE_NEW_SESSION:J = 0xea60L

.field private static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private firstOpenSourceApplication:Ljava/lang/String;

.field private interruptionCount:I

.field private isAppActive:Z

.field private isWarmLaunch:Z

.field private lastActivateEventLoggedTime:J

.field private lastResumeTime:J

.field private lastSuspendTime:J

.field private millisecondsSpentInSession:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/facebook/AppEventsLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/FacebookTimeSpentData;->TAG:Ljava/lang/String;

    .line 23
    const/16 v0, 0x13

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    .line 22
    sput-object v0, Lcom/facebook/FacebookTimeSpentData;->INACTIVE_SECONDS_QUANTA:[J

    .line 43
    return-void

    .line 23
    :array_0
    .array-data 8
        0x493e0
        0xdbba0
        0x1b7740
        0x36ee80
        0x1499700
        0x2932e00
        0x5265c00
        0xa4cb800
        0xf731400
        0x240c8400
        0x48190800
        0x6c258c00
        0x90321000L
        0x134fd9000L
        0x1cf7c5800L
        0x269fb2000L
        0x30479e800L
        0x39ef8b000L
        0x757b12c00L
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    invoke-direct {p0}, Lcom/facebook/FacebookTimeSpentData;->resetSession()V

    .line 151
    return-void
.end method

.method private constructor <init>(JJJI)V
    .locals 1
    .param p1, "lastResumeTime"    # J
    .param p3, "lastSuspendTime"    # J
    .param p5, "millisecondsSpentInSession"    # J
    .param p7, "interruptionCount"    # I

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-direct {p0}, Lcom/facebook/FacebookTimeSpentData;->resetSession()V

    .line 103
    iput-wide p1, p0, Lcom/facebook/FacebookTimeSpentData;->lastResumeTime:J

    .line 104
    iput-wide p3, p0, Lcom/facebook/FacebookTimeSpentData;->lastSuspendTime:J

    .line 105
    iput-wide p5, p0, Lcom/facebook/FacebookTimeSpentData;->millisecondsSpentInSession:J

    .line 106
    iput p7, p0, Lcom/facebook/FacebookTimeSpentData;->interruptionCount:I

    .line 107
    return-void
.end method

.method synthetic constructor <init>(JJJILcom/facebook/FacebookTimeSpentData;)V
    .locals 1

    .prologue
    .line 95
    invoke-direct/range {p0 .. p7}, Lcom/facebook/FacebookTimeSpentData;-><init>(JJJI)V

    return-void
.end method

.method private constructor <init>(JJJILjava/lang/String;)V
    .locals 1
    .param p1, "lastResumeTime"    # J
    .param p3, "lastSuspendTime"    # J
    .param p5, "millisecondsSpentInSession"    # J
    .param p7, "interruptionCount"    # I
    .param p8, "firstOpenSourceApplication"    # Ljava/lang/String;

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    invoke-direct {p0}, Lcom/facebook/FacebookTimeSpentData;->resetSession()V

    .line 164
    iput-wide p1, p0, Lcom/facebook/FacebookTimeSpentData;->lastResumeTime:J

    .line 165
    iput-wide p3, p0, Lcom/facebook/FacebookTimeSpentData;->lastSuspendTime:J

    .line 166
    iput-wide p5, p0, Lcom/facebook/FacebookTimeSpentData;->millisecondsSpentInSession:J

    .line 167
    iput p7, p0, Lcom/facebook/FacebookTimeSpentData;->interruptionCount:I

    .line 168
    iput-object p8, p0, Lcom/facebook/FacebookTimeSpentData;->firstOpenSourceApplication:Ljava/lang/String;

    .line 169
    return-void
.end method

.method synthetic constructor <init>(JJJILjava/lang/String;Lcom/facebook/FacebookTimeSpentData;)V
    .locals 1

    .prologue
    .line 156
    invoke-direct/range {p0 .. p8}, Lcom/facebook/FacebookTimeSpentData;-><init>(JJJILjava/lang/String;)V

    return-void
.end method

.method private static getQuantaIndex(J)I
    .locals 4
    .param p0, "timeBetweenSessions"    # J

    .prologue
    .line 270
    const/4 v0, 0x0

    .line 273
    .local v0, "quantaIndex":I
    :goto_0
    sget-object v1, Lcom/facebook/FacebookTimeSpentData;->INACTIVE_SECONDS_QUANTA:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 274
    sget-object v1, Lcom/facebook/FacebookTimeSpentData;->INACTIVE_SECONDS_QUANTA:[J

    aget-wide v2, v1, v0

    .line 272
    cmp-long v1, v2, p0

    if-ltz v1, :cond_1

    .line 279
    :cond_0
    return v0

    .line 276
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isColdLaunch()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 297
    iget-boolean v2, p0, Lcom/facebook/FacebookTimeSpentData;->isWarmLaunch:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    .line 298
    .local v0, "result":Z
    :goto_0
    iput-boolean v1, p0, Lcom/facebook/FacebookTimeSpentData;->isWarmLaunch:Z

    .line 299
    return v0

    .end local v0    # "result":Z
    :cond_0
    move v0, v1

    .line 297
    goto :goto_0
.end method

.method private logAppDeactivatedEvent(Lcom/facebook/AppEventsLogger;J)V
    .locals 6
    .param p1, "logger"    # Lcom/facebook/AppEventsLogger;
    .param p2, "interruptionDurationMillis"    # J

    .prologue
    .line 252
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 254
    .local v0, "eventParams":Landroid/os/Bundle;
    const-string v1, "fb_mobile_app_interruptions"

    .line 255
    iget v2, p0, Lcom/facebook/FacebookTimeSpentData;->interruptionCount:I

    .line 253
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 257
    const-string v1, "fb_mobile_time_between_sessions"

    .line 258
    const-string v2, "session_quanta_%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2, p3}, Lcom/facebook/FacebookTimeSpentData;->getQuantaIndex(J)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 256
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v1, "fb_mobile_launch_source"

    .line 261
    iget-object v2, p0, Lcom/facebook/FacebookTimeSpentData;->firstOpenSourceApplication:Ljava/lang/String;

    .line 259
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v1, "fb_mobile_deactivate_app"

    .line 264
    iget-wide v2, p0, Lcom/facebook/FacebookTimeSpentData;->millisecondsSpentInSession:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-double v2, v2

    .line 262
    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/facebook/AppEventsLogger;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 266
    invoke-direct {p0}, Lcom/facebook/FacebookTimeSpentData;->resetSession()V

    .line 267
    return-void
.end method

.method private resetSession()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    .line 283
    iput-boolean v0, p0, Lcom/facebook/FacebookTimeSpentData;->isAppActive:Z

    .line 284
    iput-wide v2, p0, Lcom/facebook/FacebookTimeSpentData;->lastResumeTime:J

    .line 285
    iput-wide v2, p0, Lcom/facebook/FacebookTimeSpentData;->lastSuspendTime:J

    .line 286
    iput v0, p0, Lcom/facebook/FacebookTimeSpentData;->interruptionCount:I

    .line 287
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/FacebookTimeSpentData;->millisecondsSpentInSession:J

    .line 288
    return-void
.end method

.method private wasSuspendedEver()Z
    .locals 4

    .prologue
    .line 291
    iget-wide v0, p0, Lcom/facebook/FacebookTimeSpentData;->lastSuspendTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 10

    .prologue
    .line 172
    new-instance v1, Lcom/facebook/FacebookTimeSpentData$SerializationProxyV2;

    .line 173
    iget-wide v2, p0, Lcom/facebook/FacebookTimeSpentData;->lastResumeTime:J

    .line 174
    iget-wide v4, p0, Lcom/facebook/FacebookTimeSpentData;->lastSuspendTime:J

    .line 175
    iget-wide v6, p0, Lcom/facebook/FacebookTimeSpentData;->millisecondsSpentInSession:J

    .line 176
    iget v8, p0, Lcom/facebook/FacebookTimeSpentData;->interruptionCount:I

    .line 177
    iget-object v9, p0, Lcom/facebook/FacebookTimeSpentData;->firstOpenSourceApplication:Ljava/lang/String;

    .line 172
    invoke-direct/range {v1 .. v9}, Lcom/facebook/FacebookTimeSpentData$SerializationProxyV2;-><init>(JJJILjava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method onResume(Lcom/facebook/AppEventsLogger;JLjava/lang/String;)V
    .locals 10
    .param p1, "logger"    # Lcom/facebook/AppEventsLogger;
    .param p2, "eventTime"    # J
    .param p4, "sourceApplicationInfo"    # Ljava/lang/String;

    .prologue
    .line 199
    move-wide v4, p2

    .line 205
    .local v4, "now":J
    invoke-direct {p0}, Lcom/facebook/FacebookTimeSpentData;->isColdLaunch()Z

    move-result v1

    if-nez v1, :cond_0

    .line 206
    iget-wide v6, p0, Lcom/facebook/FacebookTimeSpentData;->lastActivateEventLoggedTime:J

    sub-long v6, v4, v6

    const-wide/32 v8, 0x493e0

    cmp-long v1, v6, v8

    if-lez v1, :cond_1

    .line 207
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 209
    .local v0, "eventParams":Landroid/os/Bundle;
    const-string v1, "fb_mobile_launch_source"

    .line 208
    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v1, "fb_mobile_activate_app"

    invoke-virtual {p1, v1, v0}, Lcom/facebook/AppEventsLogger;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 212
    iput-wide v4, p0, Lcom/facebook/FacebookTimeSpentData;->lastActivateEventLoggedTime:J

    .line 217
    .end local v0    # "eventParams":Landroid/os/Bundle;
    :cond_1
    iget-boolean v1, p0, Lcom/facebook/FacebookTimeSpentData;->isAppActive:Z

    if-eqz v1, :cond_2

    .line 218
    sget-object v1, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    sget-object v6, Lcom/facebook/FacebookTimeSpentData;->TAG:Ljava/lang/String;

    const-string v7, "Resume for active app"

    invoke-static {v1, v6, v7}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :goto_0
    return-void

    .line 222
    :cond_2
    invoke-direct {p0}, Lcom/facebook/FacebookTimeSpentData;->wasSuspendedEver()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-wide v6, p0, Lcom/facebook/FacebookTimeSpentData;->lastSuspendTime:J

    sub-long v2, v4, v6

    .line 223
    .local v2, "interruptionDurationMillis":J
    :goto_1
    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-gez v1, :cond_3

    .line 224
    sget-object v1, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    sget-object v6, Lcom/facebook/FacebookTimeSpentData;->TAG:Ljava/lang/String;

    const-string v7, "Clock skew detected"

    invoke-static {v1, v6, v7}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-wide/16 v2, 0x0

    .line 230
    :cond_3
    const-wide/32 v6, 0xea60

    cmp-long v1, v2, v6

    if-lez v1, :cond_7

    .line 231
    invoke-direct {p0, p1, v2, v3}, Lcom/facebook/FacebookTimeSpentData;->logAppDeactivatedEvent(Lcom/facebook/AppEventsLogger;J)V

    .line 241
    :cond_4
    :goto_2
    iget v1, p0, Lcom/facebook/FacebookTimeSpentData;->interruptionCount:I

    if-nez v1, :cond_5

    .line 242
    iput-object p4, p0, Lcom/facebook/FacebookTimeSpentData;->firstOpenSourceApplication:Ljava/lang/String;

    .line 245
    :cond_5
    iput-wide v4, p0, Lcom/facebook/FacebookTimeSpentData;->lastResumeTime:J

    .line 246
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/FacebookTimeSpentData;->isAppActive:Z

    goto :goto_0

    .line 222
    .end local v2    # "interruptionDurationMillis":J
    :cond_6
    const-wide/16 v2, 0x0

    goto :goto_1

    .line 235
    .restart local v2    # "interruptionDurationMillis":J
    :cond_7
    const-wide/16 v6, 0x3e8

    cmp-long v1, v2, v6

    if-lez v1, :cond_4

    .line 236
    iget v1, p0, Lcom/facebook/FacebookTimeSpentData;->interruptionCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/facebook/FacebookTimeSpentData;->interruptionCount:I

    goto :goto_2
.end method

.method onSuspend(Lcom/facebook/AppEventsLogger;J)V
    .locals 8
    .param p1, "logger"    # Lcom/facebook/AppEventsLogger;
    .param p2, "eventTime"    # J

    .prologue
    .line 182
    iget-boolean v4, p0, Lcom/facebook/FacebookTimeSpentData;->isAppActive:Z

    if-nez v4, :cond_0

    .line 183
    sget-object v4, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    sget-object v5, Lcom/facebook/FacebookTimeSpentData;->TAG:Ljava/lang/String;

    const-string v6, "Suspend for inactive app"

    invoke-static {v4, v5, v6}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :goto_0
    return-void

    .line 187
    :cond_0
    move-wide v2, p2

    .line 188
    .local v2, "now":J
    iget-wide v4, p0, Lcom/facebook/FacebookTimeSpentData;->lastResumeTime:J

    sub-long v0, v2, v4

    .line 189
    .local v0, "delta":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gez v4, :cond_1

    .line 190
    sget-object v4, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    sget-object v5, Lcom/facebook/FacebookTimeSpentData;->TAG:Ljava/lang/String;

    const-string v6, "Clock skew detected"

    invoke-static {v4, v5, v6}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-wide/16 v0, 0x0

    .line 193
    :cond_1
    iget-wide v4, p0, Lcom/facebook/FacebookTimeSpentData;->millisecondsSpentInSession:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/facebook/FacebookTimeSpentData;->millisecondsSpentInSession:J

    .line 194
    iput-wide v2, p0, Lcom/facebook/FacebookTimeSpentData;->lastSuspendTime:J

    .line 195
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/facebook/FacebookTimeSpentData;->isAppActive:Z

    goto :goto_0
.end method
