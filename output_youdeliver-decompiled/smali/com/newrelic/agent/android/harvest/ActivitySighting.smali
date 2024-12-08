.class public Lcom/newrelic/agent/android/harvest/ActivitySighting;
.super Lcom/newrelic/agent/android/harvest/type/HarvestableArray;
.source "ActivitySighting.java"


# instance fields
.field private durationMs:J

.field private name:Ljava/lang/String;

.field private final timestampMs:J


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 3
    .param p1, "timestampMs"    # J
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/type/HarvestableArray;-><init>()V

    .line 14
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/newrelic/agent/android/harvest/ActivitySighting;->durationMs:J

    .line 19
    iput-wide p1, p0, Lcom/newrelic/agent/android/harvest/ActivitySighting;->timestampMs:J

    .line 20
    iput-object p3, p0, Lcom/newrelic/agent/android/harvest/ActivitySighting;->name:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static newFromJson(Lcom/newrelic/com/google/gson/JsonArray;)Lcom/newrelic/agent/android/harvest/ActivitySighting;
    .locals 4
    .param p0, "jsonArray"    # Lcom/newrelic/com/google/gson/JsonArray;

    .prologue
    .line 70
    new-instance v0, Lcom/newrelic/agent/android/harvest/ActivitySighting;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/newrelic/com/google/gson/JsonArray;->get(I)Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newrelic/com/google/gson/JsonElement;->getAsLong()J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/newrelic/com/google/gson/JsonArray;->get(I)Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newrelic/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lcom/newrelic/agent/android/harvest/ActivitySighting;-><init>(JLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public asJsonArray()Lcom/newrelic/com/google/gson/JsonArray;
    .locals 4

    .prologue
    .line 50
    new-instance v0, Lcom/newrelic/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/newrelic/com/google/gson/JsonArray;-><init>()V

    .line 51
    .local v0, "data":Lcom/newrelic/com/google/gson/JsonArray;
    monitor-enter p0

    .line 52
    :try_start_0
    new-instance v1, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/ActivitySighting;->name:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 53
    new-instance v1, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-wide v2, p0, Lcom/newrelic/agent/android/harvest/ActivitySighting;->timestampMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 54
    new-instance v1, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-wide v2, p0, Lcom/newrelic/agent/android/harvest/ActivitySighting;->durationMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 55
    monitor-exit p0

    .line 56
    return-object v0

    .line 55
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public asJsonArrayWithoutDuration()Lcom/newrelic/com/google/gson/JsonArray;
    .locals 4

    .prologue
    .line 61
    new-instance v0, Lcom/newrelic/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/newrelic/com/google/gson/JsonArray;-><init>()V

    .line 62
    .local v0, "data":Lcom/newrelic/com/google/gson/JsonArray;
    monitor-enter p0

    .line 63
    :try_start_0
    new-instance v1, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-wide v2, p0, Lcom/newrelic/agent/android/harvest/ActivitySighting;->timestampMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 64
    new-instance v1, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/ActivitySighting;->name:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 65
    monitor-exit p0

    .line 66
    return-object v0

    .line 65
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public end(J)V
    .locals 3
    .param p1, "endTimestampMs"    # J

    .prologue
    .line 42
    monitor-enter p0

    .line 43
    :try_start_0
    iget-wide v0, p0, Lcom/newrelic/agent/android/harvest/ActivitySighting;->timestampMs:J

    sub-long v0, p1, v0

    iput-wide v0, p0, Lcom/newrelic/agent/android/harvest/ActivitySighting;->durationMs:J

    .line 44
    monitor-exit p0

    .line 45
    return-void

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/newrelic/agent/android/harvest/ActivitySighting;->durationMs:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/ActivitySighting;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestampMs()J
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/newrelic/agent/android/harvest/ActivitySighting;->timestampMs:J

    return-wide v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    monitor-enter p0

    .line 29
    :try_start_0
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/ActivitySighting;->name:Ljava/lang/String;

    .line 30
    monitor-exit p0

    .line 31
    return-void

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
