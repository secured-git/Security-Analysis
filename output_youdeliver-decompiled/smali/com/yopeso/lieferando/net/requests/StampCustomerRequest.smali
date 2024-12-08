.class public Lcom/yopeso/lieferando/net/requests/StampCustomerRequest;
.super Lcom/yopeso/lieferando/net/requests/base/JsonRequest;
.source "StampCustomerRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yopeso/lieferando/net/requests/base/JsonRequest",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/yopeso/lieferando/model/Stamp;",
        ">;>;"
    }
.end annotation


# instance fields
.field mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/Stamp;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p2, "listener":Lcom/yopeso/lieferando/net/requests/base/VolleyListener;, "Lcom/yopeso/lieferando/net/requests/base/VolleyListener<Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/Stamp;>;>;"
    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/SettingsContent;->getmServerURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p2

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/yopeso/lieferando/net/requests/base/JsonRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/yopeso/lieferando/net/requests/StampCustomerRequest;->mUrl:Ljava/lang/String;

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yopeso/lieferando/net/requests/StampCustomerRequest;->mRequireAuth:Z

    .line 31
    iput-object p1, p0, Lcom/yopeso/lieferando/net/requests/StampCustomerRequest;->mUrl:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method protected parseResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 9
    .param p1, "response"    # Lcom/android/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/Stamp;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 39
    invoke-static {p1}, Lcom/yopeso/lieferando/net/requests/base/ApiResponse;->isValid(Lcom/android/volley/NetworkResponse;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 40
    new-instance v6, Lcom/yopeso/lieferando/net/requests/base/ApiError;

    invoke-direct {v6, p1}, Lcom/yopeso/lieferando/net/requests/base/ApiError;-><init>(Lcom/android/volley/NetworkResponse;)V

    invoke-static {v6}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v6

    .line 59
    :goto_0
    return-object v6

    .line 44
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/String;

    iget-object v6, p1, Lcom/android/volley/NetworkResponse;->data:[B

    iget-object v7, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v7}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 45
    .local v2, "jsonString":Ljava/lang/String;
    new-instance v6, Lcom/google/gson/GsonBuilder;

    invoke-direct {v6}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v7, Ljava/lang/Boolean;

    new-instance v8, Lcom/yopeso/lieferando/net/serializers/IntBooleanDeserializer;

    invoke-direct {v8}, Lcom/yopeso/lieferando/net/serializers/IntBooleanDeserializer;-><init>()V

    invoke-virtual {v6, v7, v8}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v6

    const-string v7, "dd.MM.yyyy"

    invoke-virtual {v6, v7}, Lcom/google/gson/GsonBuilder;->setDateFormat(Ljava/lang/String;)Lcom/google/gson/GsonBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    .line 46
    .local v1, "gson":Lcom/google/gson/Gson;
    new-instance v6, Lcom/yopeso/lieferando/net/requests/StampCustomerRequest$1;

    invoke-direct {v6, p0}, Lcom/yopeso/lieferando/net/requests/StampCustomerRequest$1;-><init>(Lcom/yopeso/lieferando/net/requests/StampCustomerRequest;)V

    .line 47
    invoke-virtual {v6}, Lcom/yopeso/lieferando/net/requests/StampCustomerRequest$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 48
    .local v3, "listType":Ljava/lang/reflect/Type;
    instance-of v6, v1, Lcom/google/gson/Gson;

    if-nez v6, :cond_2

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .end local v1    # "gson":Lcom/google/gson/Gson;
    :goto_1
    check-cast v5, Ljava/util/ArrayList;

    .line 50
    .local v5, "stamps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/Stamp;>;"
    iget-object v6, p0, Lcom/yopeso/lieferando/net/requests/StampCustomerRequest;->mUrl:Ljava/lang/String;

    const-string v7, "/customer/stamps/expired"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    .line 51
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 56
    :cond_1
    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v6

    goto :goto_0

    .line 48
    .end local v5    # "stamps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/Stamp;>;"
    .restart local v1    # "gson":Lcom/google/gson/Gson;
    :cond_2
    check-cast v1, Lcom/google/gson/Gson;

    .end local v1    # "gson":Lcom/google/gson/Gson;
    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    .line 51
    .restart local v5    # "stamps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/Stamp;>;"
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yopeso/lieferando/model/Stamp;

    .line 52
    .local v4, "st":Lcom/yopeso/lieferando/model/Stamp;
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/yopeso/lieferando/model/Stamp;->setExpired(Z)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 57
    .end local v2    # "jsonString":Ljava/lang/String;
    .end local v3    # "listType":Ljava/lang/reflect/Type;
    .end local v4    # "st":Lcom/yopeso/lieferando/model/Stamp;
    .end local v5    # "stamps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/Stamp;>;"
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 59
    new-instance v6, Lcom/android/volley/ParseError;

    invoke-direct {v6, v0}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v6}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v6

    goto :goto_0
.end method
