.class public Lcom/yopeso/lieferando/net/requests/FidelityRequest;
.super Lcom/yopeso/lieferando/net/requests/base/JsonRequest;
.source "FidelityRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yopeso/lieferando/net/requests/base/JsonRequest",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(ZLcom/yopeso/lieferando/net/requests/base/VolleyListener;)V
    .locals 6
    .param p1, "open"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p2, "listener":Lcom/yopeso/lieferando/net/requests/base/VolleyListener;, "Lcom/yopeso/lieferando/net/requests/base/VolleyListener<Ljava/util/List<Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;>;>;"
    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/SettingsContent;->getmServerURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/customer/fidelity"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?status="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    const-string v0, "open"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p2

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/yopeso/lieferando/net/requests/base/JsonRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 41
    return-void

    .line 40
    :cond_0
    const-string v0, "closed"

    goto :goto_0
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
            "Ljava/util/List",
            "<",
            "Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {p1}, Lcom/yopeso/lieferando/net/requests/base/ApiResponse;->isValid(Lcom/android/volley/NetworkResponse;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 46
    new-instance v7, Lcom/yopeso/lieferando/net/requests/base/ApiError;

    invoke-direct {v7, p1}, Lcom/yopeso/lieferando/net/requests/base/ApiError;-><init>(Lcom/android/volley/NetworkResponse;)V

    invoke-static {v7}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v7

    .line 68
    :goto_0
    return-object v7

    .line 50
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/String;

    iget-object v7, p1, Lcom/android/volley/NetworkResponse;->data:[B

    iget-object v8, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v8}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 51
    .local v3, "jsonString":Ljava/lang/String;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 52
    .local v2, "gson":Lcom/google/gson/Gson;
    new-instance v7, Lcom/yopeso/lieferando/net/requests/FidelityRequest$1;

    invoke-direct {v7, p0}, Lcom/yopeso/lieferando/net/requests/FidelityRequest$1;-><init>(Lcom/yopeso/lieferando/net/requests/FidelityRequest;)V

    .line 53
    invoke-virtual {v7}, Lcom/yopeso/lieferando/net/requests/FidelityRequest$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 54
    .local v4, "listType":Ljava/lang/reflect/Type;
    instance-of v7, v2, Lcom/google/gson/Gson;

    if-nez v7, :cond_3

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .end local v2    # "gson":Lcom/google/gson/Gson;
    :goto_1
    check-cast v5, Ljava/util/List;

    .line 55
    .local v5, "points":Ljava/util/List;, "Ljava/util/List<Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;>;"
    const/4 v6, 0x0

    .line 56
    .local v6, "toRemove":Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_4

    .line 61
    if-eqz v6, :cond_2

    .line 62
    invoke-interface {v5, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 65
    :cond_2
    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v7

    goto :goto_0

    .line 54
    .end local v5    # "points":Ljava/util/List;, "Ljava/util/List<Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;>;"
    .end local v6    # "toRemove":Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;
    .restart local v2    # "gson":Lcom/google/gson/Gson;
    :cond_3
    check-cast v2, Lcom/google/gson/Gson;

    .end local v2    # "gson":Lcom/google/gson/Gson;
    invoke-static {v2, v3, v4}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    .line 56
    .restart local v5    # "points":Ljava/util/List;, "Ljava/util/List<Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;>;"
    .restart local v6    # "toRemove":Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;

    .line 57
    .local v1, "fp":Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->getType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "FACEBOOK_FAN"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_1

    .line 58
    move-object v6, v1

    goto :goto_2

    .line 66
    .end local v1    # "fp":Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;
    .end local v3    # "jsonString":Ljava/lang/String;
    .end local v4    # "listType":Ljava/lang/reflect/Type;
    .end local v5    # "points":Ljava/util/List;, "Ljava/util/List<Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;>;"
    .end local v6    # "toRemove":Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 68
    new-instance v7, Lcom/android/volley/ParseError;

    invoke-direct {v7, v0}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v7}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v7

    goto :goto_0
.end method
