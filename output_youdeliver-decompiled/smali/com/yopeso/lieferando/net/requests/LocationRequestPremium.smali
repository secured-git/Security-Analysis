.class public Lcom/yopeso/lieferando/net/requests/LocationRequestPremium;
.super Lcom/yopeso/lieferando/net/requests/base/JsonRequest;
.source "LocationRequestPremium.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yopeso/lieferando/net/requests/base/JsonRequest",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/yopeso/lieferando/model/LocationSuggestion;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V
    .locals 6
    .param p1, "plz"    # Ljava/lang/String;
    .param p2, "ids"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/LocationSuggestion;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p3, "listener":Lcom/yopeso/lieferando/net/requests/base/VolleyListener;, "Lcom/yopeso/lieferando/net/requests/base/VolleyListener<Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/LocationSuggestion;>;>;"
    const/4 v1, 0x0

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/SettingsContent;->getmServerURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/location/cities/premium?plz=%s&restaurantId=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/yopeso/lieferando/net/requests/LocationRequestPremium;->paramsEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x1

    invoke-static {p2}, Lcom/yopeso/lieferando/net/requests/LocationRequestPremium;->paramsEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p3

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/yopeso/lieferando/net/requests/base/JsonRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected parseResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 8
    .param p1, "response"    # Lcom/android/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/LocationSuggestion;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 31
    :try_start_0
    new-instance v2, Ljava/lang/String;

    iget-object v5, p1, Lcom/android/volley/NetworkResponse;->data:[B

    iget-object v6, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v6}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 32
    .local v2, "jsonString":Ljava/lang/String;
    new-instance v5, Lcom/google/gson/GsonBuilder;

    invoke-direct {v5}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v6, Ljava/lang/Boolean;

    new-instance v7, Lcom/yopeso/lieferando/net/serializers/IntBooleanDeserializer;

    invoke-direct {v7}, Lcom/yopeso/lieferando/net/serializers/IntBooleanDeserializer;-><init>()V

    invoke-virtual {v5, v6, v7}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v5

    const-string v6, "HH:mm"

    invoke-virtual {v5, v6}, Lcom/google/gson/GsonBuilder;->setDateFormat(Ljava/lang/String;)Lcom/google/gson/GsonBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    .line 33
    .local v1, "gson":Lcom/google/gson/Gson;
    new-instance v5, Lcom/yopeso/lieferando/net/requests/LocationRequestPremium$1;

    invoke-direct {v5, p0}, Lcom/yopeso/lieferando/net/requests/LocationRequestPremium$1;-><init>(Lcom/yopeso/lieferando/net/requests/LocationRequestPremium;)V

    .line 34
    invoke-virtual {v5}, Lcom/yopeso/lieferando/net/requests/LocationRequestPremium$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 35
    .local v3, "listType":Ljava/lang/reflect/Type;
    instance-of v5, v1, Lcom/google/gson/Gson;

    if-nez v5, :cond_0

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    .end local v1    # "gson":Lcom/google/gson/Gson;
    :goto_0
    check-cast v4, Ljava/util/ArrayList;

    .line 36
    .local v4, "restaurants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/LocationSuggestion;>;"
    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v5

    .line 40
    .end local v2    # "jsonString":Ljava/lang/String;
    .end local v3    # "listType":Ljava/lang/reflect/Type;
    .end local v4    # "restaurants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/LocationSuggestion;>;"
    :goto_1
    return-object v5

    .line 35
    .restart local v1    # "gson":Lcom/google/gson/Gson;
    .restart local v2    # "jsonString":Ljava/lang/String;
    .restart local v3    # "listType":Ljava/lang/reflect/Type;
    :cond_0
    check-cast v1, Lcom/google/gson/Gson;

    .end local v1    # "gson":Lcom/google/gson/Gson;
    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 38
    .end local v2    # "jsonString":Ljava/lang/String;
    .end local v3    # "listType":Ljava/lang/reflect/Type;
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 40
    new-instance v5, Lcom/android/volley/ParseError;

    invoke-direct {v5, v0}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v5}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v5

    goto :goto_1
.end method
