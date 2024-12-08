.class Lnet/hockeyapp/android/FeedbackActivity$2;
.super Landroid/os/Handler;
.source "FeedbackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/FeedbackActivity;->initFeedbackHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hockeyapp/android/FeedbackActivity;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/FeedbackActivity;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity$2;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 170
    const/4 v4, 0x0

    .line 171
    .local v4, "success":Z
    iget-object v5, p0, Lnet/hockeyapp/android/FeedbackActivity$2;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    new-instance v6, Lnet/hockeyapp/android/objects/ErrorObject;

    invoke-direct {v6}, Lnet/hockeyapp/android/objects/ErrorObject;-><init>()V

    invoke-static {v5, v6}, Lnet/hockeyapp/android/FeedbackActivity;->access$002(Lnet/hockeyapp/android/FeedbackActivity;Lnet/hockeyapp/android/objects/ErrorObject;)Lnet/hockeyapp/android/objects/ErrorObject;

    .line 173
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 174
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 175
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "feedback_response"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, "responseString":Ljava/lang/String;
    const-string v5, "feedback_status"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, "statusCode":Ljava/lang/String;
    const-string v5, "request_type"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "requestType":Ljava/lang/String;
    const-string v5, "send"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v2, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0xc9

    if-eq v5, v6, :cond_2

    .line 180
    :cond_0
    iget-object v5, p0, Lnet/hockeyapp/android/FeedbackActivity$2;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-static {v5}, Lnet/hockeyapp/android/FeedbackActivity;->access$000(Lnet/hockeyapp/android/FeedbackActivity;)Lnet/hockeyapp/android/objects/ErrorObject;

    move-result-object v5

    const-string v6, "Message couldn\'t be posted. Please check your input values and try again."

    invoke-virtual {v5, v6}, Lnet/hockeyapp/android/objects/ErrorObject;->setMessage(Ljava/lang/String;)V

    .line 196
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "requestType":Ljava/lang/String;
    .end local v2    # "responseString":Ljava/lang/String;
    .end local v3    # "statusCode":Ljava/lang/String;
    :goto_0
    if-nez v4, :cond_1

    .line 197
    iget-object v5, p0, Lnet/hockeyapp/android/FeedbackActivity$2;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    new-instance v6, Lnet/hockeyapp/android/FeedbackActivity$2$1;

    invoke-direct {v6, p0}, Lnet/hockeyapp/android/FeedbackActivity$2$1;-><init>(Lnet/hockeyapp/android/FeedbackActivity$2;)V

    invoke-virtual {v5, v6}, Lnet/hockeyapp/android/FeedbackActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 207
    :cond_1
    return-void

    .line 182
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "requestType":Ljava/lang/String;
    .restart local v2    # "responseString":Ljava/lang/String;
    .restart local v3    # "statusCode":Ljava/lang/String;
    :cond_2
    const-string v5, "fetch"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x194

    if-eq v5, v6, :cond_3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x1a6

    if-ne v5, v6, :cond_4

    .line 184
    :cond_3
    iget-object v5, p0, Lnet/hockeyapp/android/FeedbackActivity$2;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-static {v5}, Lnet/hockeyapp/android/FeedbackActivity;->access$100(Lnet/hockeyapp/android/FeedbackActivity;)V

    .line 185
    const/4 v4, 0x1

    goto :goto_0

    .line 188
    :cond_4
    iget-object v5, p0, Lnet/hockeyapp/android/FeedbackActivity$2;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-static {v5, v2}, Lnet/hockeyapp/android/FeedbackActivity;->access$200(Lnet/hockeyapp/android/FeedbackActivity;Ljava/lang/String;)V

    .line 189
    const/4 v4, 0x1

    goto :goto_0

    .line 193
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "requestType":Ljava/lang/String;
    .end local v2    # "responseString":Ljava/lang/String;
    .end local v3    # "statusCode":Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lnet/hockeyapp/android/FeedbackActivity$2;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-static {v5}, Lnet/hockeyapp/android/FeedbackActivity;->access$000(Lnet/hockeyapp/android/FeedbackActivity;)Lnet/hockeyapp/android/objects/ErrorObject;

    move-result-object v5

    const-string v6, "Message couldn\'t be posted. Please check your input values and try again."

    invoke-virtual {v5, v6}, Lnet/hockeyapp/android/objects/ErrorObject;->setMessage(Ljava/lang/String;)V

    goto :goto_0
.end method
