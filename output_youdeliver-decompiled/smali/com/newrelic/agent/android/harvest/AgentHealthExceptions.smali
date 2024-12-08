.class public Lcom/newrelic/agent/android/harvest/AgentHealthExceptions;
.super Lcom/newrelic/agent/android/harvest/type/HarvestableObject;
.source "AgentHealthExceptions.java"


# static fields
.field private static final keyArray:Lcom/newrelic/com/google/gson/JsonArray;


# instance fields
.field private final agentHealthExceptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/newrelic/agent/android/harvest/AgentHealthException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/newrelic/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/newrelic/com/google/gson/JsonArray;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/harvest/AgentHealthExceptions;->keyArray:Lcom/newrelic/com/google/gson/JsonArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/type/HarvestableObject;-><init>()V

    .line 17
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/AgentHealthExceptions;->agentHealthExceptions:Ljava/util/Map;

    .line 22
    sget-object v0, Lcom/newrelic/agent/android/harvest/AgentHealthExceptions;->keyArray:Lcom/newrelic/com/google/gson/JsonArray;

    new-instance v1, Lcom/newrelic/com/google/gson/JsonPrimitive;

    const-string v2, "ExceptionClass"

    invoke-direct {v1, v2}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 23
    sget-object v0, Lcom/newrelic/agent/android/harvest/AgentHealthExceptions;->keyArray:Lcom/newrelic/com/google/gson/JsonArray;

    new-instance v1, Lcom/newrelic/com/google/gson/JsonPrimitive;

    const-string v2, "Message"

    invoke-direct {v1, v2}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 24
    sget-object v0, Lcom/newrelic/agent/android/harvest/AgentHealthExceptions;->keyArray:Lcom/newrelic/com/google/gson/JsonArray;

    new-instance v1, Lcom/newrelic/com/google/gson/JsonPrimitive;

    const-string v2, "ThreadName"

    invoke-direct {v1, v2}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 25
    sget-object v0, Lcom/newrelic/agent/android/harvest/AgentHealthExceptions;->keyArray:Lcom/newrelic/com/google/gson/JsonArray;

    new-instance v1, Lcom/newrelic/com/google/gson/JsonPrimitive;

    const-string v2, "CallStack"

    invoke-direct {v1, v2}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 26
    sget-object v0, Lcom/newrelic/agent/android/harvest/AgentHealthExceptions;->keyArray:Lcom/newrelic/com/google/gson/JsonArray;

    new-instance v1, Lcom/newrelic/com/google/gson/JsonPrimitive;

    const-string v2, "Count"

    invoke-direct {v1, v2}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 27
    sget-object v0, Lcom/newrelic/agent/android/harvest/AgentHealthExceptions;->keyArray:Lcom/newrelic/com/google/gson/JsonArray;

    new-instance v1, Lcom/newrelic/com/google/gson/JsonPrimitive;

    const-string v2, "Extras"

    invoke-direct {v1, v2}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 28
    return-void
.end method


# virtual methods
.method public add(Lcom/newrelic/agent/android/harvest/AgentHealthException;)V
    .locals 4
    .param p1, "exception"    # Lcom/newrelic/agent/android/harvest/AgentHealthException;

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/harvest/AgentHealthExceptions;->getKey(Lcom/newrelic/agent/android/harvest/AgentHealthException;)Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "aggregationKey":Ljava/lang/String;
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/AgentHealthExceptions;->agentHealthExceptions:Ljava/util/Map;

    monitor-enter v3

    .line 33
    :try_start_0
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/AgentHealthExceptions;->agentHealthExceptions:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/harvest/AgentHealthException;

    .line 35
    .local v1, "healthException":Lcom/newrelic/agent/android/harvest/AgentHealthException;
    if-nez v1, :cond_0

    .line 36
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/AgentHealthExceptions;->agentHealthExceptions:Ljava/util/Map;

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :goto_0
    monitor-exit v3

    .line 41
    return-void

    .line 38
    :cond_0
    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/AgentHealthException;->increment()V

    goto :goto_0

    .line 40
    .end local v1    # "healthException":Lcom/newrelic/agent/android/harvest/AgentHealthException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public asJsonObject()Lcom/newrelic/com/google/gson/JsonObject;
    .locals 7

    .prologue
    .line 70
    new-instance v2, Lcom/newrelic/com/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/newrelic/com/google/gson/JsonObject;-><init>()V

    .line 72
    .local v2, "exceptions":Lcom/newrelic/com/google/gson/JsonObject;
    new-instance v0, Lcom/newrelic/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/newrelic/com/google/gson/JsonArray;-><init>()V

    .line 74
    .local v0, "data":Lcom/newrelic/com/google/gson/JsonArray;
    iget-object v4, p0, Lcom/newrelic/agent/android/harvest/AgentHealthExceptions;->agentHealthExceptions:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/harvest/AgentHealthException;

    .line 75
    .local v1, "exception":Lcom/newrelic/agent/android/harvest/AgentHealthException;
    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/AgentHealthException;->asJsonArray()Lcom/newrelic/com/google/gson/JsonArray;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    goto :goto_0

    .line 78
    .end local v1    # "exception":Lcom/newrelic/agent/android/harvest/AgentHealthException;
    :cond_0
    const-string v4, "Type"

    new-instance v5, Lcom/newrelic/com/google/gson/JsonPrimitive;

    const-string v6, "AgentErrors"

    invoke-direct {v5, v6}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Lcom/newrelic/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 79
    const-string v4, "Keys"

    sget-object v5, Lcom/newrelic/agent/android/harvest/AgentHealthExceptions;->keyArray:Lcom/newrelic/com/google/gson/JsonArray;

    invoke-virtual {v2, v4, v5}, Lcom/newrelic/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 80
    const-string v4, "Data"

    invoke-virtual {v2, v4, v0}, Lcom/newrelic/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 82
    return-object v2
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 44
    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/AgentHealthExceptions;->agentHealthExceptions:Ljava/util/Map;

    monitor-enter v1

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/AgentHealthExceptions;->agentHealthExceptions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 46
    monitor-exit v1

    .line 47
    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAgentHealthExceptions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/newrelic/agent/android/harvest/AgentHealthException;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/AgentHealthExceptions;->agentHealthExceptions:Ljava/util/Map;

    return-object v0
.end method

.method public final getKey(Lcom/newrelic/agent/android/harvest/AgentHealthException;)Ljava/lang/String;
    .locals 4
    .param p1, "exception"    # Lcom/newrelic/agent/android/harvest/AgentHealthException;

    .prologue
    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "key":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/AgentHealthException;->getExceptionClass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/AgentHealthException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    :cond_0
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/AgentHealthExceptions;->agentHealthExceptions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method
