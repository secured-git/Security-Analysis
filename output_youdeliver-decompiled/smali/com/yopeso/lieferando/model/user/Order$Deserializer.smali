.class public Lcom/yopeso/lieferando/model/user/Order$Deserializer;
.super Ljava/lang/Object;
.source "Order.java"

# interfaces
.implements Lcom/google/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/model/user/Order;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonDeserializer",
        "<",
        "Lcom/yopeso/lieferando/model/user/Order;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/yopeso/lieferando/model/user/Order;
    .locals 9
    .param p1, "json"    # Lcom/google/gson/JsonElement;
    .param p2, "arg1"    # Ljava/lang/reflect/Type;
    .param p3, "arg2"    # Lcom/google/gson/JsonDeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 489
    new-instance v6, Lcom/google/gson/GsonBuilder;

    invoke-direct {v6}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 490
    .local v0, "gson":Lcom/google/gson/Gson;
    const-class v7, Lcom/yopeso/lieferando/model/user/Order;

    instance-of v6, v0, Lcom/google/gson/Gson;

    if-nez v6, :cond_2

    invoke-virtual {v0, p1, v7}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    :goto_0
    check-cast v3, Lcom/yopeso/lieferando/model/user/Order;

    .line 491
    .local v3, "order":Lcom/yopeso/lieferando/model/user/Order;
    const-class v6, Lcom/yopeso/lieferando/model/user/Location;

    instance-of v7, v0, Lcom/google/gson/Gson;

    if-nez v7, :cond_3

    invoke-virtual {v0, p1, v6}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .end local v0    # "gson":Lcom/google/gson/Gson;
    :goto_1
    check-cast v4, Lcom/yopeso/lieferando/model/user/Location;

    .line 493
    .local v4, "orderLocation":Lcom/yopeso/lieferando/model/user/Location;
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v6

    const-string v7, "name"

    invoke-virtual {v6, v7}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 494
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v6

    const-string v7, "name"

    invoke-virtual {v6, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/yopeso/lieferando/model/user/Location;->setName(Ljava/lang/String;)V

    .line 496
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v6

    const-string v7, "prename"

    invoke-virtual {v6, v7}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 497
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v6

    const-string v7, "prename"

    invoke-virtual {v6, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/yopeso/lieferando/model/user/Location;->setPreName(Ljava/lang/String;)V

    .line 499
    :cond_1
    invoke-virtual {v3, v4}, Lcom/yopeso/lieferando/model/user/Order;->setLocation(Lcom/yopeso/lieferando/model/user/Location;)V

    .line 500
    new-instance v5, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-direct {v5}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;-><init>()V

    .line 501
    .local v5, "orderRestaurant":Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v6

    const-string v7, "restaurantId"

    invoke-virtual {v6, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->setId(I)V

    .line 502
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v6

    const-string v7, "restaurantName"

    invoke-virtual {v6, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->setName(Ljava/lang/String;)V

    .line 503
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v6

    const-string v7, "restaurantPhone"

    invoke-virtual {v6, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->setTelephone(Ljava/lang/String;)V

    .line 504
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v6

    const-string v7, "restaurantImage"

    invoke-virtual {v6, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->setImgUrl(Ljava/lang/String;)V

    .line 505
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v6

    const-string v7, "restaurantAddress"

    invoke-virtual {v6, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->setRestaurantAddress(Ljava/lang/String;)V

    .line 506
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v6

    const-string v7, "url"

    invoke-virtual {v6, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->setServiceUrl(Ljava/lang/String;)V

    .line 507
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->setOnline(Z)V

    .line 508
    invoke-virtual {v3, v5}, Lcom/yopeso/lieferando/model/user/Order;->setRestaurant(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    .line 510
    new-instance v6, Lcom/google/gson/GsonBuilder;

    invoke-direct {v6}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v7, Lcom/yopeso/lieferando/model/meal/Meal;

    new-instance v8, Lcom/yopeso/lieferando/model/meal/Meal$Deserializer;

    invoke-direct {v8}, Lcom/yopeso/lieferando/model/meal/Meal$Deserializer;-><init>()V

    invoke-virtual {v6, v7, v8}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 511
    .restart local v0    # "gson":Lcom/google/gson/Gson;
    new-instance v6, Lcom/yopeso/lieferando/model/user/Order$Deserializer$1;

    invoke-direct {v6, p0}, Lcom/yopeso/lieferando/model/user/Order$Deserializer$1;-><init>(Lcom/yopeso/lieferando/model/user/Order$Deserializer;)V

    .line 512
    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/user/Order$Deserializer$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 513
    .local v1, "listTypeMeal":Ljava/lang/reflect/Type;
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v6

    const-string v7, "cart"

    invoke-virtual {v6, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v6

    instance-of v7, v0, Lcom/google/gson/Gson;

    if-nez v7, :cond_4

    invoke-virtual {v0, v6, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    .end local v0    # "gson":Lcom/google/gson/Gson;
    :goto_2
    check-cast v2, Ljava/util/ArrayList;

    .line 514
    .local v2, "mealsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/meal/Meal;>;"
    invoke-virtual {v3, v2}, Lcom/yopeso/lieferando/model/user/Order;->setMeals(Ljava/util/List;)V

    .line 515
    return-object v3

    .end local v1    # "listTypeMeal":Ljava/lang/reflect/Type;
    .end local v2    # "mealsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/meal/Meal;>;"
    .end local v3    # "order":Lcom/yopeso/lieferando/model/user/Order;
    .end local v4    # "orderLocation":Lcom/yopeso/lieferando/model/user/Location;
    .end local v5    # "orderRestaurant":Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    .restart local v0    # "gson":Lcom/google/gson/Gson;
    :cond_2
    move-object v6, v0

    .line 490
    check-cast v6, Lcom/google/gson/Gson;

    invoke-static {v6, p1, v7}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 491
    .restart local v3    # "order":Lcom/yopeso/lieferando/model/user/Order;
    :cond_3
    check-cast v0, Lcom/google/gson/Gson;

    .end local v0    # "gson":Lcom/google/gson/Gson;
    invoke-static {v0, p1, v6}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_1

    .line 513
    .restart local v0    # "gson":Lcom/google/gson/Gson;
    .restart local v1    # "listTypeMeal":Ljava/lang/reflect/Type;
    .restart local v4    # "orderLocation":Lcom/yopeso/lieferando/model/user/Location;
    .restart local v5    # "orderRestaurant":Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    :cond_4
    check-cast v0, Lcom/google/gson/Gson;

    .end local v0    # "gson":Lcom/google/gson/Gson;
    invoke-static {v0, v6, v1}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2
.end method

.method public bridge synthetic deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/yopeso/lieferando/model/user/Order$Deserializer;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/yopeso/lieferando/model/user/Order;

    move-result-object v0

    return-object v0
.end method
