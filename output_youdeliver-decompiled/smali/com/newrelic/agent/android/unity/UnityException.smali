.class public Lcom/newrelic/agent/android/unity/UnityException;
.super Ljava/lang/RuntimeException;
.source "UnityException.java"


# instance fields
.field private sourceExceptionType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/newrelic/agent/android/unity/UnityException;->sourceExceptionType:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/newrelic/agent/android/unity/UnityException;->sourceExceptionType:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "sourceExceptionType"    # Ljava/lang/String;
    .param p2, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/newrelic/agent/android/unity/UnityException;->sourceExceptionType:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/newrelic/agent/android/unity/UnityException;->sourceExceptionType:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/StackTraceElement;)V
    .locals 1
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "stackTraceElements"    # [Ljava/lang/StackTraceElement;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/newrelic/agent/android/unity/UnityException;->sourceExceptionType:Ljava/lang/String;

    .line 28
    invoke-virtual {p0, p2}, Lcom/newrelic/agent/android/unity/UnityException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 29
    return-void
.end method


# virtual methods
.method public appendStackFrame(Ljava/lang/StackTraceElement;)V
    .locals 4
    .param p1, "stackFrame"    # Ljava/lang/StackTraceElement;

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/newrelic/agent/android/unity/UnityException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 33
    .local v0, "currentStack":[Ljava/lang/StackTraceElement;
    array-length v3, v0

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [Ljava/lang/StackTraceElement;

    .line 34
    .local v2, "newStack":[Ljava/lang/StackTraceElement;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 35
    aget-object v3, v0, v1

    aput-object v3, v2, v1

    .line 34
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    :cond_0
    array-length v3, v0

    aput-object p1, v2, v3

    .line 38
    invoke-virtual {p0, v2}, Lcom/newrelic/agent/android/unity/UnityException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 39
    return-void
.end method

.method public appendStackFrame(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "lineNumber"    # I

    .prologue
    .line 42
    new-instance v3, Ljava/lang/StackTraceElement;

    invoke-direct {v3, p1, p2, p3, p4}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 43
    .local v3, "stackFrame":Ljava/lang/StackTraceElement;
    invoke-virtual {p0}, Lcom/newrelic/agent/android/unity/UnityException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 44
    .local v0, "currentStack":[Ljava/lang/StackTraceElement;
    array-length v4, v0

    add-int/lit8 v4, v4, 0x1

    new-array v2, v4, [Ljava/lang/StackTraceElement;

    .line 45
    .local v2, "newStack":[Ljava/lang/StackTraceElement;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 46
    aget-object v4, v0, v1

    aput-object v4, v2, v1

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    :cond_0
    array-length v4, v0

    aput-object v3, v2, v4

    .line 49
    invoke-virtual {p0, v2}, Lcom/newrelic/agent/android/unity/UnityException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 50
    return-void
.end method

.method public setSourceExceptionType(Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceExceptionType"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/newrelic/agent/android/unity/UnityException;->sourceExceptionType:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/newrelic/agent/android/unity/UnityException;->sourceExceptionType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/newrelic/agent/android/unity/UnityException;->sourceExceptionType:Ljava/lang/String;

    goto :goto_0
.end method
