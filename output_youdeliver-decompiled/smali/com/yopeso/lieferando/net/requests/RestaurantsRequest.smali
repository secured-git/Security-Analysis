.class public Lcom/yopeso/lieferando/net/requests/RestaurantsRequest;
.super Lcom/yopeso/lieferando/net/requests/base/JsonRequest;
.source "RestaurantsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yopeso/lieferando/net/requests/base/JsonRequest",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/yopeso/lieferando/model/restaurant/Restaurant;",
        ">;>;"
    }
.end annotation


# instance fields
.field mStamps:Ljava/util/HashMap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/yopeso/lieferando/model/Stamp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/HashMap;Ljava/lang/String;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V
    .locals 6
    .param p2, "locationUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/yopeso/lieferando/model/Stamp;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/Restaurant;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "stamps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/yopeso/lieferando/model/Stamp;>;"
    .local p3, "listener":Lcom/yopeso/lieferando/net/requests/base/VolleyListener;, "Lcom/yopeso/lieferando/net/requests/base/VolleyListener<Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Restaurant;>;>;"
    const/4 v1, 0x0

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/SettingsContent;->getmCdnURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/%s/mobile/restaurants.json"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v1

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

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/net/requests/RestaurantsRequest;->mStamps:Ljava/util/HashMap;

    .line 53
    iput-object p1, p0, Lcom/yopeso/lieferando/net/requests/RestaurantsRequest;->mStamps:Ljava/util/HashMap;

    .line 54
    return-void
.end method


