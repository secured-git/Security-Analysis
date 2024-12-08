.class public abstract Lcom/yopeso/lieferando/net/requests/base/JsonRequest;
.super Lcom/android/volley/toolbox/JsonRequest;
.source "JsonRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/volley/toolbox/JsonRequest",
        "<TT;>;"
    }
.end annotation


# static fields
.field public static final REQUEST_PROTOKOLL:Ljava/lang/String; = "http:"


# instance fields
.field private mBody:Ljava/lang/Object;

.field private mGson:Lcom/google/gson/Gson;

.field private mParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mRequireAuth:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 10
    .param p1, "method"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "requestBody"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<TT;>;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/yopeso/lieferando/net/requests/base/JsonRequest;, "Lcom/yopeso/lieferando/net/requests/base/JsonRequest<TT;>;"
    .local p4, "listener":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<TT;>;"
    .local p5, "errorListener":Lcom/android/volley/Response$ErrorListener;, "Lcom/android/volley/Response$ErrorListener;"
    const/4 v9, 0x3

    const v8, 0x927c0

    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 40
    const-string v0, "http:"

    invoke-static {p2, v0}, Lcom/yopeso/lieferando/net/requests/base/JsonRequest;->getValidURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/JsonRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 33
    iput-boolean v7, p0, Lcom/yopeso/lieferando/net/requests/base/JsonRequest;->mRequireAuth:Z

    .line 41
    iget-object v0, p0, Lcom/yopeso/lieferando/net/requests/base/JsonRequest;->mParams:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/net/requests/base/JsonRequest;->mParams:Ljava/util/Map;

    .line 43
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    iget-object v0, p0, Lcom/yopeso/lieferando/net/requests/base/JsonRequest;->mParams:Ljava/util/Map;

    const-string v1, "YD-X-Domain"

    const-string v2, "pyszne.pl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_0
    :goto_0
    const-class v0, Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "mParams:"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yopeso/lieferando/net/requests/base/JsonRequest;->mParams:Ljava/util/Map;

    const-string v3, "YD-X-Domain"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const-class v0, Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Request:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const-class v0, Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Body:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    if-nez p1, :cond_4

    .line 59
    new-instance v0, Lcom/android/volley/DefaultRetryPolicy;

    const/16 v1, 0x1b58

    invoke-direct {v0, v1, v9, v6}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/net/requests/base/JsonRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    .line 67
    :cond_1
    :goto_1
    return-void

    .line 46
    :cond_2
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 47
    iget-object v0, p0, Lcom/yopeso/lieferando/net/requests/base/JsonRequest;->mParams:Ljava/util/Map;

    const-string v1, "YD-X-Domain"

    const-string v2, "lieferservice.de"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 51
    :cond_3
    iget-object v0, p0, Lcom/yopeso/lieferando/net/requests/base/JsonRequest;->mParams:Ljava/util/Map;

    const-string v1, "YD-X-Domain"

    const-string v2, "lieferando.de"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 60
    :cond_4
    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    .line 61
    new-instance v0, Lcom/android/volley/DefaultRetryPolicy;

    invoke-direct {v0, v8, v7, v6}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/net/requests/base/JsonRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    goto :goto_1

    .line 62
    :cond_5
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    .line 63
    new-instance v0, Lcom/android/volley/DefaultRetryPolicy;

    invoke-direct {v0, v8, v7, v6}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/net/requests/base/JsonRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    goto :goto_1

    .line 64
    :cond_6
    if-ne p1, v9, :cond_1

    .line 65
    new-instance v0, Lcom/android/volley/DefaultRetryPolicy;

    invoke-direct {v0, v8, v7, v6}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/net/requests/base/JsonRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    goto :goto_1
.end method

.method public static getValidURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 71
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 77
    .end local p0    # "url":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static paramsEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "param"    # Ljava/lang/String;

    .prologue
    .line 213
    :try_start_0
    const-string v1, "utf-8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 217
    :goto_0
    return-object v1

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 217
    const-string v1, ""

    goto :goto_0
.end method

