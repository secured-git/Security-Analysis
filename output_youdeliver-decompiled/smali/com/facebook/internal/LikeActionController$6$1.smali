.class Lcom/facebook/internal/LikeActionController$6$1;
.super Ljava/lang/Object;
.source "LikeActionController.java"

# interfaces
.implements Lcom/facebook/RequestBatch$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/LikeActionController$6;->onComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/internal/LikeActionController$6;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$analyticsParameters:Landroid/os/Bundle;

.field private final synthetic val$likeRequest:Lcom/facebook/internal/LikeActionController$PublishLikeRequestWrapper;


# direct methods
.method constructor <init>(Lcom/facebook/internal/LikeActionController$6;Lcom/facebook/internal/LikeActionController$PublishLikeRequestWrapper;Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/internal/LikeActionController$6$1;->this$1:Lcom/facebook/internal/LikeActionController$6;

    iput-object p2, p0, Lcom/facebook/internal/LikeActionController$6$1;->val$likeRequest:Lcom/facebook/internal/LikeActionController$PublishLikeRequestWrapper;

    iput-object p3, p0, Lcom/facebook/internal/LikeActionController$6$1;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/facebook/internal/LikeActionController$6$1;->val$analyticsParameters:Landroid/os/Bundle;

    .line 801
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatchCompleted(Lcom/facebook/RequestBatch;)V
    .locals 7
    .param p1, "batch"    # Lcom/facebook/RequestBatch;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 804
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$6$1;->this$1:Lcom/facebook/internal/LikeActionController$6;

    invoke-static {v0}, Lcom/facebook/internal/LikeActionController$6;->access$0(Lcom/facebook/internal/LikeActionController$6;)Lcom/facebook/internal/LikeActionController;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/facebook/internal/LikeActionController;->access$27(Lcom/facebook/internal/LikeActionController;Z)V

    .line 806
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$6$1;->val$likeRequest:Lcom/facebook/internal/LikeActionController$PublishLikeRequestWrapper;

    iget-object v0, v0, Lcom/facebook/internal/LikeActionController$PublishLikeRequestWrapper;->error:Lcom/facebook/FacebookRequestError;

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$6$1;->this$1:Lcom/facebook/internal/LikeActionController$6;

    invoke-static {v0}, Lcom/facebook/internal/LikeActionController$6;->access$0(Lcom/facebook/internal/LikeActionController$6;)Lcom/facebook/internal/LikeActionController;

    move-result-object v0

    .line 813
    iget-object v2, p0, Lcom/facebook/internal/LikeActionController$6$1;->this$1:Lcom/facebook/internal/LikeActionController$6;

    invoke-static {v2}, Lcom/facebook/internal/LikeActionController$6;->access$0(Lcom/facebook/internal/LikeActionController$6;)Lcom/facebook/internal/LikeActionController;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/internal/LikeActionController;->access$4(Lcom/facebook/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v2

    .line 814
    iget-object v3, p0, Lcom/facebook/internal/LikeActionController$6$1;->this$1:Lcom/facebook/internal/LikeActionController$6;

    invoke-static {v3}, Lcom/facebook/internal/LikeActionController$6;->access$0(Lcom/facebook/internal/LikeActionController$6;)Lcom/facebook/internal/LikeActionController;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/internal/LikeActionController;->access$5(Lcom/facebook/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v3

    .line 815
    iget-object v4, p0, Lcom/facebook/internal/LikeActionController$6$1;->this$1:Lcom/facebook/internal/LikeActionController$6;

    invoke-static {v4}, Lcom/facebook/internal/LikeActionController$6;->access$0(Lcom/facebook/internal/LikeActionController$6;)Lcom/facebook/internal/LikeActionController;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/internal/LikeActionController;->access$6(Lcom/facebook/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v4

    .line 816
    iget-object v5, p0, Lcom/facebook/internal/LikeActionController$6$1;->this$1:Lcom/facebook/internal/LikeActionController$6;

    invoke-static {v5}, Lcom/facebook/internal/LikeActionController$6;->access$0(Lcom/facebook/internal/LikeActionController$6;)Lcom/facebook/internal/LikeActionController;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/internal/LikeActionController;->access$7(Lcom/facebook/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v5

    .line 817
    iget-object v6, p0, Lcom/facebook/internal/LikeActionController$6$1;->this$1:Lcom/facebook/internal/LikeActionController$6;

    invoke-static {v6}, Lcom/facebook/internal/LikeActionController$6;->access$0(Lcom/facebook/internal/LikeActionController$6;)Lcom/facebook/internal/LikeActionController;

    move-result-object v6

    invoke-static {v6}, Lcom/facebook/internal/LikeActionController;->access$20(Lcom/facebook/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v6

    .line 811
    invoke-static/range {v0 .. v6}, Lcom/facebook/internal/LikeActionController;->access$22(Lcom/facebook/internal/LikeActionController;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$6$1;->this$1:Lcom/facebook/internal/LikeActionController$6;

    invoke-static {v0}, Lcom/facebook/internal/LikeActionController$6;->access$0(Lcom/facebook/internal/LikeActionController$6;)Lcom/facebook/internal/LikeActionController;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/internal/LikeActionController$6$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/facebook/internal/LikeActionController$6$1;->val$analyticsParameters:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/LikeActionController;->access$28(Lcom/facebook/internal/LikeActionController;Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 828
    :goto_0
    return-void

    .line 821
    :cond_0
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$6$1;->this$1:Lcom/facebook/internal/LikeActionController$6;

    invoke-static {v0}, Lcom/facebook/internal/LikeActionController$6;->access$0(Lcom/facebook/internal/LikeActionController$6;)Lcom/facebook/internal/LikeActionController;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/internal/LikeActionController$6$1;->val$likeRequest:Lcom/facebook/internal/LikeActionController$PublishLikeRequestWrapper;

    iget-object v1, v1, Lcom/facebook/internal/LikeActionController$PublishLikeRequestWrapper;->unlikeToken:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/internal/LikeActionController;->access$29(Lcom/facebook/internal/LikeActionController;Ljava/lang/String;)V

    .line 822
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$6$1;->this$1:Lcom/facebook/internal/LikeActionController$6;

    invoke-static {v0}, Lcom/facebook/internal/LikeActionController$6;->access$0(Lcom/facebook/internal/LikeActionController$6;)Lcom/facebook/internal/LikeActionController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/internal/LikeActionController;->access$30(Lcom/facebook/internal/LikeActionController;Z)V

    .line 824
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$6$1;->this$1:Lcom/facebook/internal/LikeActionController$6;

    invoke-static {v0}, Lcom/facebook/internal/LikeActionController$6;->access$0(Lcom/facebook/internal/LikeActionController$6;)Lcom/facebook/internal/LikeActionController;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/LikeActionController;->access$21(Lcom/facebook/internal/LikeActionController;)Lcom/facebook/AppEventsLogger;

    move-result-object v0

    const-string v1, "fb_like_control_did_like"

    iget-object v2, p0, Lcom/facebook/internal/LikeActionController$6$1;->val$analyticsParameters:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v3, v2}, Lcom/facebook/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 826
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$6$1;->this$1:Lcom/facebook/internal/LikeActionController$6;

    invoke-static {v0}, Lcom/facebook/internal/LikeActionController$6;->access$0(Lcom/facebook/internal/LikeActionController$6;)Lcom/facebook/internal/LikeActionController;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/internal/LikeActionController$6$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/facebook/internal/LikeActionController$6$1;->val$analyticsParameters:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/LikeActionController;->access$31(Lcom/facebook/internal/LikeActionController;Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0
.end method
