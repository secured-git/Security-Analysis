.class Lcom/adjust/sdk/ActivityHandler$29;
.super Ljava/lang/Object;
.source "ActivityHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/ActivityHandler;->prepareDeeplinkI(Landroid/net/Uri;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adjust/sdk/ActivityHandler;

.field final synthetic val$deeplink:Landroid/net/Uri;

.field final synthetic val$deeplinkIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/ActivityHandler;Landroid/net/Uri;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/adjust/sdk/ActivityHandler;

    .prologue
    .line 936
    iput-object p1, p0, Lcom/adjust/sdk/ActivityHandler$29;->this$0:Lcom/adjust/sdk/ActivityHandler;

    iput-object p2, p0, Lcom/adjust/sdk/ActivityHandler$29;->val$deeplink:Landroid/net/Uri;

    iput-object p3, p0, Lcom/adjust/sdk/ActivityHandler$29;->val$deeplinkIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 939
    const/4 v0, 0x1

    .line 940
    .local v0, "toLaunchDeeplink":Z
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler$29;->this$0:Lcom/adjust/sdk/ActivityHandler;

    invoke-static {v1}, Lcom/adjust/sdk/ActivityHandler;->access$2100(Lcom/adjust/sdk/ActivityHandler;)Lcom/adjust/sdk/AdjustConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/adjust/sdk/AdjustConfig;->onDeeplinkResponseListener:Lcom/adjust/sdk/OnDeeplinkResponseListener;

    if-eqz v1, :cond_0

    .line 941
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler$29;->this$0:Lcom/adjust/sdk/ActivityHandler;

    invoke-static {v1}, Lcom/adjust/sdk/ActivityHandler;->access$2100(Lcom/adjust/sdk/ActivityHandler;)Lcom/adjust/sdk/AdjustConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/adjust/sdk/AdjustConfig;->onDeeplinkResponseListener:Lcom/adjust/sdk/OnDeeplinkResponseListener;

    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler$29;->val$deeplink:Landroid/net/Uri;

    invoke-interface {v1, v2}, Lcom/adjust/sdk/OnDeeplinkResponseListener;->launchReceivedDeeplink(Landroid/net/Uri;)Z

    move-result v0

    .line 943
    :cond_0
    if-eqz v0, :cond_1

    .line 944
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler$29;->this$0:Lcom/adjust/sdk/ActivityHandler;

    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler$29;->val$deeplinkIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler$29;->val$deeplink:Landroid/net/Uri;

    invoke-static {v1, v2, v3}, Lcom/adjust/sdk/ActivityHandler;->access$2300(Lcom/adjust/sdk/ActivityHandler;Landroid/content/Intent;Landroid/net/Uri;)V

    .line 946
    :cond_1
    return-void
.end method
