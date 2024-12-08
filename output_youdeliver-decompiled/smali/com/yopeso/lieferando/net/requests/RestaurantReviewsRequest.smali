.class public Lcom/yopeso/lieferando/net/requests/RestaurantReviewsRequest;
.super Lcom/yopeso/lieferando/net/requests/base/JsonRequest;
.source "RestaurantReviewsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yopeso/lieferando/net/requests/base/JsonRequest",
        "<",
        "Lcom/yopeso/lieferando/model/restaurant/Reviews;",
        ">;"
    }
.end annotation


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
            "Lcom/yopeso/lieferando/model/restaurant/Reviews;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "listener":Lcom/yopeso/lieferando/net/requests/base/VolleyListener;, "Lcom/yopeso/lieferando/net/requests/base/VolleyListener<Lcom/yopeso/lieferando/model/restaurant/Reviews;>;"
    const/4 v1, 0x0

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/SettingsContent;->getmCdnURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/%s/mobile/ratings/1.json"

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

    .line 46
    return-void
.end method


# virtual methods
.method protected parseResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 20
    .param p1, "response"    # Lcom/android/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/Reviews;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    invoke-static/range {p1 .. p1}, Lcom/yopeso/lieferando/net/requests/base/ApiResponse;->isValid(Lcom/android/volley/NetworkResponse;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 51
    new-instance v14, Lcom/yopeso/lieferando/net/requests/base/ApiError;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Lcom/yopeso/lieferando/net/requests/base/ApiError;-><init>(Lcom/android/volley/NetworkResponse;)V

    invoke-static {v14}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v14

    .line 122
    :goto_0
    return-object v14

    .line 55
    :cond_0
    :try_start_0
    new-instance v6, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/volley/NetworkResponse;->data:[B

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v15}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v6, v14, v15}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 56
    .local v6, "jsonString":Ljava/lang/String;
    new-instance v14, Lcom/google/gson/GsonBuilder;

    invoke-direct {v14}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v14}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v5

    .line 58
    .local v5, "gson":Lcom/google/gson/Gson;
    const-class v14, Lcom/yopeso/lieferando/model/restaurant/Reviews;

    instance-of v15, v5, Lcom/google/gson/Gson;

    if-nez v15, :cond_3

    invoke-virtual {v5, v6, v14}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    .end local v5    # "gson":Lcom/google/gson/Gson;
    :goto_1
    check-cast v12, Lcom/yopeso/lieferando/model/restaurant/Reviews;

    .line 60
    .local v12, "review":Lcom/yopeso/lieferando/model/restaurant/Reviews;
    new-instance v10, Lcom/google/gson/JsonParser;

    invoke-direct {v10}, Lcom/google/gson/JsonParser;-><init>()V

    .line 61
    .local v10, "parser":Lcom/google/gson/JsonParser;
    invoke-virtual {v10, v6}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    .line 62
    .local v4, "element":Lcom/google/gson/JsonElement;
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v9

    .line 65
    .local v9, "obj":Lcom/google/gson/JsonObject;
    const-string v14, "stats"

    invoke-virtual {v9, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v13

    .line 66
    .local v13, "stats":Lcom/google/gson/JsonObject;
    const-string v14, "ratingQualityAverage"

    invoke-virtual {v13, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v14

    invoke-virtual {v12, v14}, Lcom/yopeso/lieferando/model/restaurant/Reviews;->setFoodStars(F)V

    .line 67
    const-string v14, "ratingDeliveryAverage"

    invoke-virtual {v13, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v14

    invoke-virtual {v12, v14}, Lcom/yopeso/lieferando/model/restaurant/Reviews;->setDeliveryStars(F)V

    .line 69
    const/4 v14, 0x5

    new-array v8, v14, [I

    .line 71
    .local v8, "mFoodRatings":[I
    invoke-virtual {v12}, Lcom/yopeso/lieferando/model/restaurant/Reviews;->getRatingCount()I

    move-result v14

    if-eqz v14, :cond_4

    .line 72
    const/4 v14, 0x0

    const-string v15, "ratingQuality1"

    invoke-virtual {v13, v15}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v15

    int-to-double v0, v15

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    mul-double v16, v16, v18

    invoke-virtual {v12}, Lcom/yopeso/lieferando/model/restaurant/Reviews;->getRatingCount()I

    move-result v15

    int-to-double v0, v15

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Lcom/yopeso/lieferando/util/NumberUtils;->roundUp(D)I

    move-result v15

    aput v15, v8, v14

    .line 73
    const/4 v14, 0x1

    const-string v15, "ratingQuality2"

    invoke-virtual {v13, v15}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v15

    int-to-double v0, v15

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    mul-double v16, v16, v18

    invoke-virtual {v12}, Lcom/yopeso/lieferando/model/restaurant/Reviews;->getRatingCount()I

    move-result v15

    int-to-double v0, v15

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Lcom/yopeso/lieferando/util/NumberUtils;->roundUp(D)I

    move-result v15

    aput v15, v8, v14

    .line 74
    const/4 v14, 0x2

    const-string v15, "ratingQuality3"

    invoke-virtual {v13, v15}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v15

    int-to-double v0, v15

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    mul-double v16, v16, v18

    invoke-virtual {v12}, Lcom/yopeso/lieferando/model/restaurant/Reviews;->getRatingCount()I

    move-result v15

    int-to-double v0, v15

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Lcom/yopeso/lieferando/util/NumberUtils;->roundUp(D)I

    move-result v15

    aput v15, v8, v14

    .line 75
    const/4 v14, 0x3

    const-string v15, "ratingQuality4"

    invoke-virtual {v13, v15}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v15

    int-to-double v0, v15

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    mul-double v16, v16, v18

    invoke-virtual {v12}, Lcom/yopeso/lieferando/model/restaurant/Reviews;->getRatingCount()I

    move-result v15

    int-to-double v0, v15

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Lcom/yopeso/lieferando/util/NumberUtils;->roundUp(D)I

    move-result v15

    aput v15, v8, v14

    .line 76
    const/4 v14, 0x4

    const-string v15, "ratingQuality5"

    invoke-virtual {v13, v15}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v15

    int-to-double v0, v15

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    mul-double v16, v16, v18

    invoke-virtual {v12}, Lcom/yopeso/lieferando/model/restaurant/Reviews;->getRatingCount()I

    move-result v15

    int-to-double v0, v15

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Lcom/yopeso/lieferando/util/NumberUtils;->roundUp(D)I

    move-result v15

    aput v15, v8, v14

    .line 85
    :goto_2
    invoke-virtual {v12, v8}, Lcom/yopeso/lieferando/model/restaurant/Reviews;->setFoodRatings([I)V

    .line 87
    const/4 v14, 0x5

    new-array v7, v14, [I

    .line 88
    .local v7, "mDeliveryRatings":[I
    invoke-virtual {v12}, Lcom/yopeso/lieferando/model/restaurant/Reviews;->getRatingCount()I

    move-result v14

    if-eqz v14, :cond_5

    .line 89
    const/4 v14, 0x0

    const-string v15, "ratingDelivery1"

    invoke-virtual {v13, v15}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v15

    int-to-double v0, v15

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    mul-double v16, v16, v18

    invoke-virtual {v12}, Lcom/yopeso/lieferando/model/restaurant/Reviews;->getRatingCount()I

    move-result v15

    int-to-double v0, v15

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Lcom/yopeso/lieferando/util/NumberUtils;->roundUp(D)I

    move-result v15

    aput v15, v7, v14

    .line 90
    const/4 v14, 0x1

    const-string v15, "ratingDelivery2"

    invoke-virtual {v13, v15}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v15

    int-to-double v0, v15

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    mul-double v16, v16, v18

    invoke-virtual {v12}, Lcom/yopeso/lieferando/model/restaurant/Reviews;->getRatingCount()I

    move-result v15

    int-to-double v0, v15

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Lcom/yopeso/lieferando/util/NumberUtils;->roundUp(D)I

    move-result v15

    aput v15, v7, v14

    .line 91
    const/4 v14, 0x2

    const-string v15, "ratingDelivery3"

    invoke-virtual {v13, v15}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v15

    int-to-double v0, v15

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    mul-double v16, v16, v18

    invoke-virtual {v12}, Lcom/yopeso/lieferando/model/restaurant/Reviews;->getRatingCount()I

    move-result v15

    int-to-double v0, v15

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Lcom/yopeso/lieferando/util/NumberUtils;->roundUp(D)I

    move-result v15

    aput v15, v7, v14

    .line 92
    const/4 v14, 0x3

    const-string v15, "ratingDelivery4"

    invoke-virtual {v13, v15}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v15

    int-to-double v0, v15

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    mul-double v16, v16, v18

    invoke-virtual {v12}, Lcom/yopeso/lieferando/model/restaurant/Reviews;->getRatingCount()I

    move-result v15

    int-to-double v0, v15

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Lcom/yopeso/lieferando/util/NumberUtils;->roundUp(D)I

    move-result v15

    aput v15, v7, v14

    .line 93
    const/4 v14, 0x4

    const-string v15, "ratingDelivery5"

    invoke-virtual {v13, v15}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v15

    int-to-double v0, v15

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    mul-double v16, v16, v18

    invoke-virtual {v12}, Lcom/yopeso/lieferando/model/restaurant/Reviews;->getRatingCount()I

    move-result v15

    int-to-double v0, v15

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Lcom/yopeso/lieferando/util/NumberUtils;->roundUp(D)I

    move-result v15

    aput v15, v7, v14

    .line 102
    :goto_3
    invoke-virtual {v12, v7}, Lcom/yopeso/lieferando/model/restaurant/Reviews;->setDeliveryRatings([I)V

    .line 108
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v11, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Comment;>;"
    invoke-virtual {v12}, Lcom/yopeso/lieferando/model/restaurant/Reviews;->getComments()Ljava/util/ArrayList;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 110
    invoke-virtual {v12}, Lcom/yopeso/lieferando/model/restaurant/Reviews;->getComments()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_1
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_6

    .line 116
    :cond_2
    invoke-virtual {v12, v11}, Lcom/yopeso/lieferando/model/restaurant/Reviews;->setComments(Ljava/util/ArrayList;)V

    .line 119
    invoke-static/range {p1 .. p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v14

    goto/16 :goto_0

    .line 58
    .end local v4    # "element":Lcom/google/gson/JsonElement;
    .end local v7    # "mDeliveryRatings":[I
    .end local v8    # "mFoodRatings":[I
    .end local v9    # "obj":Lcom/google/gson/JsonObject;
    .end local v10    # "parser":Lcom/google/gson/JsonParser;
    .end local v11    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Comment;>;"
    .end local v12    # "review":Lcom/yopeso/lieferando/model/restaurant/Reviews;
    .end local v13    # "stats":Lcom/google/gson/JsonObject;
    .restart local v5    # "gson":Lcom/google/gson/Gson;
    :cond_3
    check-cast v5, Lcom/google/gson/Gson;

    .end local v5    # "gson":Lcom/google/gson/Gson;
    invoke-static {v5, v6, v14}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    goto/16 :goto_1

    .line 78
    .restart local v4    # "element":Lcom/google/gson/JsonElement;
    .restart local v8    # "mFoodRatings":[I
    .restart local v9    # "obj":Lcom/google/gson/JsonObject;
    .restart local v10    # "parser":Lcom/google/gson/JsonParser;
    .restart local v12    # "review":Lcom/yopeso/lieferando/model/restaurant/Reviews;
    .restart local v13    # "stats":Lcom/google/gson/JsonObject;
    :cond_4
    const/4 v14, 0x0

    const/4 v15, 0x0

    aput v15, v8, v14

    .line 79
    const/4 v14, 0x1

    const/4 v15, 0x0

    aput v15, v8, v14

    .line 80
    const/4 v14, 0x2

    const/4 v15, 0x0

    aput v15, v8, v14

    .line 81
    const/4 v14, 0x3

    const/4 v15, 0x0

    aput v15, v8, v14

    .line 82
    const/4 v14, 0x4

    const/4 v15, 0x0

    aput v15, v8, v14
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 120
    .end local v4    # "element":Lcom/google/gson/JsonElement;
    .end local v6    # "jsonString":Ljava/lang/String;
    .end local v8    # "mFoodRatings":[I
    .end local v9    # "obj":Lcom/google/gson/JsonObject;
    .end local v10    # "parser":Lcom/google/gson/JsonParser;
    .end local v12    # "review":Lcom/yopeso/lieferando/model/restaurant/Reviews;
    .end local v13    # "stats":Lcom/google/gson/JsonObject;
    :catch_0
    move-exception v3

    .line 121
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 122
    new-instance v14, Lcom/android/volley/ParseError;

    invoke-direct {v14, v3}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v14}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v14

    goto/16 :goto_0

    .line 95
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v4    # "element":Lcom/google/gson/JsonElement;
    .restart local v6    # "jsonString":Ljava/lang/String;
    .restart local v7    # "mDeliveryRatings":[I
    .restart local v8    # "mFoodRatings":[I
    .restart local v9    # "obj":Lcom/google/gson/JsonObject;
    .restart local v10    # "parser":Lcom/google/gson/JsonParser;
    .restart local v12    # "review":Lcom/yopeso/lieferando/model/restaurant/Reviews;
    .restart local v13    # "stats":Lcom/google/gson/JsonObject;
    :cond_5
    const/4 v14, 0x0

    const/4 v15, 0x0

    :try_start_1
    aput v15, v7, v14

    .line 96
    const/4 v14, 0x1

    const/4 v15, 0x0

    aput v15, v7, v14

    .line 97
    const/4 v14, 0x2

    const/4 v15, 0x0

    aput v15, v7, v14

    .line 98
    const/4 v14, 0x3

    const/4 v15, 0x0

    aput v15, v7, v14

    .line 99
    const/4 v14, 0x4

    const/4 v15, 0x0

    aput v15, v7, v14

    goto :goto_3

    .line 110
    .restart local v11    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Comment;>;"
    :cond_6
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/model/restaurant/Comment;

    .line 111
    .local v2, "comment":Lcom/yopeso/lieferando/model/restaurant/Comment;
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Comment;->getComment()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_1

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Comment;->getComment()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_1

    .line 112
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method