.method private processResponseHeaders(Ljava/util/Map;)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p0, "this":Lcom/yopeso/lieferando/net/requests/base/JsonRequest;, "Lcom/yopeso/lieferando/net/requests/base/JsonRequest<TT;>;"
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "Date"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 177
    .local v3, "dateHeader":Ljava/lang/String;
    const-class v6, Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "DATE FROM SERVER processResponseHeaders:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    if-eqz v3, :cond_0

    .line 179
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v6, "EEE, dd MMM yyyy kk:mm:ss zzz"

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v4, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 181
    .local v4, "df":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 182
    .local v0, "currentDate":Ljava/util/Date;
    sput-object v0, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    .line 184
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MMM-dd HH:mm:ss"

    invoke-direct {v1, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 190
    .local v1, "dateFormatGmt":Ljava/text/SimpleDateFormat;
    const-string v6, "Europe/Berlin"

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 191
    const-string v6, "GMT+02"

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 200
    :goto_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MMM-dd HH:mm:ss"

    invoke-direct {v2, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 203
    .local v2, "dateFormatLocal":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    sput-object v6, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    .line 204
    const-class v6, Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "DATE FROM SERVER UPDATED:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {v8}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .end local v0    # "currentDate":Ljava/util/Date;
    .end local v1    # "dateFormatGmt":Ljava/text/SimpleDateFormat;
    .end local v2    # "dateFormatLocal":Ljava/text/SimpleDateFormat;
    .end local v4    # "df":Ljava/text/SimpleDateFormat;
    :cond_0
    :goto_1
    return-void

    .line 195
    .restart local v0    # "currentDate":Ljava/util/Date;
    .restart local v1    # "dateFormatGmt":Ljava/text/SimpleDateFormat;
    .restart local v4    # "df":Ljava/text/SimpleDateFormat;
    :cond_1
    const-string v6, "GMT+01"

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 205
    .end local v0    # "currentDate":Ljava/util/Date;
    .end local v1    # "dateFormatGmt":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v5

    .line 206
    .local v5, "e":Ljava/text/ParseException;
    invoke-virtual {v5}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public addBody(Ljava/lang/Object;)Lcom/yopeso/lieferando/net/requests/base/JsonRequest;
    .locals 0
    .param p1, "body"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/yopeso/lieferando/net/requests/base/JsonRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, "this":Lcom/yopeso/lieferando/net/requests/base/JsonRequest;, "Lcom/yopeso/lieferando/net/requests/base/JsonRequest<TT;>;"
    iput-object p1, p0, Lcom/yopeso/lieferando/net/requests/base/JsonRequest;->mBody:Ljava/lang/Object;

    .line 151
    return-object p0
.end method

.method public addBody(Ljava/lang/Object;Lcom/google/gson/Gson;)Lcom/yopeso/lieferando/net/requests/base/JsonRequest;
    .locals 0
    .param p1, "body"    # Ljava/lang/Object;
    .param p2, "serializer"    # Lcom/google/gson/Gson;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/yopeso/lieferando/net/requests/base/JsonRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "this":Lcom/yopeso/lieferando/net/requests/base/JsonRequest;, "Lcom/yopeso/lieferando/net/requests/base/JsonRequest<TT;>;"
    iput-object p1, p0, Lcom/yopeso/lieferando/net/requests/base/JsonRequest;->mBody:Ljava/lang/Object;

    .line 164
    iput-object p2, p0, Lcom/yopeso/lieferando/net/requests/base/JsonRequest;->mGson:Lcom/google/gson/Gson;

    .line 165
    return-object p0
.end method

.method public getBody()[B
    .locals 4

    .prologue
    .line 121
    .local p0, "this":Lcom/yopeso/lieferando/net/requests/base/JsonRequest;, "Lcom/yopeso/lieferando/net/requests/base/JsonRequest<TT;>;"
    iget-object v1, p0, Lcom/yopeso/lieferando/net/requests/base/JsonRequest;->mBody:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/yopeso/lieferando/net/requests/base/JsonRequest;->mGson:Lcom/google/gson/Gson;

    if-eqz v1, :cond_1

    .line 124
    iget-object v1, p0, Lcom/yopeso/lieferando/net/requests/base/JsonRequest;->mGson:Lcom/google/gson/Gson;

    iget-object v2, p0, Lcom/yopeso/lieferando/net/requests/base/JsonRequest;->mBody:Ljava/lang/Object;

    instance-of v3, v1, Lcom/google/gson/Gson;

    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 131
    :goto_1
    return-object v1

    .line 124
    :cond_0
    check-cast v1, Lcom/google/gson/Gson;

    invoke-static {v1, v2}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->toJson(Lcom/google/gson/Gson;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 126
    :cond_1
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/yopeso/lieferando/net/requests/base/JsonRequest;->mBody:Ljava/lang/Object;

    instance-of v3, v1, Lcom/google/gson/Gson;

    if-nez v3, :cond_2

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_1

    :cond_2
    check-cast v1, Lcom/google/gson/Gson;

    invoke-static {v1, v2}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->toJson(Lcom/google/gson/Gson;Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_2

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 131
    .end local v0    # "ex":Ljava/io/UnsupportedEncodingException;
    :cond_3
    invoke-super {p0}, Lcom/android/volley/toolbox/JsonRequest;->getBody()[B

    move-result-object v1

    goto :goto_1
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lcom/yopeso/lieferando/net/requests/base/JsonRequest;, "Lcom/yopeso/lieferando/net/requests/base/JsonRequest<TT;>;"
    invoke-super {p0}, Lcom/android/volley/toolbox/JsonRequest;->getHeaders()Ljava/util/Map;

    move-result-object v0

    .line 94
    .local v0, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 98
    .restart local v0    # "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-static {v0}, Lcom/yopeso/lieferando/util/AuthUtils;->addHeaders(Ljava/util/Map;)V

    .line 99
    iget-boolean v1, p0, Lcom/yopeso/lieferando/net/requests/base/JsonRequest;->mRequireAuth:Z

    if-eqz v1, :cond_2

    .line 100
    invoke-static {v0}, Lcom/yopeso/lieferando/util/AuthUtils;->addAuthorizationHeader(Ljava/util/Map;)V

    .line 104
    :cond_2
    const-string v1, "appUuid"

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/yopeso/lieferando/util/DeviceUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v1, "User-agent"

    const-string v2, "lieferando-android-app"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v1, "appVersion"

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/yopeso/lieferando/util/DeviceUtils;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v1, "device"

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/yopeso/lieferando/util/DeviceUtils;->getDeviceInformation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-class v1, Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Header:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-object v0
.end method

.method protected getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "this":Lcom/yopeso/lieferando/net/requests/base/JsonRequest;, "Lcom/yopeso/lieferando/net/requests/base/JsonRequest<TT;>;"
    iget-object v0, p0, Lcom/yopeso/lieferando/net/requests/base/JsonRequest;->mParams:Ljava/util/Map;

    return-object v0
.end method

.method protected parseNetworkError(Lcom/android/volley/VolleyError;)Lcom/android/volley/VolleyError;
    .locals 3
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 223
    .local p0, "this":Lcom/yopeso/lieferando/net/requests/base/JsonRequest;, "Lcom/yopeso/lieferando/net/requests/base/JsonRequest<TT;>;"
    const-class v0, Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parseNetworkError"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    invoke-static {v0}, Lcom/yopeso/lieferando/net/requests/base/ApiResponse;->isValid(Lcom/android/volley/NetworkResponse;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Lcom/yopeso/lieferando/net/requests/base/ApiError;

    iget-object v1, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    invoke-direct {v0, v1}, Lcom/yopeso/lieferando/net/requests/base/ApiError;-><init>(Lcom/android/volley/NetworkResponse;)V

    move-object p1, v0

    .line 230
    .end local p1    # "volleyError":Lcom/android/volley/VolleyError;
    :cond_0
    return-object p1
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 1
    .param p1, "response"    # Lcom/android/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, "this":Lcom/yopeso/lieferando/net/requests/base/JsonRequest;, "Lcom/yopeso/lieferando/net/requests/base/JsonRequest<TT;>;"
    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/yopeso/lieferando/net/requests/base/JsonRequest;->processResponseHeaders(Ljava/util/Map;)V

    .line 171
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/net/requests/base/JsonRequest;->parseResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;

    move-result-object v0

    return-object v0
.end method

.method protected abstract parseResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<TT;>;"
        }
    .end annotation
.end method

.method public withAuth()Lcom/yopeso/lieferando/net/requests/base/JsonRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yopeso/lieferando/net/requests/base/JsonRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lcom/yopeso/lieferando/net/requests/base/JsonRequest;, "Lcom/yopeso/lieferando/net/requests/base/JsonRequest<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yopeso/lieferando/net/requests/base/JsonRequest;->mRequireAuth:Z

    .line 88
    return-object p0
.end method

.method public withTag(Ljava/lang/Object;)Lcom/yopeso/lieferando/net/requests/base/JsonRequest;
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/yopeso/lieferando/net/requests/base/JsonRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "this":Lcom/yopeso/lieferando/net/requests/base/JsonRequest;, "Lcom/yopeso/lieferando/net/requests/base/JsonRequest<TT;>;"
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/net/requests/base/JsonRequest;->setTag(Ljava/lang/Object;)V

    .line 139
    return-object p0
.end method
