.class public Lcom/newrelic/agent/android/harvest/HttpError;
.super Lcom/newrelic/agent/android/harvest/type/HarvestableArray;
.source "HttpError.java"


# static fields
.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;


# instance fields
.field private appData:Ljava/lang/String;

.field private count:J

.field private digest:Ljava/lang/String;

.field private httpStatusCode:I

.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private responseBody:Ljava/lang/String;

.field private stackTrace:Ljava/lang/String;

.field private timestamp:Ljava/lang/Long;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/harvest/HttpError;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/type/HarvestableArray;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;)V
    .locals 6
    .param p1, "m"    # Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;

    .prologue
    .line 57
    invoke-virtual {p1}, Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;->getHttpStatusCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;->getResponseBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;->getStackTrace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;->getParams()Ljava/util/Map;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/newrelic/agent/android/harvest/HttpError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 58
    invoke-virtual {p1}, Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;->getStartTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/harvest/HttpError;->setTimestamp(Ljava/lang/Long;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "httpStatusCode"    # I
    .param p3, "responseBody"    # Ljava/lang/String;
    .param p4, "stackTrace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/type/HarvestableArray;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/HttpError;->url:Ljava/lang/String;

    .line 48
    iput p2, p0, Lcom/newrelic/agent/android/harvest/HttpError;->httpStatusCode:I

    .line 49
    iput-object p3, p0, Lcom/newrelic/agent/android/harvest/HttpError;->responseBody:Ljava/lang/String;

    .line 50
    iput-object p4, p0, Lcom/newrelic/agent/android/harvest/HttpError;->stackTrace:Ljava/lang/String;

    .line 51
    iput-object p5, p0, Lcom/newrelic/agent/android/harvest/HttpError;->params:Ljava/util/Map;

    .line 52
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/newrelic/agent/android/harvest/HttpError;->count:J

    .line 53
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/HttpError;->computeHash()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/HttpError;->digest:Ljava/lang/String;

    .line 54
    return-void
.end method

.method private computeHash()Ljava/lang/String;
    .locals 4

    .prologue
    .line 123
    :try_start_0
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 129
    .local v0, "digester":Ljava/security/MessageDigest;
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/HttpError;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 130
    const/16 v2, 0x8

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget v3, p0, Lcom/newrelic/agent/android/harvest/HttpError;->httpStatusCode:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 132
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/HttpError;->stackTrace:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/HttpError;->stackTrace:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 133
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/HttpError;->stackTrace:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 135
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .end local v0    # "digester":Ljava/security/MessageDigest;
    :goto_0
    return-object v2

    .line 124
    :catch_0
    move-exception v1

    .line 125
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v2, Lcom/newrelic/agent/android/harvest/HttpError;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v3, "Unable to initialize SHA-1 hash algorithm"

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 126
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public asJsonArray()Lcom/newrelic/com/google/gson/JsonArray;
    .locals 8

    .prologue
    .line 63
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvestConfiguration()Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getResponse_body_limit()I

    move-result v2

    .line 64
    .local v2, "bodyLimit":I
    new-instance v0, Lcom/newrelic/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/newrelic/com/google/gson/JsonArray;-><init>()V

    .line 66
    .local v0, "array":Lcom/newrelic/com/google/gson/JsonArray;
    new-instance v4, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-object v5, p0, Lcom/newrelic/agent/android/harvest/HttpError;->url:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 67
    new-instance v4, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget v5, p0, Lcom/newrelic/agent/android/harvest/HttpError;->httpStatusCode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v4}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 68
    new-instance v4, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-wide v6, p0, Lcom/newrelic/agent/android/harvest/HttpError;->count:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v4}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 70
    const-string v1, ""

    .line 71
    .local v1, "body":Ljava/lang/String;
    sget-object v4, Lcom/newrelic/agent/android/FeatureFlag;->HttpResponseBodyCapture:Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {v4}, Lcom/newrelic/agent/android/FeatureFlag;->featureEnabled(Lcom/newrelic/agent/android/FeatureFlag;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 72
    iget-object v4, p0, Lcom/newrelic/agent/android/harvest/HttpError;->responseBody:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/newrelic/agent/android/harvest/HttpError;->optional(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v2, :cond_0

    .line 74
    sget-object v4, Lcom/newrelic/agent/android/harvest/HttpError;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HTTP Error response BODY is too large. Truncating to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 75
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 81
    :cond_0
    :goto_0
    new-instance v4, Lcom/newrelic/com/google/gson/JsonPrimitive;

    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getEncoder()Lcom/newrelic/agent/android/util/Encoder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/newrelic/agent/android/util/Encoder;->encode([B)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 82
    new-instance v4, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-object v5, p0, Lcom/newrelic/agent/android/harvest/HttpError;->stackTrace:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/newrelic/agent/android/harvest/HttpError;->optional(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 84
    new-instance v3, Lcom/newrelic/com/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/newrelic/com/google/gson/JsonObject;-><init>()V

    .line 85
    .local v3, "customParams":Lcom/newrelic/com/google/gson/JsonObject;
    iget-object v4, p0, Lcom/newrelic/agent/android/harvest/HttpError;->params:Ljava/util/Map;

    if-nez v4, :cond_1

    .line 86
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    iput-object v4, p0, Lcom/newrelic/agent/android/harvest/HttpError;->params:Ljava/util/Map;

    .line 89
    :cond_1
    const-string v4, "custom_params"

    iget-object v5, p0, Lcom/newrelic/agent/android/harvest/HttpError;->params:Ljava/util/Map;

    invoke-static {v5}, Lcom/newrelic/agent/android/harvest/type/HarvestableObject;->fromMap(Ljava/util/Map;)Lcom/newrelic/agent/android/harvest/type/HarvestableObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/newrelic/agent/android/harvest/type/HarvestableObject;->asJson()Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/newrelic/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 91
    invoke-virtual {v0, v3}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 92
    new-instance v4, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-object v5, p0, Lcom/newrelic/agent/android/harvest/HttpError;->appData:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/newrelic/agent/android/harvest/HttpError;->optional(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 95
    return-object v0

    .line 78
    .end local v3    # "customParams":Lcom/newrelic/com/google/gson/JsonObject;
    :cond_2
    sget-object v4, Lcom/newrelic/agent/android/harvest/HttpError;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v5, "not enabled"

    invoke-interface {v4, v5}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public digest()V
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/HttpError;->computeHash()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/HttpError;->digest:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public getHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HttpError;->digest:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HttpError;->params:Ljava/util/Map;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HttpError;->timestamp:Ljava/lang/Long;

    return-object v0
.end method

.method public incrementCount()V
    .locals 4

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/newrelic/agent/android/harvest/HttpError;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/newrelic/agent/android/harvest/HttpError;->count:J

    .line 103
    return-void
.end method

.method public setAppData(Ljava/lang/String;)V
    .locals 0
    .param p1, "appData"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/HttpError;->appData:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setCount(J)V
    .locals 1
    .param p1, "count"    # J

    .prologue
    .line 147
    iput-wide p1, p0, Lcom/newrelic/agent/android/harvest/HttpError;->count:J

    .line 148
    return-void
.end method

.method public setHttpStatusCode(I)V
    .locals 0
    .param p1, "httpStatusCode"    # I

    .prologue
    .line 143
    iput p1, p0, Lcom/newrelic/agent/android/harvest/HttpError;->httpStatusCode:I

    .line 144
    return-void
.end method

.method public setParams(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/HttpError;->params:Ljava/util/Map;

    .line 160
    return-void
.end method

.method public setResponseBody(Ljava/lang/String;)V
    .locals 0
    .param p1, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/HttpError;->responseBody:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setStackTrace(Ljava/lang/String;)V
    .locals 0
    .param p1, "stackTrace"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/HttpError;->stackTrace:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setTimestamp(Ljava/lang/Long;)V
    .locals 0
    .param p1, "timestamp"    # Ljava/lang/Long;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/HttpError;->timestamp:Ljava/lang/Long;

    .line 176
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/HttpError;->url:Ljava/lang/String;

    .line 140
    return-void
.end method
