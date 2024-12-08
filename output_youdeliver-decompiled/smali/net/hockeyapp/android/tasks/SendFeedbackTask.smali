.class public Lnet/hockeyapp/android/tasks/SendFeedbackTask;
.super Landroid/os/AsyncTask;
.source "SendFeedbackTask.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field private context:Landroid/content/Context;

.field private email:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private isFetchMessages:Z

.field private name:Ljava/lang/String;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private subject:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private urlString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "urlString"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "email"    # Ljava/lang/String;
    .param p5, "subject"    # Ljava/lang/String;
    .param p6, "text"    # Ljava/lang/String;
    .param p7, "token"    # Ljava/lang/String;
    .param p8, "handler"    # Landroid/os/Handler;
    .param p9, "isFetchMessages"    # Z

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 100
    iput-object p1, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->context:Landroid/content/Context;

    .line 101
    iput-object p2, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->urlString:Ljava/lang/String;

    .line 102
    iput-object p3, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->name:Ljava/lang/String;

    .line 103
    iput-object p4, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->email:Ljava/lang/String;

    .line 104
    iput-object p5, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->subject:Ljava/lang/String;

    .line 105
    iput-object p6, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->text:Ljava/lang/String;

    .line 106
    iput-object p7, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->token:Ljava/lang/String;

    .line 107
    iput-object p8, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->handler:Landroid/os/Handler;

    .line 108
    iput-boolean p9, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->isFetchMessages:Z

    .line 110
    if-eqz p1, :cond_0

    .line 111
    invoke-static {p1}, Lnet/hockeyapp/android/Constants;->loadFromContext(Landroid/content/Context;)V

    .line 113
    :cond_0
    return-void
.end method

