.class public Lcom/yopeso/lieferando/net/requests/base/ApiError;
.super Lcom/android/volley/VolleyError;
.source "ApiError.java"


# instance fields
.field private mErrorCodes:[I

.field private mStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/volley/NetworkResponse;)V
    .locals 0
    .param p1, "response"    # Lcom/android/volley/NetworkResponse;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/volley/VolleyError;-><init>(Lcom/android/volley/NetworkResponse;)V

    .line 28
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/net/requests/base/ApiError;->parseResponse(Lcom/android/volley/NetworkResponse;)V

    .line 29
    return-void
.end method

.method private parseResponse(Lcom/android/volley/NetworkResponse;)V
    .locals 10
    .param p1, "response"    # Lcom/android/volley/NetworkResponse;

    .prologue
    .line 33
    :try_start_0
    new-instance v3, Ljava/lang/String;

    iget-object v6, p1, Lcom/android/volley/NetworkResponse;->data:[B

    iget-object v7, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v7}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 34
    .local v3, "jsonString":Ljava/lang/String;
    new-instance v5, Lcom/google/gson/JsonParser;

    invoke-direct {v5}, Lcom/google/gson/JsonParser;-><init>()V

    .line 35
    .local v5, "parser":Lcom/google/gson/JsonParser;
    invoke-virtual {v5, v3}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 36
    .local v2, "json":Lcom/google/gson/JsonElement;
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    .line 38
    .local v4, "obj":Lcom/google/gson/JsonObject;
    const-string v6, "validationError"

    invoke-virtual {v4, v6}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 39
    const-string v6, "validationError"

    invoke-virtual {v4, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 40
    .local v1, "error":Lcom/google/gson/JsonObject;
    const-string v6, "status"

    invoke-virtual {v1, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/yopeso/lieferando/net/requests/base/ApiError;->mStatus:Ljava/lang/String;

    .line 41
    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    const-string v7, "errorCodes"

    invoke-virtual {v1, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    const-class v8, [I

    instance-of v9, v6, Lcom/google/gson/Gson;

    if-nez v9, :cond_1

    invoke-virtual {v6, v7, v8}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    :goto_0
    check-cast v6, [I

    iput-object v6, p0, Lcom/yopeso/lieferando/net/requests/base/ApiError;->mErrorCodes:[I

    .line 52
    .end local v1    # "error":Lcom/google/gson/JsonObject;
    .end local v2    # "json":Lcom/google/gson/JsonElement;
    .end local v3    # "jsonString":Ljava/lang/String;
    .end local v4    # "obj":Lcom/google/gson/JsonObject;
    .end local v5    # "parser":Lcom/google/gson/JsonParser;
    :cond_0
    :goto_1
    return-void

    .line 41
    .restart local v1    # "error":Lcom/google/gson/JsonObject;
    .restart local v2    # "json":Lcom/google/gson/JsonElement;
    .restart local v3    # "jsonString":Ljava/lang/String;
    .restart local v4    # "obj":Lcom/google/gson/JsonObject;
    .restart local v5    # "parser":Lcom/google/gson/JsonParser;
    :cond_1
    check-cast v6, Lcom/google/gson/Gson;

    invoke-static {v6, v7, v8}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    .line 42
    .end local v1    # "error":Lcom/google/gson/JsonObject;
    :cond_2
    const-string v6, "errorCodes"

    invoke-virtual {v4, v6}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 43
    const-string v6, "status"

    invoke-virtual {v4, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/yopeso/lieferando/net/requests/base/ApiError;->mStatus:Ljava/lang/String;

    .line 44
    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    const-string v7, "errorCodes"

    invoke-virtual {v4, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    const-class v8, [I

    instance-of v9, v6, Lcom/google/gson/Gson;

    if-nez v9, :cond_3

    invoke-virtual {v6, v7, v8}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    :goto_2
    check-cast v6, [I

    iput-object v6, p0, Lcom/yopeso/lieferando/net/requests/base/ApiError;->mErrorCodes:[I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 47
    .end local v2    # "json":Lcom/google/gson/JsonElement;
    .end local v3    # "jsonString":Ljava/lang/String;
    .end local v4    # "obj":Lcom/google/gson/JsonObject;
    .end local v5    # "parser":Lcom/google/gson/JsonParser;
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 44
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v2    # "json":Lcom/google/gson/JsonElement;
    .restart local v3    # "jsonString":Ljava/lang/String;
    .restart local v4    # "obj":Lcom/google/gson/JsonObject;
    .restart local v5    # "parser":Lcom/google/gson/JsonParser;
    :cond_3
    :try_start_1
    check-cast v6, Lcom/google/gson/Gson;

    invoke-static {v6, v7, v8}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    goto :goto_2

    .line 49
    .end local v2    # "json":Lcom/google/gson/JsonElement;
    .end local v3    # "jsonString":Ljava/lang/String;
    .end local v4    # "obj":Lcom/google/gson/JsonObject;
    .end local v5    # "parser":Lcom/google/gson/JsonParser;
    :catch_1
    move-exception v0

    .line 50
    .local v0, "e":Lcom/google/gson/JsonSyntaxException;
    invoke-virtual {v0}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public getErrorCodes()[I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yopeso/lieferando/net/requests/base/ApiError;->mErrorCodes:[I

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yopeso/lieferando/net/requests/base/ApiError;->mStatus:Ljava/lang/String;

    return-object v0
.end method
