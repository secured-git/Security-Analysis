.class public Lcom/yopeso/lieferando/net/requests/RestaurantsRequestPremium;
.super Lcom/yopeso/lieferando/net/requests/base/JsonRequest;
.source "RestaurantsRequestPremium.java"


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


# instance fields
.field lieferandoApplication:Lcom/yopeso/lieferando/LieferandoApplication;

.field locations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/LocationSuggestion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yopeso/lieferando/LieferandoApplication;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V
    .locals 6
    .param p1, "lieferandoApplication"    # Lcom/yopeso/lieferando/LieferandoApplication;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yopeso/lieferando/LieferandoApplication;",
            "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/LocationSuggestion;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p2, "listener":Lcom/yopeso/lieferando/net/requests/base/VolleyListener;, "Lcom/yopeso/lieferando/net/requests/base/VolleyListener<Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/LocationSuggestion;>;>;"
    const/4 v1, 0x0

    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->getPremiumRestaurantsURL()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p2

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/yopeso/lieferando/net/requests/base/JsonRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/net/requests/RestaurantsRequestPremium;->locations:Ljava/util/ArrayList;

    .line 41
    iput-object p1, p0, Lcom/yopeso/lieferando/net/requests/RestaurantsRequestPremium;->lieferandoApplication:Lcom/yopeso/lieferando/LieferandoApplication;

    .line 42
    const-class v0, Lcom/yopeso/lieferando/net/requests/RestaurantsRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RestaurantsRequestPremium"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void
.end method


