.class public Lcom/yopeso/lieferando/net/requests/StampRestaurantsRequest;
.super Lcom/yopeso/lieferando/net/requests/base/JsonRequest;
.source "StampRestaurantsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yopeso/lieferando/net/requests/base/JsonRequest",
        "<",
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/Integer;",
        "Lcom/yopeso/lieferando/model/Stamp;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V
    .locals 6
    .param p1, "locationUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/yopeso/lieferando/model/Stamp;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p2, "listener":Lcom/yopeso/lieferando/net/requests/base/VolleyListener;, "Lcom/yopeso/lieferando/net/requests/base/VolleyListener<Ljava/util/HashMap<Ljava/lang/Integer;Lcom/yopeso/lieferando/model/Stamp;>;>;"
    const/4 v1, 0x0

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/SettingsContent;->getmCdnURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/%s/mobile/restaurants/discounts.json"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p2

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/yopeso/lieferando/net/requests/base/JsonRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected parseResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 16
    .param p1, "response"    # Lcom/android/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/yopeso/lieferando/model/Stamp;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 43
    :try_start_0
    new-instance v5, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/volley/NetworkResponse;->data:[B

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v13}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v5, v12, v13}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 44
    .local v5, "jsonString":Ljava/lang/String;
    new-instance v12, Lcom/google/gson/GsonBuilder;

    invoke-direct {v12}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v13, Ljava/util/Date;

    new-instance v14, Lcom/yopeso/lieferando/net/serializers/DateStampDeSerialzer;

    invoke-direct {v14}, Lcom/yopeso/lieferando/net/serializers/DateStampDeSerialzer;-><init>()V

    invoke-virtual {v12, v13, v14}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v4

    .line 45
    .local v4, "gson":Lcom/google/gson/Gson;
    new-instance v12, Lcom/yopeso/lieferando/net/requests/StampRestaurantsRequest$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/yopeso/lieferando/net/requests/StampRestaurantsRequest$1;-><init>(Lcom/yopeso/lieferando/net/requests/StampRestaurantsRequest;)V

    .line 46
    invoke-virtual {v12}, Lcom/yopeso/lieferando/net/requests/StampRestaurantsRequest$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v6

    .line 47
    .local v6, "listType":Ljava/lang/reflect/Type;
    instance-of v12, v4, Lcom/google/gson/Gson;

    if-nez v12, :cond_1

    invoke-virtual {v4, v5, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v11

    :goto_0
    check-cast v11, Ljava/util/HashMap;

    .line 48
    .local v11, "stamps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/yopeso/lieferando/model/Stamp;>;"
    new-instance v8, Lcom/google/gson/JsonParser;

    invoke-direct {v8}, Lcom/google/gson/JsonParser;-><init>()V

    .line 49
    .local v8, "parser":Lcom/google/gson/JsonParser;
    invoke-virtual {v8, v5}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 50
    .local v2, "element":Lcom/google/gson/JsonElement;
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v7

    .line 52
    .local v7, "obj":Lcom/google/gson/JsonObject;
    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_2

    .line 69
    invoke-static/range {p1 .. p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v12

    .line 73
    .end local v2    # "element":Lcom/google/gson/JsonElement;
    .end local v4    # "gson":Lcom/google/gson/Gson;
    .end local v5    # "jsonString":Ljava/lang/String;
    .end local v6    # "listType":Ljava/lang/reflect/Type;
    .end local v7    # "obj":Lcom/google/gson/JsonObject;
    .end local v8    # "parser":Lcom/google/gson/JsonParser;
    .end local v11    # "stamps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/yopeso/lieferando/model/Stamp;>;"
    :goto_2
    return-object v12

    .line 47
    .restart local v4    # "gson":Lcom/google/gson/Gson;
    .restart local v5    # "jsonString":Ljava/lang/String;
    .restart local v6    # "listType":Ljava/lang/reflect/Type;
    :cond_1
    move-object v0, v4

    check-cast v0, Lcom/google/gson/Gson;

    move-object v12, v0

    invoke-static {v12, v5, v6}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v11

    goto :goto_0

    .line 52
    .restart local v2    # "element":Lcom/google/gson/JsonElement;
    .restart local v7    # "obj":Lcom/google/gson/JsonObject;
    .restart local v8    # "parser":Lcom/google/gson/JsonParser;
    .restart local v11    # "stamps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/yopeso/lieferando/model/Stamp;>;"
    :cond_2
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 53
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/yopeso/lieferando/model/Stamp;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 54
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v9

    .line 55
    .local v9, "singleElem":Lcom/google/gson/JsonObject;
    const-string v12, "stp"

    invoke-virtual {v9, v12}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 56
    const-string v12, "stp"

    invoke-virtual {v9, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v14

    const-class v15, Lcom/yopeso/lieferando/model/Stamp;

    instance-of v12, v4, Lcom/google/gson/Gson;

    if-nez v12, :cond_3

    invoke-virtual {v4, v14, v15}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    :goto_3
    check-cast v10, Lcom/yopeso/lieferando/model/Stamp;

    .line 57
    .local v10, "st":Lcom/yopeso/lieferando/model/Stamp;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_4

    .line 58
    invoke-interface {v3, v10}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 71
    .end local v2    # "element":Lcom/google/gson/JsonElement;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/yopeso/lieferando/model/Stamp;>;"
    .end local v4    # "gson":Lcom/google/gson/Gson;
    .end local v5    # "jsonString":Ljava/lang/String;
    .end local v6    # "listType":Ljava/lang/reflect/Type;
    .end local v7    # "obj":Lcom/google/gson/JsonObject;
    .end local v8    # "parser":Lcom/google/gson/JsonParser;
    .end local v9    # "singleElem":Lcom/google/gson/JsonObject;
    .end local v10    # "st":Lcom/yopeso/lieferando/model/Stamp;
    .end local v11    # "stamps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/yopeso/lieferando/model/Stamp;>;"
    :catch_0
    move-exception v1

    .line 72
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 73
    new-instance v12, Lcom/android/volley/ParseError;

    invoke-direct {v12, v1}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v12}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v12

    goto :goto_2

    .line 56
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v2    # "element":Lcom/google/gson/JsonElement;
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/yopeso/lieferando/model/Stamp;>;"
    .restart local v4    # "gson":Lcom/google/gson/Gson;
    .restart local v5    # "jsonString":Ljava/lang/String;
    .restart local v6    # "listType":Ljava/lang/reflect/Type;
    .restart local v7    # "obj":Lcom/google/gson/JsonObject;
    .restart local v8    # "parser":Lcom/google/gson/JsonParser;
    .restart local v9    # "singleElem":Lcom/google/gson/JsonObject;
    .restart local v11    # "stamps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/yopeso/lieferando/model/Stamp;>;"
    :cond_3
    :try_start_1
    move-object v0, v4

    check-cast v0, Lcom/google/gson/Gson;

    move-object v12, v0

    invoke-static {v12, v14, v15}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_3

    .line 62
    .restart local v10    # "st":Lcom/yopeso/lieferando/model/Stamp;
    :cond_4
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/yopeso/lieferando/model/Stamp;

    invoke-virtual {v10}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v14

    invoke-virtual {v12, v14}, Lcom/yopeso/lieferando/model/Stamp;->setNeededStamps(I)V

    .line 63
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/yopeso/lieferando/model/Stamp;

    invoke-virtual {v10}, Lcom/yopeso/lieferando/model/Stamp;->getExpirationDate()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/yopeso/lieferando/model/Stamp;->setExpirationDate(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
