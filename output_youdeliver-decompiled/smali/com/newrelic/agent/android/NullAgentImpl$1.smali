.class Lcom/newrelic/agent/android/NullAgentImpl$1;
.super Ljava/lang/Object;
.source "NullAgentImpl.java"

# interfaces
.implements Lcom/newrelic/agent/android/util/Encoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newrelic/agent/android/NullAgentImpl;->getEncoder()Lcom/newrelic/agent/android/util/Encoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newrelic/agent/android/NullAgentImpl;


# direct methods
.method constructor <init>(Lcom/newrelic/agent/android/NullAgentImpl;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/newrelic/agent/android/NullAgentImpl$1;->this$0:Lcom/newrelic/agent/android/NullAgentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode([B)Ljava/lang/String;
    .locals 1
    .param p1, "bytes"    # [B

    .prologue
    .line 90
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
