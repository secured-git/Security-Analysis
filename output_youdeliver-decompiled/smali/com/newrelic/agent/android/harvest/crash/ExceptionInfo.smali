.class public Lcom/newrelic/agent/android/harvest/crash/ExceptionInfo;
.super Lcom/newrelic/agent/android/harvest/type/HarvestableObject;
.source "ExceptionInfo.java"


# instance fields
.field private className:Ljava/lang/String;

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/type/HarvestableObject;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/type/HarvestableObject;-><init>()V

    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.newrelic.agent.android.unity.UnityException"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/crash/ExceptionInfo;->className:Ljava/lang/String;

    .line 27
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/crash/ExceptionInfo;->message:Ljava/lang/String;

    .line 32
    :goto_1
    return-void

    .line 24
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/crash/ExceptionInfo;->className:Ljava/lang/String;

    goto :goto_0

    .line 30
    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/crash/ExceptionInfo;->message:Ljava/lang/String;

    goto :goto_1
.end method

.method public static newFromJson(Lcom/newrelic/com/google/gson/JsonObject;)Lcom/newrelic/agent/android/harvest/crash/ExceptionInfo;
    .locals 2
    .param p0, "jsonObject"    # Lcom/newrelic/com/google/gson/JsonObject;

    .prologue
    .line 53
    new-instance v0, Lcom/newrelic/agent/android/harvest/crash/ExceptionInfo;

    invoke-direct {v0}, Lcom/newrelic/agent/android/harvest/crash/ExceptionInfo;-><init>()V

    .line 55
    .local v0, "info":Lcom/newrelic/agent/android/harvest/crash/ExceptionInfo;
    const-string v1, "name"

    invoke-virtual {p0, v1}, Lcom/newrelic/com/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "name"

    invoke-virtual {p0, v1}, Lcom/newrelic/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newrelic/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lcom/newrelic/agent/android/harvest/crash/ExceptionInfo;->className:Ljava/lang/String;

    .line 57
    const-string v1, "cause"

    invoke-virtual {p0, v1}, Lcom/newrelic/com/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "cause"

    invoke-virtual {p0, v1}, Lcom/newrelic/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newrelic/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, v0, Lcom/newrelic/agent/android/harvest/crash/ExceptionInfo;->message:Ljava/lang/String;

    .line 59
    return-object v0

    .line 55
    :cond_0
    const-string v1, ""

    goto :goto_0

    .line 57
    :cond_1
    const-string v1, ""

    goto :goto_1
.end method


# virtual methods
.method public asJsonObject()Lcom/newrelic/com/google/gson/JsonObject;
    .locals 4

    .prologue
    .line 44
    new-instance v0, Lcom/newrelic/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/newrelic/com/google/gson/JsonObject;-><init>()V

    .line 46
    .local v0, "data":Lcom/newrelic/com/google/gson/JsonObject;
    const-string v2, "name"

    new-instance v3, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/crash/ExceptionInfo;->className:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/crash/ExceptionInfo;->className:Ljava/lang/String;

    :goto_0
    invoke-direct {v3, v1}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/newrelic/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 47
    const-string v2, "cause"

    new-instance v3, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/crash/ExceptionInfo;->message:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/crash/ExceptionInfo;->message:Ljava/lang/String;

    :goto_1
    invoke-direct {v3, v1}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/newrelic/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 49
    return-object v0

    .line 46
    :cond_0
    const-string v1, ""

    goto :goto_0

    .line 47
    :cond_1
    const-string v1, ""

    goto :goto_1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/crash/ExceptionInfo;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/crash/ExceptionInfo;->message:Ljava/lang/String;

    return-object v0
.end method
