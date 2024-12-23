.class public Lcom/kahuna/sdk/http/AsyncHttpClient;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kahuna/sdk/http/AsyncHttpClient$InflatingEntity;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_CONNECTIONS:I = 0xa

.field private static final DEFAULT_MAX_RETRIES:I = 0x5

.field private static final DEFAULT_SOCKET_BUFFER_SIZE:I = 0x2000

.field private static final DEFAULT_SOCKET_TIMEOUT:I = 0x2710

.field private static final ENCODING_GZIP:Ljava/lang/String; = "gzip"

.field private static final HEADER_ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field private static final VERSION:Ljava/lang/String; = "1.4.3"

.field private static maxConnections:I

.field private static socketTimeout:I


# instance fields
.field private final clientHeaderMap:Ljava/util/Map;
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

.field private final httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private final httpContext:Lorg/apache/http/protocol/HttpContext;

.field private final requestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/util/concurrent/Future",
            "<*>;>;>;>;"
        }
    .end annotation
.end field

.field private threadPool:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    const/16 v0, 0xa

    sput v0, Lcom/kahuna/sdk/http/AsyncHttpClient;->maxConnections:I

    .line 103
    const/16 v0, 0x2710

    sput v0, Lcom/kahuna/sdk/http/AsyncHttpClient;->socketTimeout:I

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 118
    .local v1, "httpParams":Lorg/apache/http/params/BasicHttpParams;
    sget v3, Lcom/kahuna/sdk/http/AsyncHttpClient;->socketTimeout:I

    int-to-long v4, v3

    invoke-static {v1, v4, v5}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 119
    new-instance v3, Lorg/apache/http/conn/params/ConnPerRouteBean;

    sget v4, Lcom/kahuna/sdk/http/AsyncHttpClient;->maxConnections:I

    invoke-direct {v3, v4}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v1, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 120
    const/16 v3, 0xa

    invoke-static {v1, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 122
    sget v3, Lcom/kahuna/sdk/http/AsyncHttpClient;->socketTimeout:I

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 123
    sget v3, Lcom/kahuna/sdk/http/AsyncHttpClient;->socketTimeout:I

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 124
    invoke-static {v1, v6}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    .line 125
    const/16 v3, 0x2000

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 127
    sget-object v3, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 128
    const-string v3, "android-async-http/%s (http://loopj.com/android-async-http)"

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "1.4.3"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 130
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 131
    .local v2, "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v5

    const/16 v6, 0x50

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 132
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v5

    const/16 v6, 0x1bb

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 133
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 135
    .local v0, "cm":Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    new-instance v3, Lorg/apache/http/protocol/SyncBasicHttpContext;

    new-instance v4, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v4}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    invoke-direct {v3, v4}, Lorg/apache/http/protocol/SyncBasicHttpContext;-><init>(Lorg/apache/http/protocol/HttpContext;)V

    iput-object v3, p0, Lcom/kahuna/sdk/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    .line 136
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v3, p0, Lcom/kahuna/sdk/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 137
    iget-object v3, p0, Lcom/kahuna/sdk/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v4, Lcom/kahuna/sdk/http/AsyncHttpClient$1;

    invoke-direct {v4, p0}, Lcom/kahuna/sdk/http/AsyncHttpClient$1;-><init>(Lcom/kahuna/sdk/http/AsyncHttpClient;)V

    invoke-virtual {v3, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 149
    iget-object v3, p0, Lcom/kahuna/sdk/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v4, Lcom/kahuna/sdk/http/AsyncHttpClient$2;

    invoke-direct {v4, p0}, Lcom/kahuna/sdk/http/AsyncHttpClient$2;-><init>(Lcom/kahuna/sdk/http/AsyncHttpClient;)V

    invoke-virtual {v3, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 168
    iget-object v3, p0, Lcom/kahuna/sdk/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v4, Lcom/kahuna/sdk/http/RetryHandler;

    const/4 v5, 0x5

    invoke-direct {v4, v5}, Lcom/kahuna/sdk/http/RetryHandler;-><init>(I)V

    invoke-virtual {v3, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 170
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v3, p0, Lcom/kahuna/sdk/http/AsyncHttpClient;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 172
    new-instance v3, Ljava/util/WeakHashMap;

    invoke-direct {v3}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v3, p0, Lcom/kahuna/sdk/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    .line 173
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/kahuna/sdk/http/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;

    .line 174
    return-void
.end method

.method static synthetic access$000(Lcom/kahuna/sdk/http/AsyncHttpClient;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/kahuna/sdk/http/AsyncHttpClient;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/kahuna/sdk/http/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;

    return-object v0
.end method

.method private addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    .locals 0
    .param p1, "requestBase"    # Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    .param p2, "entity"    # Lorg/apache/http/HttpEntity;

    .prologue
    .line 598
    if-eqz p2, :cond_0

    .line 599
    invoke-virtual {p1, p2}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 602
    :cond_0
    return-object p1
.end method

.method public static getUrlWithQueryString(Ljava/lang/String;Lcom/kahuna/sdk/http/RequestParams;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "params"    # Lcom/kahuna/sdk/http/RequestParams;

    .prologue
    .line 575
    if-eqz p1, :cond_0

    .line 576
    invoke-virtual {p1}, Lcom/kahuna/sdk/http/RequestParams;->getParamString()Ljava/lang/String;

    move-result-object v0

    .line 577
    .local v0, "paramString":Ljava/lang/String;
    const-string v1, "?"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 578
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 584
    .end local v0    # "paramString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 580
    .restart local v0    # "paramString":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private paramsToEntity(Lcom/kahuna/sdk/http/RequestParams;)Lorg/apache/http/HttpEntity;
    .locals 1
    .param p1, "params"    # Lcom/kahuna/sdk/http/RequestParams;

    .prologue
    .line 588
    const/4 v0, 0x0

    .line 590
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    if-eqz p1, :cond_0

    .line 591
    invoke-virtual {p1}, Lcom/kahuna/sdk/http/RequestParams;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 594
    :cond_0
    return-object v0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/kahuna/sdk/http/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    return-void
.end method

.method public cancelRequests(Landroid/content/Context;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mayInterruptIfRunning"    # Z

    .prologue
    .line 286
    iget-object v4, p0, Lcom/kahuna/sdk/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 287
    .local v2, "requestList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Ljava/util/concurrent/Future<*>;>;>;"
    if-eqz v2, :cond_1

    .line 288
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 289
    .local v3, "requestRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/concurrent/Future<*>;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 290
    .local v1, "request":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    if-eqz v1, :cond_0

    .line 291
    invoke-interface {v1, p2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    .line 295
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "request":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    .end local v3    # "requestRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/concurrent/Future<*>;>;"
    :cond_1
    iget-object v4, p0, Lcom/kahuna/sdk/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    return-void
.end method

.method public delete(Landroid/content/Context;Ljava/lang/String;Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "responseHandler"    # Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;

    .prologue
    .line 534
    new-instance v3, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v3, p2}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .line 535
    .local v3, "delete":Lorg/apache/http/client/methods/HttpDelete;
    iget-object v1, p0, Lcom/kahuna/sdk/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/kahuna/sdk/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p3

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/kahuna/sdk/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;Landroid/content/Context;)V

    .line 536
    return-void
.end method

.method public delete(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "headers"    # [Lorg/apache/http/Header;
    .param p4, "responseHandler"    # Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;

    .prologue
    .line 546
    new-instance v3, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v3, p2}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .line 547
    .local v3, "delete":Lorg/apache/http/client/methods/HttpDelete;
    if-eqz p3, :cond_0

    invoke-virtual {v3, p3}, Lorg/apache/http/client/methods/HttpDelete;->setHeaders([Lorg/apache/http/Header;)V

    .line 548
    :cond_0
    iget-object v1, p0, Lcom/kahuna/sdk/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/kahuna/sdk/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p4

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/kahuna/sdk/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;Landroid/content/Context;)V

    .line 549
    return-void
.end method

.method public delete(Ljava/lang/String;Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "responseHandler"    # Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;

    .prologue
    .line 524
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/kahuna/sdk/http/AsyncHttpClient;->delete(Landroid/content/Context;Ljava/lang/String;Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;)V

    .line 525
    return-void
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "responseHandler"    # Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;

    .prologue
    .line 329
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/kahuna/sdk/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/kahuna/sdk/http/RequestParams;Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;)V

    .line 330
    return-void
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;Lcom/kahuna/sdk/http/RequestParams;Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/kahuna/sdk/http/RequestParams;
    .param p4, "responseHandler"    # Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;

    .prologue
    .line 340
    iget-object v1, p0, Lcom/kahuna/sdk/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/kahuna/sdk/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-static {p2, p3}, Lcom/kahuna/sdk/http/AsyncHttpClient;->getUrlWithQueryString(Ljava/lang/String;Lcom/kahuna/sdk/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p4

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/kahuna/sdk/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;Landroid/content/Context;)V

    .line 341
    return-void
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/kahuna/sdk/http/RequestParams;Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "headers"    # [Lorg/apache/http/Header;
    .param p4, "params"    # Lcom/kahuna/sdk/http/RequestParams;
    .param p5, "responseHandler"    # Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;

    .prologue
    .line 354
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-static {p2, p4}, Lcom/kahuna/sdk/http/AsyncHttpClient;->getUrlWithQueryString(Ljava/lang/String;Lcom/kahuna/sdk/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 355
    .local v3, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    if-eqz p3, :cond_0

    invoke-interface {v3, p3}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeaders([Lorg/apache/http/Header;)V

    .line 356
    :cond_0
    iget-object v1, p0, Lcom/kahuna/sdk/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/kahuna/sdk/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p5

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/kahuna/sdk/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;Landroid/content/Context;)V

    .line 358
    return-void
.end method

.method public get(Ljava/lang/String;Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "responseHandler"    # Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;

    .prologue
    const/4 v0, 0x0

    .line 309
    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/kahuna/sdk/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/kahuna/sdk/http/RequestParams;Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;)V

    .line 310
    return-void
.end method

.method public get(Ljava/lang/String;Lcom/kahuna/sdk/http/RequestParams;Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/kahuna/sdk/http/RequestParams;
    .param p3, "responseHandler"    # Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;

    .prologue
    .line 319
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/kahuna/sdk/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/kahuna/sdk/http/RequestParams;Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;)V

    .line 320
    return-void
.end method

.method public getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/kahuna/sdk/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-object v0
.end method

.method public getHttpContext()Lorg/apache/http/protocol/HttpContext;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/kahuna/sdk/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    return-object v0
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;Lcom/kahuna/sdk/http/RequestParams;Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/kahuna/sdk/http/RequestParams;
    .param p4, "responseHandler"    # Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;

    .prologue
    .line 392
    invoke-direct {p0, p3}, Lcom/kahuna/sdk/http/AsyncHttpClient;->paramsToEntity(Lcom/kahuna/sdk/http/RequestParams;)Lorg/apache/http/HttpEntity;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/kahuna/sdk/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;)V

    .line 393
    return-void
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "entity"    # Lorg/apache/http/HttpEntity;
    .param p4, "contentType"    # Ljava/lang/String;
    .param p5, "responseHandler"    # Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;

    .prologue
    .line 404
    iget-object v1, p0, Lcom/kahuna/sdk/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/kahuna/sdk/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/kahuna/sdk/http/AsyncHttpClient;->addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/kahuna/sdk/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;Landroid/content/Context;)V

    .line 405
    return-void
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/kahuna/sdk/http/RequestParams;Ljava/lang/String;Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "headers"    # [Lorg/apache/http/Header;
    .param p4, "params"    # Lcom/kahuna/sdk/http/RequestParams;
    .param p5, "contentType"    # Ljava/lang/String;
    .param p6, "responseHandler"    # Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;

    .prologue
    .line 422
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 423
    .local v3, "request":Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    if-eqz p4, :cond_0

    invoke-direct {p0, p4}, Lcom/kahuna/sdk/http/AsyncHttpClient;->paramsToEntity(Lcom/kahuna/sdk/http/RequestParams;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 424
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {v3, p3}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lorg/apache/http/Header;)V

    .line 425
    :cond_1
    iget-object v1, p0, Lcom/kahuna/sdk/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/kahuna/sdk/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    move-object v0, p0

    move-object v4, p5

    move-object v5, p6

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/kahuna/sdk/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;Landroid/content/Context;)V

    .line 427
    return-void
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "headers"    # [Lorg/apache/http/Header;
    .param p4, "entity"    # Lorg/apache/http/HttpEntity;
    .param p5, "contentType"    # Ljava/lang/String;
    .param p6, "responseHandler"    # Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;

    .prologue
    .line 446
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p4}, Lcom/kahuna/sdk/http/AsyncHttpClient;->addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    .line 447
    .local v3, "request":Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    if-eqz p3, :cond_0

    invoke-virtual {v3, p3}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lorg/apache/http/Header;)V

    .line 448
    :cond_0
    iget-object v1, p0, Lcom/kahuna/sdk/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/kahuna/sdk/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    move-object v0, p0

    move-object v4, p5

    move-object v5, p6

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/kahuna/sdk/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;Landroid/content/Context;)V

    .line 449
    return-void
.end method

.method public post(Ljava/lang/String;Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "responseHandler"    # Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;

    .prologue
    const/4 v0, 0x0

    .line 371
    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/kahuna/sdk/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/kahuna/sdk/http/RequestParams;Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;)V

    .line 372
    return-void
.end method

.method public post(Ljava/lang/String;Lcom/kahuna/sdk/http/RequestParams;Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/kahuna/sdk/http/RequestParams;
    .param p3, "responseHandler"    # Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;

    .prologue
    .line 381
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/kahuna/sdk/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/kahuna/sdk/http/RequestParams;Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;)V

    .line 382
    return-void
.end method

.method public put(Landroid/content/Context;Ljava/lang/String;Lcom/kahuna/sdk/http/RequestParams;Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/kahuna/sdk/http/RequestParams;
    .param p4, "responseHandler"    # Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;

    .prologue
    .line 482
    invoke-direct {p0, p3}, Lcom/kahuna/sdk/http/AsyncHttpClient;->paramsToEntity(Lcom/kahuna/sdk/http/RequestParams;)Lorg/apache/http/HttpEntity;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/kahuna/sdk/http/AsyncHttpClient;->put(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;)V

    .line 483
    return-void
.end method

.method public put(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "entity"    # Lorg/apache/http/HttpEntity;
    .param p4, "contentType"    # Ljava/lang/String;
    .param p5, "responseHandler"    # Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;

    .prologue
    .line 495
    iget-object v1, p0, Lcom/kahuna/sdk/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/kahuna/sdk/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/kahuna/sdk/http/AsyncHttpClient;->addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/kahuna/sdk/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;Landroid/content/Context;)V

    .line 496
    return-void
.end method

.method public put(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "headers"    # [Lorg/apache/http/Header;
    .param p4, "entity"    # Lorg/apache/http/HttpEntity;
    .param p5, "contentType"    # Ljava/lang/String;
    .param p6, "responseHandler"    # Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;

    .prologue
    .line 509
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p4}, Lcom/kahuna/sdk/http/AsyncHttpClient;->addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    .line 510
    .local v3, "request":Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    if-eqz p3, :cond_0

    invoke-virtual {v3, p3}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lorg/apache/http/Header;)V

    .line 511
    :cond_0
    iget-object v1, p0, Lcom/kahuna/sdk/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/kahuna/sdk/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    move-object v0, p0

    move-object v4, p5

    move-object v5, p6

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/kahuna/sdk/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;Landroid/content/Context;)V

    .line 512
    return-void
