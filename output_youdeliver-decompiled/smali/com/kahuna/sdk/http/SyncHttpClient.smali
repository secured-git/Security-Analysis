.class public abstract Lcom/kahuna/sdk/http/SyncHttpClient;
.super Lcom/kahuna/sdk/http/AsyncHttpClient;
.source "SyncHttpClient.java"


# instance fields
.field private responseCode:I

.field protected responseHandler:Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;

.field protected result:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/kahuna/sdk/http/AsyncHttpClient;-><init>()V

    .line 18
    new-instance v0, Lcom/kahuna/sdk/http/SyncHttpClient$1;

    invoke-direct {v0, p0}, Lcom/kahuna/sdk/http/SyncHttpClient$1;-><init>(Lcom/kahuna/sdk/http/SyncHttpClient;)V

    iput-object v0, p0, Lcom/kahuna/sdk/http/SyncHttpClient;->responseHandler:Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;

    return-void
.end method

.method static synthetic access$002(Lcom/kahuna/sdk/http/SyncHttpClient;I)I
    .locals 0
    .param p0, "x0"    # Lcom/kahuna/sdk/http/SyncHttpClient;
    .param p1, "x1"    # I

    .prologue
    .line 10
    iput p1, p0, Lcom/kahuna/sdk/http/SyncHttpClient;->responseCode:I

    return p1
.end method


# virtual methods
.method public delete(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 119
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/kahuna/sdk/http/SyncHttpClient;->responseHandler:Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;

    invoke-virtual {p0, p1, v0, v1}, Lcom/kahuna/sdk/http/SyncHttpClient;->delete(Ljava/lang/String;Lcom/kahuna/sdk/http/RequestParams;Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;)V

    .line 120
    iget-object v0, p0, Lcom/kahuna/sdk/http/SyncHttpClient;->result:Ljava/lang/String;

    return-object v0
.end method

.method public delete(Ljava/lang/String;Lcom/kahuna/sdk/http/RequestParams;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/kahuna/sdk/http/RequestParams;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/kahuna/sdk/http/SyncHttpClient;->responseHandler:Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;

    invoke-virtual {p0, p1, p2, v0}, Lcom/kahuna/sdk/http/SyncHttpClient;->delete(Ljava/lang/String;Lcom/kahuna/sdk/http/RequestParams;Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;)V

    .line 115
    iget-object v0, p0, Lcom/kahuna/sdk/http/SyncHttpClient;->result:Ljava/lang/String;

    return-object v0
.end method

.method public delete(Ljava/lang/String;Lcom/kahuna/sdk/http/RequestParams;Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "queryParams"    # Lcom/kahuna/sdk/http/RequestParams;
    .param p3, "responseHandler"    # Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;

    .prologue
    .line 76
    invoke-virtual {p0, p1, p3}, Lcom/kahuna/sdk/http/SyncHttpClient;->delete(Ljava/lang/String;Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;)V

    .line 77
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 89
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/kahuna/sdk/http/SyncHttpClient;->responseHandler:Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;

    invoke-virtual {p0, p1, v0, v1}, Lcom/kahuna/sdk/http/SyncHttpClient;->get(Ljava/lang/String;Lcom/kahuna/sdk/http/RequestParams;Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;)V

    .line 90
    iget-object v0, p0, Lcom/kahuna/sdk/http/SyncHttpClient;->result:Ljava/lang/String;

    return-object v0
.end method

.method public get(Ljava/lang/String;Lcom/kahuna/sdk/http/RequestParams;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/kahuna/sdk/http/RequestParams;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/kahuna/sdk/http/SyncHttpClient;->responseHandler:Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;

    invoke-virtual {p0, p1, p2, v0}, Lcom/kahuna/sdk/http/SyncHttpClient;->get(Ljava/lang/String;Lcom/kahuna/sdk/http/RequestParams;Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;)V

    .line 85
    iget-object v0, p0, Lcom/kahuna/sdk/http/SyncHttpClient;->result:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/kahuna/sdk/http/SyncHttpClient;->responseCode:I

    return v0
.end method

.method public abstract onRequestFailed(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public post(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 109
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/kahuna/sdk/http/SyncHttpClient;->responseHandler:Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;

    invoke-virtual {p0, p1, v0, v1}, Lcom/kahuna/sdk/http/SyncHttpClient;->post(Ljava/lang/String;Lcom/kahuna/sdk/http/RequestParams;Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;)V

    .line 110
    iget-object v0, p0, Lcom/kahuna/sdk/http/SyncHttpClient;->result:Ljava/lang/String;

    return-object v0
.end method

.method public post(Ljava/lang/String;Lcom/kahuna/sdk/http/RequestParams;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/kahuna/sdk/http/RequestParams;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/kahuna/sdk/http/SyncHttpClient;->responseHandler:Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;

    invoke-virtual {p0, p1, p2, v0}, Lcom/kahuna/sdk/http/SyncHttpClient;->post(Ljava/lang/String;Lcom/kahuna/sdk/http/RequestParams;Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;)V

    .line 105
    iget-object v0, p0, Lcom/kahuna/sdk/http/SyncHttpClient;->result:Ljava/lang/String;

    return-object v0
.end method

.method public put(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 99
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/kahuna/sdk/http/SyncHttpClient;->responseHandler:Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;

    invoke-virtual {p0, p1, v0, v1}, Lcom/kahuna/sdk/http/SyncHttpClient;->put(Ljava/lang/String;Lcom/kahuna/sdk/http/RequestParams;Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;)V

    .line 100
    iget-object v0, p0, Lcom/kahuna/sdk/http/SyncHttpClient;->result:Ljava/lang/String;

    return-object v0
.end method

.method public put(Ljava/lang/String;Lcom/kahuna/sdk/http/RequestParams;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/kahuna/sdk/http/RequestParams;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/kahuna/sdk/http/SyncHttpClient;->responseHandler:Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;

    invoke-virtual {p0, p1, p2, v0}, Lcom/kahuna/sdk/http/SyncHttpClient;->put(Ljava/lang/String;Lcom/kahuna/sdk/http/RequestParams;Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;)V

    .line 95
    iget-object v0, p0, Lcom/kahuna/sdk/http/SyncHttpClient;->result:Ljava/lang/String;

    return-object v0
.end method

.method protected sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;Landroid/content/Context;)V
    .locals 1
    .param p1, "client"    # Lorg/apache/http/impl/client/DefaultHttpClient;
    .param p2, "httpContext"    # Lorg/apache/http/protocol/HttpContext;
    .param p3, "uriRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p4, "contentType"    # Ljava/lang/String;
    .param p5, "responseHandler"    # Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;
    .param p6, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    if-eqz p4, :cond_0

    .line 61
    const-string v0, "Content-Type"

    invoke-interface {p3, v0, p4}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_0
    new-instance v0, Lcom/kahuna/sdk/http/AsyncHttpRequest;

    invoke-direct {v0, p1, p2, p3, p5}, Lcom/kahuna/sdk/http/AsyncHttpRequest;-><init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;)V

    invoke-virtual {v0}, Lcom/kahuna/sdk/http/AsyncHttpRequest;->run()V

    .line 69
    return-void
.end method
