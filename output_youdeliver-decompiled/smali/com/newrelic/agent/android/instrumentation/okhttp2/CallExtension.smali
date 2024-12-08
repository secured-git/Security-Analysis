.class public Lcom/newrelic/agent/android/instrumentation/okhttp2/CallExtension;
.super Lcom/squareup/okhttp/Call;
.source "CallExtension.java"


# static fields
.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;


# instance fields
.field private client:Lcom/squareup/okhttp/OkHttpClient;

.field private impl:Lcom/squareup/okhttp/Call;

.field private request:Lcom/squareup/okhttp/Request;

.field private transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/instrumentation/okhttp2/CallExtension;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-void
.end method

.method constructor <init>(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Call;)V
    .locals 0
    .param p1, "client"    # Lcom/squareup/okhttp/OkHttpClient;
    .param p2, "request"    # Lcom/squareup/okhttp/Request;
    .param p3, "impl"    # Lcom/squareup/okhttp/Call;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/Call;-><init>(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/Request;)V

    .line 33
    iput-object p1, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/CallExtension;->client:Lcom/squareup/okhttp/OkHttpClient;

    .line 34
    iput-object p2, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/CallExtension;->request:Lcom/squareup/okhttp/Request;

    .line 35
    iput-object p3, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/CallExtension;->impl:Lcom/squareup/okhttp/Call;

    .line 36
    return-void
.end method

.method private checkResponse(Lcom/squareup/okhttp/Response;)V
    .locals 1
    .param p1, "response"    # Lcom/squareup/okhttp/Response;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/newrelic/agent/android/instrumentation/okhttp2/CallExtension;->getTransactionState()Lcom/newrelic/agent/android/instrumentation/TransactionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/newrelic/agent/android/instrumentation/okhttp2/CallExtension;->getTransactionState()Lcom/newrelic/agent/android/instrumentation/TransactionState;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/newrelic/agent/android/instrumentation/okhttp2/OkHttp2TransactionStateUtil;->inspectAndInstrumentResponse(Lcom/newrelic/agent/android/instrumentation/TransactionState;Lcom/squareup/okhttp/Response;)V

    .line 73
    :cond_0
    return-void
.end method

.method private error(Ljava/lang/Exception;)V
    .locals 18
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 84
    invoke-direct/range {p0 .. p0}, Lcom/newrelic/agent/android/instrumentation/okhttp2/CallExtension;->getTransactionState()Lcom/newrelic/agent/android/instrumentation/TransactionState;

    move-result-object v17

    .line 85
    .local v17, "transactionState":Lcom/newrelic/agent/android/instrumentation/TransactionState;
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/TransactionStateUtil;->setErrorCodeFromException(Lcom/newrelic/agent/android/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 86
    invoke-virtual/range {v17 .. v17}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->isComplete()Z

    move-result v3

    if-nez v3, :cond_0

    .line 88
    invoke-virtual/range {v17 .. v17}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->end()Lcom/newrelic/agent/android/api/common/TransactionData;

    move-result-object v2

    .line 91
    .local v2, "transactionData":Lcom/newrelic/agent/android/api/common/TransactionData;
    if-eqz v2, :cond_0

    .line 92
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

    .line 99
    .end local v2    # "transactionData":Lcom/newrelic/agent/android/api/common/TransactionData;
    :cond_0
    return-void
.end method

.method private getTransactionState()Lcom/newrelic/agent/android/instrumentation/TransactionState;
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/CallExtension;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-direct {v0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/CallExtension;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    .line 78
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/CallExtension;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/CallExtension;->request:Lcom/squareup/okhttp/Request;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/okhttp2/OkHttp2TransactionStateUtil;->inspectAndInstrument(Lcom/newrelic/agent/android/instrumentation/TransactionState;Lcom/squareup/okhttp/Request;)V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/CallExtension;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/CallExtension;->impl:Lcom/squareup/okhttp/Call;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Call;->cancel()V

    .line 61
    return-void
.end method

.method public enqueue(Lcom/squareup/okhttp/Callback;)V
    .locals 3
    .param p1, "responseCallback"    # Lcom/squareup/okhttp/Callback;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/newrelic/agent/android/instrumentation/okhttp2/CallExtension;->getTransactionState()Lcom/newrelic/agent/android/instrumentation/TransactionState;

    .line 55
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/CallExtension;->impl:Lcom/squareup/okhttp/Call;

    new-instance v1, Lcom/newrelic/agent/android/instrumentation/okhttp2/CallbackExtension;

    iget-object v2, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/CallExtension;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-direct {v1, p1, v2}, Lcom/newrelic/agent/android/instrumentation/okhttp2/CallbackExtension;-><init>(Lcom/squareup/okhttp/Callback;Lcom/newrelic/agent/android/instrumentation/TransactionState;)V

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Call;->enqueue(Lcom/squareup/okhttp/Callback;)V

    .line 56
    return-void
.end method

.method public execute()Lcom/squareup/okhttp/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/newrelic/agent/android/instrumentation/okhttp2/CallExtension;->getTransactionState()Lcom/newrelic/agent/android/instrumentation/TransactionState;

    .line 41
    const/4 v1, 0x0

    .line 43
    .local v1, "response":Lcom/squareup/okhttp/Response;
    :try_start_0
    iget-object v2, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/CallExtension;->impl:Lcom/squareup/okhttp/Call;

    invoke-virtual {v2}, Lcom/squareup/okhttp/Call;->execute()Lcom/squareup/okhttp/Response;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 48
    invoke-direct {p0, v1}, Lcom/newrelic/agent/android/instrumentation/okhttp2/CallExtension;->checkResponse(Lcom/squareup/okhttp/Response;)V

    .line 49
    return-object v1

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/instrumentation/okhttp2/CallExtension;->error(Ljava/lang/Exception;)V

    .line 46
    throw v0
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/CallExtension;->impl:Lcom/squareup/okhttp/Call;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Call;->isCanceled()Z

    move-result v0

    return v0
.end method
