.class public Lcom/yopeso/lieferando/net/requests/GetUserDiscountsRequest;
.super Lcom/yopeso/lieferando/net/requests/base/JsonRequest;
.source "GetUserDiscountsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yopeso/lieferando/net/requests/base/JsonRequest",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "listener":Lcom/yopeso/lieferando/net/requests/base/VolleyListener;, "Lcom/yopeso/lieferando/net/requests/base/VolleyListener<Ljava/util/List<Ljava/lang/Integer;>;>;"
    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/SettingsContent;->getmServerURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/customer/discount"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/yopeso/lieferando/net/requests/base/JsonRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yopeso/lieferando/net/requests/GetUserDiscountsRequest;->mRequireAuth:Z

    .line 30
    return-void
.end method


# virtual methods
.method protected parseResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 11
    .param p1, "response"    # Lcom/android/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 34
    invoke-static {p1}, Lcom/yopeso/lieferando/net/requests/base/ApiResponse;->isValid(Lcom/android/volley/NetworkResponse;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 35
    new-instance v9, Lcom/yopeso/lieferando/net/requests/base/ApiError;

    invoke-direct {v9, p1}, Lcom/yopeso/lieferando/net/requests/base/ApiError;-><init>(Lcom/android/volley/NetworkResponse;)V

    invoke-static {v9}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v9

    .line 53
    :goto_0
    return-object v9

    .line 39
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/String;

    iget-object v9, p1, Lcom/android/volley/NetworkResponse;->data:[B

    iget-object v10, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v10}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v9, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 40
    .local v3, "jsonString":Ljava/lang/String;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 41
    .local v2, "gson":Lcom/google/gson/Gson;
    new-instance v5, Lcom/google/gson/JsonParser;

    invoke-direct {v5}, Lcom/google/gson/JsonParser;-><init>()V

    .line 42
    .local v5, "parser":Lcom/google/gson/JsonParser;
    invoke-virtual {v5, v3}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 43
    .local v1, "element":Lcom/google/gson/JsonElement;
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    .line 45
    .local v4, "obj":Lcom/google/gson/JsonObject;
    new-instance v9, Lcom/yopeso/lieferando/net/requests/GetUserDiscountsRequest$1;

    invoke-direct {v9, p0}, Lcom/yopeso/lieferando/net/requests/GetUserDiscountsRequest$1;-><init>(Lcom/yopeso/lieferando/net/requests/GetUserDiscountsRequest;)V

    .line 46
    invoke-virtual {v9}, Lcom/yopeso/lieferando/net/requests/GetUserDiscountsRequest$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v8

    .line 47
    .local v8, "restaurantDiscountsType":Ljava/lang/reflect/Type;
    instance-of v9, v2, Lcom/google/gson/Gson;

    if-nez v9, :cond_1

    invoke-virtual {v2, v4, v8}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    .end local v2    # "gson":Lcom/google/gson/Gson;
    :goto_1
    check-cast v7, Ljava/util/Map;

    .line 48
    .local v7, "restaurantDiscounts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 50
    .local v6, "res":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v9

    goto :goto_0

    .line 47
    .end local v6    # "res":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7    # "restaurantDiscounts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .restart local v2    # "gson":Lcom/google/gson/Gson;
    :cond_1
    check-cast v2, Lcom/google/gson/Gson;

    .end local v2    # "gson":Lcom/google/gson/Gson;
    invoke-static {v2, v4, v8}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_1

    .line 51
    .end local v1    # "element":Lcom/google/gson/JsonElement;
    .end local v3    # "jsonString":Ljava/lang/String;
    .end local v4    # "obj":Lcom/google/gson/JsonObject;
    .end local v5    # "parser":Lcom/google/gson/JsonParser;
    .end local v8    # "restaurantDiscountsType":Ljava/lang/reflect/Type;
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 53
    new-instance v9, Lcom/android/volley/ParseError;

    invoke-direct {v9, v0}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v9}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v9

    goto :goto_0
.end method
