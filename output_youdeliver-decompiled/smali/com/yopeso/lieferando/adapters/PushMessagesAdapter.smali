.class public Lcom/yopeso/lieferando/adapters/PushMessagesAdapter;
.super Landroid/widget/BaseAdapter;
.source "PushMessagesAdapter.java"


# static fields
.field private static final TYPE_VIEW_READ:I = 0x1

.field private static final TYPE_VIEW_UNREAD:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/PushMessage;",
            ">;"
        }
    .end annotation
.end field

.field private pushMessagesFragment:Lcom/yopeso/lieferando/callback/PushMessageSelectedCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/yopeso/lieferando/callback/PushMessageSelectedCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "pushMessagesFragment"    # Lcom/yopeso/lieferando/callback/PushMessageSelectedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/yopeso/lieferando/model/PushMessage;",
            ">;",
            "Lcom/yopeso/lieferando/callback/PushMessageSelectedCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    .local p2, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/yopeso/lieferando/model/PushMessage;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/PushMessagesAdapter;->mContext:Landroid/content/Context;

    .line 37
    check-cast p2, Ljava/util/ArrayList;

    .end local p2    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/yopeso/lieferando/model/PushMessage;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/yopeso/lieferando/adapters/PushMessagesAdapter;->mMessages:Ljava/util/ArrayList;

    .line 38
    iput-object p3, p0, Lcom/yopeso/lieferando/adapters/PushMessagesAdapter;->pushMessagesFragment:Lcom/yopeso/lieferando/callback/PushMessageSelectedCallback;

    .line 39
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/PushMessagesAdapter;->mMessages:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 40
    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/adapters/PushMessagesAdapter;)Lcom/yopeso/lieferando/callback/PushMessageSelectedCallback;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/PushMessagesAdapter;->pushMessagesFragment:Lcom/yopeso/lieferando/callback/PushMessageSelectedCallback;

    return-object v0
.end method

.method private getTime(J)Ljava/lang/String;
    .locals 7
    .param p1, "messageTime"    # J

    .prologue
    .line 113
    sget-object v2, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 114
    .local v0, "differense":J
    const-wide/32 v2, 0xea60

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 116
    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const-string v2, "1s"

    .line 134
    :goto_0
    return-object v2

    .line 116
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 119
    :cond_1
    const-wide/32 v2, 0x36ee80

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    .line 121
    const-wide/32 v2, 0xea60

    div-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    const-string v2, "1m"

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-wide/32 v4, 0xea60

    div-long v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "m"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 124
    :cond_3
    const-wide/32 v2, 0x5265c00

    cmp-long v2, v0, v2

    if-gez v2, :cond_5

    .line 126
    const-wide/32 v2, 0x36ee80

    div-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    const-string v2, "1h"

    goto :goto_0

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-wide/32 v4, 0x36ee80

    div-long v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "h"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 128
    :cond_5
    const-wide/32 v2, 0x240c8400

    cmp-long v2, v0, v2

    if-gez v2, :cond_7

    .line 130
    const-wide/32 v2, 0x5265c00

    div-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/PushMessagesAdapter;->mContext:Landroid/content/Context;

    sget v4, Lcom/yopeso/lieferando/R$string;->day_abbr:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-wide/32 v4, 0x5265c00

    div-long v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/PushMessagesAdapter;->mContext:Landroid/content/Context;

    sget v4, Lcom/yopeso/lieferando/R$string;->day_abbr:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 134
    :cond_7
    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getSimpleDateFormatterReverse()Ljava/text/SimpleDateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/PushMessagesAdapter;->mMessages:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 60
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/PushMessagesAdapter;->mMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/PushMessagesAdapter;->mMessages:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/PushMessagesAdapter;->mMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/PushMessagesAdapter;->mMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 67
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 72
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 43
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/PushMessagesAdapter;->mMessages:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/PushMessagesAdapter;->mMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/PushMessagesAdapter;->mMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/PushMessage;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/PushMessage;->isRead()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const/4 v0, 0x1

    .line 52
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 48
    goto :goto_0

    :cond_1
    move v0, v1

    .line 52
    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 77
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/adapters/PushMessagesAdapter;->getItemViewType(I)I

    move-result v2

    .line 78
    .local v2, "viewType":I
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 79
    :cond_0
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/PushMessagesAdapter;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 80
    .local v0, "li":Landroid/view/LayoutInflater;
    sget v3, Lcom/yopeso/lieferando/R$layout;->push_messages_item:I

    invoke-virtual {v0, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 81
    packed-switch v2, :pswitch_data_0

    .line 90
    .end local v0    # "li":Landroid/view/LayoutInflater;
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/PushMessagesAdapter;->mMessages:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/model/PushMessage;

    .line 91
    .local v1, "message":Lcom/yopeso/lieferando/model/PushMessage;
    sget v3, Lcom/yopeso/lieferando/R$id;->time:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/PushMessage;->getTime()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/yopeso/lieferando/adapters/PushMessagesAdapter;->getTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    sget v3, Lcom/yopeso/lieferando/R$id;->message:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/PushMessage;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    sget v3, Lcom/yopeso/lieferando/R$id;->item:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    new-instance v4, Lcom/yopeso/lieferando/adapters/PushMessagesAdapter$1;

    invoke-direct {v4, p0, v1}, Lcom/yopeso/lieferando/adapters/PushMessagesAdapter$1;-><init>(Lcom/yopeso/lieferando/adapters/PushMessagesAdapter;Lcom/yopeso/lieferando/model/PushMessage;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    if-nez v2, :cond_3

    .line 103
    sget v3, Lcom/yopeso/lieferando/R$id;->time:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 104
    sget v3, Lcom/yopeso/lieferando/R$id;->message:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 109
    :cond_2
    :goto_1
    return-object p2

    .line 83
    .end local v1    # "message":Lcom/yopeso/lieferando/model/PushMessage;
    .restart local v0    # "li":Landroid/view/LayoutInflater;
    :pswitch_0
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 86
    :pswitch_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 105
    .end local v0    # "li":Landroid/view/LayoutInflater;
    .restart local v1    # "message":Lcom/yopeso/lieferando/model/PushMessage;
    :cond_3
    if-ne v2, v7, :cond_2

    .line 106
    sget v3, Lcom/yopeso/lieferando/R$id;->time:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v6, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 107
    sget v3, Lcom/yopeso/lieferando/R$id;->message:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v6, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_1

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
