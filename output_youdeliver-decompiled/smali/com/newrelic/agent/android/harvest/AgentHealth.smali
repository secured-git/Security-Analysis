.class public Lcom/newrelic/agent/android/harvest/AgentHealth;
.super Lcom/newrelic/agent/android/harvest/type/HarvestableArray;
.source "AgentHealth.java"


# static fields
.field public static final DEFAULT_KEY:Ljava/lang/String; = "Exception"

.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;


# instance fields
.field protected final agentHealthExceptions:Lcom/newrelic/agent/android/harvest/AgentHealthExceptions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/harvest/AgentHealth;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/type/HarvestableArray;-><init>()V

    .line 19
    new-instance v0, Lcom/newrelic/agent/android/harvest/AgentHealthExceptions;

    invoke-direct {v0}, Lcom/newrelic/agent/android/harvest/AgentHealthExceptions;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/AgentHealth;->agentHealthExceptions:Lcom/newrelic/agent/android/harvest/AgentHealthExceptions;

    return-void
.end method

.method public static noticeException(Lcom/newrelic/agent/android/harvest/AgentHealthException;)V
    .locals 1
    .param p0, "exception"    # Lcom/newrelic/agent/android/harvest/AgentHealthException;

    .prologue
    .line 33
    const-string v0, "Exception"

    invoke-static {p0, v0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Lcom/newrelic/agent/android/harvest/AgentHealthException;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static noticeException(Lcom/newrelic/agent/android/harvest/AgentHealthException;Ljava/lang/String;)V
    .locals 5
    .param p0, "exception"    # Lcom/newrelic/agent/android/harvest/AgentHealthException;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 37
    if-eqz p0, :cond_3

    .line 38
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v0

    .line 40
    .local v0, "statsEngine":Lcom/newrelic/agent/android/stats/StatsEngine;
    if-eqz v0, :cond_2

    .line 41
    if-nez p1, :cond_0

    .line 42
    sget-object v1, Lcom/newrelic/agent/android/harvest/AgentHealth;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "Passed metric key is null. Defaulting to Exception"

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 45
    :cond_0
    const-string v1, "Supportability/AgentHealth/{0}/{1}/{2}/{3}"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-nez p1, :cond_1

    const-string p1, "Exception"

    .end local p1    # "key":Ljava/lang/String;
    :cond_1
    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/AgentHealthException;->getSourceClass()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/AgentHealthException;->getSourceMethod()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/AgentHealthException;->getExceptionClass()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/stats/StatsEngine;->inc(Ljava/lang/String;)V

    .line 51
    invoke-static {p0}, Lcom/newrelic/agent/android/TaskQueue;->queue(Ljava/lang/Object;)V

    .line 59
    .end local v0    # "statsEngine":Lcom/newrelic/agent/android/stats/StatsEngine;
    :goto_0
    return-void

    .line 53
    .restart local v0    # "statsEngine":Lcom/newrelic/agent/android/stats/StatsEngine;
    .restart local p1    # "key":Ljava/lang/String;
    :cond_2
    sget-object v1, Lcom/newrelic/agent/android/harvest/AgentHealth;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "StatsEngine is null. Exception not recorded."

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    .end local v0    # "statsEngine":Lcom/newrelic/agent/android/stats/StatsEngine;
    :cond_3
    sget-object v1, Lcom/newrelic/agent/android/harvest/AgentHealth;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "AgentHealthException is null. StatsEngine not updated"

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static noticeException(Ljava/lang/Exception;)V
    .locals 1
    .param p0, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 22
    const/4 v0, 0x0

    .line 23
    .local v0, "agentHealthException":Lcom/newrelic/agent/android/harvest/AgentHealthException;
    if-eqz p0, :cond_0

    .line 24
    new-instance v0, Lcom/newrelic/agent/android/harvest/AgentHealthException;

    .end local v0    # "agentHealthException":Lcom/newrelic/agent/android/harvest/AgentHealthException;
    invoke-direct {v0, p0}, Lcom/newrelic/agent/android/harvest/AgentHealthException;-><init>(Ljava/lang/Exception;)V

    .line 27
    .restart local v0    # "agentHealthException":Lcom/newrelic/agent/android/harvest/AgentHealthException;
    :cond_0
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Lcom/newrelic/agent/android/harvest/AgentHealthException;)V

    .line 29
    return-void
.end method


# virtual methods
.method public addException(Lcom/newrelic/agent/android/harvest/AgentHealthException;)V
    .locals 1
    .param p1, "exception"    # Lcom/newrelic/agent/android/harvest/AgentHealthException;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/AgentHealth;->agentHealthExceptions:Lcom/newrelic/agent/android/harvest/AgentHealthExceptions;

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/harvest/AgentHealthExceptions;->add(Lcom/newrelic/agent/android/harvest/AgentHealthException;)V

    .line 63
    return-void
.end method

.method public asJsonArray()Lcom/newrelic/com/google/gson/JsonArray;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Lcom/newrelic/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/newrelic/com/google/gson/JsonArray;-><init>()V

    .line 73
    .local v0, "data":Lcom/newrelic/com/google/gson/JsonArray;
    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/AgentHealth;->agentHealthExceptions:Lcom/newrelic/agent/android/harvest/AgentHealthExceptions;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/AgentHealthExceptions;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/AgentHealth;->agentHealthExceptions:Lcom/newrelic/agent/android/harvest/AgentHealthExceptions;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/AgentHealthExceptions;->asJsonObject()Lcom/newrelic/com/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 77
    :cond_0
    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/AgentHealth;->agentHealthExceptions:Lcom/newrelic/agent/android/harvest/AgentHealthExceptions;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/AgentHealthExceptions;->clear()V

    .line 67
    return-void
.end method
