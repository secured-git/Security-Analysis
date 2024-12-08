.class Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;
.super Ljava/util/Timer;
.source "KahunaAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kahuna/sdk/KahunaAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KahunaTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kahuna/sdk/KahunaAnalytics;

.field private timerFireTime:J


# direct methods
.method private constructor <init>(Lcom/kahuna/sdk/KahunaAnalytics;)V
    .locals 2

    .prologue
    .line 1582
    iput-object p1, p0, Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    invoke-direct {p0}, Ljava/util/Timer;-><init>()V

    .line 1584
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;->timerFireTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/kahuna/sdk/KahunaAnalytics;Lcom/kahuna/sdk/KahunaAnalytics$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kahuna/sdk/KahunaAnalytics;
    .param p2, "x1"    # Lcom/kahuna/sdk/KahunaAnalytics$1;

    .prologue
    .line 1582
    invoke-direct {p0, p1}, Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;-><init>(Lcom/kahuna/sdk/KahunaAnalytics;)V

    return-void
.end method


# virtual methods
.method public getTimerFireTime()J
    .locals 2

    .prologue
    .line 1593
    iget-wide v0, p0, Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;->timerFireTime:J

    return-wide v0
.end method

.method public schedule(Ljava/util/TimerTask;J)V
    .locals 2
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "delay"    # J

    .prologue
    .line 1588
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;->timerFireTime:J

    .line 1589
    invoke-super {p0, p1, p2, p3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1590
    return-void
.end method
