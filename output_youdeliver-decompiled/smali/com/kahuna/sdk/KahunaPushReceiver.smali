.class public Lcom/kahuna/sdk/KahunaPushReceiver;
.super Landroid/content/BroadcastReceiver;
.source "KahunaPushReceiver.java"


# static fields
.field private static mReceiverSet:Z


# instance fields
.field private final mLogger:Lcom/kahuna/sdk/KahunaLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/kahuna/sdk/KahunaPushReceiver;->mReceiverSet:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 38
    new-instance v0, Lcom/kahuna/sdk/KahunaLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kahuna/sdk/KahunaLogger;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kahuna/sdk/KahunaPushReceiver;->mLogger:Lcom/kahuna/sdk/KahunaLogger;

    return-void
.end method

.method static final getDefaultIntentServiceClassName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    const-string v0, "com.kahuna.sdk.KahunaPushService"

    .line 69
    .local v0, "className":Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method protected getGCMIntentServiceClassName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-static {p1}, Lcom/kahuna/sdk/KahunaPushReceiver;->getDefaultIntentServiceClassName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 42
    iget-object v1, p0, Lcom/kahuna/sdk/KahunaPushReceiver;->mLogger:Lcom/kahuna/sdk/KahunaLogger;

    const-string v2, "onReceive: %s"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v7, v2, v3}, Lcom/kahuna/sdk/KahunaLogger;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 44
    sget-boolean v1, Lcom/kahuna/sdk/KahunaPushReceiver;->mReceiverSet:Z

    if-nez v1, :cond_0

    .line 45
    sput-boolean v5, Lcom/kahuna/sdk/KahunaPushReceiver;->mReceiverSet:Z

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/kahuna/sdk/GCMRegistrar;->setRetryReceiverClassName(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    :cond_0
    invoke-virtual {p0, p1}, Lcom/kahuna/sdk/KahunaPushReceiver;->getGCMIntentServiceClassName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "className":Ljava/lang/String;
    iget-object v1, p0, Lcom/kahuna/sdk/KahunaPushReceiver;->mLogger:Lcom/kahuna/sdk/KahunaLogger;

    const-string v2, "GCM IntentService class: %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-virtual {v1, v7, v2, v3}, Lcom/kahuna/sdk/KahunaLogger;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 52
    invoke-static {p1, p2, v0}, Lcom/kahuna/sdk/GCMBaseIntentService;->runIntentInService(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 53
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v8, v8}, Lcom/kahuna/sdk/KahunaPushReceiver;->setResult(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 54
    return-void
.end method
