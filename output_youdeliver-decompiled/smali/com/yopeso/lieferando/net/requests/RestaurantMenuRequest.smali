.class public Lcom/yopeso/lieferando/net/requests/RestaurantMenuRequest;
.super Lcom/yopeso/lieferando/net/requests/base/JsonRequest;
.source "RestaurantMenuRequest.java"


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
.field private mContext:Landroid/content/Context;

.field private mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yopeso/lieferando/model/restaurant/Restaurant;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "restaurant"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yopeso/lieferando/model/restaurant/Restaurant;",
            "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/Restaurant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "listener":Lcom/yopeso/lieferando/net/requests/base/VolleyListener;, "Lcom/yopeso/lieferando/net/requests/base/VolleyListener<Lcom/yopeso/lieferando/model/restaurant/Restaurant;>;"
    const/4 v1, 0x0

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/SettingsContent;->getmCdnURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/%s/mobile/meals.json"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getServiceUrl()Ljava/lang/String;

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

    move-object v4, p3

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/yopeso/lieferando/net/requests/base/JsonRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 33
    iput-object p2, p0, Lcom/yopeso/lieferando/net/requests/RestaurantMenuRequest;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .line 34
    iput-object p1, p0, Lcom/yopeso/lieferando/net/requests/RestaurantMenuRequest;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method


# virtual methods
.method protected parseResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 10
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
    .line 41
    :try_start_0
    new-instance v4, Ljava/lang/String;

    iget-object v7, p1, Lcom/android/volley/NetworkResponse;->data:[B

    iget-object v8, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v8}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 42
    .local v4, "jsonString":Ljava/lang/String;
    new-instance v7, Lcom/google/gson/GsonBuilder;

    invoke-direct {v7}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v8, Ljava/lang/Boolean;

    new-instance v9, Lcom/yopeso/lieferando/net/serializers/IntBooleanDeserializer;

    invoke-direct {v9}, Lcom/yopeso/lieferando/net/serializers/IntBooleanDeserializer;-><init>()V

    invoke-virtual {v7, v8, v9}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v7

    const-string v8, "HH:mm"

    invoke-virtual {v7, v8}, Lcom/google/gson/GsonBuilder;->setDateFormat(Ljava/lang/String;)Lcom/google/gson/GsonBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v3

    .line 43
    .local v3, "gson":Lcom/google/gson/Gson;
    new-instance v7, Lcom/yopeso/lieferando/net/requests/RestaurantMenuRequest$1;

    invoke-direct {v7, p0}, Lcom/yopeso/lieferando/net/requests/RestaurantMenuRequest$1;-><init>(Lcom/yopeso/lieferando/net/requests/RestaurantMenuRequest;)V

    .line 44
    invoke-virtual {v7}, Lcom/yopeso/lieferando/net/requests/RestaurantMenuRequest$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 45
    .local v5, "listType":Ljava/lang/reflect/Type;
    instance-of v7, v3, Lcom/google/gson/Gson;

    if-nez v7, :cond_1

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .end local v3    # "gson":Lcom/google/gson/Gson;
    :goto_0
    check-cast v0, Ljava/util/ArrayList;

    .line 46
    .local v0, "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/meal/DishCategory;>;"
    iget-object v7, p0, Lcom/yopeso/lieferando/net/requests/RestaurantMenuRequest;->mContext:Landroid/content/Context;

    sget v8, Lcom/yopeso/lieferando/R$string;->topseller_tag:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 48
    .local v6, "tag":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 54
    iget-object v7, p0, Lcom/yopeso/lieferando/net/requests/RestaurantMenuRequest;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v7, v0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->setDishCategories(Ljava/util/ArrayList;)V

    .line 55
    iget-object v7, p0, Lcom/yopeso/lieferando/net/requests/RestaurantMenuRequest;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v7

    .line 58
    .end local v0    # "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/meal/DishCategory;>;"
    .end local v4    # "jsonString":Ljava/lang/String;
    .end local v5    # "listType":Ljava/lang/reflect/Type;
    .end local v6    # "tag":Ljava/lang/String;
    :goto_2
    return-object v7

    .line 45
    .restart local v3    # "gson":Lcom/google/gson/Gson;
    .restart local v4    # "jsonString":Ljava/lang/String;
    .restart local v5    # "listType":Ljava/lang/reflect/Type;
    :cond_1
    check-cast v3, Lcom/google/gson/Gson;

    .end local v3    # "gson":Lcom/google/gson/Gson;
    invoke-static {v3, v4, v5}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 48
    .restart local v0    # "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/meal/DishCategory;>;"
    .restart local v6    # "tag":Ljava/lang/String;
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/model/meal/DishCategory;

    .line 49
    .local v1, "category":Lcom/yopeso/lieferando/model/meal/DishCategory;
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/meal/DishCategory;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 50
    iget-object v8, p0, Lcom/yopeso/lieferando/net/requests/RestaurantMenuRequest;->mContext:Landroid/content/Context;

    sget v9, Lcom/yopeso/lieferando/R$string;->topseller:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/yopeso/lieferando/model/meal/DishCategory;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 56
    .end local v0    # "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/meal/DishCategory;>;"
    .end local v1    # "category":Lcom/yopeso/lieferando/model/meal/DishCategory;
    .end local v4    # "jsonString":Ljava/lang/String;
    .end local v5    # "listType":Ljava/lang/reflect/Type;
    .end local v6    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 57
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 58
    new-instance v7, Lcom/android/volley/ParseError;

    invoke-direct {v7, v2}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v7}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v7

    goto :goto_2
.end method