.method private doGet(Lorg/apache/http/client/HttpClient;)Ljava/util/HashMap;
    .locals 9
    .param p1, "httpClient"    # Lorg/apache/http/client/HttpClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/HttpClient;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .local v5, "sb":Ljava/lang/StringBuilder;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->urlString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->token:Ljava/lang/String;

    invoke-static {v7}, Lnet/hockeyapp/android/utils/Util;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 262
    .local v1, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    instance-of v6, p1, Lorg/apache/http/client/HttpClient;

    if-nez v6, :cond_0

    invoke-interface {p1, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 263
    .end local p1    # "httpClient":Lorg/apache/http/client/HttpClient;
    .local v2, "response":Lorg/apache/http/HttpResponse;
    :goto_0
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 265
    .local v3, "responseEntity":Lorg/apache/http/HttpEntity;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 266
    .local v4, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "type"

    const-string v7, "fetch"

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    const-string v6, "response"

    invoke-static {v3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    const-string v6, "status"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    .end local v2    # "response":Lorg/apache/http/HttpResponse;
    .end local v3    # "responseEntity":Lorg/apache/http/HttpEntity;
    .end local v4    # "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    return-object v4

    .line 262
    .restart local p1    # "httpClient":Lorg/apache/http/client/HttpClient;
    :cond_0
    check-cast p1, Lorg/apache/http/client/HttpClient;

    .end local p1    # "httpClient":Lorg/apache/http/client/HttpClient;
    invoke-static {p1, v1}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 282
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :goto_2
    const/4 v4, 0x0

    goto :goto_1

    .line 275
    :catch_1
    move-exception v0

    .line 276
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_2

    .line 278
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 279
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private doPostPut(Lorg/apache/http/client/HttpClient;)Ljava/util/HashMap;
    .locals 12
    .param p1, "httpClient"    # Lorg/apache/http/client/HttpClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/HttpClient;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 188
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v4, "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "name"

    iget-object v11, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->name:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "email"

    iget-object v11, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->email:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "subject"

    iget-object v11, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->subject:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "text"

    iget-object v11, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->text:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "bundle_identifier"

    sget-object v11, Lnet/hockeyapp/android/Constants;->APP_PACKAGE:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "bundle_short_version"

    sget-object v11, Lnet/hockeyapp/android/Constants;->APP_VERSION_NAME:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "bundle_version"

    sget-object v11, Lnet/hockeyapp/android/Constants;->APP_VERSION:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "os_version"

    sget-object v11, Lnet/hockeyapp/android/Constants;->ANDROID_VERSION:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "oem"

    sget-object v11, Lnet/hockeyapp/android/Constants;->PHONE_MANUFACTURER:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "model"

    sget-object v11, Lnet/hockeyapp/android/Constants;->PHONE_MODEL:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v9, "UTF-8"

    invoke-direct {v1, v4, v9}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 201
    .local v1, "form":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    const-string v9, "UTF-8"

    invoke-virtual {v1, v9}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 203
    const/4 v2, 0x0

    .line 204
    .local v2, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    const/4 v3, 0x0

    .line 205
    .local v3, "httpPut":Lorg/apache/http/client/methods/HttpPut;
    iget-object v9, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->token:Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 206
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->urlString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->token:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->urlString:Ljava/lang/String;

    .line 207
    new-instance v3, Lorg/apache/http/client/methods/HttpPut;

    .end local v3    # "httpPut":Lorg/apache/http/client/methods/HttpPut;
    iget-object v9, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->urlString:Ljava/lang/String;

    invoke-direct {v3, v9}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 213
    .restart local v3    # "httpPut":Lorg/apache/http/client/methods/HttpPut;
    :goto_0
    const/4 v6, 0x0

    .line 214
    .local v6, "response":Lorg/apache/http/HttpResponse;
    if-eqz v3, :cond_3

    .line 215
    invoke-virtual {v3, v1}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 216
    instance-of v9, p1, Lorg/apache/http/client/HttpClient;

    if-nez v9, :cond_2

    invoke-interface {p1, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 223
    .end local p1    # "httpClient":Lorg/apache/http/client/HttpClient;
    :cond_0
    :goto_1
    if-eqz v6, :cond_5

    .line 224
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 226
    .local v5, "resEntity":Lorg/apache/http/HttpEntity;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 227
    .local v7, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "type"

    const-string v10, "send"

    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string v9, "response"

    invoke-static {v5}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string v9, "status"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    .end local v1    # "form":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v2    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v3    # "httpPut":Lorg/apache/http/client/methods/HttpPut;
    .end local v4    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v5    # "resEntity":Lorg/apache/http/HttpEntity;
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    .end local v7    # "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_2
    return-object v7

    .line 210
    .restart local v1    # "form":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .restart local v2    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v3    # "httpPut":Lorg/apache/http/client/methods/HttpPut;
    .restart local v4    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local p1    # "httpClient":Lorg/apache/http/client/HttpClient;
    :cond_1
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    .end local v2    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    iget-object v9, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->urlString:Ljava/lang/String;

    invoke-direct {v2, v9}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .restart local v2    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    goto :goto_0

    .line 216
    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    :cond_2
    check-cast p1, Lorg/apache/http/client/HttpClient;

    .end local p1    # "httpClient":Lorg/apache/http/client/HttpClient;
    invoke-static {p1, v3}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    goto :goto_1

    .line 218
    .restart local p1    # "httpClient":Lorg/apache/http/client/HttpClient;
    :cond_3
    if-eqz v2, :cond_0

    .line 219
    invoke-virtual {v2, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 220
    instance-of v9, p1, Lorg/apache/http/client/HttpClient;

    if-nez v9, :cond_4

    invoke-interface {p1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .end local p1    # "httpClient":Lorg/apache/http/client/HttpClient;
    :goto_3
    goto :goto_1

    .restart local p1    # "httpClient":Lorg/apache/http/client/HttpClient;
    :cond_4
    check-cast p1, Lorg/apache/http/client/HttpClient;

    .end local p1    # "httpClient":Lorg/apache/http/client/HttpClient;
    invoke-static {p1, v2}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    goto :goto_3

    :cond_5
    move-object v7, v8

    .line 234
    goto :goto_2

    .line 236
    .end local v1    # "form":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v2    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v3    # "httpPut":Lorg/apache/http/client/methods/HttpPut;
    .end local v4    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_4
    move-object v7, v8

    .line 246
    goto :goto_2

    .line 239
    :catch_1
    move-exception v0

    .line 240
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_4

    .line 242
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v0

    .line 243
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public attach(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    iput-object p1, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->context:Landroid/content/Context;

    .line 117
    return-void
.end method

.method public detach()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->context:Landroid/content/Context;

    .line 121
    iput-object v0, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->progressDialog:Landroid/app/ProgressDialog;

    .line 122
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "SendFeedbackTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->doInBackground([Ljava/lang/Void;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "SendFeedbackTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/HashMap;
    .locals 2
    .param p1, "args"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    invoke-static {}, Lnet/hockeyapp/android/utils/ConnectionManager;->getInstance()Lnet/hockeyapp/android/utils/ConnectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lnet/hockeyapp/android/utils/ConnectionManager;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 140
    .local v0, "httpclient":Lorg/apache/http/client/HttpClient;
    iget-boolean v1, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->isFetchMessages:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->token:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 142
    invoke-direct {p0, v0}, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->doGet(Lorg/apache/http/client/HttpClient;)Ljava/util/HashMap;

    move-result-object v1

    .line 152
    :goto_0
    return-object v1

    .line 144
    :cond_0
    iget-boolean v1, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->isFetchMessages:Z

    if-nez v1, :cond_1

    .line 149
    invoke-direct {p0, v0}, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->doPostPut(Lorg/apache/http/client/HttpClient;)Ljava/util/HashMap;

    move-result-object v1

    goto :goto_0

    .line 152
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "SendFeedbackTask#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->onPostExecute(Ljava/util/HashMap;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "SendFeedbackTask#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_0

    .line 159
    :try_start_0
    iget-object v3, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :cond_0
    :goto_0
    iget-object v3, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->handler:Landroid/os/Handler;

    if-eqz v3, :cond_1

    .line 168
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 169
    .local v2, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 171
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "request_type"

    const-string v3, "type"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v4, "feedback_response"

    const-string v3, "response"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v4, "feedback_status"

    const-string v3, "status"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 176
    iget-object v3, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 178
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_1
    return-void

    .line 161
    :catch_0
    move-exception v1

    .line 162
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 126
    const-string v0, "Sending feedback.."

    .line 127
    .local v0, "loadingMessage":Ljava/lang/String;
    iget-boolean v1, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->isFetchMessages:Z

    if-eqz v1, :cond_0

    .line 128
    const-string v0, "Retrieving discussions..."

    .line 131
    :cond_0
    iget-object v1, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 132
    :cond_1
    iget-object v1, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->context:Landroid/content/Context;

    const-string v2, ""

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->progressDialog:Landroid/app/ProgressDialog;

    .line 134
    :cond_2
    return-void
.end method
