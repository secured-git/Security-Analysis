.class public Lnet/hockeyapp/android/FeedbackActivity;
.super Landroid/app/Activity;
.source "FeedbackActivity.java"

# interfaces
.implements Lnet/hockeyapp/android/FeedbackActivityInterface;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# instance fields
.field private final DIALOG_ERROR_ID:I

.field private addResponseButton:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private emailInput:Landroid/widget/EditText;

.field private error:Lnet/hockeyapp/android/objects/ErrorObject;

.field private feedbackHandler:Landroid/os/Handler;

.field private feedbackMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/hockeyapp/android/objects/FeedbackMessage;",
            ">;"
        }
    .end annotation
.end field

.field private feedbackScrollView:Landroid/widget/ScrollView;

.field private inSendFeedback:Z

.field private lastUpdatedTextView:Landroid/widget/TextView;

.field private messagesAdapter:Lnet/hockeyapp/android/adapters/MessagesAdapter;

.field private messagesListView:Landroid/widget/ListView;

.field private nameInput:Landroid/widget/EditText;

.field private parseFeedbackHandler:Landroid/os/Handler;

.field private parseFeedbackTask:Lnet/hockeyapp/android/tasks/ParseFeedbackTask;

.field private refreshButton:Landroid/widget/Button;

.field private sendFeedbackButton:Landroid/widget/Button;

.field private sendFeedbackTask:Lnet/hockeyapp/android/tasks/SendFeedbackTask;

.field private subjectInput:Landroid/widget/EditText;

.field private textInput:Landroid/widget/EditText;

.field private token:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private wrapperLayoutFeedbackAndMessages:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->DIALOG_ERROR_ID:I

    return-void
.end method

.method static synthetic access$000(Lnet/hockeyapp/android/FeedbackActivity;)Lnet/hockeyapp/android/objects/ErrorObject;
    .locals 1
    .param p0, "x0"    # Lnet/hockeyapp/android/FeedbackActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->error:Lnet/hockeyapp/android/objects/ErrorObject;

    return-object v0
.end method

.method static synthetic access$002(Lnet/hockeyapp/android/FeedbackActivity;Lnet/hockeyapp/android/objects/ErrorObject;)Lnet/hockeyapp/android/objects/ErrorObject;
    .locals 0
    .param p0, "x0"    # Lnet/hockeyapp/android/FeedbackActivity;
    .param p1, "x1"    # Lnet/hockeyapp/android/objects/ErrorObject;

    .prologue
    .line 71
    iput-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->error:Lnet/hockeyapp/android/objects/ErrorObject;

    return-object p1
.end method

.method static synthetic access$100(Lnet/hockeyapp/android/FeedbackActivity;)V
    .locals 0
    .param p0, "x0"    # Lnet/hockeyapp/android/FeedbackActivity;

    .prologue
    .line 71
    invoke-direct {p0}, Lnet/hockeyapp/android/FeedbackActivity;->resetFeedbackView()V

    return-void
.end method

