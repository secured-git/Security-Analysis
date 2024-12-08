.class public final Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;
.super Ljava/lang/Object;
.source "HttpResponseEntityImpl.java"

# interfaces
.implements Lorg/apache/http/HttpEntity;
.implements Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListener;


# static fields
.field private static final ENCODING_CHUNKED:Ljava/lang/String; = "chunked"

.field private static final TRANSFER_ENCODING_HEADER:Ljava/lang/String; = "Transfer-Encoding"

.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;


# instance fields
.field private final contentLengthFromHeader:J

.field private contentStream:Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;

.field private final impl:Lorg/apache/http/HttpEntity;

.field private final transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/HttpEntity;Lcom/newrelic/agent/android/instrumentation/TransactionState;J)V
    .locals 1
    .param p1, "impl"    # Lorg/apache/http/HttpEntity;
    .param p2, "transactionState"    # Lcom/newrelic/agent/android/instrumentation/TransactionState;
    .param p3, "contentLengthFromHeader"    # J

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    .line 36
    iput-object p2, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    .line 37
    iput-wide p3, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->contentLengthFromHeader:J

    .line 38
    return-void
.end method

.method private addTransactionAndErrorData(Lcom/newrelic/agent/android/instrumentation/TransactionState;)V
    .locals 22
    .param p1, "transactionState"    # Lcom/newrelic/agent/android/instrumentation/TransactionState;

    .prologue
    .line 172
    invoke-virtual/range {p1 .. p1}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->end()Lcom/newrelic/agent/android/api/common/TransactionData;

    move-result-object v21

    .line 175
    .local v21, "transactionData":Lcom/newrelic/agent/android/api/common/TransactionData;
    if-nez v21, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    new-instance v3, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;

    invoke-virtual/range {v21 .. v21}, Lcom/newrelic/agent/android/api/common/TransactionData;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v21 .. v21}, Lcom/newrelic/agent/android/api/common/TransactionData;->getHttpMethod()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v21 .. v21}, Lcom/newrelic/agent/android/api/common/TransactionData;->getStatusCode()I

    move-result v6

    invoke-virtual/range {v21 .. v21}, Lcom/newrelic/agent/android/api/common/TransactionData;->getErrorCode()I

    move-result v7

    invoke-virtual/range {v21 .. v21}, Lcom/newrelic/agent/android/api/common/TransactionData;->getTimestamp()J

    move-result-wide v8

    invoke-virtual/range {v21 .. v21}, Lcom/newrelic/agent/android/api/common/TransactionData;->getTime()F

    move-result v10

    float-to-double v10, v10

    invoke-virtual/range {v21 .. v21}, Lcom/newrelic/agent/android/api/common/TransactionData;->getBytesSent()J

    move-result-wide v12

    invoke-virtual/range {v21 .. v21}, Lcom/newrelic/agent/android/api/common/TransactionData;->getBytesReceived()J

    move-result-wide v14

    invoke-virtual/range {v21 .. v21}, Lcom/newrelic/agent/android/api/common/TransactionData;->getAppData()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v3 .. v16}, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;-><init>(Ljava/lang/String;Ljava/lang/String;IIJDJJLjava/lang/String;)V

    invoke-static {v3}, Lcom/newrelic/agent/android/TaskQueue;->queue(Ljava/lang/Object;)V

    .line 181
    invoke-virtual/range {p1 .. p1}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->getStatusCode()I

    move-result v3

    int-to-long v4, v3

    const-wide/16 v6, 0x190

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    .line 182
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .local v20, "responseBody":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->getContent()Ljava/io/InputStream;

    move-result-object v18

    .line 185
    .local v18, "errorStream":Ljava/io/InputStream;
    move-object/from16 v0, v18

    instance-of v3, v0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;

    if-eqz v3, :cond_2

    .line 186
    check-cast v18, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;

    .end local v18    # "errorStream":Ljava/io/InputStream;
    invoke-virtual/range {v18 .. v18}, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->getBufferAsString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v2

    .line 195
    .local v2, "contentType":Lorg/apache/http/Header;
    new-instance v19, Ljava/util/TreeMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeMap;-><init>()V

    .line 196
    .local v19, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_3

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v3, ""

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 197
    const-string v3, "content_type"

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :cond_3
    const-string v3, "content_length"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->getBytesReceived()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-static {v0, v3, v1}, Lcom/newrelic/agent/android/Measurements;->addHttpError(Lcom/newrelic/agent/android/api/common/TransactionData;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 188
    .end local v2    # "contentType":Lorg/apache/http/Header;
    .end local v19    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v17

    .line 189
    .local v17, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handleException(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 211
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->handleException(Ljava/lang/Exception;Ljava/lang/Long;)V

    .line 212
    return-void
.end method

.method private handleException(Ljava/lang/Exception;Ljava/lang/Long;)V
    .locals 17
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "streamBytes"    # Ljava/lang/Long;

    .prologue
    .line 215
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lcom/newrelic/agent/android/instrumentation/TransactionStateUtil;->setErrorCodeFromException(Lcom/newrelic/agent/android/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-virtual {v3}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->isComplete()Z

    move-result v3

    if-nez v3, :cond_1

    .line 217
    if-eqz p2, :cond_0

    .line 218
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->setBytesReceived(J)V

    .line 220
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-virtual {v3}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->end()Lcom/newrelic/agent/android/api/common/TransactionData;

    move-result-object v2

    .line 223
    .local v2, "transactionData":Lcom/newrelic/agent/android/api/common/TransactionData;
    if-eqz v2, :cond_1

    .line 224
    new-instance v3, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/api/common/TransactionData;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/newrelic/agent/android/api/common/TransactionData;->getHttpMethod()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/newrelic/agent/android/api/common/TransactionData;->getStatusCode()I

    move-result v6

    invoke-virtual {v2}, Lcom/newrelic/agent/android/api/common/TransactionData;->getErrorCode()I

    move-result v7

    invoke-virtual {v2}, Lcom/newrelic/agent/android/api/common/TransactionData;->getTimestamp()J

    move-result-wide v8

    invoke-virtual {v2}, Lcom/newrelic/agent/android/api/common/TransactionData;->getTime()F

    move-result v10

    float-to-double v10, v10

    invoke-virtual {v2}, Lcom/newrelic/agent/android/api/common/TransactionData;->getBytesSent()J

    move-result-wide v12

    invoke-virtual {v2}, Lcom/newrelic/agent/android/api/common/TransactionData;->getBytesReceived()J

    move-result-wide v14

    invoke-virtual {v2}, Lcom/newrelic/agent/android/api/common/TransactionData;->getAppData()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v3 .. v16}, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;-><init>(Ljava/lang/String;Ljava/lang/String;IIJDJJLjava/lang/String;)V

    invoke-static {v3}, Lcom/newrelic/agent/android/TaskQueue;->queue(Ljava/lang/Object;)V

    .line 227
    .end local v2    # "transactionData":Lcom/newrelic/agent/android/api/common/TransactionData;
    :cond_1
    return-void
.end method


# virtual methods
.method public consumeContent()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    :try_start_0
    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->handleException(Ljava/lang/Exception;)V

    .line 47
    throw v0
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v5, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->contentStream:Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;

    if-eqz v5, :cond_0

    .line 55
    iget-object v5, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->contentStream:Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;

    .line 76
    :goto_0
    return-object v5

    .line 58
    :cond_0
    const/4 v3, 0x1

    .line 61
    .local v3, "shouldBuffer":Z
    :try_start_0
    iget-object v5, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    instance-of v5, v5, Lorg/apache/http/message/AbstractHttpMessage;

    if-eqz v5, :cond_2

    .line 62
    iget-object v2, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    check-cast v2, Lorg/apache/http/message/AbstractHttpMessage;

    .line 63
    .local v2, "message":Lorg/apache/http/message/AbstractHttpMessage;
    const-string v5, "Transfer-Encoding"

    invoke-virtual {v2, v5}, Lorg/apache/http/message/AbstractHttpMessage;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    .line 64
    .local v4, "transferEncodingHeader":Lorg/apache/http/Header;
    if-eqz v4, :cond_1

    const-string v5, "chunked"

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 65
    const/4 v3, 0x0

    .line 74
    .end local v2    # "message":Lorg/apache/http/message/AbstractHttpMessage;
    .end local v4    # "transferEncodingHeader":Lorg/apache/http/Header;
    :cond_1
    :goto_1
    new-instance v5, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;

    iget-object v6, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;-><init>(Ljava/io/InputStream;Z)V

    iput-object v5, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->contentStream:Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;

    .line 75
    iget-object v5, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->contentStream:Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;

    invoke-virtual {v5, p0}, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->addStreamCompleteListener(Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListener;)V

    .line 76
    iget-object v5, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->contentStream:Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;

    goto :goto_0

    .line 68
    :cond_2
    iget-object v5, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    instance-of v5, v5, Lorg/apache/http/entity/HttpEntityWrapper;

    if-eqz v5, :cond_1

    .line 69
    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    check-cast v1, Lorg/apache/http/entity/HttpEntityWrapper;

    .line 70
    .local v1, "entityWrapper":Lorg/apache/http/entity/HttpEntityWrapper;
    invoke-virtual {v1}, Lorg/apache/http/entity/HttpEntityWrapper;->isChunked()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_3

    const/4 v3, 0x1

    :goto_2
    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 78
    .end local v1    # "entityWrapper":Lorg/apache/http/entity/HttpEntityWrapper;
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->handleException(Ljava/lang/Exception;)V

    .line 80
    throw v0
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v0

    return v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v0

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v0

    return v0
.end method

.method public streamComplete(Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;)V
    .locals 6
    .param p1, "e"    # Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;

    .prologue
    .line 148
    invoke-virtual {p1}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerSource;

    .line 149
    .local v0, "source":Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerSource;
    invoke-interface {v0, p0}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerSource;->removeStreamCompleteListener(Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListener;)V

    .line 150
    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->isComplete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    iget-wide v2, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->contentLengthFromHeader:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    .line 152
    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    iget-wide v2, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->contentLengthFromHeader:J

    invoke-virtual {v1, v2, v3}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->setBytesReceived(J)V

    .line 157
    :goto_0
    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-direct {p0, v1}, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->addTransactionAndErrorData(Lcom/newrelic/agent/android/instrumentation/TransactionState;)V

    .line 159
    :cond_0
    return-void

    .line 155
    :cond_1
    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-virtual {p1}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;->getBytes()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->setBytesReceived(J)V

    goto :goto_0
.end method

.method public streamError(Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;)V
    .locals 4
    .param p1, "e"    # Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;

    .prologue
    .line 163
    invoke-virtual {p1}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerSource;

    .line 164
    .local v0, "source":Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerSource;
    invoke-interface {v0, p0}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerSource;->removeStreamCompleteListener(Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListener;)V

    .line 165
    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-virtual {p1}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/newrelic/agent/android/instrumentation/TransactionStateUtil;->setErrorCodeFromException(Lcom/newrelic/agent/android/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 166
    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->isComplete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-virtual {p1}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;->getBytes()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->setBytesReceived(J)V

    .line 169
    :cond_0
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 6
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v2, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->isComplete()Z

    move-result v2

    if-nez v2, :cond_2

    .line 117
    new-instance v1, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;

    invoke-direct {v1, p1}, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 119
    .local v1, "outputStream":Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;
    :try_start_0
    iget-object v2, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {v2, v1}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    iget-object v2, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->isComplete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 132
    iget-wide v2, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->contentLengthFromHeader:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 133
    iget-object v2, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    iget-wide v4, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->contentLengthFromHeader:J

    invoke-virtual {v2, v4, v5}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->setBytesReceived(J)V

    .line 138
    :goto_0
    iget-object v2, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-direct {p0, v2}, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->addTransactionAndErrorData(Lcom/newrelic/agent/android/instrumentation/TransactionState;)V

    .line 144
    .end local v1    # "outputStream":Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;
    :cond_0
    :goto_1
    return-void

    .line 121
    .restart local v1    # "outputStream":Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->getCount()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->handleException(Ljava/lang/Exception;Ljava/lang/Long;)V

    .line 127
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 128
    throw v0

    .line 136
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    iget-object v2, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->getCount()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->setBytesReceived(J)V

    goto :goto_0

    .line 142
    .end local v1    # "outputStream":Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;
    :cond_2
    iget-object v2, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {v2, p1}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    goto :goto_1
.end method
