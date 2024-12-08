.class Lcom/kahuna/sdk/KahunaFindMyDeviceManager$SendMonitorRequestsTask;
.super Ljava/util/TimerTask;
.source "KahunaFindMyDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kahuna/sdk/KahunaFindMyDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendMonitorRequestsTask"
.end annotation


# instance fields
.field private deviceId:Ljava/lang/String;

.field private isDebugBuild:Z

.field private key:Ljava/lang/String;

.field final synthetic this$0:Lcom/kahuna/sdk/KahunaFindMyDeviceManager;


# direct methods
.method public constructor <init>(Lcom/kahuna/sdk/KahunaFindMyDeviceManager;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "isDebugBuild"    # Z

    .prologue
    .line 159
    iput-object p1, p0, Lcom/kahuna/sdk/KahunaFindMyDeviceManager$SendMonitorRequestsTask;->this$0:Lcom/kahuna/sdk/KahunaFindMyDeviceManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 160
    iput-object p2, p0, Lcom/kahuna/sdk/KahunaFindMyDeviceManager$SendMonitorRequestsTask;->key:Ljava/lang/String;

    .line 161
    iput-object p3, p0, Lcom/kahuna/sdk/KahunaFindMyDeviceManager$SendMonitorRequestsTask;->deviceId:Ljava/lang/String;

    .line 162
    iput-boolean p4, p0, Lcom/kahuna/sdk/KahunaFindMyDeviceManager$SendMonitorRequestsTask;->isDebugBuild:Z

    .line 163
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 168
    :try_start_0
    new-instance v4, Lcom/kahuna/sdk/http/RequestParams;

    invoke-direct {v4}, Lcom/kahuna/sdk/http/RequestParams;-><init>()V

    .line 169
    .local v4, "params":Lcom/kahuna/sdk/http/RequestParams;
    const-string v5, "key"

    iget-object v6, p0, Lcom/kahuna/sdk/KahunaFindMyDeviceManager$SendMonitorRequestsTask;->key:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/kahuna/sdk/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v5, "dev_id"

    iget-object v6, p0, Lcom/kahuna/sdk/KahunaFindMyDeviceManager$SendMonitorRequestsTask;->deviceId:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/kahuna/sdk/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v6, "env"

    iget-boolean v5, p0, Lcom/kahuna/sdk/KahunaFindMyDeviceManager$SendMonitorRequestsTask;->isDebugBuild:Z

    if-eqz v5, :cond_2

    const-string v5, "s"

    :goto_0
    invoke-virtual {v4, v6, v5}, Lcom/kahuna/sdk/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    const-wide/32 v8, 0x15180

    add-long v2, v6, v8

    .line 175
    .local v2, "expireTimeSeconds":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "kah"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "monitorKey":Ljava/lang/String;
    const-string v5, "monitoring_key"

    invoke-virtual {v4, v5, v1}, Lcom/kahuna/sdk/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    sget-boolean v5, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v5, :cond_0

    .line 179
    const-string v5, "KahunaAnalytics"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sending monitor request: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_0
    iget-object v5, p0, Lcom/kahuna/sdk/KahunaFindMyDeviceManager$SendMonitorRequestsTask;->this$0:Lcom/kahuna/sdk/KahunaFindMyDeviceManager;

    invoke-static {v5}, Lcom/kahuna/sdk/KahunaFindMyDeviceManager;->access$300(Lcom/kahuna/sdk/KahunaFindMyDeviceManager;)Lcom/kahuna/sdk/http/AsyncHttpClient;

    move-result-object v5

    const-string v6, "https://tap-nexus.appspot.com/monitor_device"

    new-instance v7, Lcom/kahuna/sdk/KahunaFindMyDeviceManager$SendMonitorRequestsTask$1;

    invoke-direct {v7, p0}, Lcom/kahuna/sdk/KahunaFindMyDeviceManager$SendMonitorRequestsTask$1;-><init>(Lcom/kahuna/sdk/KahunaFindMyDeviceManager$SendMonitorRequestsTask;)V

    invoke-virtual {v5, v6, v4, v7}, Lcom/kahuna/sdk/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/kahuna/sdk/http/RequestParams;Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;)V

    .line 201
    .end local v1    # "monitorKey":Ljava/lang/String;
    .end local v2    # "expireTimeSeconds":J
    .end local v4    # "params":Lcom/kahuna/sdk/http/RequestParams;
    :cond_1
    :goto_1
    return-void

    .line 171
    .restart local v4    # "params":Lcom/kahuna/sdk/http/RequestParams;
    :cond_2
    const-string v5, "p"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 197
    .end local v4    # "params":Lcom/kahuna/sdk/http/RequestParams;
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v5, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v5, :cond_1

    .line 199
    const-string v5, "KahunaAnalytics"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Caught exception in Send Monitor Request Task handler: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
