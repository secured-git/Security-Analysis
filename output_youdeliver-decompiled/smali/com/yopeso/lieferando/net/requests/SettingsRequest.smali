.class public Lcom/yopeso/lieferando/net/requests/SettingsRequest;
.super Lcom/yopeso/lieferando/net/requests/base/JsonRequest;
.source "SettingsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yopeso/lieferando/net/requests/base/JsonRequest",
        "<",
        "Lcom/yopeso/lieferando/model/SettingsContent;",
        ">;"
    }
.end annotation


# instance fields
.field mVersionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
            "<",
            "Lcom/yopeso/lieferando/model/SettingsContent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "listener":Lcom/yopeso/lieferando/net/requests/base/VolleyListener;, "Lcom/yopeso/lieferando/net/requests/base/VolleyListener<Lcom/yopeso/lieferando/model/SettingsContent;>;"
    const/4 v1, 0x0

    .line 34
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->getSettings()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p2

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/yopeso/lieferando/net/requests/base/JsonRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 37
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 38
    .local v7, "pInfo":Landroid/content/pm/PackageInfo;
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AndPL_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/net/requests/SettingsRequest;->mVersionName:Ljava/lang/String;

    .line 46
    .end local v7    # "pInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-void

    .line 41
    .restart local v7    # "pInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "And_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/net/requests/SettingsRequest;->mVersionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 43
    .end local v7    # "pInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v6

    .line 44
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected parseNetworkError(Lcom/android/volley/VolleyError;)Lcom/android/volley/VolleyError;
    .locals 1
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/net/requests/base/JsonRequest;->parseNetworkError(Lcom/android/volley/VolleyError;)Lcom/android/volley/VolleyError;

    move-result-object v0

    return-object v0
.end method

