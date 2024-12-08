.class public Lcom/newrelic/agent/android/instrumentation/retrofit/ContentBufferingTypedInput;
.super Ljava/lang/Object;
.source "ContentBufferingTypedInput.java"

# interfaces
.implements Lretrofit/mime/TypedInput;


# static fields
.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;


# instance fields
.field private impl:Lretrofit/mime/TypedInput;

.field private inputStream:Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/instrumentation/retrofit/ContentBufferingTypedInput;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-void
.end method

.method public constructor <init>(Lretrofit/mime/TypedInput;)V
    .locals 1
    .param p1, "impl"    # Lretrofit/mime/TypedInput;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    if-nez p1, :cond_0

    .line 23
    new-instance p1, Lcom/newrelic/agent/android/instrumentation/retrofit/EmptyBodyTypedInput;

    .end local p1    # "impl":Lretrofit/mime/TypedInput;
    invoke-direct {p1}, Lcom/newrelic/agent/android/instrumentation/retrofit/EmptyBodyTypedInput;-><init>()V

    .line 25
    .restart local p1    # "impl":Lretrofit/mime/TypedInput;
    :cond_0
    iput-object p1, p0, Lcom/newrelic/agent/android/instrumentation/retrofit/ContentBufferingTypedInput;->impl:Lretrofit/mime/TypedInput;

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/newrelic/agent/android/instrumentation/retrofit/ContentBufferingTypedInput;->inputStream:Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;

    .line 27
    return-void
.end method

.method private prepareInputStream()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/retrofit/ContentBufferingTypedInput;->inputStream:Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;

    if-nez v1, :cond_1

    .line 53
    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/retrofit/ContentBufferingTypedInput;->impl:Lretrofit/mime/TypedInput;

    invoke-interface {v1}, Lretrofit/mime/TypedInput;->in()Ljava/io/InputStream;

    move-result-object v0

    .line 54
    .local v0, "is":Ljava/io/InputStream;
    if-nez v0, :cond_0

    .line 55
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .end local v0    # "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 57
    .restart local v0    # "is":Ljava/io/InputStream;
    :cond_0
    new-instance v1, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;-><init>(Ljava/io/InputStream;Z)V

    iput-object v1, p0, Lcom/newrelic/agent/android/instrumentation/retrofit/ContentBufferingTypedInput;->inputStream:Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;

    .line 59
    .end local v0    # "is":Ljava/io/InputStream;
    :cond_1
    return-void
.end method


# virtual methods
.method public in()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/newrelic/agent/android/instrumentation/retrofit/ContentBufferingTypedInput;->prepareInputStream()V

    .line 48
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/retrofit/ContentBufferingTypedInput;->inputStream:Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;

    return-object v0
.end method

.method public length()J
    .locals 4

    .prologue
    .line 37
    :try_start_0
    invoke-direct {p0}, Lcom/newrelic/agent/android/instrumentation/retrofit/ContentBufferingTypedInput;->prepareInputStream()V

    .line 38
    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/retrofit/ContentBufferingTypedInput;->inputStream:Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    int-to-long v2, v1

    .line 42
    :goto_0
    return-wide v2

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/newrelic/agent/android/instrumentation/retrofit/ContentBufferingTypedInput;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "ContentBufferingTypedInput generated an IO exception: "

    invoke-interface {v1, v2, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public mimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/retrofit/ContentBufferingTypedInput;->impl:Lretrofit/mime/TypedInput;

    invoke-interface {v0}, Lretrofit/mime/TypedInput;->mimeType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
