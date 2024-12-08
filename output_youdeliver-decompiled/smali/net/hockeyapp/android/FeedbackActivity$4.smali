.class Lnet/hockeyapp/android/FeedbackActivity$4;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/FeedbackActivity;->loadFeedbackMessages(Lnet/hockeyapp/android/objects/FeedbackResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hockeyapp/android/FeedbackActivity;

.field final synthetic val$feedbackResponse:Lnet/hockeyapp/android/objects/FeedbackResponse;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/FeedbackActivity;Lnet/hockeyapp/android/objects/FeedbackResponse;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    iput-object p2, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->val$feedbackResponse:Lnet/hockeyapp/android/objects/FeedbackResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    .line 346
    iget-object v6, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-virtual {v6, v7}, Lnet/hockeyapp/android/FeedbackActivity;->configureFeedbackView(Z)V

    .line 348
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v2, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 349
    .local v2, "format":Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v6, "d MMM h:mm a"

    invoke-direct {v3, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 351
    .local v3, "formatNew":Ljava/text/SimpleDateFormat;
    const/4 v0, 0x0

    .line 352
    .local v0, "date":Ljava/util/Date;
    iget-object v6, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->val$feedbackResponse:Lnet/hockeyapp/android/objects/FeedbackResponse;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->val$feedbackResponse:Lnet/hockeyapp/android/objects/FeedbackResponse;

    invoke-virtual {v6}, Lnet/hockeyapp/android/objects/FeedbackResponse;->getFeedback()Lnet/hockeyapp/android/objects/Feedback;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->val$feedbackResponse:Lnet/hockeyapp/android/objects/FeedbackResponse;

    invoke-virtual {v6}, Lnet/hockeyapp/android/objects/FeedbackResponse;->getFeedback()Lnet/hockeyapp/android/objects/Feedback;

    move-result-object v6

    invoke-virtual {v6}, Lnet/hockeyapp/android/objects/Feedback;->getMessages()Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->val$feedbackResponse:Lnet/hockeyapp/android/objects/FeedbackResponse;

    invoke-virtual {v6}, Lnet/hockeyapp/android/objects/FeedbackResponse;->getFeedback()Lnet/hockeyapp/android/objects/Feedback;

    move-result-object v6

    invoke-virtual {v6}, Lnet/hockeyapp/android/objects/Feedback;->getMessages()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 356
    iget-object v6, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    iget-object v7, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->val$feedbackResponse:Lnet/hockeyapp/android/objects/FeedbackResponse;

    invoke-virtual {v7}, Lnet/hockeyapp/android/objects/FeedbackResponse;->getFeedback()Lnet/hockeyapp/android/objects/Feedback;

    move-result-object v7

    invoke-virtual {v7}, Lnet/hockeyapp/android/objects/Feedback;->getMessages()Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {v6, v7}, Lnet/hockeyapp/android/FeedbackActivity;->access$602(Lnet/hockeyapp/android/FeedbackActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 358
    iget-object v6, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-static {v6}, Lnet/hockeyapp/android/FeedbackActivity;->access$600(Lnet/hockeyapp/android/FeedbackActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 362
    :try_start_0
    iget-object v6, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-static {v6}, Lnet/hockeyapp/android/FeedbackActivity;->access$600(Lnet/hockeyapp/android/FeedbackActivity;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/hockeyapp/android/objects/FeedbackMessage;

    invoke-virtual {v6}, Lnet/hockeyapp/android/objects/FeedbackMessage;->getCreatedAt()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 363
    iget-object v6, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-static {v6}, Lnet/hockeyapp/android/FeedbackActivity;->access$700(Lnet/hockeyapp/android/FeedbackActivity;)Landroid/widget/TextView;

    move-result-object v6

    const-string v7, "Last Updated: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    :goto_0
    iget-object v6, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-static {v6}, Lnet/hockeyapp/android/FeedbackActivity;->access$800(Lnet/hockeyapp/android/FeedbackActivity;)Lnet/hockeyapp/android/adapters/MessagesAdapter;

    move-result-object v6

    if-nez v6, :cond_1

    .line 370
    iget-object v6, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    new-instance v7, Lnet/hockeyapp/android/adapters/MessagesAdapter;

    iget-object v8, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-static {v8}, Lnet/hockeyapp/android/FeedbackActivity;->access$300(Lnet/hockeyapp/android/FeedbackActivity;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-static {v9}, Lnet/hockeyapp/android/FeedbackActivity;->access$600(Lnet/hockeyapp/android/FeedbackActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lnet/hockeyapp/android/adapters/MessagesAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v6, v7}, Lnet/hockeyapp/android/FeedbackActivity;->access$802(Lnet/hockeyapp/android/FeedbackActivity;Lnet/hockeyapp/android/adapters/MessagesAdapter;)Lnet/hockeyapp/android/adapters/MessagesAdapter;

    .line 381
    :goto_1
    iget-object v6, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-static {v6}, Lnet/hockeyapp/android/FeedbackActivity;->access$900(Lnet/hockeyapp/android/FeedbackActivity;)Landroid/widget/ListView;

    move-result-object v6

    iget-object v7, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-static {v7}, Lnet/hockeyapp/android/FeedbackActivity;->access$800(Lnet/hockeyapp/android/FeedbackActivity;)Lnet/hockeyapp/android/adapters/MessagesAdapter;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 383
    :cond_0
    return-void

    .line 365
    :catch_0
    move-exception v1

    .line 366
    .local v1, "e1":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0

    .line 373
    .end local v1    # "e1":Ljava/text/ParseException;
    :cond_1
    iget-object v6, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-static {v6}, Lnet/hockeyapp/android/FeedbackActivity;->access$800(Lnet/hockeyapp/android/FeedbackActivity;)Lnet/hockeyapp/android/adapters/MessagesAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lnet/hockeyapp/android/adapters/MessagesAdapter;->clear()V

    .line 374
    iget-object v6, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-static {v6}, Lnet/hockeyapp/android/FeedbackActivity;->access$600(Lnet/hockeyapp/android/FeedbackActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/hockeyapp/android/objects/FeedbackMessage;

    .line 375
    .local v5, "message":Lnet/hockeyapp/android/objects/FeedbackMessage;
    iget-object v6, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-static {v6}, Lnet/hockeyapp/android/FeedbackActivity;->access$800(Lnet/hockeyapp/android/FeedbackActivity;)Lnet/hockeyapp/android/adapters/MessagesAdapter;

    move-result-object v6

    invoke-virtual {v6, v5}, Lnet/hockeyapp/android/adapters/MessagesAdapter;->add(Lnet/hockeyapp/android/objects/FeedbackMessage;)V

    goto :goto_2

    .line 378
    .end local v5    # "message":Lnet/hockeyapp/android/objects/FeedbackMessage;
    :cond_2
    iget-object v6, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-static {v6}, Lnet/hockeyapp/android/FeedbackActivity;->access$800(Lnet/hockeyapp/android/FeedbackActivity;)Lnet/hockeyapp/android/adapters/MessagesAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lnet/hockeyapp/android/adapters/MessagesAdapter;->notifyDataSetChanged()V

    goto :goto_1
.end method
