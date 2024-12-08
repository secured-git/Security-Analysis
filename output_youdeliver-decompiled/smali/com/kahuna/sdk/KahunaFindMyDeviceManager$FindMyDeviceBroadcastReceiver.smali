.class Lcom/kahuna/sdk/KahunaFindMyDeviceManager$FindMyDeviceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "KahunaFindMyDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kahuna/sdk/KahunaFindMyDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FindMyDeviceBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kahuna/sdk/KahunaFindMyDeviceManager;


# direct methods
.method private constructor <init>(Lcom/kahuna/sdk/KahunaFindMyDeviceManager;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/kahuna/sdk/KahunaFindMyDeviceManager$FindMyDeviceBroadcastReceiver;->this$0:Lcom/kahuna/sdk/KahunaFindMyDeviceManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kahuna/sdk/KahunaFindMyDeviceManager;Lcom/kahuna/sdk/KahunaFindMyDeviceManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kahuna/sdk/KahunaFindMyDeviceManager;
    .param p2, "x1"    # Lcom/kahuna/sdk/KahunaFindMyDeviceManager$1;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/kahuna/sdk/KahunaFindMyDeviceManager$FindMyDeviceBroadcastReceiver;-><init>(Lcom/kahuna/sdk/KahunaFindMyDeviceManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 139
    :try_start_0
    invoke-static {}, Lcom/kahuna/sdk/KahunaFindMyDeviceManager;->access$100()Lcom/kahuna/sdk/KahunaFindMyDeviceManager;

    move-result-object v1

    .line 140
    .local v1, "instance":Lcom/kahuna/sdk/KahunaFindMyDeviceManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/16 v4, 0xe10

    add-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Lcom/kahuna/sdk/KahunaFindMyDeviceManager;->access$202(Lcom/kahuna/sdk/KahunaFindMyDeviceManager;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v1    # "instance":Lcom/kahuna/sdk/KahunaFindMyDeviceManager;
    :cond_0
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v2, :cond_0

    .line 144
    const-string v2, "KahunaAnalytics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handled exception in FindMyDevice Broadcast Receiver "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
