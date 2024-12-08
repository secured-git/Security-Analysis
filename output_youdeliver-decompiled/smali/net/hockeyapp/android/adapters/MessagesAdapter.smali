.class public Lnet/hockeyapp/android/adapters/MessagesAdapter;
.super Landroid/widget/BaseAdapter;
.source "MessagesAdapter.java"


# instance fields
.field private authorTextView:Landroid/widget/TextView;

.field private context:Landroid/content/Context;

.field private date:Ljava/util/Date;

.field private dateTextView:Landroid/widget/TextView;

.field private format:Ljava/text/SimpleDateFormat;

.field private formatNew:Ljava/text/SimpleDateFormat;

.field private messageTextView:Landroid/widget/TextView;

.field private messagesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/hockeyapp/android/objects/FeedbackMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/hockeyapp/android/objects/FeedbackMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, "messagesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/hockeyapp/android/objects/FeedbackMessage;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    iput-object p1, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->context:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->messagesList:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->format:Ljava/text/SimpleDateFormat;

    .line 31
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "d MMM h:mm a"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->formatNew:Ljava/text/SimpleDateFormat;

    .line 32
    return-void
.end method


# virtual methods
.method public add(Lnet/hockeyapp/android/objects/FeedbackMessage;)V
    .locals 1
    .param p1, "message"    # Lnet/hockeyapp/android/objects/FeedbackMessage;

    .prologue
    .line 88
    if-eqz p1, :cond_0

    iget-object v0, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->messagesList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->messagesList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->messagesList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->messagesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 85
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->messagesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->messagesList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 78
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 40
    iget-object v3, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->messagesList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/hockeyapp/android/objects/FeedbackMessage;

    .line 43
    .local v1, "feedbackMessage":Lnet/hockeyapp/android/objects/FeedbackMessage;
    if-nez p2, :cond_1

    .line 44
    new-instance v2, Lnet/hockeyapp/android/views/FeedbackMessageView;

    iget-object v3, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lnet/hockeyapp/android/views/FeedbackMessageView;-><init>(Landroid/content/Context;)V

    .line 50
    .local v2, "view":Lnet/hockeyapp/android/views/FeedbackMessageView;
    :goto_0
    if-eqz v1, :cond_0

    .line 51
    const/16 v3, 0x3001

    invoke-virtual {v2, v3}, Lnet/hockeyapp/android/views/FeedbackMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->authorTextView:Landroid/widget/TextView;

    .line 52
    const/16 v3, 0x3002

    invoke-virtual {v2, v3}, Lnet/hockeyapp/android/views/FeedbackMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->dateTextView:Landroid/widget/TextView;

    .line 53
    const/16 v3, 0x3003

    invoke-virtual {v2, v3}, Lnet/hockeyapp/android/views/FeedbackMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->messageTextView:Landroid/widget/TextView;

    .line 56
    :try_start_0
    iget-object v3, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->format:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Lnet/hockeyapp/android/objects/FeedbackMessage;->getCreatedAt()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->date:Ljava/util/Date;

    .line 57
    iget-object v3, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->dateTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->formatNew:Ljava/text/SimpleDateFormat;

    iget-object v5, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->date:Ljava/util/Date;

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_1
    iget-object v3, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->authorTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lnet/hockeyapp/android/objects/FeedbackMessage;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v3, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->messageTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lnet/hockeyapp/android/objects/FeedbackMessage;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    :cond_0
    rem-int/lit8 v3, p1, 0x2

    if-nez v3, :cond_2

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v2, v3}, Lnet/hockeyapp/android/views/FeedbackMessageView;->setFeedbackMessageViewBgAndTextColor(I)V

    .line 68
    return-object v2

    .end local v2    # "view":Lnet/hockeyapp/android/views/FeedbackMessageView;
    :cond_1
    move-object v2, p2

    .line 47
    check-cast v2, Lnet/hockeyapp/android/views/FeedbackMessageView;

    .restart local v2    # "view":Lnet/hockeyapp/android/views/FeedbackMessageView;
    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1

    .line 66
    .end local v0    # "e":Ljava/text/ParseException;
    :cond_2
    const/4 v3, 0x1

    goto :goto_2
.end method
