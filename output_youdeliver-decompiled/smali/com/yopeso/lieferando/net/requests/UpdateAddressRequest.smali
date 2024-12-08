.class public Lcom/yopeso/lieferando/net/requests/UpdateAddressRequest;
.super Lcom/yopeso/lieferando/net/requests/base/JsonRequest;
.source "UpdateAddressRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yopeso/lieferando/net/requests/base/JsonRequest",
        "<",
        "Lcom/yopeso/lieferando/model/user/Location;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(JLorg/json/JSONObject;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "body"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/json/JSONObject;",
            "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
            "<",
            "Lcom/yopeso/lieferando/model/user/Location;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 25
    .local p4, "listener":Lcom/yopeso/lieferando/net/requests/base/VolleyListener;, "Lcom/yopeso/lieferando/net/requests/base/VolleyListener<Lcom/yopeso/lieferando/model/user/Location;>;"
    const/4 v1, 0x2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/SettingsContent;->getmServerURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/customer/location/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    instance-of v0, p3, Lorg/json/JSONObject;

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .end local p3    # "body":Lorg/json/JSONObject;
    :goto_0
    move-object v0, p0

    move-object v4, p4

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/yopeso/lieferando/net/requests/base/JsonRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 26
    return-void

    .line 25
    .restart local p3    # "body":Lorg/json/JSONObject;
    :cond_0
    check-cast p3, Lorg/json/JSONObject;

    .end local p3    # "body":Lorg/json/JSONObject;
    invoke-static {p3}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
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
            "Lcom/yopeso/lieferando/model/user/Location;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    invoke-static {p1}, Lcom/yopeso/lieferando/net/requests/base/ApiResponse;->isValid(Lcom/android/volley/NetworkResponse;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 31
    new-instance v4, Lcom/yopeso/lieferando/net/requests/base/ApiError;

    invoke-direct {v4, p1}, Lcom/yopeso/lieferando/net/requests/base/ApiError;-><init>(Lcom/android/volley/NetworkResponse;)V

    invoke-static {v4}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v4

    .line 41
    :goto_0
    return-object v4

    .line 35
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/String;

    iget-object v4, p1, Lcom/android/volley/NetworkResponse;->data:[B

    iget-object v5, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v5}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 36
    .local v2, "jsonString":Ljava/lang/String;
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 37
    .local v1, "gson":Lcom/google/gson/Gson;
    const-class v4, Lcom/yopeso/lieferando/model/user/Location;

    instance-of v5, v1, Lcom/google/gson/Gson;

    if-nez v5, :cond_1

    invoke-virtual {v1, v2, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .end local v1    # "gson":Lcom/google/gson/Gson;
    :goto_1
    check-cast v3, Lcom/yopeso/lieferando/model/user/Location;

    .line 38
    .local v3, "location":Lcom/yopeso/lieferando/model/user/Location;
    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v4

    goto :goto_0

    .line 37
    .end local v3    # "location":Lcom/yopeso/lieferando/model/user/Location;
    .restart local v1    # "gson":Lcom/google/gson/Gson;
    :cond_1
    check-cast v1, Lcom/google/gson/Gson;

    .end local v1    # "gson":Lcom/google/gson/Gson;
    invoke-static {v1, v2, v4}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_1

    .line 39
    .end local v2    # "jsonString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 41
    new-instance v4, Lcom/android/volley/ParseError;

    invoke-direct {v4, v0}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v4}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v4

    goto :goto_0
.end method
