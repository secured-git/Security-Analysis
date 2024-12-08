.class public Lcom/newrelic/agent/android/harvest/HttpErrors;
.super Lcom/newrelic/agent/android/harvest/type/HarvestableArray;
.source "HttpErrors.java"


# instance fields
.field private final httpErrors:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/newrelic/agent/android/harvest/HttpError;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/type/HarvestableArray;-><init>()V

    .line 14
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/HttpErrors;->httpErrors:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public addHttpError(Lcom/newrelic/agent/android/harvest/HttpError;)V
    .locals 4
    .param p1, "httpError"    # Lcom/newrelic/agent/android/harvest/HttpError;

    .prologue
    .line 24
    monitor-enter p1

    .line 25
    :try_start_0
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/HttpErrors;->httpErrors:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/harvest/HttpError;

    .line 26
    .local v0, "error":Lcom/newrelic/agent/android/harvest/HttpError;
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/HttpError;->getHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/HttpError;->getHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 27
    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/HttpError;->incrementCount()V

    .line 28
    monitor-exit p1

    .line 34
    .end local v0    # "error":Lcom/newrelic/agent/android/harvest/HttpError;
    :goto_0
    return-void

    .line 32
    :cond_1
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/HttpErrors;->httpErrors:Ljava/util/Collection;

    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 33
    monitor-exit p1

    goto :goto_0

    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public asJsonArray()Lcom/newrelic/com/google/gson/JsonArray;
    .locals 4

    .prologue
    .line 46
    new-instance v0, Lcom/newrelic/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/newrelic/com/google/gson/JsonArray;-><init>()V

    .line 47
    .local v0, "array":Lcom/newrelic/com/google/gson/JsonArray;
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/HttpErrors;->httpErrors:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/harvest/HttpError;

    .line 48
    .local v1, "httpError":Lcom/newrelic/agent/android/harvest/HttpError;
    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/HttpError;->asJson()Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    goto :goto_0

    .line 50
    .end local v1    # "httpError":Lcom/newrelic/agent/android/harvest/HttpError;
    :cond_0
    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HttpErrors;->httpErrors:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 42
    return-void
.end method

.method public count()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HttpErrors;->httpErrors:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public getHttpErrors()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/newrelic/agent/android/harvest/HttpError;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HttpErrors;->httpErrors:Ljava/util/Collection;

    return-object v0
.end method

.method public declared-synchronized removeHttpError(Lcom/newrelic/agent/android/harvest/HttpError;)V
    .locals 1
    .param p1, "error"    # Lcom/newrelic/agent/android/harvest/HttpError;

    .prologue
    .line 37
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HttpErrors;->httpErrors:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit p0

    return-void

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
