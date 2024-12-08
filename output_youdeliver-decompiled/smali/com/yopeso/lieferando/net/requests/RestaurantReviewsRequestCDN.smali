.class public Lcom/yopeso/lieferando/net/requests/RestaurantReviewsRequestCDN;
.super Lcom/yopeso/lieferando/net/requests/base/JsonRequest;
.source "RestaurantReviewsRequestCDN.java"


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

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/SettingsContent;->getmServerURL()Ljava/lang/String;

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

    .line 31
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
            "Lcom/yopeso/lieferando/model/restaurant/Reviews;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    invoke-static/range {p1 .. p1}, Lcom/yopeso/lieferando/net/requests/base/ApiResponse;->isValid(Lcom/android/volley/NetworkResponse;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 36
    new-instance v13, Lcom/yopeso/lieferando/net/requests/base/ApiError;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/yopeso/lieferando/net/requests/base/ApiError;-><init>(Lcom/android/volley/NetworkResponse;)V

    invoke-static {v13}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v13

    .line 107
    :goto_0
    return-object v13

    .line 40
    :cond_0
    :try_start_0
    new-instance v5, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/volley/NetworkResponse;->data:[B

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v14}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v5, v13, v14}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 41
    .local v5, "jsonString":Ljava/lang/String;
    new-instance v13, Lcom/google/gson/GsonBuilder;

    invoke-direct {v13}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v4

    .line 43
    .local v4, "gson":Lcom/google/gson/Gson;
    const-class v13, Lcom/yopeso/lieferando/model/restaurant/Reviews;

    instance-of v14, v4, Lcom/google/gson/Gson;

    if-nez v14, :cond_3

    invoke-virtual {v4, v5, v13}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    .end local v4    # "gson":Lcom/google/gson/Gson;
    :goto_1
    check-cast v11, Lcom/yopeso/lieferando/model/restaurant/Reviews;

    .line 45
    .local v11, "review":Lcom/yopeso/lieferando/model/restaurant/Reviews;
    new-instance v9, Lcom/google/gson/JsonParser;

    invoke-direct {v9}, Lcom/google/gson/JsonParser;-><init>()V

    .line 46
    .local v9, "parser":Lcom/google/gson/JsonParser;
    invoke-virtual {v9, v5}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 47
    .local v3, "element":Lcom/google/gson/JsonElement;
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v8

    .line 50
    .local v8, "obj":Lcom/google/gson/JsonObject;
    const-string v13, "stats"

    invoke-virtual {v8, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v12

    .line 51
    .local v12, "stats":Lcom/google/gson/JsonObject;
    const-string v13, "ratingQualityAverage"

    invoke-virtual {v12, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v13

    invoke-virtual {v11, v13}, Lcom/yopeso/lieferando/model/restaurant/Reviews;->setFoodStars(F)V

    .line 52
    const-string v13, "ratingDeliveryAverage"

    invoke-virtual {v12, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v13

    invoke-virtual {v11, v13}, Lcom/yopeso/lieferando/model/restaurant/Reviews;->setDeliveryStars(F)V

    .line 54
    const/4 v13, 0x5

    new-array v7, v13, [I

    .line 56
    .local v7, "mFoodRatings":[I
    invoke-virtual {v11}, Lcom/yopeso/lieferando/model/restaurant/Reviews;->getRatingCount()I

    move-result v13

    if-eqz v13, :cond_4

    .line 57
    const/4 v13, 0x0

    const-string v14, "ratingQuality1"

    invoke-virtual {v12, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v14

    mul-int/lit8 v14, v14, 0x64

    invoke-virtual {v11}, Lcom/yopeso/lieferando/model/restaurant/Reviews;->getRatingCount()I

    move-result v15

    div-int/2addr v14, v15

    aput v14, v7, v13

    .line 58
    const/4 v13, 0x1

    const-string v14, "ratingQuality2"

    invoke-virtual {v12, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v14

    mul-int/lit8 v14, v14, 0x64

    invoke-virtual {v11}, Lcom/yopeso/lieferando/model/restaurant/Reviews;->getRatingCount()I

    move-result v15

    div-int/2addr v14, v15

    aput v14, v7, v13

    .line 59
    const/4 v13, 0x2

    const-string v14, "ratingQuality3"

    invoke-virtual {v12, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v14

    mul-int/lit8 v14, v14, 0x64

    invoke-virtual {v11}, Lcom/yopeso/lieferando/model/restaurant/Reviews;->getRatingCount()I

    move-result v15

    div-int/2addr v14, v15

    aput v14, v7, v13

    .line 60
    const/4 v13, 0x3

    const-string v14, "ratingQuality4"

    invoke-virtual {v12, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v14

    mul-int/lit8 v14, v14, 0x64

    invoke-virtual {v11}, Lcom/yopeso/lieferando/model/restaurant/Reviews;->getRatingCount()I

    move-result v15

    div-int/2addr v14, v15

    aput v14, v7, v13

    .line 61
    const/4 v13, 0x4

    const-string v14, "ratingQuality5"

    invoke-virtual {v12, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v14

    mul-int/lit8 v14, v14, 0x64

    invoke-virtual {v11}, Lcom/yopeso/lieferando/model/restaurant/Reviews;->getRatingCount()I

    move-result v15

    div-int/2addr v14, v15

    aput v14, v7, v13

    .line 70
    :goto_2
    invoke-virtual {v11, v7}, Lcom/yopeso/lieferando/model/restaurant/Reviews;->setFoodRatings([I)V

    .line 72
    const/4 v13, 0x5

    new-array v6, v13, [I

    .line 73
    .local v6, "mDeliveryRatings":[I
    invoke-virtual {v11}, Lcom/yopeso/lieferando/model/restaurant/Reviews;->getRatingCount()I

    move-result v13

    if-eqz v13, :cond_5

    .line 74
    const/4 v13, 0x0

    const-string v14, "ratingDelivery1"

    invoke-virtual {v12, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v14

    mul-int/lit8 v14, v14, 0x64

    invoke-virtual {v11}, Lcom/yopeso/lieferando/model/restaurant/Reviews;->getRatingCount()I

    move-result v15

    div-int/2addr v14, v15

    aput v14, v6, v13

    .line 75
    const/4 v13, 0x1

    const-string v14, "ratingDelivery2"

    invoke-virtual {v12, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v14

    mul-int/lit8 v14, v14, 0x64

    invoke-virtual {v11}, Lcom/yopeso/lieferando/model/restaurant/Reviews;->getRatingCount()I

    move-result v15

    div-int/2addr v14, v15

    aput v14, v6, v13

    .line 76
    const/4 v13, 0x2

    const-string v14, "ratingDelivery3"

    invoke-virtual {v12, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v14

    mul-int/lit8 v14, v14, 0x64

    invoke-virtual {v11}, Lcom/yopeso/lieferando/model/restaurant/Reviews;->getRatingCount()I

    move-result v15

    div-int/2addr v14, v15

    aput v14, v6, v13

    .line 77
    const/4 v13, 0x3

    const-string v14, "ratingDelivery4"

    invoke-virtual {v12, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v14

    mul-int/lit8 v14, v14, 0x64

    invoke-virtual {v11}, Lcom/yopeso/lieferando/model/restaurant/Reviews;->getRatingCount()I

    move-result v15

    div-int/2addr v14, v15

    aput v14, v6, v13

    .line 78
    const/4 v13, 0x4

    const-string v14, "ratingDelivery5"

    invoke-virtual {v12, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v14

    mul-int/lit8 v14, v14, 0x64

    invoke-virtual {v11}, Lcom/yopeso/lieferando/model/restaurant/Reviews;->getRatingCount()I

    move-result v15

    div-int/2addr v14, v15

    aput v14, v6, v13

    .line 87
    :goto_3
    invoke-virtual {v11, v6}, Lcom/yopeso/lieferando/model/restaurant/Reviews;->setDeliveryRatings([I)V

    .line 93
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v10, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Comment;>;"
    invoke-virtual {v11}, Lcom/yopeso/lieferando/model/restaurant/Reviews;->getComments()Ljava/util/ArrayList;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 95
    invoke-virtual {v11}, Lcom/yopeso/lieferando/model/restaurant/Reviews;->getComments()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_1
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_6

    .line 101
    :cond_2
    invoke-virtual {v11, v10}, Lcom/yopeso/lieferando/model/restaurant/Reviews;->setComments(Ljava/util/ArrayList;)V

    .line 104
    invoke-static/range {p1 .. p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v13

    goto/16 :goto_0

    .line 43
    .end local v3    # "element":Lcom/google/gson/JsonElement;
    .end local v6    # "mDeliveryRatings":[I
    .end local v7    # "mFoodRatings":[I
    .end local v8    # "obj":Lcom/google/gson/JsonObject;
    .end local v9    # "parser":Lcom/google/gson/JsonParser;
    .end local v10    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Comment;>;"
    .end local v11    # "review":Lcom/yopeso/lieferando/model/restaurant/Reviews;
    .end local v12    # "stats":Lcom/google/gson/JsonObject;
    .restart local v4    # "gson":Lcom/google/gson/Gson;
    :cond_3
    check-cast v4, Lcom/google/gson/Gson;

    .end local v4    # "gson":Lcom/google/gson/Gson;
    invoke-static {v4, v5, v13}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    goto/16 :goto_1

    .line 63
    .restart local v3    # "element":Lcom/google/gson/JsonElement;
    .restart local v7    # "mFoodRatings":[I
    .restart local v8    # "obj":Lcom/google/gson/JsonObject;
    .restart local v9    # "parser":Lcom/google/gson/JsonParser;
    .restart local v11    # "review":Lcom/yopeso/lieferando/model/restaurant/Reviews;
    .restart local v12    # "stats":Lcom/google/gson/JsonObject;
    :cond_4
    const/4 v13, 0x0

    const/4 v14, 0x0

    aput v14, v7, v13

    .line 64
    const/4 v13, 0x1

    const/4 v14, 0x0

    aput v14, v7, v13

    .line 65
    const/4 v13, 0x2

    const/4 v14, 0x0

    aput v14, v7, v13

    .line 66
    const/4 v13, 0x3

    const/4 v14, 0x0

    aput v14, v7, v13

    .line 67
    const/4 v13, 0x4

    const/4 v14, 0x0

    aput v14, v7, v13
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 105
    .end local v3    # "element":Lcom/google/gson/JsonElement;
    .end local v5    # "jsonString":Ljava/lang/String;
    .end local v7    # "mFoodRatings":[I
    .end local v8    # "obj":Lcom/google/gson/JsonObject;
    .end local v9    # "parser":Lcom/google/gson/JsonParser;
    .end local v11    # "review":Lcom/yopeso/lieferando/model/restaurant/Reviews;
    .end local v12    # "stats":Lcom/google/gson/JsonObject;
    :catch_0
    move-exception v2

    .line 106
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 107
    new-instance v13, Lcom/android/volley/ParseError;

    invoke-direct {v13, v2}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v13}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v13

    goto/16 :goto_0

    .line 80
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v3    # "element":Lcom/google/gson/JsonElement;
    .restart local v5    # "jsonString":Ljava/lang/String;
    .restart local v6    # "mDeliveryRatings":[I
    .restart local v7    # "mFoodRatings":[I
    .restart local v8    # "obj":Lcom/google/gson/JsonObject;
    .restart local v9    # "parser":Lcom/google/gson/JsonParser;
    .restart local v11    # "review":Lcom/yopeso/lieferando/model/restaurant/Reviews;
    .restart local v12    # "stats":Lcom/google/gson/JsonObject;
    :cond_5
    const/4 v13, 0x0

    const/4 v14, 0x0

    :try_start_1
    aput v14, v6, v13

    .line 81
    const/4 v13, 0x1

    const/4 v14, 0x0

    aput v14, v6, v13

    .line 82
    const/4 v13, 0x2

    const/4 v14, 0x0

    aput v14, v6, v13

    .line 83
    const/4 v13, 0x3

    const/4 v14, 0x0

    aput v14, v6, v13

    .line 84
    const/4 v13, 0x4

    const/4 v14, 0x0

    aput v14, v6, v13

    goto :goto_3

    .line 95
    .restart local v10    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Comment;>;"
    :cond_6
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/model/restaurant/Comment;

    .line 96
    .local v1, "comment":Lcom/yopeso/lieferando/model/restaurant/Comment;
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/Comment;->getComment()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/Comment;->getComment()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_1

    .line 97
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method
