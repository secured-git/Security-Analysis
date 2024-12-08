.class public Lcom/newrelic/agent/android/harvest/HarvestConnection;
.super Ljava/lang/Object;
.source "HarvestConnection.java"

# interfaces
.implements Lcom/newrelic/agent/android/harvest/type/HarvestErrorCodes;


# static fields
.field private static final APPLICATION_TOKEN_HEADER:Ljava/lang/String; = "X-App-License-Key"

.field private static final COLLECTOR_CONNECT_URI:Ljava/lang/String; = "/mobile/v3/connect"

.field private static final COLLECTOR_DATA_URI:Ljava/lang/String; = "/mobile/v3/data"

.field private static final CONNECT_TIME_HEADER:Ljava/lang/String; = "X-NewRelic-Connect-Time"

.field private static final DISABLE_COMPRESSION_FOR_DEBUGGING:Ljava/lang/Boolean;


# instance fields
.field private applicationToken:Ljava/lang/String;

.field private final collectorClient:Lorg/apache/http/client/HttpClient;

.field private collectorHost:Ljava/lang/String;

.field private connectInformation:Lcom/newrelic/agent/android/harvest/ConnectInformation;

.field private final log:Lcom/newrelic/agent/android/logging/AgentLog;

.field private serverTimestamp:J

