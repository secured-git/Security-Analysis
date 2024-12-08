.class public Lcom/yopeso/lieferando/net/requests/base/ApiResponse;
.super Ljava/lang/Object;
.source "ApiResponse.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isValid(Lcom/android/volley/NetworkResponse;)Z
    .locals 10
    .param p0, "response"    # Lcom/android/volley/NetworkResponse;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 34
    :try_start_0
    new-instance v2, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/volley/NetworkResponse;->data:[B

    iget-object v8, p0, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v8}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 35
    .local v2, "jsonString":Ljava/lang/String;
    const-class v7, Lcom/yopeso/lieferando/net/requests/base/ApiResponse;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "isValid:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    new-instance v4, Lcom/google/gson/JsonParser;

    invoke-direct {v4}, Lcom/google/gson/JsonParser;-><init>()V

    .line 37
    .local v4, "parser":Lcom/google/gson/JsonParser;
    invoke-virtual {v4, v2}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 39
    .local v1, "json":Lcom/google/gson/JsonElement;
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 40
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 41
    .local v3, "obj":Lcom/google/gson/JsonObject;
    const-string v7, "validationError"

    invoke-virtual {v3, v7}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "errorCodes"

    invoke-virtual {v3, v7}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "status"

    invoke-virtual {v3, v7}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "status"

    invoke-virtual {v3, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ok"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    move v5, v6

    .line 65
    .end local v1    # "json":Lcom/google/gson/JsonElement;
    .end local v2    # "jsonString":Ljava/lang/String;
    .end local v3    # "obj":Lcom/google/gson/JsonObject;
    .end local v4    # "parser":Lcom/google/gson/JsonParser;
    :cond_1
    :goto_0
    return v5

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move v5, v6

    .line 53
    goto :goto_0

    .line 54
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 58
    .local v0, "e":Lcom/google/gson/JsonSyntaxException;
    invoke-virtual {v0}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    goto :goto_0

    .line 60
    .end local v0    # "e":Lcom/google/gson/JsonSyntaxException;
    :catch_2
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method
