.class Lcom/facebook/FacebookTimeSpentData$SerializationProxyV2;
.super Ljava/lang/Object;
.source "FacebookTimeSpentData.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/FacebookTimeSpentData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializationProxyV2"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6L


# instance fields
.field private final firstOpenSourceApplication:Ljava/lang/String;

.field private final interruptionCount:I

.field private final lastResumeTime:J

.field private final lastSuspendTime:J

.field private final millisecondsSpentInSession:J


# direct methods
.method constructor <init>(JJJILjava/lang/String;)V
    .locals 1
    .param p1, "lastResumeTime"    # J
    .param p3, "lastSuspendTime"    # J
    .param p5, "millisecondsSpentInSession"    # J
    .param p7, "interruptionCount"    # I
    .param p8, "firstOpenSourceApplication"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-wide p1, p0, Lcom/facebook/FacebookTimeSpentData$SerializationProxyV2;->lastResumeTime:J

    .line 133
    iput-wide p3, p0, Lcom/facebook/FacebookTimeSpentData$SerializationProxyV2;->lastSuspendTime:J

    .line 134
    iput-wide p5, p0, Lcom/facebook/FacebookTimeSpentData$SerializationProxyV2;->millisecondsSpentInSession:J

    .line 135
    iput p7, p0, Lcom/facebook/FacebookTimeSpentData$SerializationProxyV2;->interruptionCount:I

    .line 136
    iput-object p8, p0, Lcom/facebook/FacebookTimeSpentData$SerializationProxyV2;->firstOpenSourceApplication:Ljava/lang/String;

    .line 137
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 11

    .prologue
    .line 140
    new-instance v1, Lcom/facebook/FacebookTimeSpentData;

    .line 141
    iget-wide v2, p0, Lcom/facebook/FacebookTimeSpentData$SerializationProxyV2;->lastResumeTime:J

    .line 142
    iget-wide v4, p0, Lcom/facebook/FacebookTimeSpentData$SerializationProxyV2;->lastSuspendTime:J

    .line 143
    iget-wide v6, p0, Lcom/facebook/FacebookTimeSpentData$SerializationProxyV2;->millisecondsSpentInSession:J

    .line 144
    iget v8, p0, Lcom/facebook/FacebookTimeSpentData$SerializationProxyV2;->interruptionCount:I

    .line 145
    iget-object v9, p0, Lcom/facebook/FacebookTimeSpentData$SerializationProxyV2;->firstOpenSourceApplication:Ljava/lang/String;

    .line 140
    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/facebook/FacebookTimeSpentData;-><init>(JJJILjava/lang/String;Lcom/facebook/FacebookTimeSpentData;)V

    return-object v1
.end method