.field private useSsl:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->DISABLE_COMPRESSION_FOR_DEBUGGING:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v4

    iput-object v4, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    .line 50
    const/16 v2, 0x14

    .line 51
    .local v2, "TIMEOUT_IN_SECONDS":I
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x14

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    long-to-int v0, v4

    .line 52
    .local v0, "CONNECTION_TIMEOUT":I
    const/16 v1, 0x2000

    .line 54
    .local v1, "SOCKET_BUFFER_SIZE":I
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 55
    .local v3, "params":Lorg/apache/http/params/BasicHttpParams;
    invoke-static {v3, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 56
    invoke-static {v3, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 57
    const/4 v4, 0x1

    invoke-static {v3, v4}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    .line 58
    const/16 v4, 0x2000

    invoke-static {v3, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 59
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    iput-object v4, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->collectorClient:Lorg/apache/http/client/HttpClient;

    .line 60
    return-void
.end method

.method private deflate(Ljava/lang/String;)[B
    .locals 7
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 199
    const/16 v0, 0x2000

    .line 201
    .local v0, "DEFLATE_BUFFER_SIZE":I
    new-instance v4, Ljava/util/zip/Deflater;

    invoke-direct {v4}, Ljava/util/zip/Deflater;-><init>()V

    .line 202
    .local v4, "deflater":Ljava/util/zip/Deflater;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/zip/Deflater;->setInput([B)V

    .line 203
    invoke-virtual {v4}, Ljava/util/zip/Deflater;->finish()V

    .line 205
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 206
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x2000

    new-array v2, v5, [B

    .line 207
    .local v2, "buf":[B
    :goto_0
    invoke-virtual {v4}, Ljava/util/zip/Deflater;->finished()Z

    move-result v5

    if-nez v5, :cond_1

    .line 208
    invoke-virtual {v4, v2}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v3

    .line 209
    .local v3, "byteCount":I
    if-gtz v3, :cond_0

    .line 210
    iget-object v5, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v6, "HTTP request contains an incomplete payload"

    invoke-interface {v5, v6}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 212
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 214
    .end local v3    # "byteCount":I
    :cond_1
    invoke-virtual {v4}, Ljava/util/zip/Deflater;->end()V

    .line 215
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5
.end method

.method private getCollectorConnectUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    const-string v0, "/mobile/v3/connect"

    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->getCollectorUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCollectorDataUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    const-string v0, "/mobile/v3/data"

    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->getCollectorUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCollectorUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "resource"    # Ljava/lang/String;

    .prologue
    .line 243
    iget-boolean v1, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->useSsl:Z

    if-eqz v1, :cond_0

    const-string v0, "https://"

    .line 244
    .local v0, "protocol":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->collectorHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 243
    .end local v0    # "protocol":Ljava/lang/String;
    :cond_0
    const-string v0, "http://"

    goto :goto_0
.end method

.method public static readResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 7
    .param p0, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    const/16 v0, 0x2000

    .line 221
    .local v0, "RESPONSE_BUFFER_SIZE":I
    const/16 v6, 0x2000

    new-array v1, v6, [C

    .line 222
    .local v1, "buf":[C
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 225
    .local v2, "in":Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 227
    .local v4, "reader":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v4, v1}, Ljava/io/BufferedReader;->read([C)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 228
    .local v3, "n":I
    if-gez v3, :cond_0

    .line 232
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 234
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 229
    :cond_0
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v5, v1, v6, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 232
    .end local v3    # "n":I
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v6

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v6
.end method

.method private recordCollectorError(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HarvestConnection: Attempting to convert network exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to error code."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 239
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Supportability/AgentHealth/Collector/ResponseErrorCodes/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/newrelic/agent/android/util/ExceptionHelper;->exceptionToErrorCode(Ljava/lang/Exception;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/stats/StatsEngine;->inc(Ljava/lang/String;)V

    .line 240
    return-void
.end method


# virtual methods
.method public createConnectPost(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->getCollectorConnectUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->createPost(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    return-object v0
.end method

.method public createDataPost(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->getCollectorDataUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->createPost(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    return-object v0
.end method

.method public createPost(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;
    .locals 8
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x200

    if-le v4, v5, :cond_0

    sget-object v4, Lcom/newrelic/agent/android/harvest/HarvestConnection;->DISABLE_COMPRESSION_FOR_DEBUGGING:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const-string v0, "identity"

    .line 75
    .local v0, "contentEncoding":Ljava/lang/String;
    :goto_0
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 77
    .local v3, "post":Lorg/apache/http/client/methods/HttpPost;
    const-string v4, "Content-Type"

    const-string v5, "application/json"

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v4, "Content-Encoding"

    invoke-virtual {v3, v4, v0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v4, "User-Agent"

    const-string v5, "http.agent"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v4, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->applicationToken:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 82
    iget-object v4, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v5, "Cannot create POST without an Application Token."

    invoke-interface {v4, v5}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 83
    const/4 v3, 0x0

    .line 103
    .end local v3    # "post":Lorg/apache/http/client/methods/HttpPost;
    :goto_1
    return-object v3

    .line 73
    .end local v0    # "contentEncoding":Ljava/lang/String;
    :cond_1
    const-string v0, "deflate"

    goto :goto_0

    .line 86
    .restart local v0    # "contentEncoding":Ljava/lang/String;
    .restart local v3    # "post":Lorg/apache/http/client/methods/HttpPost;
    :cond_2
    const-string v4, "X-App-License-Key"

    iget-object v5, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->applicationToken:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-wide v4, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->serverTimestamp:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 89
    const-string v4, "X-NewRelic-Connect-Time"

    iget-wide v6, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->serverTimestamp:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_3
    const-string v4, "deflate"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 93
    invoke-direct {p0, p2}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->deflate(Ljava/lang/String;)[B

    move-result-object v1

    .line 94
    .local v1, "deflated":[B
    new-instance v4, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v4, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v3, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_1

    .line 97
    .end local v1    # "deflated":[B
    :cond_4
    :try_start_0
    new-instance v4, Lorg/apache/http/entity/StringEntity;

    const-string v5, "utf-8"

    invoke-direct {v4, p2, v5}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 98
    :catch_0
    move-exception v2

    .line 99
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    iget-object v4, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v5, "UTF-8 is unsupported"

    invoke-interface {v4, v5}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 100
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public getConnectInformation()Lcom/newrelic/agent/android/harvest/ConnectInformation;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->connectInformation:Lcom/newrelic/agent/android/harvest/ConnectInformation;

    return-object v0
.end method

.method public send(Lorg/apache/http/client/methods/HttpPost;)Lcom/newrelic/agent/android/harvest/HarvestResponse;
    .locals 7
    .param p1, "post"    # Lorg/apache/http/client/methods/HttpPost;

    .prologue
    .line 113
    new-instance v1, Lcom/newrelic/agent/android/harvest/HarvestResponse;

    invoke-direct {v1}, Lcom/newrelic/agent/android/harvest/HarvestResponse;-><init>()V

    .line 117
    .local v1, "harvestResponse":Lcom/newrelic/agent/android/harvest/HarvestResponse;
    :try_start_0
    new-instance v3, Lcom/newrelic/agent/android/stats/TicToc;

    invoke-direct {v3}, Lcom/newrelic/agent/android/stats/TicToc;-><init>()V

    .line 118
    .local v3, "timer":Lcom/newrelic/agent/android/stats/TicToc;
    invoke-virtual {v3}, Lcom/newrelic/agent/android/stats/TicToc;->tic()V

    .line 119
    iget-object v4, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->collectorClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v4, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 120
    .local v2, "response":Lorg/apache/http/HttpResponse;
    invoke-virtual {v3}, Lcom/newrelic/agent/android/stats/TicToc;->toc()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/newrelic/agent/android/harvest/HarvestResponse;->setResponseTime(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/newrelic/agent/android/harvest/HarvestResponse;->setStatusCode(I)V

    .line 128
    :try_start_1
    invoke-static {v2}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->readResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/newrelic/agent/android/harvest/HarvestResponse;->setResponseBody(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 133
    .end local v1    # "harvestResponse":Lcom/newrelic/agent/android/harvest/HarvestResponse;
    .end local v2    # "response":Lorg/apache/http/HttpResponse;
    .end local v3    # "timer":Lcom/newrelic/agent/android/stats/TicToc;
    :goto_0
    return-object v1

    .line 121
    .restart local v1    # "harvestResponse":Lcom/newrelic/agent/android/harvest/HarvestResponse;
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to send POST to collector: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 123
    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->recordCollectorError(Ljava/lang/Exception;)V

    .line 124
    const/4 v1, 0x0

    goto :goto_0

    .line 129
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "response":Lorg/apache/http/HttpResponse;
    .restart local v3    # "timer":Lcom/newrelic/agent/android/stats/TicToc;
    :catch_1
    move-exception v0

    .line 130
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 131
    iget-object v4, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to retrieve collector response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendConnect()Lcom/newrelic/agent/android/harvest/HarvestResponse;
    .locals 8

    .prologue
    .line 142
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->connectInformation:Lcom/newrelic/agent/android/harvest/ConnectInformation;

    if-nez v3, :cond_0

    .line 143
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 145
    :cond_0
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->connectInformation:Lcom/newrelic/agent/android/harvest/ConnectInformation;

    invoke-virtual {v3}, Lcom/newrelic/agent/android/harvest/ConnectInformation;->toJsonString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->createConnectPost(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    .line 146
    .local v0, "connectPost":Lorg/apache/http/client/methods/HttpPost;
    if-nez v0, :cond_1

    .line 147
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v4, "Failed to create connect POST"

    invoke-interface {v3, v4}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 148
    const/4 v1, 0x0

    .line 157
    :goto_0
    return-object v1

    .line 151
    :cond_1
    new-instance v2, Lcom/newrelic/agent/android/stats/TicToc;

    invoke-direct {v2}, Lcom/newrelic/agent/android/stats/TicToc;-><init>()V

    .line 152
    .local v2, "timer":Lcom/newrelic/agent/android/stats/TicToc;
    invoke-virtual {v2}, Lcom/newrelic/agent/android/stats/TicToc;->tic()V

    .line 154
    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->send(Lorg/apache/http/client/methods/HttpPost;)Lcom/newrelic/agent/android/harvest/HarvestResponse;

    move-result-object v1

    .line 156
    .local v1, "response":Lcom/newrelic/agent/android/harvest/HarvestResponse;
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v3

    const-string v4, "Supportability/AgentHealth/Collector/Connect"

    invoke-virtual {v2}, Lcom/newrelic/agent/android/stats/TicToc;->toc()J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lcom/newrelic/agent/android/stats/StatsEngine;->sampleTimeMs(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public sendData(Lcom/newrelic/agent/android/harvest/type/Harvestable;)Lcom/newrelic/agent/android/harvest/HarvestResponse;
    .locals 3
    .param p1, "harvestable"    # Lcom/newrelic/agent/android/harvest/type/Harvestable;

    .prologue
    .line 166
    if-nez p1, :cond_0

    .line 167
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 169
    :cond_0
    invoke-interface {p1}, Lcom/newrelic/agent/android/harvest/type/Harvestable;->toJsonString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->createDataPost(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    .line 170
    .local v0, "dataPost":Lorg/apache/http/client/methods/HttpPost;
    if-nez v0, :cond_1

    .line 171
    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "Failed to create data POST"

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 172
    const/4 v1, 0x0

    .line 174
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->send(Lorg/apache/http/client/methods/HttpPost;)Lcom/newrelic/agent/android/harvest/HarvestResponse;

    move-result-object v1

    goto :goto_0
.end method

.method public setApplicationToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "applicationToken"    # Ljava/lang/String;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->applicationToken:Ljava/lang/String;

    .line 266
    return-void
.end method

.method public setCollectorHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "collectorHost"    # Ljava/lang/String;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->collectorHost:Ljava/lang/String;

    .line 270
    return-void
.end method

.method public setConnectInformation(Lcom/newrelic/agent/android/harvest/ConnectInformation;)V
    .locals 0
    .param p1, "connectInformation"    # Lcom/newrelic/agent/android/harvest/ConnectInformation;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->connectInformation:Lcom/newrelic/agent/android/harvest/ConnectInformation;

    .line 274
    return-void
.end method

.method public setServerTimestamp(J)V
    .locals 3
    .param p1, "serverTimestamp"    # J

    .prologue
    .line 256
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting server timestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 257
    iput-wide p1, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->serverTimestamp:J

    .line 258
    return-void
.end method

.method public useSsl(Z)V
    .locals 0
    .param p1, "useSsl"    # Z

    .prologue
    .line 261
    iput-boolean p1, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->useSsl:Z

    .line 262
    return-void
.end method
