.class public Lcom/yopeso/lieferando/model/meal/Meal$Deserializer;
.super Ljava/lang/Object;
.source "Meal.java"

# interfaces
.implements Lcom/google/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/model/meal/Meal;
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
        "Lcom/yopeso/lieferando/model/meal/Meal;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/yopeso/lieferando/model/meal/Meal;
    .locals 7
    .param p1, "arg0"    # Lcom/google/gson/JsonElement;
    .param p2, "arg1"    # Ljava/lang/reflect/Type;
    .param p3, "arg2"    # Lcom/google/gson/JsonDeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 401
    new-instance v5, Lcom/google/gson/GsonBuilder;

    invoke-direct {v5}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v2

    .line 402
    .local v2, "gson":Lcom/google/gson/Gson;
    new-instance v5, Lcom/yopeso/lieferando/model/meal/Meal$Deserializer$1;

    invoke-direct {v5, p0}, Lcom/yopeso/lieferando/model/meal/Meal$Deserializer$1;-><init>(Lcom/yopeso/lieferando/model/meal/Meal$Deserializer;)V

    .line 403
    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/meal/Meal$Deserializer$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 404
    .local v4, "mealType":Ljava/lang/reflect/Type;
    instance-of v5, v2, Lcom/google/gson/Gson;

    if-nez v5, :cond_0

    invoke-virtual {v2, p1, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    :goto_0
    check-cast v3, Lcom/yopeso/lieferando/model/meal/Meal;

    .line 405
    .local v3, "meal":Lcom/yopeso/lieferando/model/meal/Meal;
    new-instance v5, Lcom/yopeso/lieferando/model/meal/Meal$Deserializer$2;

    invoke-direct {v5, p0}, Lcom/yopeso/lieferando/model/meal/Meal$Deserializer$2;-><init>(Lcom/yopeso/lieferando/model/meal/Meal$Deserializer;)V

    .line 406
    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/meal/Meal$Deserializer$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 407
    .local v1, "additionsListType":Ljava/lang/reflect/Type;
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v5

    const-string v6, "additions"

    invoke-virtual {v5, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v5

    instance-of v6, v2, Lcom/google/gson/Gson;

    if-nez v6, :cond_1

    invoke-virtual {v2, v5, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .end local v2    # "gson":Lcom/google/gson/Gson;
    :goto_1
    check-cast v0, Ljava/util/ArrayList;

    .line 408
    .local v0, "additionsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/meal/Addition;>;"
    invoke-virtual {v3, v0}, Lcom/yopeso/lieferando/model/meal/Meal;->setAdditions(Ljava/util/ArrayList;)V

    .line 409
    return-object v3

    .end local v0    # "additionsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/meal/Addition;>;"
    .end local v1    # "additionsListType":Ljava/lang/reflect/Type;
    .end local v3    # "meal":Lcom/yopeso/lieferando/model/meal/Meal;
    .restart local v2    # "gson":Lcom/google/gson/Gson;
    :cond_0
    move-object v5, v2

    .line 404
    check-cast v5, Lcom/google/gson/Gson;

    invoke-static {v5, p1, v4}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 407
    .restart local v1    # "additionsListType":Ljava/lang/reflect/Type;
    .restart local v3    # "meal":Lcom/yopeso/lieferando/model/meal/Meal;
    :cond_1
    check-cast v2, Lcom/google/gson/Gson;

    .end local v2    # "gson":Lcom/google/gson/Gson;
    invoke-static {v2, v5, v1}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
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
    invoke-virtual {p0, p1, p2, p3}, Lcom/yopeso/lieferando/model/meal/Meal$Deserializer;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/yopeso/lieferando/model/meal/Meal;

    move-result-object v0

    return-object v0
.end method
