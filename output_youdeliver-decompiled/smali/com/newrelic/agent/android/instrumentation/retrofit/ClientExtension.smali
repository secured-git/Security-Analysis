.class public Lcom/newrelic/agent/android/instrumentation/retrofit/ClientExtension;
.super Ljava/lang/Object;
.source "ClientExtension.java"

# interfaces
.implements Lretrofit/client/Client;


# static fields
.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;


# instance fields
.field private impl:Lretrofit/client/Client;

.field private request:Lretrofit/client/Request;

.field private transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/instrumentation/retrofit/ClientExtension;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-void
.end method

.method public constructor <init>(Lretrofit/client/Client;)V
    .locals 0
    .param p1, "impl"    # Lretrofit/client/Client;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/newrelic/agent/android/instrumentation/retrofit/ClientExtension;->impl:Lretrofit/client/Client;

    .line 33
    return-void
.end method

.method private checkResponse(Lretrofit/client/Response;)V
    .locals 1
    .param p1, "response"    # Lretrofit/client/Response;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/newrelic/agent/android/instrumentation/retrofit/ClientExtension;->getTransactionState()Lcom/newrelic/agent/android/instrumentation/TransactionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/newrelic/agent/android/instrumentation/retrofit/ClientExtension;->getTransactionState()Lcom/newrelic/agent/android/instrumentation/TransactionState;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/newrelic/agent/android/instrumentation/retrofit/RetrofitTransactionStateUtil;->inspectAndInstrumentResponse(Lcom/newrelic/agent/android/instrumentation/TransactionState;Lretrofit/client/Response;)V

    .line 67
    :cond_0
    return-void
.end method