.method static synthetic access$200(Lnet/hockeyapp/android/FeedbackActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lnet/hockeyapp/android/FeedbackActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/FeedbackActivity;->startParseFeedbackTask(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lnet/hockeyapp/android/FeedbackActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lnet/hockeyapp/android/FeedbackActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lnet/hockeyapp/android/FeedbackActivity;Lnet/hockeyapp/android/objects/FeedbackResponse;)V
    .locals 0
    .param p0, "x0"    # Lnet/hockeyapp/android/FeedbackActivity;
    .param p1, "x1"    # Lnet/hockeyapp/android/objects/FeedbackResponse;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/FeedbackActivity;->loadFeedbackMessages(Lnet/hockeyapp/android/objects/FeedbackResponse;)V

    return-void
.end method

.method static synthetic access$502(Lnet/hockeyapp/android/FeedbackActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/hockeyapp/android/FeedbackActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->inSendFeedback:Z

    return p1
.end method

.method static synthetic access$600(Lnet/hockeyapp/android/FeedbackActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lnet/hockeyapp/android/FeedbackActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->feedbackMessages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$602(Lnet/hockeyapp/android/FeedbackActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lnet/hockeyapp/android/FeedbackActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 71
    iput-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->feedbackMessages:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$700(Lnet/hockeyapp/android/FeedbackActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lnet/hockeyapp/android/FeedbackActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->lastUpdatedTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lnet/hockeyapp/android/FeedbackActivity;)Lnet/hockeyapp/android/adapters/MessagesAdapter;
    .locals 1
    .param p0, "x0"    # Lnet/hockeyapp/android/FeedbackActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->messagesAdapter:Lnet/hockeyapp/android/adapters/MessagesAdapter;

    return-object v0
.end method

.method static synthetic access$802(Lnet/hockeyapp/android/FeedbackActivity;Lnet/hockeyapp/android/adapters/MessagesAdapter;)Lnet/hockeyapp/android/adapters/MessagesAdapter;
    .locals 0
    .param p0, "x0"    # Lnet/hockeyapp/android/FeedbackActivity;
    .param p1, "x1"    # Lnet/hockeyapp/android/adapters/MessagesAdapter;

    .prologue
    .line 71
    iput-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->messagesAdapter:Lnet/hockeyapp/android/adapters/MessagesAdapter;

    return-object p1
.end method

.method static synthetic access$900(Lnet/hockeyapp/android/FeedbackActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lnet/hockeyapp/android/FeedbackActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->messagesListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private configureAppropriateView()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 141
    invoke-static {}, Lnet/hockeyapp/android/utils/PrefsUtil;->getInstance()Lnet/hockeyapp/android/utils/PrefsUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/hockeyapp/android/utils/PrefsUtil;->getFeedbackTokenFromPrefs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->token:Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->token:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 144
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->configureFeedbackView(Z)V

    .line 151
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-virtual {p0, v8}, Lnet/hockeyapp/android/FeedbackActivity;->configureFeedbackView(Z)V

    .line 149
    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->url:Ljava/lang/String;

    iget-object v6, p0, Lnet/hockeyapp/android/FeedbackActivity;->token:Ljava/lang/String;

    iget-object v7, p0, Lnet/hockeyapp/android/FeedbackActivity;->feedbackHandler:Landroid/os/Handler;

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v8}, Lnet/hockeyapp/android/FeedbackActivity;->sendFetchFeedback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Z)V

    goto :goto_0
.end method

.method private createParseFeedbackTask(Ljava/lang/String;)V
    .locals 2
    .param p1, "feedbackResponseString"    # Ljava/lang/String;

    .prologue
    .line 444
    new-instance v0, Lnet/hockeyapp/android/tasks/ParseFeedbackTask;

    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->parseFeedbackHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, p1, v1}, Lnet/hockeyapp/android/tasks/ParseFeedbackTask;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->parseFeedbackTask:Lnet/hockeyapp/android/tasks/ParseFeedbackTask;

    .line 445
    return-void
.end method

.method private initFeedbackHandler()V
    .locals 1

    .prologue
    .line 167
    new-instance v0, Lnet/hockeyapp/android/FeedbackActivity$2;

    invoke-direct {v0, p0}, Lnet/hockeyapp/android/FeedbackActivity$2;-><init>(Lnet/hockeyapp/android/FeedbackActivity;)V

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->feedbackHandler:Landroid/os/Handler;

    .line 209
    return-void
.end method

.method private initParseFeedbackHandler()V
    .locals 1

    .prologue
    .line 215
    new-instance v0, Lnet/hockeyapp/android/FeedbackActivity$3;

    invoke-direct {v0, p0}, Lnet/hockeyapp/android/FeedbackActivity$3;-><init>(Lnet/hockeyapp/android/FeedbackActivity;)V

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->parseFeedbackHandler:Landroid/os/Handler;

    .line 258
    return-void
.end method

.method private loadFeedbackMessages(Lnet/hockeyapp/android/objects/FeedbackResponse;)V
    .locals 1
    .param p1, "feedbackResponse"    # Lnet/hockeyapp/android/objects/FeedbackResponse;

    .prologue
    .line 342
    new-instance v0, Lnet/hockeyapp/android/FeedbackActivity$4;

    invoke-direct {v0, p0, p1}, Lnet/hockeyapp/android/FeedbackActivity$4;-><init>(Lnet/hockeyapp/android/FeedbackActivity;Lnet/hockeyapp/android/objects/FeedbackResponse;)V

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 385
    return-void
.end method

.method private resetFeedbackView()V
    .locals 1

    .prologue
    .line 154
    new-instance v0, Lnet/hockeyapp/android/FeedbackActivity$1;

    invoke-direct {v0, p0}, Lnet/hockeyapp/android/FeedbackActivity$1;-><init>(Lnet/hockeyapp/android/FeedbackActivity;)V

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 161
    return-void
.end method

.method private sendFeedback()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 392
    invoke-virtual {p0, v8}, Lnet/hockeyapp/android/FeedbackActivity;->enableDisableSendFeedbackButton(Z)V

    .line 394
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->nameInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->emailInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->subjectInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->textInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 399
    :cond_0
    new-instance v0, Lnet/hockeyapp/android/objects/ErrorObject;

    invoke-direct {v0}, Lnet/hockeyapp/android/objects/ErrorObject;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->error:Lnet/hockeyapp/android/objects/ErrorObject;

    .line 400
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->error:Lnet/hockeyapp/android/objects/ErrorObject;

    const-string v1, "Please provide all details"

    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/objects/ErrorObject;->setMessage(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p0, v8}, Lnet/hockeyapp/android/FeedbackActivity;->showDialog(I)V

    .line 403
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->enableDisableSendFeedbackButton(Z)V

    .line 412
    :goto_0
    return-void

    .line 407
    :cond_1
    invoke-static {}, Lnet/hockeyapp/android/utils/PrefsUtil;->getInstance()Lnet/hockeyapp/android/utils/PrefsUtil;

    move-result-object v0

    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lnet/hockeyapp/android/FeedbackActivity;->nameInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity;->emailInput:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lnet/hockeyapp/android/FeedbackActivity;->subjectInput:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/hockeyapp/android/utils/PrefsUtil;->saveNameEmailSubjectToPrefs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->url:Ljava/lang/String;

    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->nameInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->emailInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->subjectInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->textInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lnet/hockeyapp/android/utils/PrefsUtil;->getInstance()Lnet/hockeyapp/android/utils/PrefsUtil;

    move-result-object v0

    iget-object v6, p0, Lnet/hockeyapp/android/FeedbackActivity;->context:Landroid/content/Context;

    invoke-virtual {v0, v6}, Lnet/hockeyapp/android/utils/PrefsUtil;->getFeedbackTokenFromPrefs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lnet/hockeyapp/android/FeedbackActivity;->feedbackHandler:Landroid/os/Handler;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lnet/hockeyapp/android/FeedbackActivity;->sendFetchFeedback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Z)V

    goto :goto_0
.end method

.method private sendFetchFeedback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Z)V
    .locals 10
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "email"    # Ljava/lang/String;
    .param p4, "subject"    # Ljava/lang/String;
    .param p5, "text"    # Ljava/lang/String;
    .param p6, "token"    # Ljava/lang/String;
    .param p7, "feedbackHandler"    # Landroid/os/Handler;
    .param p8, "isFetchMessages"    # Z

    .prologue
    .line 426
    new-instance v0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;

    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->context:Landroid/content/Context;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lnet/hockeyapp/android/tasks/SendFeedbackTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->sendFeedbackTask:Lnet/hockeyapp/android/tasks/SendFeedbackTask;

    .line 427
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->sendFeedbackTask:Lnet/hockeyapp/android/tasks/SendFeedbackTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    instance-of v2, v0, Landroid/os/AsyncTask;

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 428
    :goto_0
    return-void

    .line 427
    :cond_0
    check-cast v0, Landroid/os/AsyncTask;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private startParseFeedbackTask(Ljava/lang/String;)V
    .locals 3
    .param p1, "feedbackResponseString"    # Ljava/lang/String;

    .prologue
    .line 435
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/FeedbackActivity;->createParseFeedbackTask(Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->parseFeedbackTask:Lnet/hockeyapp/android/tasks/ParseFeedbackTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    instance-of v2, v0, Landroid/os/AsyncTask;

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/tasks/ParseFeedbackTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 437
    :goto_0
    return-void

    .line 436
    :cond_0
    check-cast v0, Landroid/os/AsyncTask;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method protected configureFeedbackView(Z)V
    .locals 6
    .param p1, "haveToken"    # Z

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 265
    const v2, 0x20017

    invoke-virtual {p0, v2}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, Lnet/hockeyapp/android/FeedbackActivity;->feedbackScrollView:Landroid/widget/ScrollView;

    .line 266
    const v2, 0x20015

    invoke-virtual {p0, v2}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lnet/hockeyapp/android/FeedbackActivity;->wrapperLayoutFeedbackAndMessages:Landroid/widget/LinearLayout;

    .line 267
    const v2, 0x20016

    invoke-virtual {p0, v2}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lnet/hockeyapp/android/FeedbackActivity;->messagesListView:Landroid/widget/ListView;

    .line 269
    if-eqz p1, :cond_0

    .line 271
    iget-object v2, p0, Lnet/hockeyapp/android/FeedbackActivity;->wrapperLayoutFeedbackAndMessages:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 272
    iget-object v2, p0, Lnet/hockeyapp/android/FeedbackActivity;->feedbackScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v5}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 274
    const/16 v2, 0x2000

    invoke-virtual {p0, v2}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lnet/hockeyapp/android/FeedbackActivity;->lastUpdatedTextView:Landroid/widget/TextView;

    .line 276
    const v2, 0x20010

    invoke-virtual {p0, v2}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lnet/hockeyapp/android/FeedbackActivity;->addResponseButton:Landroid/widget/Button;

    .line 277
    iget-object v2, p0, Lnet/hockeyapp/android/FeedbackActivity;->addResponseButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    const v2, 0x20011

    invoke-virtual {p0, v2}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lnet/hockeyapp/android/FeedbackActivity;->refreshButton:Landroid/widget/Button;

    .line 280
    iget-object v2, p0, Lnet/hockeyapp/android/FeedbackActivity;->refreshButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    :goto_0
    return-void

    .line 284
    :cond_0
    iget-object v2, p0, Lnet/hockeyapp/android/FeedbackActivity;->wrapperLayoutFeedbackAndMessages:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 285
    iget-object v2, p0, Lnet/hockeyapp/android/FeedbackActivity;->feedbackScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 287
    const/16 v2, 0x2002

    invoke-virtual {p0, v2}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lnet/hockeyapp/android/FeedbackActivity;->nameInput:Landroid/widget/EditText;

    .line 288
    const/16 v2, 0x2004

    invoke-virtual {p0, v2}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lnet/hockeyapp/android/FeedbackActivity;->emailInput:Landroid/widget/EditText;

    .line 289
    const/16 v2, 0x2006

    invoke-virtual {p0, v2}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lnet/hockeyapp/android/FeedbackActivity;->subjectInput:Landroid/widget/EditText;

    .line 290
    const/16 v2, 0x2008

    invoke-virtual {p0, v2}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lnet/hockeyapp/android/FeedbackActivity;->textInput:Landroid/widget/EditText;

    .line 293
    invoke-static {}, Lnet/hockeyapp/android/utils/PrefsUtil;->getInstance()Lnet/hockeyapp/android/utils/PrefsUtil;

    move-result-object v2

    iget-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lnet/hockeyapp/android/utils/PrefsUtil;->getNameEmailFromPrefs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "nameEmailSubject":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 296
    const-string v2, "\\|"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 297
    .local v1, "nameEmailSubjectArray":[Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v2, v1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 298
    iget-object v2, p0, Lnet/hockeyapp/android/FeedbackActivity;->nameInput:Landroid/widget/EditText;

    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v2, p0, Lnet/hockeyapp/android/FeedbackActivity;->emailInput:Landroid/widget/EditText;

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v2, p0, Lnet/hockeyapp/android/FeedbackActivity;->subjectInput:Landroid/widget/EditText;

    const/4 v3, 0x2

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 311
    .end local v1    # "nameEmailSubjectArray":[Ljava/lang/String;
    :cond_1
    :goto_1
    iget-object v2, p0, Lnet/hockeyapp/android/FeedbackActivity;->textInput:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 314
    invoke-static {}, Lnet/hockeyapp/android/utils/PrefsUtil;->getInstance()Lnet/hockeyapp/android/utils/PrefsUtil;

    move-result-object v2

    iget-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lnet/hockeyapp/android/utils/PrefsUtil;->getFeedbackTokenFromPrefs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 316
    iget-object v2, p0, Lnet/hockeyapp/android/FeedbackActivity;->subjectInput:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 323
    :goto_2
    const/16 v2, 0x2009

    invoke-virtual {p0, v2}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lnet/hockeyapp/android/FeedbackActivity;->sendFeedbackButton:Landroid/widget/Button;

    .line 324
    iget-object v2, p0, Lnet/hockeyapp/android/FeedbackActivity;->sendFeedbackButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 305
    :cond_2
    iget-object v2, p0, Lnet/hockeyapp/android/FeedbackActivity;->nameInput:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v2, p0, Lnet/hockeyapp/android/FeedbackActivity;->emailInput:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v2, p0, Lnet/hockeyapp/android/FeedbackActivity;->subjectInput:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 320
    :cond_3
    iget-object v2, p0, Lnet/hockeyapp/android/FeedbackActivity;->subjectInput:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_2
.end method

.method public enableDisableSendFeedbackButton(Z)V
    .locals 1
    .param p1, "isEnable"    # Z

    .prologue
    .line 451
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->sendFeedbackButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->sendFeedbackButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 454
    :cond_0
    return-void
.end method

.method public bridge synthetic getLayoutView()Landroid/view/View;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lnet/hockeyapp/android/FeedbackActivity;->getLayoutView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 334
    new-instance v0, Lnet/hockeyapp/android/views/FeedbackView;

    invoke-direct {v0, p0}, Lnet/hockeyapp/android/views/FeedbackView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 478
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 495
    :goto_0
    return-void

    .line 480
    :sswitch_0
    invoke-direct {p0}, Lnet/hockeyapp/android/FeedbackActivity;->sendFeedback()V

    goto :goto_0

    .line 484
    :sswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->configureFeedbackView(Z)V

    .line 485
    iput-boolean v8, p0, Lnet/hockeyapp/android/FeedbackActivity;->inSendFeedback:Z

    goto :goto_0

    .line 489
    :sswitch_2
    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->url:Ljava/lang/String;

    invoke-static {}, Lnet/hockeyapp/android/utils/PrefsUtil;->getInstance()Lnet/hockeyapp/android/utils/PrefsUtil;

    move-result-object v0

    iget-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity;->context:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lnet/hockeyapp/android/utils/PrefsUtil;->getFeedbackTokenFromPrefs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lnet/hockeyapp/android/FeedbackActivity;->feedbackHandler:Landroid/os/Handler;

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v8}, Lnet/hockeyapp/android/FeedbackActivity;->sendFetchFeedback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Z)V

    goto :goto_0

    .line 478
    nop

    :sswitch_data_0
    .sparse-switch
        0x2009 -> :sswitch_0
        0x20010 -> :sswitch_1
        0x20011 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const-string v1, "FeedbackActivity"

    invoke-static {v1}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v2, "FeedbackActivity#onCreate"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 124
    invoke-virtual {p0}, Lnet/hockeyapp/android/FeedbackActivity;->getLayoutView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/FeedbackActivity;->setContentView(Landroid/view/View;)V

    .line 125
    const-string v1, "Feedback"

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/FeedbackActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 126
    iput-object p0, p0, Lnet/hockeyapp/android/FeedbackActivity;->context:Landroid/content/Context;

    .line 127
    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->inSendFeedback:Z

    .line 129
    invoke-virtual {p0}, Lnet/hockeyapp/android/FeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 130
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 131
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->url:Ljava/lang/String;

    .line 134
    :cond_0
    invoke-direct {p0}, Lnet/hockeyapp/android/FeedbackActivity;->initFeedbackHandler()V

    .line 135
    invoke-direct {p0}, Lnet/hockeyapp/android/FeedbackActivity;->initParseFeedbackHandler()V

    .line 136
    invoke-direct {p0}, Lnet/hockeyapp/android/FeedbackActivity;->configureAppropriateView()V

    .line 137
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    .end local v0    # "extras":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    :try_start_1
    const-string v2, "FeedbackActivity#onCreate"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 499
    packed-switch p1, :pswitch_data_0

    .line 514
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 501
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "An error has occured"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Error"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Lnet/hockeyapp/android/FeedbackActivity$5;

    invoke-direct {v2, p0}, Lnet/hockeyapp/android/FeedbackActivity$5;-><init>(Lnet/hockeyapp/android/FeedbackActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 499
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 536
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 537
    iget-boolean v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->inSendFeedback:Z

    if-eqz v0, :cond_0

    .line 538
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->inSendFeedback:Z

    .line 539
    invoke-direct {p0}, Lnet/hockeyapp/android/FeedbackActivity;->configureAppropriateView()V

    .line 544
    :goto_0
    const/4 v0, 0x1

    .line 547
    :goto_1
    return v0

    .line 541
    :cond_0
    invoke-virtual {p0}, Lnet/hockeyapp/android/FeedbackActivity;->finish()V

    goto :goto_0

    .line 547
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 519
    packed-switch p1, :pswitch_data_0

    .line 532
    :goto_0
    return-void

    :pswitch_0
    move-object v0, p2

    .line 521
    check-cast v0, Landroid/app/AlertDialog;

    .line 522
    .local v0, "messageDialogError":Landroid/app/AlertDialog;
    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->error:Lnet/hockeyapp/android/objects/ErrorObject;

    if-eqz v1, :cond_0

    .line 524
    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->error:Lnet/hockeyapp/android/objects/ErrorObject;

    invoke-virtual {v1}, Lnet/hockeyapp/android/objects/ErrorObject;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 527
    :cond_0
    const-string v1, "An error has occured"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 519
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->sendFeedbackTask:Lnet/hockeyapp/android/tasks/SendFeedbackTask;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->sendFeedbackTask:Lnet/hockeyapp/android/tasks/SendFeedbackTask;

    invoke-virtual {v0}, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->detach()V

    .line 469
    :cond_0
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->sendFeedbackTask:Lnet/hockeyapp/android/tasks/SendFeedbackTask;

    return-object v0
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    return-void
.end method
