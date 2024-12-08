.class public Lcom/yopeso/lieferando/net/requests/LocationPushRequest;
.super Lcom/yopeso/lieferando/net/requests/base/JsonRequest;
.source "LocationPushRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yopeso/lieferando/net/requests/base/JsonRequest",
        "<",
        "Lcom/yopeso/lieferando/model/LocationSuggestion;",
        ">;"
    }
.end annotation


# instance fields
.field private ls:Lcom/yopeso/lieferando/model/LocationSuggestion;


# direct methods
.method public constructor <init>(Lcom/yopeso/lieferando/model/LocationSuggestion;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V
    .locals 6
    .param p1, "ls"    # Lcom/yopeso/lieferando/model/LocationSuggestion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yopeso/lieferando/model/LocationSuggestion;",
            "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
            "<",
            "Lcom/yopeso/lieferando/model/LocationSuggestion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "listener":Lcom/yopeso/lieferando/net/requests/base/VolleyListener;, "Lcom/yopeso/lieferando/net/requests/base/VolleyListener<Lcom/yopeso/lieferando/model/LocationSuggestion;>;"
    const/4 v1, 0x0

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/SettingsContent;->getmCdnURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/mobile/location/city/%s.json"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getCityId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    .line 23
    iput-object p1, p0, Lcom/yopeso/lieferando/net/requests/LocationPushRequest;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    .line 24
    return-void
.end method


# virtual methods
.method protected parseResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 6
    .param p1, "response"    # Lcom/android/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<",
            "Lcom/yopeso/lieferando/model/LocationSuggestion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    :try_start_0
    new-instance v3, Ljava/lang/String;

    iget-object v4, p1, Lcom/android/volley/NetworkResponse;->data:[B

    iget-object v5, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v5}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 31
    .local v3, "jsonString":Ljava/lang/String;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 33
    .local v2, "gson":Lcom/google/gson/Gson;
    iget-object v4, p0, Lcom/yopeso/lieferando/net/requests/LocationPushRequest;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getCityId()I

    move-result v0

    .line 34
    .local v0, "cityId":I
    const-class v4, Lcom/yopeso/lieferando/model/LocationSuggestion;

    instance-of v5, v2, Lcom/google/gson/Gson;

    if-nez v5, :cond_0

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .end local v2    # "gson":Lcom/google/gson/Gson;
    :goto_0
    check-cast v4, Lcom/yopeso/lieferando/model/LocationSuggestion;

    iput-object v4, p0, Lcom/yopeso/lieferando/net/requests/LocationPushRequest;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    .line 35
    iget-object v4, p0, Lcom/yopeso/lieferando/net/requests/LocationPushRequest;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v4, v0}, Lcom/yopeso/lieferando/model/LocationSuggestion;->setCityId(I)V

    .line 36
    iget-object v4, p0, Lcom/yopeso/lieferando/net/requests/LocationPushRequest;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v4

    .line 40
    .end local v0    # "cityId":I
    .end local v3    # "jsonString":Ljava/lang/String;
    :goto_1
    return-object v4

    .line 34
    .restart local v0    # "cityId":I
    .restart local v2    # "gson":Lcom/google/gson/Gson;
    .restart local v3    # "jsonString":Ljava/lang/String;
    :cond_0
    check-cast v2, Lcom/google/gson/Gson;

    .end local v2    # "gson":Lcom/google/gson/Gson;
    invoke-static {v2, v3, v4}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 38
    .end local v0    # "cityId":I
    .end local v3    # "jsonString":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 39
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 40
    new-instance v4, Lcom/android/volley/ParseError;

    invoke-direct {v4, v1}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v4}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v4

    goto :goto_1
.end method