.method private error(Ljava/lang/Exception;)V
    .locals 18
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 78
    sget-object v3, Lcom/newrelic/agent/android/instrumentation/retrofit/ClientExtension;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handling exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 80
    invoke-direct/range {p0 .. p0}, Lcom/newrelic/agent/android/instrumentation/retrofit/ClientExtension;->getTransactionState()Lcom/newrelic/agent/android/instrumentation/TransactionState;

    move-result-object v17

    .line 81
    .local v17, "transactionState":Lcom/newrelic/agent/android/instrumentation/TransactionState;
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/TransactionStateUtil;->setErrorCodeFromException(Lcom/newrelic/agent/android/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 82
    invoke-virtual/range {v17 .. v17}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->isComplete()Z

    move-result v3

    if-nez v3, :cond_0

    .line 84
    invoke-virtual/range {v17 .. v17}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->end()Lcom/newrelic/agent/android/api/common/TransactionData;

    move-result-object v2

    .line 87
    .local v2, "transactionData":Lcom/newrelic/agent/android/api/common/TransactionData;
    if-eqz v2, :cond_0

    .line 88
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

    .line 95
    .end local v2    # "transactionData":Lcom/newrelic/agent/android/api/common/TransactionData;
    :cond_0
    return-void
.end method

.method private getTransactionState()Lcom/newrelic/agent/android/instrumentation/TransactionState;
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/retrofit/ClientExtension;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-direct {v0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/instrumentation/retrofit/ClientExtension;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    .line 72
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/retrofit/ClientExtension;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/retrofit/ClientExtension;->request:Lretrofit/client/Request;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/retrofit/RetrofitTransactionStateUtil;->inspectAndInstrument(Lcom/newrelic/agent/android/instrumentation/TransactionState;Lretrofit/client/Request;)V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/retrofit/ClientExtension;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    return-object v0
.end method

.method private setCrossProcessHeader(Lretrofit/client/Request;)Lretrofit/client/Request;
    .locals 6
    .param p1, "request"    # Lretrofit/client/Request;

    .prologue
    .line 54
    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getCrossProcessId()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "crossProcessId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lretrofit/client/Request;->getHeaders()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 57
    .local v1, "headers":Ljava/util/List;, "Ljava/util/List<Lretrofit/client/Header;>;"
    new-instance v3, Lretrofit/client/Header;

    const-string v4, "X-NewRelic-ID"

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lretrofit/client/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v2, Lretrofit/client/Request;

    invoke-virtual {p1}, Lretrofit/client/Request;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lretrofit/client/Request;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lretrofit/client/Request;->getBody()Lretrofit/mime/TypedOutput;

    move-result-object v5

    invoke-direct {v2, v3, v4, v1, v5}, Lretrofit/client/Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lretrofit/mime/TypedOutput;)V

    .end local p1    # "request":Lretrofit/client/Request;
    .local v2, "request":Lretrofit/client/Request;
    move-object p1, v2

    .line 60
    .end local v1    # "headers":Ljava/util/List;, "Ljava/util/List<Lretrofit/client/Header;>;"
    .end local v2    # "request":Lretrofit/client/Request;
    .restart local p1    # "request":Lretrofit/client/Request;
    :cond_0
    return-object p1
.end method


# virtual methods
.method public execute(Lretrofit/client/Request;)Lretrofit/client/Response;
    .locals 9
    .param p1, "request"    # Lretrofit/client/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    iput-object p1, p0, Lcom/newrelic/agent/android/instrumentation/retrofit/ClientExtension;->request:Lretrofit/client/Request;

    .line 38
    invoke-direct {p0}, Lcom/newrelic/agent/android/instrumentation/retrofit/ClientExtension;->getTransactionState()Lcom/newrelic/agent/android/instrumentation/TransactionState;

    .line 39
    invoke-direct {p0, p1}, Lcom/newrelic/agent/android/instrumentation/retrofit/ClientExtension;->setCrossProcessHeader(Lretrofit/client/Request;)Lretrofit/client/Request;

    move-result-object p1

    .line 40
    const/4 v0, 0x0

    .line 42
    .local v0, "response":Lretrofit/client/Response;
    :try_start_0
    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/retrofit/ClientExtension;->impl:Lretrofit/client/Client;

    invoke-interface {v1, p1}, Lretrofit/client/Client;->execute(Lretrofit/client/Request;)Lretrofit/client/Response;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 43
    .end local v0    # "response":Lretrofit/client/Response;
    .local v7, "response":Lretrofit/client/Response;
    :try_start_1
    new-instance v0, Lretrofit/client/Response;

    invoke-virtual {v7}, Lretrofit/client/Response;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Lretrofit/client/Response;->getStatus()I

    move-result v2

    invoke-virtual {v7}, Lretrofit/client/Response;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lretrofit/client/Response;->getHeaders()Ljava/util/List;

    move-result-object v4

    new-instance v5, Lcom/newrelic/agent/android/instrumentation/retrofit/ContentBufferingTypedInput;

    invoke-virtual {v7}, Lretrofit/client/Response;->getBody()Lretrofit/mime/TypedInput;

    move-result-object v8

    invoke-direct {v5, v8}, Lcom/newrelic/agent/android/instrumentation/retrofit/ContentBufferingTypedInput;-><init>(Lretrofit/mime/TypedInput;)V

    invoke-direct/range {v0 .. v5}, Lretrofit/client/Response;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Lretrofit/mime/TypedInput;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 49
    .end local v7    # "response":Lretrofit/client/Response;
    .restart local v0    # "response":Lretrofit/client/Response;
    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/instrumentation/retrofit/ClientExtension;->checkResponse(Lretrofit/client/Response;)V

    .line 50
    return-object v0

    .line 45
    :catch_0
    move-exception v6

    .line 46
    .local v6, "ex":Ljava/io/IOException;
    :goto_0
    invoke-direct {p0, v6}, Lcom/newrelic/agent/android/instrumentation/retrofit/ClientExtension;->error(Ljava/lang/Exception;)V

    .line 47
    throw v6

    .line 45
    .end local v0    # "response":Lretrofit/client/Response;
    .end local v6    # "ex":Ljava/io/IOException;
    .restart local v7    # "response":Lretrofit/client/Response;
    :catch_1
    move-exception v6

    move-object v0, v7

    .end local v7    # "response":Lretrofit/client/Response;
    .restart local v0    # "response":Lretrofit/client/Response;
    goto :goto_0
.end method