# virtual methods
.method protected parseResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 21
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
    .line 47
    const-class v18, Lcom/yopeso/lieferando/net/requests/RestaurantsRequest;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "RestaurantsRequestPremium parseResponse"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :try_start_0
    new-instance v10, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/volley/NetworkResponse;->data:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v10, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 51
    .local v10, "jsonString":Ljava/lang/String;
    new-instance v18, Lcom/google/gson/GsonBuilder;

    invoke-direct/range {v18 .. v18}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v19, Ljava/lang/Boolean;

    new-instance v20, Lcom/yopeso/lieferando/net/serializers/IntBooleanDeserializer;

    invoke-direct/range {v20 .. v20}, Lcom/yopeso/lieferando/net/serializers/IntBooleanDeserializer;-><init>()V

    invoke-virtual/range {v18 .. v20}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v18

    const-string v19, "HH:mm"

    invoke-virtual/range {v18 .. v19}, Lcom/google/gson/GsonBuilder;->setDateFormat(Ljava/lang/String;)Lcom/google/gson/GsonBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v8

    .line 52
    .local v8, "gson":Lcom/google/gson/Gson;
    new-instance v18, Lcom/yopeso/lieferando/net/requests/RestaurantsRequestPremium$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/yopeso/lieferando/net/requests/RestaurantsRequestPremium$1;-><init>(Lcom/yopeso/lieferando/net/requests/RestaurantsRequestPremium;)V

    .line 53
    invoke-virtual/range {v18 .. v18}, Lcom/yopeso/lieferando/net/requests/RestaurantsRequestPremium$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v11

    .line 54
    .local v11, "listType":Ljava/lang/reflect/Type;
    instance-of v0, v8, Lcom/google/gson/Gson;

    move/from16 v18, v0

    if-nez v18, :cond_0

    invoke-virtual {v8, v10, v11}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v17

    :goto_0
    check-cast v17, Ljava/util/ArrayList;

    .line 56
    .local v17, "restaurants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Restaurant;>;"
    new-instance v14, Lcom/google/gson/JsonParser;

    invoke-direct {v14}, Lcom/google/gson/JsonParser;-><init>()V

    .line 57
    .local v14, "parser":Lcom/google/gson/JsonParser;
    invoke-virtual {v14, v10}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    .line 58
    .local v7, "element":Lcom/google/gson/JsonElement;
    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v4

    .line 65
    .local v4, "array":Lcom/google/gson/JsonArray;
    new-instance v18, Lcom/yopeso/lieferando/net/requests/RestaurantsRequestPremium$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/yopeso/lieferando/net/requests/RestaurantsRequestPremium$2;-><init>(Lcom/yopeso/lieferando/net/requests/RestaurantsRequestPremium;)V

    .line 66
    invoke-virtual/range {v18 .. v18}, Lcom/yopeso/lieferando/net/requests/RestaurantsRequestPremium$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v13

    .line 68
    .local v13, "mapAreasType":Ljava/lang/reflect/Type;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-lt v9, v0, :cond_1

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yopeso/lieferando/net/requests/RestaurantsRequestPremium;->locations:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    new-instance v19, Lcom/yopeso/lieferando/net/requests/RestaurantsRequestPremium$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/yopeso/lieferando/net/requests/RestaurantsRequestPremium$3;-><init>(Lcom/yopeso/lieferando/net/requests/RestaurantsRequestPremium;)V

    invoke-static/range {v18 .. v19}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 101
    const-class v18, Lcom/yopeso/lieferando/net/requests/RestaurantsRequest;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "RestaurantsRequestPremium return:"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yopeso/lieferando/net/requests/RestaurantsRequestPremium;->locations:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yopeso/lieferando/net/requests/RestaurantsRequestPremium;->lieferandoApplication:Lcom/yopeso/lieferando/LieferandoApplication;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yopeso/lieferando/net/requests/RestaurantsRequestPremium;->locations:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/yopeso/lieferando/LieferandoApplication;->setmAreas(Ljava/util/ArrayList;)V

    .line 103
    const/16 v18, 0x0

    invoke-static/range {p1 .. p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v18

    .line 108
    .end local v4    # "array":Lcom/google/gson/JsonArray;
    .end local v7    # "element":Lcom/google/gson/JsonElement;
    .end local v8    # "gson":Lcom/google/gson/Gson;
    .end local v9    # "i":I
    .end local v10    # "jsonString":Ljava/lang/String;
    .end local v11    # "listType":Ljava/lang/reflect/Type;
    .end local v13    # "mapAreasType":Ljava/lang/reflect/Type;
    .end local v14    # "parser":Lcom/google/gson/JsonParser;
    .end local v17    # "restaurants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Restaurant;>;"
    :goto_2
    return-object v18

    .line 54
    .restart local v8    # "gson":Lcom/google/gson/Gson;
    .restart local v10    # "jsonString":Ljava/lang/String;
    .restart local v11    # "listType":Ljava/lang/reflect/Type;
    :cond_0
    move-object v0, v8

    check-cast v0, Lcom/google/gson/Gson;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v10, v11}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v17

    goto :goto_0

    .line 70
    .restart local v4    # "array":Lcom/google/gson/JsonArray;
    .restart local v7    # "element":Lcom/google/gson/JsonElement;
    .restart local v9    # "i":I
    .restart local v13    # "mapAreasType":Ljava/lang/reflect/Type;
    .restart local v14    # "parser":Lcom/google/gson/JsonParser;
    .restart local v17    # "restaurants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Restaurant;>;"
    :cond_1
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .line 72
    .local v15, "restaurant":Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    invoke-virtual {v4, v9}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v16

    check-cast v16, Lcom/google/gson/JsonObject;

    .line 75
    .local v16, "restaurantJson":Lcom/google/gson/JsonObject;
    const-string v18, "areas"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 76
    .local v3, "areasJson":Lcom/google/gson/JsonElement;
    instance-of v0, v8, Lcom/google/gson/Gson;

    move/from16 v18, v0

    if-nez v18, :cond_3

    invoke-virtual {v8, v3, v13}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    :goto_3
    check-cast v2, Ljava/util/ArrayList;

    .line 77
    .local v2, "areasForResto":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;>;"
    if-eqz v2, :cond_2

    .line 78
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_4

    .line 68
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 76
    .end local v2    # "areasForResto":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;>;"
    :cond_3
    move-object v0, v8

    check-cast v0, Lcom/google/gson/Gson;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v3, v13}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    .line 78
    .restart local v2    # "areasForResto":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;>;"
    :cond_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;

    .line 80
    .local v5, "deliveryArea":Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;
    new-instance v12, Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-direct {v12}, Lcom/yopeso/lieferando/model/LocationSuggestion;-><init>()V

    .line 81
    .local v12, "ls":Lcom/yopeso/lieferando/model/LocationSuggestion;
    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;->getCityId()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/yopeso/lieferando/model/LocationSuggestion;->setCityId(I)V

    .line 82
    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;->getmLocationName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/yopeso/lieferando/model/LocationSuggestion;->setName(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;->getPlz()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/yopeso/lieferando/model/LocationSuggestion;->setPlz(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v15}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getServiceUrl()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/yopeso/lieferando/model/LocationSuggestion;->setLocationUrl(Ljava/lang/String;)V

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yopeso/lieferando/net/requests/RestaurantsRequestPremium;->locations:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 105
    .end local v2    # "areasForResto":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;>;"
    .end local v3    # "areasJson":Lcom/google/gson/JsonElement;
    .end local v4    # "array":Lcom/google/gson/JsonArray;
    .end local v5    # "deliveryArea":Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;
    .end local v7    # "element":Lcom/google/gson/JsonElement;
    .end local v8    # "gson":Lcom/google/gson/Gson;
    .end local v9    # "i":I
    .end local v10    # "jsonString":Ljava/lang/String;
    .end local v11    # "listType":Ljava/lang/reflect/Type;
    .end local v12    # "ls":Lcom/yopeso/lieferando/model/LocationSuggestion;
    .end local v13    # "mapAreasType":Ljava/lang/reflect/Type;
    .end local v14    # "parser":Lcom/google/gson/JsonParser;
    .end local v15    # "restaurant":Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    .end local v16    # "restaurantJson":Lcom/google/gson/JsonObject;
    .end local v17    # "restaurants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Restaurant;>;"
    :catch_0
    move-exception v6

    .line 106
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v6}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 107
    const-class v18, Lcom/yopeso/lieferando/net/requests/RestaurantsRequest;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "RestaurantsRequestPremium UnsupportedEncodingException:"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yopeso/lieferando/net/requests/RestaurantsRequestPremium;->locations:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v18, Lcom/android/volley/ParseError;

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static/range {v18 .. v18}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v18

    goto/16 :goto_2
.end method
