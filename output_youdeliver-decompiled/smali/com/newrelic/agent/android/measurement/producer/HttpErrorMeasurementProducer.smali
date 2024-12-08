.class public Lcom/newrelic/agent/android/measurement/producer/HttpErrorMeasurementProducer;
.super Lcom/newrelic/agent/android/measurement/producer/BaseMeasurementProducer;
.source "HttpErrorMeasurementProducer.java"


# static fields
.field public static final HTTP_METHOD_PARAMS_KEY:Ljava/lang/String; = "http_method"

.field public static final WAN_TYPE_PARAMS_KEY:Ljava/lang/String; = "wan_type"

.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/measurement/producer/HttpErrorMeasurementProducer;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/newrelic/agent/android/measurement/MeasurementType;->HttpError:Lcom/newrelic/agent/android/measurement/MeasurementType;

    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/measurement/producer/BaseMeasurementProducer;-><init>(Lcom/newrelic/agent/android/measurement/MeasurementType;)V

    .line 22
    return-void
.end method

.method private getSanitizedStackTrace()Ljava/lang/String;
    .locals 6

    .prologue
    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .local v3, "stackTrace":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 60
    .local v4, "stackTraceElements":[Ljava/lang/StackTraceElement;
    const/4 v2, 0x0

    .line 61
    .local v2, "numErrors":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_1

    .line 62
    aget-object v0, v4, v1

    .line 63
    .local v0, "frame":Ljava/lang/StackTraceElement;
    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/measurement/producer/HttpErrorMeasurementProducer;->shouldFilterStackTraceElement(Ljava/lang/StackTraceElement;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 64
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    if-gt v1, v5, :cond_0

    .line 66
    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 69
    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getStackTraceLimit()I

    move-result v5

    if-lt v2, v5, :cond_2

    .line 74
    .end local v0    # "frame":Ljava/lang/StackTraceElement;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 61
    .restart local v0    # "frame":Ljava/lang/StackTraceElement;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private shouldFilterStackTraceElement(Ljava/lang/StackTraceElement;)Z
    .locals 4
    .param p1, "element"    # Ljava/lang/StackTraceElement;

    .prologue
    const/4 v2, 0x1

    .line 78
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "className":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "method":Ljava/lang/String;
    const-string v3, "com.newrelic"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v2

    .line 84
    :cond_1
    const-string v3, "dalvik.system.VMStack"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "getThreadStackTrace"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 87
    :cond_2
    const-string v3, "java.lang.Thread"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "getStackTrace"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 90
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public produceMeasurement(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "httpMethod"    # Ljava/lang/String;
    .param p3, "statusCode"    # I

    .prologue
    .line 25
    const-string v0, ""

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/newrelic/agent/android/measurement/producer/HttpErrorMeasurementProducer;->produceMeasurement(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 26
    return-void
.end method

.method public produceMeasurement(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "httpMethod"    # Ljava/lang/String;
    .param p3, "statusCode"    # I
    .param p4, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 29
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/newrelic/agent/android/measurement/producer/HttpErrorMeasurementProducer;->produceMeasurement(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    .line 30
    return-void
.end method

.method public produceMeasurement(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "httpMethod"    # Ljava/lang/String;
    .param p3, "statusCode"    # I
    .param p4, "responseBody"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Lcom/newrelic/agent/android/measurement/ThreadInfo;

    invoke-direct {v6}, Lcom/newrelic/agent/android/measurement/ThreadInfo;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/newrelic/agent/android/measurement/producer/HttpErrorMeasurementProducer;->produceMeasurement(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcom/newrelic/agent/android/measurement/ThreadInfo;)V

    .line 34
    return-void
.end method

.method public produceMeasurement(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcom/newrelic/agent/android/measurement/ThreadInfo;)V
    .locals 4
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "httpMethod"    # Ljava/lang/String;
    .param p3, "statusCode"    # I
    .param p4, "responseBody"    # Ljava/lang/String;
    .param p6, "threadInfo"    # Lcom/newrelic/agent/android/measurement/ThreadInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/newrelic/agent/android/measurement/ThreadInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    .local p5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/newrelic/agent/android/util/Util;->sanitizeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "url":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 53
    :goto_0
    return-void

    .line 41
    :cond_0
    new-instance v0, Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;

    invoke-direct {v0, v1, p3}, Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;-><init>(Ljava/lang/String;I)V

    .line 42
    .local v0, "measurement":Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;
    if-nez p5, :cond_1

    .line 43
    new-instance p5, Ljava/util/HashMap;

    .end local p5    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    .line 45
    .restart local p5    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const-string v2, "http_method"

    invoke-interface {p5, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v2, "wan_type"

    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getActiveNetworkWanType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-virtual {v0, p6}, Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;->setThreadInfo(Lcom/newrelic/agent/android/measurement/ThreadInfo;)V

    .line 48
    invoke-direct {p0}, Lcom/newrelic/agent/android/measurement/producer/HttpErrorMeasurementProducer;->getSanitizedStackTrace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;->setStackTrace(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0, p4}, Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;->setResponseBody(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0, p5}, Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;->setParams(Ljava/util/Map;)V

    .line 51
    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/measurement/producer/HttpErrorMeasurementProducer;->produceMeasurement(Lcom/newrelic/agent/android/measurement/Measurement;)V

    goto :goto_0
.end method
