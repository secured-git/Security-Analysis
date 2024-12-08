.class public Lcom/newrelic/agent/android/instrumentation/okhttp2/ResponseBuilderExtension;
.super Lcom/squareup/okhttp/Response$Builder;
.source "ResponseBuilderExtension.java"


# static fields
.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;


# instance fields
.field private impl:Lcom/squareup/okhttp/Response$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/instrumentation/okhttp2/ResponseBuilderExtension;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-void
.end method

.method public constructor <init>(Lcom/squareup/okhttp/Response$Builder;)V
    .locals 0
    .param p1, "impl"    # Lcom/squareup/okhttp/Response$Builder;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/squareup/okhttp/Response$Builder;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/ResponseBuilderExtension;->impl:Lcom/squareup/okhttp/Response$Builder;

    .line 20
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Response$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/ResponseBuilderExtension;->impl:Lcom/squareup/okhttp/Response$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public body(Lcom/squareup/okhttp/ResponseBody;)Lcom/squareup/okhttp/Response$Builder;
    .locals 6
    .param p1, "body"    # Lcom/squareup/okhttp/ResponseBody;

    .prologue
    .line 71
    if-eqz p1, :cond_0

    .line 72
    :try_start_0
    invoke-virtual {p1}, Lcom/squareup/okhttp/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v3

    .line 73
    .local v3, "source":Lokio/BufferedSource;
    const/4 v2, 0x0

    .line 74
    .local v2, "length":I
    if-eqz v3, :cond_0

    .line 75
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 76
    .local v0, "buffer":Lokio/Buffer;
    invoke-interface {v3, v0}, Lokio/BufferedSource;->readAll(Lokio/Sink;)J

    .line 77
    iget-object v4, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/ResponseBuilderExtension;->impl:Lcom/squareup/okhttp/Response$Builder;

    new-instance v5, Lcom/newrelic/agent/android/instrumentation/okhttp2/PrebufferedResponseBody;

    invoke-direct {v5, p1, v0}, Lcom/newrelic/agent/android/instrumentation/okhttp2/PrebufferedResponseBody;-><init>(Lcom/squareup/okhttp/ResponseBody;Lokio/BufferedSource;)V

    invoke-virtual {v4, v5}, Lcom/squareup/okhttp/Response$Builder;->body(Lcom/squareup/okhttp/ResponseBody;)Lcom/squareup/okhttp/Response$Builder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 88
    .end local v0    # "buffer":Lokio/Buffer;
    .end local v2    # "length":I
    .end local v3    # "source":Lokio/BufferedSource;
    :goto_0
    return-object v4

    .line 81
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Ljava/io/IOException;
    sget-object v4, Lcom/newrelic/agent/android/instrumentation/okhttp2/ResponseBuilderExtension;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v5, "IOException reading from source: "

    invoke-interface {v4, v5, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/ResponseBuilderExtension;->impl:Lcom/squareup/okhttp/Response$Builder;

    invoke-virtual {v4, p1}, Lcom/squareup/okhttp/Response$Builder;->body(Lcom/squareup/okhttp/ResponseBody;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v4

    goto :goto_0

    .line 84
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method public build()Lcom/squareup/okhttp/Response;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/ResponseBuilderExtension;->impl:Lcom/squareup/okhttp/Response$Builder;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response$Builder;->build()Lcom/squareup/okhttp/Response;

    move-result-object v0

    return-object v0
.end method

.method public cacheResponse(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response$Builder;
    .locals 1
    .param p1, "cacheResponse"    # Lcom/squareup/okhttp/Response;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/ResponseBuilderExtension;->impl:Lcom/squareup/okhttp/Response$Builder;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/Response$Builder;->cacheResponse(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public code(I)Lcom/squareup/okhttp/Response$Builder;
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 34
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/ResponseBuilderExtension;->impl:Lcom/squareup/okhttp/Response$Builder;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/Response$Builder;->code(I)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public handshake(Lcom/squareup/okhttp/Handshake;)Lcom/squareup/okhttp/Response$Builder;
    .locals 1
    .param p1, "handshake"    # Lcom/squareup/okhttp/Handshake;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/ResponseBuilderExtension;->impl:Lcom/squareup/okhttp/Response$Builder;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/Response$Builder;->handshake(Lcom/squareup/okhttp/Handshake;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Response$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/ResponseBuilderExtension;->impl:Lcom/squareup/okhttp/Response$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/Response$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public headers(Lcom/squareup/okhttp/Headers;)Lcom/squareup/okhttp/Response$Builder;
    .locals 1
    .param p1, "headers"    # Lcom/squareup/okhttp/Headers;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/ResponseBuilderExtension;->impl:Lcom/squareup/okhttp/Response$Builder;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/Response$Builder;->headers(Lcom/squareup/okhttp/Headers;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public message(Ljava/lang/String;)Lcom/squareup/okhttp/Response$Builder;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/ResponseBuilderExtension;->impl:Lcom/squareup/okhttp/Response$Builder;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/Response$Builder;->message(Ljava/lang/String;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public networkResponse(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response$Builder;
    .locals 1
    .param p1, "networkResponse"    # Lcom/squareup/okhttp/Response;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/ResponseBuilderExtension;->impl:Lcom/squareup/okhttp/Response$Builder;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/Response$Builder;->networkResponse(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public priorResponse(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response$Builder;
    .locals 1
    .param p1, "priorResponse"    # Lcom/squareup/okhttp/Response;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/ResponseBuilderExtension;->impl:Lcom/squareup/okhttp/Response$Builder;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/Response$Builder;->priorResponse(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public protocol(Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/Response$Builder;
    .locals 1
    .param p1, "protocol"    # Lcom/squareup/okhttp/Protocol;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/ResponseBuilderExtension;->impl:Lcom/squareup/okhttp/Response$Builder;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/Response$Builder;->protocol(Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeHeader(Ljava/lang/String;)Lcom/squareup/okhttp/Response$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/ResponseBuilderExtension;->impl:Lcom/squareup/okhttp/Response$Builder;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/Response$Builder;->removeHeader(Ljava/lang/String;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public request(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Response$Builder;
    .locals 1
    .param p1, "request"    # Lcom/squareup/okhttp/Request;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/ResponseBuilderExtension;->impl:Lcom/squareup/okhttp/Response$Builder;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/Response$Builder;->request(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    return-object v0
.end method
