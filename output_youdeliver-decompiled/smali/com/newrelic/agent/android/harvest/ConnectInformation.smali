.class public Lcom/newrelic/agent/android/harvest/ConnectInformation;
.super Lcom/newrelic/agent/android/harvest/type/HarvestableArray;
.source "ConnectInformation.java"


# static fields
.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;


# instance fields
.field private applicationInformation:Lcom/newrelic/agent/android/harvest/ApplicationInformation;

.field private deviceInformation:Lcom/newrelic/agent/android/harvest/DeviceInformation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/harvest/ConnectInformation;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-void
.end method

.method public constructor <init>(Lcom/newrelic/agent/android/harvest/ApplicationInformation;Lcom/newrelic/agent/android/harvest/DeviceInformation;)V
    .locals 2
    .param p1, "applicationInformation"    # Lcom/newrelic/agent/android/harvest/ApplicationInformation;
    .param p2, "deviceInformation"    # Lcom/newrelic/agent/android/harvest/DeviceInformation;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/type/HarvestableArray;-><init>()V

    .line 18
    if-nez p1, :cond_0

    .line 19
    sget-object v0, Lcom/newrelic/agent/android/harvest/ConnectInformation;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "null applicationInformation passed into ConnectInformation constructor"

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 21
    :cond_0
    if-nez p2, :cond_1

    .line 22
    sget-object v0, Lcom/newrelic/agent/android/harvest/ConnectInformation;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "null deviceInformation passed into ConnectInformation constructor"

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 24
    :cond_1
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/ConnectInformation;->applicationInformation:Lcom/newrelic/agent/android/harvest/ApplicationInformation;

    .line 25
    iput-object p2, p0, Lcom/newrelic/agent/android/harvest/ConnectInformation;->deviceInformation:Lcom/newrelic/agent/android/harvest/DeviceInformation;

    .line 26
    return-void
.end method


# virtual methods
.method public asJsonArray()Lcom/newrelic/com/google/gson/JsonArray;
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lcom/newrelic/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/newrelic/com/google/gson/JsonArray;-><init>()V

    .line 32
    .local v0, "array":Lcom/newrelic/com/google/gson/JsonArray;
    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/ConnectInformation;->applicationInformation:Lcom/newrelic/agent/android/harvest/ApplicationInformation;

    invoke-virtual {p0, v1}, Lcom/newrelic/agent/android/harvest/ConnectInformation;->notNull(Ljava/lang/Object;)V

    .line 33
    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/ConnectInformation;->applicationInformation:Lcom/newrelic/agent/android/harvest/ApplicationInformation;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->asJsonArray()Lcom/newrelic/com/google/gson/JsonArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 35
    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/ConnectInformation;->deviceInformation:Lcom/newrelic/agent/android/harvest/DeviceInformation;

    invoke-virtual {p0, v1}, Lcom/newrelic/agent/android/harvest/ConnectInformation;->notNull(Ljava/lang/Object;)V

    .line 36
    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/ConnectInformation;->deviceInformation:Lcom/newrelic/agent/android/harvest/DeviceInformation;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->asJsonArray()Lcom/newrelic/com/google/gson/JsonArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 38
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 59
    if-ne p0, p1, :cond_1

    .line 69
    :cond_0
    :goto_0
    return v1

    .line 60
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 62
    check-cast v0, Lcom/newrelic/agent/android/harvest/ConnectInformation;

    .line 64
    .local v0, "that":Lcom/newrelic/agent/android/harvest/ConnectInformation;
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/ConnectInformation;->applicationInformation:Lcom/newrelic/agent/android/harvest/ApplicationInformation;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/ConnectInformation;->applicationInformation:Lcom/newrelic/agent/android/harvest/ApplicationInformation;

    iget-object v4, v0, Lcom/newrelic/agent/android/harvest/ConnectInformation;->applicationInformation:Lcom/newrelic/agent/android/harvest/ApplicationInformation;

    invoke-virtual {v3, v4}, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    move v1, v2

    .line 65
    goto :goto_0

    .line 64
    :cond_5
    iget-object v3, v0, Lcom/newrelic/agent/android/harvest/ConnectInformation;->applicationInformation:Lcom/newrelic/agent/android/harvest/ApplicationInformation;

    if-nez v3, :cond_4

    .line 66
    :cond_6
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/ConnectInformation;->deviceInformation:Lcom/newrelic/agent/android/harvest/DeviceInformation;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/ConnectInformation;->deviceInformation:Lcom/newrelic/agent/android/harvest/DeviceInformation;

    iget-object v4, v0, Lcom/newrelic/agent/android/harvest/ConnectInformation;->deviceInformation:Lcom/newrelic/agent/android/harvest/DeviceInformation;

    invoke-virtual {v3, v4}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 67
    goto :goto_0

    .line 66
    :cond_7
    iget-object v3, v0, Lcom/newrelic/agent/android/harvest/ConnectInformation;->deviceInformation:Lcom/newrelic/agent/android/harvest/DeviceInformation;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getApplicationInformation()Lcom/newrelic/agent/android/harvest/ApplicationInformation;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/ConnectInformation;->applicationInformation:Lcom/newrelic/agent/android/harvest/ApplicationInformation;

    return-object v0
.end method

.method public getDeviceInformation()Lcom/newrelic/agent/android/harvest/DeviceInformation;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/ConnectInformation;->deviceInformation:Lcom/newrelic/agent/android/harvest/DeviceInformation;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 74
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/ConnectInformation;->applicationInformation:Lcom/newrelic/agent/android/harvest/ApplicationInformation;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/ConnectInformation;->applicationInformation:Lcom/newrelic/agent/android/harvest/ApplicationInformation;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->hashCode()I

    move-result v0

    .line 75
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/ConnectInformation;->deviceInformation:Lcom/newrelic/agent/android/harvest/DeviceInformation;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/ConnectInformation;->deviceInformation:Lcom/newrelic/agent/android/harvest/DeviceInformation;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 76
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 74
    goto :goto_0
.end method

.method public setApplicationInformation(Lcom/newrelic/agent/android/harvest/ApplicationInformation;)V
    .locals 0
    .param p1, "applicationInformation"    # Lcom/newrelic/agent/android/harvest/ApplicationInformation;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/ConnectInformation;->applicationInformation:Lcom/newrelic/agent/android/harvest/ApplicationInformation;

    .line 51
    return-void
.end method

.method public setDeviceInformation(Lcom/newrelic/agent/android/harvest/DeviceInformation;)V
    .locals 0
    .param p1, "deviceInformation"    # Lcom/newrelic/agent/android/harvest/DeviceInformation;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/ConnectInformation;->deviceInformation:Lcom/newrelic/agent/android/harvest/DeviceInformation;

    .line 55
    return-void
.end method
