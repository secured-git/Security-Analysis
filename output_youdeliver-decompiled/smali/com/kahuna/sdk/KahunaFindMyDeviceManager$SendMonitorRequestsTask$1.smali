.class Lcom/kahuna/sdk/KahunaFindMyDeviceManager$SendMonitorRequestsTask$1;
.super Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;
.source "KahunaFindMyDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kahuna/sdk/KahunaFindMyDeviceManager$SendMonitorRequestsTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kahuna/sdk/KahunaFindMyDeviceManager$SendMonitorRequestsTask;


# direct methods
.method constructor <init>(Lcom/kahuna/sdk/KahunaFindMyDeviceManager$SendMonitorRequestsTask;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/kahuna/sdk/KahunaFindMyDeviceManager$SendMonitorRequestsTask$1;->this$1:Lcom/kahuna/sdk/KahunaFindMyDeviceManager$SendMonitorRequestsTask;

    invoke-direct {p0}, Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 185
    invoke-super {p0, p1, p2}, Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 186
    sget-boolean v0, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v0, :cond_0

    .line 187
    const-string v0, "KahunaAnalytics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to send monitor request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 192
    sget-boolean v0, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v0, :cond_0

    .line 193
    const-string v0, "KahunaAnalytics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully sent monitor request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_0
    return-void
.end method
