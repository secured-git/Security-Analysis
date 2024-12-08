.class public Lcom/yopeso/lieferando/net/requests/OrderPostRequest;
.super Lcom/yopeso/lieferando/net/requests/base/JsonRequest;
.source "OrderPostRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yopeso/lieferando/net/requests/base/JsonRequest",
        "<",
        "Lcom/yopeso/lieferando/model/OrderResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V
    .locals 6
    .param p1, "body"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
            "<",
            "Lcom/yopeso/lieferando/model/OrderResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p2, "listener":Lcom/yopeso/lieferando/net/requests/base/VolleyListener;, "Lcom/yopeso/lieferando/net/requests/base/VolleyListener<Lcom/yopeso/lieferando/model/OrderResponse;>;"
    const/4 v1, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/SettingsContent;->getmServerURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/customer/order"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    instance-of v0, p1, Lorg/json/JSONObject;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    move-object v0, p0

    move-object v4, p2

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/yopeso/lieferando/net/requests/base/JsonRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 35
    const-class v0, Lcom/yopeso/lieferando/net/requests/OrderPostRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "POST:"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    instance-of v0, p1, Lorg/json/JSONObject;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .end local p1    # "body":Lorg/json/JSONObject;
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    return-void

    .restart local p1    # "body":Lorg/json/JSONObject;
    :cond_0
    move-object v0, p1

    .line 34
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 35
    :cond_1
    check-cast p1, Lorg/json/JSONObject;

    .end local p1    # "body":Lorg/json/JSONObject;
    invoke-static {p1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method protected parseResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 13
    .param p1, "response"    # Lcom/android/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<",
            "Lcom/yopeso/lieferando/model/OrderResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    invoke-static {p1}, Lcom/yopeso/lieferando/net/requests/base/ApiResponse;->isValid(Lcom/android/volley/NetworkResponse;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 41
    new-instance v10, Lcom/yopeso/lieferando/net/requests/base/ApiError;

    invoke-direct {v10, p1}, Lcom/yopeso/lieferando/net/requests/base/ApiError;-><init>(Lcom/android/volley/NetworkResponse;)V

    invoke-static {v10}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v10

    .line 65
    :goto_0
    return-object v10

    .line 45
    :cond_0
    :try_start_0
    new-instance v4, Ljava/lang/String;

    iget-object v10, p1, Lcom/android/volley/NetworkResponse;->data:[B

    iget-object v11, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v11}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v10, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 46
    .local v4, "jsonString":Ljava/lang/String;
    const-class v10, Lcom/yopeso/lieferando/model/OrderResponse;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "OrderResponse"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    new-instance v10, Lcom/google/gson/GsonBuilder;

    invoke-direct {v10}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v11, Ljava/lang/Boolean;

    new-instance v12, Lcom/yopeso/lieferando/net/serializers/IntBooleanDeserializer;

    invoke-direct {v12}, Lcom/yopeso/lieferando/net/serializers/IntBooleanDeserializer;-><init>()V

    invoke-virtual {v10, v11, v12}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v10

    const-string v11, "HH:mm"

    invoke-virtual {v10, v11}, Lcom/google/gson/GsonBuilder;->setDateFormat(Ljava/lang/String;)Lcom/google/gson/GsonBuilder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v3

    .line 48
    .local v3, "gson":Lcom/google/gson/Gson;
    const-class v11, Lcom/yopeso/lieferando/model/OrderResponse;

    instance-of v10, v3, Lcom/google/gson/Gson;

    if-nez v10, :cond_2

    invoke-virtual {v3, v4, v11}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    :goto_1
    check-cast v7, Lcom/yopeso/lieferando/model/OrderResponse;

    .line 50
    .local v7, "order":Lcom/yopeso/lieferando/model/OrderResponse;
    new-instance v9, Lcom/google/gson/JsonParser;

    invoke-direct {v9}, Lcom/google/gson/JsonParser;-><init>()V

    .line 51
    .local v9, "parser":Lcom/google/gson/JsonParser;
    invoke-virtual {v9, v4}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 52
    .local v2, "element":Lcom/google/gson/JsonElement;
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v6

    .line 53
    .local v6, "obj":Lcom/google/gson/JsonObject;
    new-instance v10, Lcom/yopeso/lieferando/net/requests/OrderPostRequest$1;

    invoke-direct {v10, p0}, Lcom/yopeso/lieferando/net/requests/OrderPostRequest$1;-><init>(Lcom/yopeso/lieferando/net/requests/OrderPostRequest;)V

    .line 54
    invoke-virtual {v10}, Lcom/yopeso/lieferando/net/requests/OrderPostRequest$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 56
    .local v5, "mapType":Ljava/lang/reflect/Type;
    const-string v10, "redirectParams"

    invoke-virtual {v6, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    instance-of v11, v3, Lcom/google/gson/Gson;

    if-nez v11, :cond_3

    invoke-virtual {v3, v10, v5}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v8

    .end local v3    # "gson":Lcom/google/gson/Gson;
    :goto_2
    check-cast v8, Ljava/util/Map;

    .line 57
    .local v8, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v7, v8}, Lcom/yopeso/lieferando/model/OrderResponse;->setParams(Ljava/util/Map;)V

    .line 58
    const-string v10, "miscellaneous"

    invoke-virtual {v6, v10}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 59
    const-string v10, "miscellaneous"

    invoke-virtual {v6, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/yopeso/lieferando/model/OrderResponse;->setMisc(Ljava/lang/String;)V

    .line 62
    :cond_1
    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v10

    goto/16 :goto_0

    .line 48
    .end local v2    # "element":Lcom/google/gson/JsonElement;
    .end local v5    # "mapType":Ljava/lang/reflect/Type;
    .end local v6    # "obj":Lcom/google/gson/JsonObject;
    .end local v7    # "order":Lcom/yopeso/lieferando/model/OrderResponse;
    .end local v8    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "parser":Lcom/google/gson/JsonParser;
    .restart local v3    # "gson":Lcom/google/gson/Gson;
    :cond_2
    move-object v0, v3

    check-cast v0, Lcom/google/gson/Gson;

    move-object v10, v0

    invoke-static {v10, v4, v11}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_1

    .line 56
    .restart local v2    # "element":Lcom/google/gson/JsonElement;
    .restart local v5    # "mapType":Ljava/lang/reflect/Type;
    .restart local v6    # "obj":Lcom/google/gson/JsonObject;
    .restart local v7    # "order":Lcom/yopeso/lieferando/model/OrderResponse;
    .restart local v9    # "parser":Lcom/google/gson/JsonParser;
    :cond_3
    check-cast v3, Lcom/google/gson/Gson;

    .end local v3    # "gson":Lcom/google/gson/Gson;
    invoke-static {v3, v10, v5}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto :goto_2

    .line 63
    .end local v2    # "element":Lcom/google/gson/JsonElement;
    .end local v4    # "jsonString":Ljava/lang/String;
    .end local v5    # "mapType":Ljava/lang/reflect/Type;
    .end local v6    # "obj":Lcom/google/gson/JsonObject;
    .end local v7    # "order":Lcom/yopeso/lieferando/model/OrderResponse;
    .end local v9    # "parser":Lcom/google/gson/JsonParser;
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 65
    new-instance v10, Lcom/android/volley/ParseError;

    invoke-direct {v10, v1}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v10}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v10

    goto/16 :goto_0
.end method
