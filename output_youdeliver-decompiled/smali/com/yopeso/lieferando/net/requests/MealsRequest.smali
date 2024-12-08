.class public Lcom/yopeso/lieferando/net/requests/MealsRequest;
.super Lcom/yopeso/lieferando/net/requests/base/JsonRequest;
.source "MealsRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yopeso/lieferando/net/requests/MealsRequest$Additions;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yopeso/lieferando/net/requests/base/JsonRequest",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/yopeso/lieferando/model/meal/Meal;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mDishCategory:Lcom/yopeso/lieferando/model/meal/DishCategory;


# direct methods
.method public constructor <init>(Lcom/yopeso/lieferando/model/meal/DishCategory;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V
    .locals 6
    .param p1, "category"    # Lcom/yopeso/lieferando/model/meal/DishCategory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yopeso/lieferando/model/meal/DishCategory;",
            "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/meal/Meal;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p2, "listener":Lcom/yopeso/lieferando/net/requests/base/VolleyListener;, "Lcom/yopeso/lieferando/net/requests/base/VolleyListener<Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/meal/Meal;>;>;"
    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/DishCategory;->getMealsUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/net/requests/MealsRequest;->getMealURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p2

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/yopeso/lieferando/net/requests/base/JsonRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 35
    iput-object p1, p0, Lcom/yopeso/lieferando/net/requests/MealsRequest;->mDishCategory:Lcom/yopeso/lieferando/model/meal/DishCategory;

    .line 36
    return-void
.end method

.method private static getMealURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-static {p0}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    .end local p0    # "url":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "url":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/SettingsContent;->getmCdnURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method protected parseResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 24
    .param p1, "arg0"    # Lcom/android/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/meal/Meal;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 50
    :try_start_0
    new-instance v10, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/volley/NetworkResponse;->data:[B

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v10, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 51
    .local v10, "jsonString":Ljava/lang/String;
    const-class v19, Lcom/yopeso/lieferando/net/requests/MealsRequest;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "Meal:"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    new-instance v8, Lcom/google/gson/Gson;

    invoke-direct {v8}, Lcom/google/gson/Gson;-><init>()V

    .line 53
    .local v8, "gson":Lcom/google/gson/Gson;
    new-instance v19, Lcom/yopeso/lieferando/net/requests/MealsRequest$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/yopeso/lieferando/net/requests/MealsRequest$1;-><init>(Lcom/yopeso/lieferando/net/requests/MealsRequest;)V

    .line 54
    invoke-virtual/range {v19 .. v19}, Lcom/yopeso/lieferando/net/requests/MealsRequest$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v11

    .line 55
    .local v11, "listType":Ljava/lang/reflect/Type;
    instance-of v0, v8, Lcom/google/gson/Gson;

    move/from16 v19, v0

    if-nez v19, :cond_0

    invoke-virtual {v8, v10, v11}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v15

    :goto_0
    check-cast v15, Ljava/util/ArrayList;

    .line 57
    .local v15, "meals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/meal/Meal;>;"
    new-instance v17, Lcom/google/gson/JsonParser;

    invoke-direct/range {v17 .. v17}, Lcom/google/gson/JsonParser;-><init>()V

    .line 58
    .local v17, "parser":Lcom/google/gson/JsonParser;
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    .line 59
    .local v7, "element":Lcom/google/gson/JsonElement;
    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v5

    .line 60
    .local v5, "array":Lcom/google/gson/JsonArray;
    new-instance v19, Lcom/yopeso/lieferando/net/requests/MealsRequest$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/yopeso/lieferando/net/requests/MealsRequest$2;-><init>(Lcom/yopeso/lieferando/net/requests/MealsRequest;)V

    .line 61
    invoke-virtual/range {v19 .. v19}, Lcom/yopeso/lieferando/net/requests/MealsRequest$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v12

    .line 62
    .local v12, "mapType":Ljava/lang/reflect/Type;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-lt v9, v0, :cond_1

    .line 81
    invoke-static/range {p1 .. p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v15, v0}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v19

    .line 84
    .end local v5    # "array":Lcom/google/gson/JsonArray;
    .end local v7    # "element":Lcom/google/gson/JsonElement;
    .end local v8    # "gson":Lcom/google/gson/Gson;
    .end local v9    # "i":I
    .end local v10    # "jsonString":Ljava/lang/String;
    .end local v11    # "listType":Ljava/lang/reflect/Type;
    .end local v12    # "mapType":Ljava/lang/reflect/Type;
    .end local v15    # "meals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/meal/Meal;>;"
    .end local v17    # "parser":Lcom/google/gson/JsonParser;
    :goto_2
    return-object v19

    .line 55
    .restart local v8    # "gson":Lcom/google/gson/Gson;
    .restart local v10    # "jsonString":Ljava/lang/String;
    .restart local v11    # "listType":Ljava/lang/reflect/Type;
    :cond_0
    move-object v0, v8

    check-cast v0, Lcom/google/gson/Gson;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v10, v11}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v15

    goto :goto_0

    .line 63
    .restart local v5    # "array":Lcom/google/gson/JsonArray;
    .restart local v7    # "element":Lcom/google/gson/JsonElement;
    .restart local v9    # "i":I
    .restart local v12    # "mapType":Ljava/lang/reflect/Type;
    .restart local v15    # "meals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/meal/Meal;>;"
    .restart local v17    # "parser":Lcom/google/gson/JsonParser;
    :cond_1
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/yopeso/lieferando/model/meal/Meal;

    .line 64
    .local v13, "meal":Lcom/yopeso/lieferando/model/meal/Meal;
    invoke-virtual {v5, v9}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v14

    check-cast v14, Lcom/google/gson/JsonObject;

    .line 65
    .local v14, "mealJson":Lcom/google/gson/JsonObject;
    const-string v19, "additions"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v20

    instance-of v0, v8, Lcom/google/gson/Gson;

    move/from16 v19, v0

    if-nez v19, :cond_3

    move-object/from16 v0, v20

    invoke-virtual {v8, v0, v12}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    :goto_3
    check-cast v3, Ljava/util/Map;

    .line 67
    .local v3, "additions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/yopeso/lieferando/net/requests/MealsRequest$Additions;>;"
    invoke-virtual {v13}, Lcom/yopeso/lieferando/model/meal/Meal;->getSizes()Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_4

    .line 78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yopeso/lieferando/net/requests/MealsRequest;->mDishCategory:Lcom/yopeso/lieferando/model/meal/DishCategory;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/yopeso/lieferando/model/meal/Meal;->setDish(Lcom/yopeso/lieferando/model/meal/DishCategory;)V

    .line 62
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 65
    .end local v3    # "additions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/yopeso/lieferando/net/requests/MealsRequest$Additions;>;"
    :cond_3
    move-object v0, v8

    check-cast v0, Lcom/google/gson/Gson;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v12}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_3

    .line 67
    .restart local v3    # "additions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/yopeso/lieferando/net/requests/MealsRequest$Additions;>;"
    :cond_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/yopeso/lieferando/model/meal/Size;

    .line 68
    .local v18, "size":Lcom/yopeso/lieferando/model/meal/Size;
    invoke-virtual/range {v18 .. v18}, Lcom/yopeso/lieferando/model/meal/Size;->getHasSpecials()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 69
    invoke-virtual/range {v18 .. v18}, Lcom/yopeso/lieferando/model/meal/Size;->getAdditionsGroups()Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_5
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_2

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;

    .line 70
    .local v16, "option":Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;
    invoke-virtual/range {v16 .. v16}, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->getAdditions()Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_4
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_5

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yopeso/lieferando/model/meal/Addition;

    .line 71
    .local v4, "alternative":Lcom/yopeso/lieferando/model/meal/Addition;
    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/meal/Addition;->getId()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/net/requests/MealsRequest$Additions;

    .line 72
    .local v2, "addition":Lcom/yopeso/lieferando/net/requests/MealsRequest$Additions;
    iget-object v0, v2, Lcom/yopeso/lieferando/net/requests/MealsRequest$Additions;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/yopeso/lieferando/model/meal/Addition;->setName(Ljava/lang/String;)V

    .line 73
    iget v0, v2, Lcom/yopeso/lieferando/net/requests/MealsRequest$Additions;->maxAmount:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/yopeso/lieferando/model/meal/Addition;->setMaxAmmount(I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 82
    .end local v2    # "addition":Lcom/yopeso/lieferando/net/requests/MealsRequest$Additions;
    .end local v3    # "additions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/yopeso/lieferando/net/requests/MealsRequest$Additions;>;"
    .end local v4    # "alternative":Lcom/yopeso/lieferando/model/meal/Addition;
    .end local v5    # "array":Lcom/google/gson/JsonArray;
    .end local v7    # "element":Lcom/google/gson/JsonElement;
    .end local v8    # "gson":Lcom/google/gson/Gson;
    .end local v9    # "i":I
    .end local v10    # "jsonString":Ljava/lang/String;
    .end local v11    # "listType":Ljava/lang/reflect/Type;
    .end local v12    # "mapType":Ljava/lang/reflect/Type;
    .end local v13    # "meal":Lcom/yopeso/lieferando/model/meal/Meal;
    .end local v14    # "mealJson":Lcom/google/gson/JsonObject;
    .end local v15    # "meals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/meal/Meal;>;"
    .end local v16    # "option":Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;
    .end local v17    # "parser":Lcom/google/gson/JsonParser;
    .end local v18    # "size":Lcom/yopeso/lieferando/model/meal/Size;
    :catch_0
    move-exception v6

    .line 83
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v6}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 84
    new-instance v19, Lcom/android/volley/ParseError;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static/range {v19 .. v19}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v19

    goto/16 :goto_2
.end method
