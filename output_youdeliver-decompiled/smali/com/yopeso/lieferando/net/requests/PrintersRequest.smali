.class public Lcom/yopeso/lieferando/net/requests/PrintersRequest;
.super Lcom/yopeso/lieferando/net/requests/base/JsonRequest;
.source "PrintersRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yopeso/lieferando/net/requests/base/JsonRequest",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field mVersionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "listener":Lcom/yopeso/lieferando/net/requests/base/VolleyListener;, "Lcom/yopeso/lieferando/net/requests/base/VolleyListener<Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;>;"
    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/SettingsContent;->getmCdnURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/printer/status.json"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/yopeso/lieferando/net/requests/base/JsonRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 27
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
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 34
    :try_start_0
    new-instance v3, Ljava/lang/String;

    iget-object v8, p1, Lcom/android/volley/NetworkResponse;->data:[B

    iget-object v9, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v9}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v8, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 35
    .local v3, "jsonString":Ljava/lang/String;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 36
    .local v2, "gson":Lcom/google/gson/Gson;
    new-instance v8, Lcom/yopeso/lieferando/net/requests/PrintersRequest$1;

    invoke-direct {v8, p0}, Lcom/yopeso/lieferando/net/requests/PrintersRequest$1;-><init>(Lcom/yopeso/lieferando/net/requests/PrintersRequest;)V

    .line 37
    invoke-virtual {v8}, Lcom/yopeso/lieferando/net/requests/PrintersRequest$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 39
    .local v4, "listType":Ljava/lang/reflect/Type;
    new-instance v6, Lcom/google/gson/JsonParser;

    invoke-direct {v6}, Lcom/google/gson/JsonParser;-><init>()V

    .line 40
    .local v6, "parser":Lcom/google/gson/JsonParser;
    invoke-virtual {v6, v3}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 41
    .local v1, "element":Lcom/google/gson/JsonElement;
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v5

    .line 43
    .local v5, "obj":Lcom/google/gson/JsonObject;
    const-string v8, "restaurants"

    invoke-virtual {v5, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    instance-of v9, v2, Lcom/google/gson/Gson;

    if-nez v9, :cond_0

    invoke-virtual {v2, v8, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    .end local v2    # "gson":Lcom/google/gson/Gson;
    :goto_0
    check-cast v7, Ljava/util/Map;

    .line 45
    .local v7, "printers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v8

    .line 48
    .end local v1    # "element":Lcom/google/gson/JsonElement;
    .end local v3    # "jsonString":Ljava/lang/String;
    .end local v4    # "listType":Ljava/lang/reflect/Type;
    .end local v5    # "obj":Lcom/google/gson/JsonObject;
    .end local v6    # "parser":Lcom/google/gson/JsonParser;
    .end local v7    # "printers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    :goto_1
    return-object v8

    .line 43
    .restart local v1    # "element":Lcom/google/gson/JsonElement;
    .restart local v2    # "gson":Lcom/google/gson/Gson;
    .restart local v3    # "jsonString":Ljava/lang/String;
    .restart local v4    # "listType":Ljava/lang/reflect/Type;
    .restart local v5    # "obj":Lcom/google/gson/JsonObject;
    .restart local v6    # "parser":Lcom/google/gson/JsonParser;
    :cond_0
    check-cast v2, Lcom/google/gson/Gson;

    .end local v2    # "gson":Lcom/google/gson/Gson;
    invoke-static {v2, v8, v4}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .line 46
    .end local v1    # "element":Lcom/google/gson/JsonElement;
    .end local v3    # "jsonString":Ljava/lang/String;
    .end local v4    # "listType":Ljava/lang/reflect/Type;
    .end local v5    # "obj":Lcom/google/gson/JsonObject;
    .end local v6    # "parser":Lcom/google/gson/JsonParser;
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 48
    new-instance v8, Lcom/android/volley/ParseError;

    invoke-direct {v8, v0}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v8}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v8

    goto :goto_1
.end method