.end method

.method public put(Ljava/lang/String;Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "responseHandler"    # Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;

    .prologue
    const/4 v0, 0x0

    .line 461
    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/kahuna/sdk/http/AsyncHttpClient;->put(Landroid/content/Context;Ljava/lang/String;Lcom/kahuna/sdk/http/RequestParams;Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;)V

    .line 462
    return-void
.end method

.method public put(Ljava/lang/String;Lcom/kahuna/sdk/http/RequestParams;Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/kahuna/sdk/http/RequestParams;
    .param p3, "responseHandler"    # Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;

    .prologue
    .line 471
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/kahuna/sdk/http/AsyncHttpClient;->put(Landroid/content/Context;Ljava/lang/String;Lcom/kahuna/sdk/http/RequestParams;Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;)V

    .line 472
    return-void
.end method

.method protected sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;Landroid/content/Context;)V
    .locals 4
    .param p1, "client"    # Lorg/apache/http/impl/client/DefaultHttpClient;
    .param p2, "httpContext"    # Lorg/apache/http/protocol/HttpContext;
    .param p3, "uriRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p4, "contentType"    # Ljava/lang/String;
    .param p5, "responseHandler"    # Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;
    .param p6, "context"    # Landroid/content/Context;

    .prologue
    .line 554
    if-eqz p4, :cond_0

    .line 555
    const-string v2, "Content-Type"

    invoke-interface {p3, v2, p4}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    :cond_0
    iget-object v2, p0, Lcom/kahuna/sdk/http/AsyncHttpClient;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Lcom/kahuna/sdk/http/AsyncHttpRequest;

    invoke-direct {v3, p1, p2, p3, p5}, Lcom/kahuna/sdk/http/AsyncHttpRequest;-><init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 560
    .local v0, "request":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    if-eqz p6, :cond_2

    .line 562
    iget-object v2, p0, Lcom/kahuna/sdk/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {v2, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 563
    .local v1, "requestList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Ljava/util/concurrent/Future<*>;>;>;"
    if-nez v1, :cond_1

    .line 564
    new-instance v1, Ljava/util/LinkedList;

    .end local v1    # "requestList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Ljava/util/concurrent/Future<*>;>;>;"
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 565
    .restart local v1    # "requestList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Ljava/util/concurrent/Future<*>;>;>;"
    iget-object v2, p0, Lcom/kahuna/sdk/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {v2, p6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    :cond_1
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    .end local v1    # "requestList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Ljava/util/concurrent/Future<*>;>;>;"
    :cond_2
    return-void
.end method

.method public setBasicAuth(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "pass"    # Ljava/lang/String;

    .prologue
    .line 256
    sget-object v0, Lorg/apache/http/auth/AuthScope;->ANY:Lorg/apache/http/auth/AuthScope;

    .line 257
    .local v0, "scope":Lorg/apache/http/auth/AuthScope;
    invoke-virtual {p0, p1, p2, v0}, Lcom/kahuna/sdk/http/AsyncHttpClient;->setBasicAuth(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/AuthScope;)V

    .line 258
    return-void
.end method

.method public setBasicAuth(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/AuthScope;)V
    .locals 2
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "pass"    # Ljava/lang/String;
    .param p3, "scope"    # Lorg/apache/http/auth/AuthScope;

    .prologue
    .line 269
    new-instance v0, Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    .local v0, "credentials":Lorg/apache/http/auth/UsernamePasswordCredentials;
    iget-object v1, p0, Lcom/kahuna/sdk/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v1

    invoke-interface {v1, p3, v0}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    .line 271
    return-void
.end method

.method public setCookieStore(Lorg/apache/http/client/CookieStore;)V
    .locals 2
    .param p1, "cookieStore"    # Lorg/apache/http/client/CookieStore;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/kahuna/sdk/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const-string v1, "http.cookie-store"

    invoke-interface {v0, v1, p1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 200
    return-void
.end method

.method public setSSLSocketFactory(Lorg/apache/http/conn/ssl/SSLSocketFactory;)V
    .locals 4
    .param p1, "sslSocketFactory"    # Lorg/apache/http/conn/ssl/SSLSocketFactory;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/kahuna/sdk/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v0

    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "https"

    const/16 v3, 0x1bb

    invoke-direct {v1, v2, p1, v3}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 238
    return-void
.end method

.method public setThreadPool(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0
    .param p1, "threadPool"    # Ljava/util/concurrent/ThreadPoolExecutor;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/kahuna/sdk/http/AsyncHttpClient;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 209
    return-void
.end method

.method public setTimeout(I)V
    .locals 4
    .param p1, "timeout"    # I

    .prologue
    .line 225
    iget-object v1, p0, Lcom/kahuna/sdk/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 226
    .local v0, "httpParams":Lorg/apache/http/params/HttpParams;
    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 227
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 228
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 229
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 1
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/kahuna/sdk/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 218
    return-void
.end method
