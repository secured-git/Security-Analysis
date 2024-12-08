.class public Lcom/newrelic/agent/android/logging/ConsoleAgentLog;
.super Ljava/lang/Object;
.source "ConsoleAgentLog.java"

# interfaces
.implements Lcom/newrelic/agent/android/logging/AgentLog;


# instance fields
.field private level:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x3

    iput v0, p0, Lcom/newrelic/agent/android/logging/ConsoleAgentLog;->level:I

    return-void
.end method

.method private static print(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 54
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 55
    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 8
    iget v0, p0, Lcom/newrelic/agent/android/logging/ConsoleAgentLog;->level:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 9
    const-string v0, "DEBUG"

    invoke-static {v0, p1}, Lcom/newrelic/agent/android/logging/ConsoleAgentLog;->print(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 38
    iget v0, p0, Lcom/newrelic/agent/android/logging/ConsoleAgentLog;->level:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 39
    const-string v0, "ERROR"

    invoke-static {v0, p1}, Lcom/newrelic/agent/android/logging/ConsoleAgentLog;->print(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 32
    iget v0, p0, Lcom/newrelic/agent/android/logging/ConsoleAgentLog;->level:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 33
    const-string v0, "ERROR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/logging/ConsoleAgentLog;->print(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_0
    return-void
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/newrelic/agent/android/logging/ConsoleAgentLog;->level:I

    return v0
.end method

.method public info(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 20
    iget v0, p0, Lcom/newrelic/agent/android/logging/ConsoleAgentLog;->level:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 21
    const-string v0, "INFO"

    invoke-static {v0, p1}, Lcom/newrelic/agent/android/logging/ConsoleAgentLog;->print(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_0
    return-void
.end method

.method public setLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/newrelic/agent/android/logging/ConsoleAgentLog;->level:I

    .line 51
    return-void
.end method

.method public verbose(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 14
    iget v0, p0, Lcom/newrelic/agent/android/logging/ConsoleAgentLog;->level:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 15
    const-string v0, "VERBOSE"

    invoke-static {v0, p1}, Lcom/newrelic/agent/android/logging/ConsoleAgentLog;->print(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_0
    return-void
.end method

.method public warning(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 26
    iget v0, p0, Lcom/newrelic/agent/android/logging/ConsoleAgentLog;->level:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 27
    const-string v0, "WARN"

    invoke-static {v0, p1}, Lcom/newrelic/agent/android/logging/ConsoleAgentLog;->print(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_0
    return-void
.end method