# virtual methods
.method protected parseResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 29
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
            "Lcom/yopeso/lieferando/model/restaurant/Restaurant;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 60
    :try_start_0
    new-instance v11, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/volley/NetworkResponse;->data:[B

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v11, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 62
    .local v11, "jsonString":Ljava/lang/String;
    new-instance v25, Lcom/google/gson/GsonBuilder;

    invoke-direct/range {v25 .. v25}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v26, Ljava/lang/Boolean;

    new-instance v27, Lcom/yopeso/lieferando/net/serializers/IntBooleanDeserializer;

    invoke-direct/range {v27 .. v27}, Lcom/yopeso/lieferando/net/serializers/IntBooleanDeserializer;-><init>()V

    invoke-virtual/range {v25 .. v27}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v25

    const-string v26, "HH:mm"

    invoke-virtual/range {v25 .. v26}, Lcom/google/gson/GsonBuilder;->setDateFormat(Ljava/lang/String;)Lcom/google/gson/GsonBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v8

    .line 63
    .local v8, "gson":Lcom/google/gson/Gson;
    new-instance v25, Lcom/yopeso/lieferando/net/requests/RestaurantsRequest$1;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/yopeso/lieferando/net/requests/RestaurantsRequest$1;-><init>(Lcom/yopeso/lieferando/net/requests/RestaurantsRequest;)V

    .line 64
    invoke-virtual/range {v25 .. v25}, Lcom/yopeso/lieferando/net/requests/RestaurantsRequest$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v12

    .line 65
    .local v12, "listType":Ljava/lang/reflect/Type;
    instance-of v0, v8, Lcom/google/gson/Gson;

    move/from16 v25, v0

    if-nez v25, :cond_1

    invoke-virtual {v8, v11, v12}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v24

    :goto_0
    check-cast v24, Ljava/util/ArrayList;

    .line 67
    .local v24, "restaurants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Restaurant;>;"
    new-instance v21, Lcom/google/gson/JsonParser;

    invoke-direct/range {v21 .. v21}, Lcom/google/gson/JsonParser;-><init>()V

    .line 68
    .local v21, "parser":Lcom/google/gson/JsonParser;
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    .line 69
    .local v7, "element":Lcom/google/gson/JsonElement;
    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v3

    .line 70
    .local v3, "array":Lcom/google/gson/JsonArray;
    new-instance v25, Lcom/yopeso/lieferando/net/requests/RestaurantsRequest$2;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/yopeso/lieferando/net/requests/RestaurantsRequest$2;-><init>(Lcom/yopeso/lieferando/net/requests/RestaurantsRequest;)V

    .line 71
    invoke-virtual/range {v25 .. v25}, Lcom/yopeso/lieferando/net/requests/RestaurantsRequest$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v18

    .line 73
    .local v18, "mapType":Ljava/lang/reflect/Type;
    new-instance v25, Lcom/yopeso/lieferando/net/requests/RestaurantsRequest$3;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/yopeso/lieferando/net/requests/RestaurantsRequest$3;-><init>(Lcom/yopeso/lieferando/net/requests/RestaurantsRequest;)V

    .line 74
    invoke-virtual/range {v25 .. v25}, Lcom/yopeso/lieferando/net/requests/RestaurantsRequest$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v17

    .line 75
    .local v17, "mapHolidaysType":Ljava/lang/reflect/Type;
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 76
    .local v5, "cuisines":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getmCategoriesFilterForLocation()Ljava/util/ArrayList;

    move-result-object v14

    .line 77
    .local v14, "mCategoriesFilterForLocation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 78
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getmCategoriesFilterForLocation_STATIC()Ljava/util/ArrayList;

    move-result-object v15

    .line 79
    .local v15, "mCategoriesFilterForLocation_STATIC":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 81
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getmCategoriesFilter_STATIC()Ljava/util/ArrayList;

    move-result-object v16

    .line 82
    .local v16, "mCategoriesFilter_STATIC":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;>;"
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCategoriesFilter()Ljava/util/ArrayList;

    move-result-object v13

    .line 84
    .local v13, "mCategoriesFilter":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-lt v10, v0, :cond_2

    .line 114
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_0
    :goto_2
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-nez v25, :cond_8

    .line 124
    invoke-static/range {p1 .. p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v25

    .line 128
    .end local v3    # "array":Lcom/google/gson/JsonArray;
    .end local v5    # "cuisines":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v7    # "element":Lcom/google/gson/JsonElement;
    .end local v8    # "gson":Lcom/google/gson/Gson;
    .end local v10    # "i":I
    .end local v11    # "jsonString":Ljava/lang/String;
    .end local v12    # "listType":Ljava/lang/reflect/Type;
    .end local v13    # "mCategoriesFilter":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;>;"
    .end local v14    # "mCategoriesFilterForLocation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;>;"
    .end local v15    # "mCategoriesFilterForLocation_STATIC":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;>;"
    .end local v16    # "mCategoriesFilter_STATIC":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;>;"
    .end local v17    # "mapHolidaysType":Ljava/lang/reflect/Type;
    .end local v18    # "mapType":Ljava/lang/reflect/Type;
    .end local v21    # "parser":Lcom/google/gson/JsonParser;
    .end local v24    # "restaurants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Restaurant;>;"
    :goto_3
    return-object v25

    .line 65
    .restart local v8    # "gson":Lcom/google/gson/Gson;
    .restart local v11    # "jsonString":Ljava/lang/String;
    .restart local v12    # "listType":Ljava/lang/reflect/Type;
    :cond_1
    move-object v0, v8

    check-cast v0, Lcom/google/gson/Gson;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-static {v0, v11, v12}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v24

    goto :goto_0

    .line 85
    .restart local v3    # "array":Lcom/google/gson/JsonArray;
    .restart local v5    # "cuisines":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v7    # "element":Lcom/google/gson/JsonElement;
    .restart local v10    # "i":I
    .restart local v13    # "mCategoriesFilter":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;>;"
    .restart local v14    # "mCategoriesFilterForLocation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;>;"
    .restart local v15    # "mCategoriesFilterForLocation_STATIC":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;>;"
    .restart local v16    # "mCategoriesFilter_STATIC":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;>;"
    .restart local v17    # "mapHolidaysType":Ljava/lang/reflect/Type;
    .restart local v18    # "mapType":Ljava/lang/reflect/Type;
    .restart local v21    # "parser":Lcom/google/gson/JsonParser;
    .restart local v24    # "restaurants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Restaurant;>;"
    :cond_2
    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .line 86
    .local v22, "restaurant":Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    const-class v25, Lcom/yopeso/lieferando/net/requests/RestaurantsRequest;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v25

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "Resto:"

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getmName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual/range {v22 .. v22}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getmWeekSchedule()Ljava/util/ArrayList;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_4
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-nez v26, :cond_5

    .line 91
    invoke-virtual/range {v22 .. v22}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getCategory()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_3

    .line 92
    invoke-virtual/range {v22 .. v22}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getCategory()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_3
    invoke-virtual {v3, v10}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v23

    check-cast v23, Lcom/google/gson/JsonObject;

    .line 96
    .local v23, "restaurantJson":Lcom/google/gson/JsonObject;
    const-string v25, "openingSpecial"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v26

    instance-of v0, v8, Lcom/google/gson/Gson;

    move/from16 v25, v0

    if-nez v25, :cond_6

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v20

    :goto_5
    check-cast v20, Ljava/util/Map;

    .line 97
    .local v20, "openingSpecial":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Opening;>;>;"
    const-string v25, "holidays"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v26

    instance-of v0, v8, Lcom/google/gson/Gson;

    move/from16 v25, v0

    if-nez v25, :cond_7

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v9

    :goto_6
    check-cast v9, Ljava/util/Map;

    .line 98
    .local v9, "holidays":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->setOpeningSpecial(Ljava/util/Map;)V

    .line 99
    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->setHolidays(Ljava/util/Map;)V

    .line 100
    sget-object v25, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen(Ljava/util/Date;)Z

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yopeso/lieferando/net/requests/RestaurantsRequest;->mStamps:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v22 .. v22}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yopeso/lieferando/net/requests/RestaurantsRequest;->mStamps:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v22 .. v22}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    if-eqz v25, :cond_4

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yopeso/lieferando/net/requests/RestaurantsRequest;->mStamps:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v22 .. v22}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/yopeso/lieferando/model/Stamp;

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->setStamp(Lcom/yopeso/lieferando/model/Stamp;)V

    .line 84
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 87
    .end local v9    # "holidays":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "openingSpecial":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Opening;>;>;"
    .end local v23    # "restaurantJson":Lcom/google/gson/JsonObject;
    :cond_5
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/yopeso/lieferando/model/restaurant/Opening;

    .line 88
    .local v19, "opening":Lcom/yopeso/lieferando/model/restaurant/Opening;
    const-class v26, Lcom/yopeso/lieferando/net/requests/RestaurantsRequest;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v26

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "Opening:"

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Lcom/yopeso/lieferando/model/restaurant/Opening;->getWeekDay()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " ,"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v19 .. v19}, Lcom/yopeso/lieferando/model/restaurant/Opening;->getOpenHours()Ljava/util/Date;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ":"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v19 .. v19}, Lcom/yopeso/lieferando/model/restaurant/Opening;->getCloseHours()Ljava/util/Date;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 126
    .end local v3    # "array":Lcom/google/gson/JsonArray;
    .end local v5    # "cuisines":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v7    # "element":Lcom/google/gson/JsonElement;
    .end local v8    # "gson":Lcom/google/gson/Gson;
    .end local v10    # "i":I
    .end local v11    # "jsonString":Ljava/lang/String;
    .end local v12    # "listType":Ljava/lang/reflect/Type;
    .end local v13    # "mCategoriesFilter":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;>;"
    .end local v14    # "mCategoriesFilterForLocation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;>;"
    .end local v15    # "mCategoriesFilterForLocation_STATIC":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;>;"
    .end local v16    # "mCategoriesFilter_STATIC":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;>;"
    .end local v17    # "mapHolidaysType":Ljava/lang/reflect/Type;
    .end local v18    # "mapType":Ljava/lang/reflect/Type;
    .end local v19    # "opening":Lcom/yopeso/lieferando/model/restaurant/Opening;
    .end local v21    # "parser":Lcom/google/gson/JsonParser;
    .end local v22    # "restaurant":Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    .end local v24    # "restaurants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Restaurant;>;"
    :catch_0
    move-exception v6

    .line 127
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v6}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 128
    new-instance v25, Lcom/android/volley/ParseError;

    move-object/from16 v0, v25

    invoke-direct {v0, v6}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static/range {v25 .. v25}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v25

    goto/16 :goto_3

    .line 96
    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v3    # "array":Lcom/google/gson/JsonArray;
    .restart local v5    # "cuisines":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v7    # "element":Lcom/google/gson/JsonElement;
    .restart local v8    # "gson":Lcom/google/gson/Gson;
    .restart local v10    # "i":I
    .restart local v11    # "jsonString":Ljava/lang/String;
    .restart local v12    # "listType":Ljava/lang/reflect/Type;
    .restart local v13    # "mCategoriesFilter":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;>;"
    .restart local v14    # "mCategoriesFilterForLocation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;>;"
    .restart local v15    # "mCategoriesFilterForLocation_STATIC":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;>;"
    .restart local v16    # "mCategoriesFilter_STATIC":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;>;"
    .restart local v17    # "mapHolidaysType":Ljava/lang/reflect/Type;
    .restart local v18    # "mapType":Ljava/lang/reflect/Type;
    .restart local v21    # "parser":Lcom/google/gson/JsonParser;
    .restart local v22    # "restaurant":Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    .restart local v23    # "restaurantJson":Lcom/google/gson/JsonObject;
    .restart local v24    # "restaurants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Restaurant;>;"
    :cond_6
    :try_start_1
    move-object v0, v8

    check-cast v0, Lcom/google/gson/Gson;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v20

    goto/16 :goto_5

    .line 97
    .restart local v20    # "openingSpecial":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Opening;>;>;"
    :cond_7
    move-object v0, v8

    check-cast v0, Lcom/google/gson/Gson;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v9

    goto/16 :goto_6

    .line 114
    .end local v20    # "openingSpecial":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Opening;>;>;"
    .end local v22    # "restaurant":Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    .end local v23    # "restaurantJson":Lcom/google/gson/JsonObject;
    :cond_8
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 115
    .local v4, "cuisine":Ljava/lang/String;
    const/4 v10, 0x0

    :goto_7
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v10, v0, :cond_0

    .line 116
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;

    invoke-virtual/range {v25 .. v25}, Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;->getName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_9

    .line 117
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 115
    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_7
.end method
