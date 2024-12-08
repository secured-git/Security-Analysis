.class public Lcom/yopeso/lieferando/net/requests/RestaurantInfoRequest;
.super Lcom/yopeso/lieferando/net/requests/base/JsonRequest;
.source "RestaurantInfoRequest.java"


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
.field private restaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;


# direct methods
.method public constructor <init>(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V
    .locals 6
    .param p1, "r"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;
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

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/SettingsContent;->getmServerURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/restaurant/%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    .line 36
    iput-object p1, p0, Lcom/yopeso/lieferando/net/requests/RestaurantInfoRequest;->restaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .line 37
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
            "Lcom/yopeso/lieferando/model/restaurant/Restaurant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    :try_start_0
    new-instance v5, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/volley/NetworkResponse;->data:[B

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v14}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v5, v13, v14}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 43
    .local v5, "jsonString":Ljava/lang/String;
    new-instance v13, Lcom/google/gson/GsonBuilder;

    invoke-direct {v13}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v14, Ljava/lang/Boolean;

    new-instance v15, Lcom/yopeso/lieferando/net/serializers/IntBooleanDeserializer;

    invoke-direct {v15}, Lcom/yopeso/lieferando/net/serializers/IntBooleanDeserializer;-><init>()V

    invoke-virtual {v13, v14, v15}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v13

    const-string v14, "HH:mm"

    invoke-virtual {v13, v14}, Lcom/google/gson/GsonBuilder;->setDateFormat(Ljava/lang/String;)Lcom/google/gson/GsonBuilder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v3

    .line 53
    .local v3, "gson":Lcom/google/gson/Gson;
    new-instance v12, Lcom/google/gson/JsonParser;

    invoke-direct {v12}, Lcom/google/gson/JsonParser;-><init>()V

    .line 54
    .local v12, "parser":Lcom/google/gson/JsonParser;
    invoke-virtual {v12, v5}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 55
    .local v2, "element":Lcom/google/gson/JsonElement;
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v8

    .line 57
    .local v8, "obj":Lcom/google/gson/JsonObject;
    new-instance v13, Lcom/yopeso/lieferando/net/requests/RestaurantInfoRequest$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/yopeso/lieferando/net/requests/RestaurantInfoRequest$1;-><init>(Lcom/yopeso/lieferando/net/requests/RestaurantInfoRequest;)V

    .line 58
    invoke-virtual {v13}, Lcom/yopeso/lieferando/net/requests/RestaurantInfoRequest$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v7

    .line 59
    .local v7, "mapType":Ljava/lang/reflect/Type;
    new-instance v13, Lcom/yopeso/lieferando/net/requests/RestaurantInfoRequest$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/yopeso/lieferando/net/requests/RestaurantInfoRequest$2;-><init>(Lcom/yopeso/lieferando/net/requests/RestaurantInfoRequest;)V

    .line 60
    invoke-virtual {v13}, Lcom/yopeso/lieferando/net/requests/RestaurantInfoRequest$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v6

    .line 61
    .local v6, "mapHolidaysType":Ljava/lang/reflect/Type;
    new-instance v13, Lcom/yopeso/lieferando/net/requests/RestaurantInfoRequest$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/yopeso/lieferando/net/requests/RestaurantInfoRequest$3;-><init>(Lcom/yopeso/lieferando/net/requests/RestaurantInfoRequest;)V

    .line 62
    invoke-virtual {v13}, Lcom/yopeso/lieferando/net/requests/RestaurantInfoRequest$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v11

    .line 64
    .local v11, "openingsType":Ljava/lang/reflect/Type;
    const-string v13, "openings"

    invoke-virtual {v8, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v14

    instance-of v13, v3, Lcom/google/gson/Gson;

    if-nez v13, :cond_0

    invoke-virtual {v3, v14, v11}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v10

    :goto_0
    check-cast v10, Ljava/util/ArrayList;

    .line 65
    .local v10, "openings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Opening;>;"
    const-string v13, "openingSpecial"

    invoke-virtual {v8, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v14

    instance-of v13, v3, Lcom/google/gson/Gson;

    if-nez v13, :cond_1

    invoke-virtual {v3, v14, v7}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v9

    :goto_1
    check-cast v9, Ljava/util/Map;

    .line 66
    .local v9, "openingSpecial":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Opening;>;>;"
    const-string v13, "holidays"

    invoke-virtual {v8, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v13

    instance-of v14, v3, Lcom/google/gson/Gson;

    if-nez v14, :cond_2

    invoke-virtual {v3, v13, v6}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    .end local v3    # "gson":Lcom/google/gson/Gson;
    :goto_2
    check-cast v4, Ljava/util/Map;

    .line 69
    .local v4, "holidays":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/yopeso/lieferando/net/requests/RestaurantInfoRequest;->restaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v13}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->clearScheduleMerged()V

    .line 70
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/yopeso/lieferando/net/requests/RestaurantInfoRequest;->restaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v13, v10}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->setOpenings(Ljava/util/ArrayList;)V

    .line 71
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/yopeso/lieferando/net/requests/RestaurantInfoRequest;->restaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v13, v9}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->setOpeningSpecial(Ljava/util/Map;)V

    .line 72
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/yopeso/lieferando/net/requests/RestaurantInfoRequest;->restaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v13, v4}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->setHolidays(Ljava/util/Map;)V

    .line 74
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/yopeso/lieferando/net/requests/RestaurantInfoRequest;->restaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    sget-object v14, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {v13, v14}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen(Ljava/util/Date;)Z

    .line 76
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/yopeso/lieferando/net/requests/RestaurantInfoRequest;->restaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-static/range {p1 .. p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v13

    .line 80
    .end local v2    # "element":Lcom/google/gson/JsonElement;
    .end local v4    # "holidays":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "jsonString":Ljava/lang/String;
    .end local v6    # "mapHolidaysType":Ljava/lang/reflect/Type;
    .end local v7    # "mapType":Ljava/lang/reflect/Type;
    .end local v8    # "obj":Lcom/google/gson/JsonObject;
    .end local v9    # "openingSpecial":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Opening;>;>;"
    .end local v10    # "openings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Opening;>;"
    .end local v11    # "openingsType":Ljava/lang/reflect/Type;
    .end local v12    # "parser":Lcom/google/gson/JsonParser;
    :goto_3
    return-object v13

    .line 64
    .restart local v2    # "element":Lcom/google/gson/JsonElement;
    .restart local v3    # "gson":Lcom/google/gson/Gson;
    .restart local v5    # "jsonString":Ljava/lang/String;
    .restart local v6    # "mapHolidaysType":Ljava/lang/reflect/Type;
    .restart local v7    # "mapType":Ljava/lang/reflect/Type;
    .restart local v8    # "obj":Lcom/google/gson/JsonObject;
    .restart local v11    # "openingsType":Ljava/lang/reflect/Type;
    .restart local v12    # "parser":Lcom/google/gson/JsonParser;
    :cond_0
    move-object v0, v3

    check-cast v0, Lcom/google/gson/Gson;

    move-object v13, v0

    invoke-static {v13, v14, v11}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_0

    .line 65
    .restart local v10    # "openings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Opening;>;"
    :cond_1
    move-object v0, v3

    check-cast v0, Lcom/google/gson/Gson;

    move-object v13, v0

    invoke-static {v13, v14, v7}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_1

    .line 66
    .restart local v9    # "openingSpecial":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Opening;>;>;"
    :cond_2
    check-cast v3, Lcom/google/gson/Gson;

    .end local v3    # "gson":Lcom/google/gson/Gson;
    invoke-static {v3, v13, v6}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_2

    .line 78
    .end local v2    # "element":Lcom/google/gson/JsonElement;
    .end local v5    # "jsonString":Ljava/lang/String;
    .end local v6    # "mapHolidaysType":Ljava/lang/reflect/Type;
    .end local v7    # "mapType":Ljava/lang/reflect/Type;
    .end local v8    # "obj":Lcom/google/gson/JsonObject;
    .end local v9    # "openingSpecial":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Opening;>;>;"
    .end local v10    # "openings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Opening;>;"
    .end local v11    # "openingsType":Ljava/lang/reflect/Type;
    .end local v12    # "parser":Lcom/google/gson/JsonParser;
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 80
    new-instance v13, Lcom/android/volley/ParseError;

    invoke-direct {v13, v1}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v13}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v13

    goto :goto_3
.end method
