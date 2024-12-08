.class public Lcom/newrelic/agent/android/harvest/ActivityHistory;
.super Lcom/newrelic/agent/android/harvest/type/HarvestableArray;
.source "ActivityHistory.java"


# instance fields
.field private final activityHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/newrelic/agent/android/harvest/ActivitySighting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/newrelic/agent/android/harvest/ActivitySighting;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p1, "activityHistory":Ljava/util/List;, "Ljava/util/List<Lcom/newrelic/agent/android/harvest/ActivitySighting;>;"
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/type/HarvestableArray;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/ActivityHistory;->activityHistory:Ljava/util/List;

    .line 20
    return-void
.end method

.method public static newFromJson(Lcom/newrelic/com/google/gson/JsonArray;)Lcom/newrelic/agent/android/harvest/ActivityHistory;
    .locals 4
    .param p0, "jsonArray"    # Lcom/newrelic/com/google/gson/JsonArray;

    .prologue
    .line 48
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v2, "sightings":Ljava/util/List;, "Ljava/util/List<Lcom/newrelic/agent/android/harvest/ActivitySighting;>;"
    invoke-virtual {p0}, Lcom/newrelic/com/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/com/google/gson/JsonElement;

    .line 51
    .local v0, "element":Lcom/newrelic/com/google/gson/JsonElement;
    invoke-virtual {v0}, Lcom/newrelic/com/google/gson/JsonElement;->getAsJsonArray()Lcom/newrelic/com/google/gson/JsonArray;

    move-result-object v3

    invoke-static {v3}, Lcom/newrelic/agent/android/harvest/ActivitySighting;->newFromJson(Lcom/newrelic/com/google/gson/JsonArray;)Lcom/newrelic/agent/android/harvest/ActivitySighting;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 54
    .end local v0    # "element":Lcom/newrelic/com/google/gson/JsonElement;
    :cond_0
    new-instance v3, Lcom/newrelic/agent/android/harvest/ActivityHistory;

    invoke-direct {v3, v2}, Lcom/newrelic/agent/android/harvest/ActivityHistory;-><init>(Ljava/util/List;)V

    return-object v3
.end method


# virtual methods
.method public asJsonArray()Lcom/newrelic/com/google/gson/JsonArray;
    .locals 4

    .prologue
    .line 28
    new-instance v0, Lcom/newrelic/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/newrelic/com/google/gson/JsonArray;-><init>()V

    .line 30
    .local v0, "data":Lcom/newrelic/com/google/gson/JsonArray;
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/ActivityHistory;->activityHistory:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/newrelic/agent/android/harvest/ActivitySighting;

    .line 31
    .local v2, "sighting":Lcom/newrelic/agent/android/harvest/ActivitySighting;
    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/ActivitySighting;->asJsonArray()Lcom/newrelic/com/google/gson/JsonArray;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    goto :goto_0

    .line 34
    .end local v2    # "sighting":Lcom/newrelic/agent/android/harvest/ActivitySighting;
    :cond_0
    return-object v0
.end method

.method public asJsonArrayWithoutDuration()Lcom/newrelic/com/google/gson/JsonArray;
    .locals 4

    .prologue
    .line 38
    new-instance v0, Lcom/newrelic/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/newrelic/com/google/gson/JsonArray;-><init>()V

    .line 40
    .local v0, "data":Lcom/newrelic/com/google/gson/JsonArray;
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/ActivityHistory;->activityHistory:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/newrelic/agent/android/harvest/ActivitySighting;

    .line 41
    .local v2, "sighting":Lcom/newrelic/agent/android/harvest/ActivitySighting;
    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/ActivitySighting;->asJsonArrayWithoutDuration()Lcom/newrelic/com/google/gson/JsonArray;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    goto :goto_0

    .line 44
    .end local v2    # "sighting":Lcom/newrelic/agent/android/harvest/ActivitySighting;
    :cond_0
    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/ActivityHistory;->activityHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