.method protected parseResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 17
    .param p1, "response"    # Lcom/android/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<",
            "Lcom/yopeso/lieferando/model/SettingsContent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    :try_start_0
    new-instance v4, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/volley/NetworkResponse;->data:[B

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v4, v15, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 54
    .local v4, "jsonString":Ljava/lang/String;
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 56
    .local v3, "gson":Lcom/google/gson/Gson;
    const-class v16, Lcom/yopeso/lieferando/model/SettingsContent;

    instance-of v15, v3, Lcom/google/gson/Gson;

    if-nez v15, :cond_1

    move-object/from16 v0, v16

    invoke-virtual {v3, v4, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    :goto_0
    check-cast v12, Lcom/yopeso/lieferando/model/SettingsContent;

    .line 57
    .local v12, "settings":Lcom/yopeso/lieferando/model/SettingsContent;
    new-instance v15, Lcom/yopeso/lieferando/net/requests/SettingsRequest$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/yopeso/lieferando/net/requests/SettingsRequest$1;-><init>(Lcom/yopeso/lieferando/net/requests/SettingsRequest;)V

    .line 58
    invoke-virtual {v15}, Lcom/yopeso/lieferando/net/requests/SettingsRequest$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v6

    .line 59
    .local v6, "listType":Ljava/lang/reflect/Type;
    new-instance v15, Lcom/yopeso/lieferando/net/requests/SettingsRequest$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/yopeso/lieferando/net/requests/SettingsRequest$2;-><init>(Lcom/yopeso/lieferando/net/requests/SettingsRequest;)V

    .line 60
    invoke-virtual {v15}, Lcom/yopeso/lieferando/net/requests/SettingsRequest$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v8

    .line 62
    .local v8, "mapType":Ljava/lang/reflect/Type;
    new-instance v10, Lcom/google/gson/JsonParser;

    invoke-direct {v10}, Lcom/google/gson/JsonParser;-><init>()V

    .line 63
    .local v10, "parser":Lcom/google/gson/JsonParser;
    invoke-virtual {v10, v4}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 64
    .local v2, "element":Lcom/google/gson/JsonElement;
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v9

    .line 69
    .local v9, "obj":Lcom/google/gson/JsonObject;
    const-string v15, "payments"

    invoke-virtual {v9, v15}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v16

    instance-of v15, v3, Lcom/google/gson/Gson;

    if-nez v15, :cond_2

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v6}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    :goto_1
    check-cast v5, Ljava/util/ArrayList;

    .line 71
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 72
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-nez v16, :cond_3

    .line 75
    invoke-virtual {v12, v7}, Lcom/yopeso/lieferando/model/SettingsContent;->setPayments(Ljava/util/Map;)V

    .line 80
    const-string v15, "update"

    invoke-virtual {v9, v15}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v15

    instance-of v0, v3, Lcom/google/gson/Gson;

    move/from16 v16, v0

    if-nez v16, :cond_4

    invoke-virtual {v3, v15, v8}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v13

    .end local v3    # "gson":Lcom/google/gson/Gson;
    :goto_3
    check-cast v13, Ljava/util/Map;

    .line 81
    .local v13, "update":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/yopeso/lieferando/net/requests/SettingsRequest;->mVersionName:Ljava/lang/String;

    invoke-interface {v13, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 82
    .local v14, "updateValue":Ljava/lang/String;
    if-eqz v14, :cond_6

    .line 83
    const-string v15, "s"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 84
    const/4 v15, 0x1

    invoke-virtual {v12, v15}, Lcom/yopeso/lieferando/model/SettingsContent;->setShouldUpdate(Z)V

    .line 93
    :cond_0
    :goto_4
    invoke-static/range {p1 .. p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v15

    invoke-static {v12, v15}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v15

    .line 96
    .end local v2    # "element":Lcom/google/gson/JsonElement;
    .end local v4    # "jsonString":Ljava/lang/String;
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "listType":Ljava/lang/reflect/Type;
    .end local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v8    # "mapType":Ljava/lang/reflect/Type;
    .end local v9    # "obj":Lcom/google/gson/JsonObject;
    .end local v10    # "parser":Lcom/google/gson/JsonParser;
    .end local v12    # "settings":Lcom/yopeso/lieferando/model/SettingsContent;
    .end local v13    # "update":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14    # "updateValue":Ljava/lang/String;
    :goto_5
    return-object v15

    .line 56
    .restart local v3    # "gson":Lcom/google/gson/Gson;
    .restart local v4    # "jsonString":Ljava/lang/String;
    :cond_1
    move-object v0, v3

    check-cast v0, Lcom/google/gson/Gson;

    move-object v15, v0

    move-object/from16 v0, v16

    invoke-static {v15, v4, v0}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    goto/16 :goto_0

    .line 69
    .restart local v2    # "element":Lcom/google/gson/JsonElement;
    .restart local v6    # "listType":Ljava/lang/reflect/Type;
    .restart local v8    # "mapType":Ljava/lang/reflect/Type;
    .restart local v9    # "obj":Lcom/google/gson/JsonObject;
    .restart local v10    # "parser":Lcom/google/gson/JsonParser;
    .restart local v12    # "settings":Lcom/yopeso/lieferando/model/SettingsContent;
    :cond_2
    move-object v0, v3

    check-cast v0, Lcom/google/gson/Gson;

    move-object v15, v0

    move-object/from16 v0, v16

    invoke-static {v15, v0, v6}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    .line 72
    .restart local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_3
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 73
    .local v11, "payment":Ljava/lang/String;
    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v7, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 94
    .end local v2    # "element":Lcom/google/gson/JsonElement;
    .end local v3    # "gson":Lcom/google/gson/Gson;
    .end local v4    # "jsonString":Ljava/lang/String;
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "listType":Ljava/lang/reflect/Type;
    .end local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v8    # "mapType":Ljava/lang/reflect/Type;
    .end local v9    # "obj":Lcom/google/gson/JsonObject;
    .end local v10    # "parser":Lcom/google/gson/JsonParser;
    .end local v11    # "payment":Ljava/lang/String;
    .end local v12    # "settings":Lcom/yopeso/lieferando/model/SettingsContent;
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 96
    new-instance v15, Lcom/android/volley/ParseError;

    invoke-direct {v15, v1}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v15}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v15

    goto :goto_5

    .line 80
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v2    # "element":Lcom/google/gson/JsonElement;
    .restart local v3    # "gson":Lcom/google/gson/Gson;
    .restart local v4    # "jsonString":Ljava/lang/String;
    .restart local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "listType":Ljava/lang/reflect/Type;
    .restart local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .restart local v8    # "mapType":Ljava/lang/reflect/Type;
    .restart local v9    # "obj":Lcom/google/gson/JsonObject;
    .restart local v10    # "parser":Lcom/google/gson/JsonParser;
    .restart local v12    # "settings":Lcom/yopeso/lieferando/model/SettingsContent;
    :cond_4
    :try_start_1
    check-cast v3, Lcom/google/gson/Gson;

    .end local v3    # "gson":Lcom/google/gson/Gson;
    invoke-static {v3, v15, v8}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v13

    goto :goto_3

    .line 85
    .restart local v13    # "update":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v14    # "updateValue":Ljava/lang/String;
    :cond_5
    const-string v15, "f"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 86
    const/4 v15, 0x1

    invoke-virtual {v12, v15}, Lcom/yopeso/lieferando/model/SettingsContent;->setForceUpdate(Z)V

    goto :goto_4

    .line 89
    :cond_6
    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Lcom/yopeso/lieferando/model/SettingsContent;->setShouldUpdate(Z)V

    .line 90
    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Lcom/yopeso/lieferando/model/SettingsContent;->setForceUpdate(Z)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method
