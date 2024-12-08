.class public Lcom/yopeso/lieferando/net/requests/StampRestaurantRequest;
.super Lcom/yopeso/lieferando/net/requests/base/JsonRequest;
.source "StampRestaurantRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yopeso/lieferando/net/requests/base/JsonRequest",
        "<",
        "Lcom/yopeso/lieferando/model/restaurant/Restaurant;",
        ">;"
    }
.end annotation


# instance fields
.field private mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;


# direct methods
.method public constructor <init>(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V
    .locals 6
    .param p1, "restaurant"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yopeso/lieferando/model/restaurant/Restaurant;",
            "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/Restaurant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "listener":Lcom/yopeso/lieferando/net/requests/base/VolleyListener;, "Lcom/yopeso/lieferando/net/requests/base/VolleyListener<Lcom/yopeso/lieferando/model/restaurant/Restaurant;>;"
    const/4 v1, 0x0

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/SettingsContent;->getmCdnURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/%s/discounts.json "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getServiceUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

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

    .line 37
    iput-object p1, p0, Lcom/yopeso/lieferando/net/requests/StampRestaurantRequest;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .line 38
    return-void
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
            "Lcom/yopeso/lieferando/model/restaurant/Restaurant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    :try_start_0
    new-instance v4, Ljava/lang/String;

    iget-object v10, p1, Lcom/android/volley/NetworkResponse;->data:[B

    iget-object v11, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v11}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v10, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 47
    .local v4, "jsonString":Ljava/lang/String;
    new-instance v10, Lcom/google/gson/GsonBuilder;

    invoke-direct {v10}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v11, Ljava/util/Date;

    new-instance v12, Lcom/yopeso/lieferando/net/serializers/DateStampDeSerialzer;

    invoke-direct {v12}, Lcom/yopeso/lieferando/net/serializers/DateStampDeSerialzer;-><init>()V

    invoke-virtual {v10, v11, v12}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v3

    .line 48
    .local v3, "gson":Lcom/google/gson/Gson;
    new-instance v8, Lcom/google/gson/JsonParser;

    invoke-direct {v8}, Lcom/google/gson/JsonParser;-><init>()V

    .line 49
    .local v8, "parser":Lcom/google/gson/JsonParser;
    invoke-virtual {v8, v4}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 50
    .local v2, "element":Lcom/google/gson/JsonElement;
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v7

    .line 52
    .local v7, "obj":Lcom/google/gson/JsonObject;
    const/4 v9, 0x0

    .line 53
    .local v9, "st":Lcom/yopeso/lieferando/model/Stamp;
    const-string v10, "stp"

    invoke-virtual {v7, v10}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 54
    const-string v10, "stp"

    invoke-virtual {v7, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    const-class v12, Lcom/yopeso/lieferando/model/Stamp;

    instance-of v10, v3, Lcom/google/gson/Gson;

    if-nez v10, :cond_3

    invoke-virtual {v3, v11, v12}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "st":Lcom/yopeso/lieferando/model/Stamp;
    :goto_0
    check-cast v9, Lcom/yopeso/lieferando/model/Stamp;

    .line 56
    .restart local v9    # "st":Lcom/yopeso/lieferando/model/Stamp;
    :cond_0
    const-string v10, "discounts"

    invoke-virtual {v7, v10}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 57
    new-instance v10, Lcom/yopeso/lieferando/net/requests/StampRestaurantRequest$1;

    invoke-direct {v10, p0}, Lcom/yopeso/lieferando/net/requests/StampRestaurantRequest$1;-><init>(Lcom/yopeso/lieferando/net/requests/StampRestaurantRequest;)V

    invoke-virtual {v10}, Lcom/yopeso/lieferando/net/requests/StampRestaurantRequest$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 58
    .local v5, "listType":Ljava/lang/reflect/Type;
    const-string v10, "discounts"

    invoke-virtual {v7, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    instance-of v11, v3, Lcom/google/gson/Gson;

    if-nez v11, :cond_4

    invoke-virtual {v3, v10, v5}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    .end local v3    # "gson":Lcom/google/gson/Gson;
    :goto_1
    check-cast v6, Ljava/util/ArrayList;

    .line 59
    .local v6, "mDiscounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/Discount;>;"
    if-nez v9, :cond_1

    .line 60
    new-instance v9, Lcom/yopeso/lieferando/model/Stamp;

    .end local v9    # "st":Lcom/yopeso/lieferando/model/Stamp;
    invoke-direct {v9}, Lcom/yopeso/lieferando/model/Stamp;-><init>()V

    .line 62
    .restart local v9    # "st":Lcom/yopeso/lieferando/model/Stamp;
    :cond_1
    invoke-virtual {v9, v6}, Lcom/yopeso/lieferando/model/Stamp;->setmDiscounts(Ljava/util/ArrayList;)V

    .line 64
    .end local v5    # "listType":Ljava/lang/reflect/Type;
    .end local v6    # "mDiscounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/Discount;>;"
    :cond_2
    iget-object v10, p0, Lcom/yopeso/lieferando/net/requests/StampRestaurantRequest;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v10, v9}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->setStamp(Lcom/yopeso/lieferando/model/Stamp;)V

    .line 66
    iget-object v10, p0, Lcom/yopeso/lieferando/net/requests/StampRestaurantRequest;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v10

    .line 70
    .end local v2    # "element":Lcom/google/gson/JsonElement;
    .end local v4    # "jsonString":Ljava/lang/String;
    .end local v7    # "obj":Lcom/google/gson/JsonObject;
    .end local v8    # "parser":Lcom/google/gson/JsonParser;
    .end local v9    # "st":Lcom/yopeso/lieferando/model/Stamp;
    :goto_2
    return-object v10

    .line 54
    .restart local v2    # "element":Lcom/google/gson/JsonElement;
    .restart local v3    # "gson":Lcom/google/gson/Gson;
    .restart local v4    # "jsonString":Ljava/lang/String;
    .restart local v7    # "obj":Lcom/google/gson/JsonObject;
    .restart local v8    # "parser":Lcom/google/gson/JsonParser;
    .restart local v9    # "st":Lcom/yopeso/lieferando/model/Stamp;
    :cond_3
    move-object v0, v3

    check-cast v0, Lcom/google/gson/Gson;

    move-object v10, v0

    invoke-static {v10, v11, v12}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_0

    .line 58
    .restart local v5    # "listType":Ljava/lang/reflect/Type;
    :cond_4
    check-cast v3, Lcom/google/gson/Gson;

    .end local v3    # "gson":Lcom/google/gson/Gson;
    invoke-static {v3, v10, v5}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_1

    .line 68
    .end local v2    # "element":Lcom/google/gson/JsonElement;
    .end local v4    # "jsonString":Ljava/lang/String;
    .end local v5    # "listType":Ljava/lang/reflect/Type;
    .end local v7    # "obj":Lcom/google/gson/JsonObject;
    .end local v8    # "parser":Lcom/google/gson/JsonParser;
    .end local v9    # "st":Lcom/yopeso/lieferando/model/Stamp;
    :catch_0
    move-exception v1

    .line 69
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 70
    new-instance v10, Lcom/android/volley/ParseError;

    invoke-direct {v10, v1}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v10}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v10

    goto :goto_2
.end method
