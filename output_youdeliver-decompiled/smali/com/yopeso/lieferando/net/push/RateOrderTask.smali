.class public Lcom/yopeso/lieferando/net/push/RateOrderTask;
.super Landroid/os/AsyncTask;
.source "RateOrderTask.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yopeso/lieferando/net/push/RateOrderTask$GetCustomerOrdersListener;,
        Lcom/yopeso/lieferando/net/push/RateOrderTask$OrdersListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final TIME_SEEP_CHECK_REQUEST:J

.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field private mRequestQueue:Lcom/android/volley/RequestQueue;

.field private myContext:Landroid/content/Context;

.field private orderID:Ljava/lang/String;

.field private request_done:Z

.field private restaurantName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/yopeso/lieferando/net/push/RateOrderTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yopeso/lieferando/net/push/RateOrderTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 44
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/yopeso/lieferando/net/push/RateOrderTask;->TIME_SEEP_CHECK_REQUEST:J

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yopeso/lieferando/net/push/RateOrderTask;->request_done:Z

    .line 34
    return-void
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/yopeso/lieferando/net/push/RateOrderTask;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/yopeso/lieferando/net/push/RateOrderTask;)Lcom/android/volley/RequestQueue;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yopeso/lieferando/net/push/RateOrderTask;->mRequestQueue:Lcom/android/volley/RequestQueue;

    return-object v0
.end method

.method static synthetic access$3(Lcom/yopeso/lieferando/net/push/RateOrderTask;Z)V
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/yopeso/lieferando/net/push/RateOrderTask;->request_done:Z

    return-void
.end method

.method static synthetic access$4(Lcom/yopeso/lieferando/net/push/RateOrderTask;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yopeso/lieferando/net/push/RateOrderTask;->orderID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/yopeso/lieferando/net/push/RateOrderTask;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/yopeso/lieferando/net/push/RateOrderTask;->restaurantName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/yopeso/lieferando/net/push/RateOrderTask;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Lcom/yopeso/lieferando/net/push/RateOrderTask;->generateNotification(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private generateNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 19
    .param p1, "orderID"    # Ljava/lang/String;
    .param p2, "restaurantName"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi",
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    .line 129
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yopeso/lieferando/net/push/RateOrderTask;->myContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/NotificationManager;

    .line 130
    .local v13, "mNotificationManager":Landroid/app/NotificationManager;
    const/4 v7, 0x0

    .line 131
    .local v7, "msg":Ljava/lang/String;
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/UserData;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 132
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yopeso/lieferando/net/push/RateOrderTask;->myContext:Landroid/content/Context;

    sget v6, Lcom/yopeso/lieferando/R$string;->push_rate_restaurant:I

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/yopeso/lieferando/model/user/UserData;->getPreName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x1

    aput-object p2, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 137
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 138
    .local v4, "requestID":J
    new-instance v3, Lcom/yopeso/lieferando/model/PushMessage;

    const v6, 0xf41e8

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const-string v10, "go_to_order_action"

    move-object/from16 v11, p1

    invoke-direct/range {v3 .. v11}, Lcom/yopeso/lieferando/model/PushMessage;-><init>(JILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/yopeso/lieferando/util/UserStore;->addPushMessage(Lcom/yopeso/lieferando/model/PushMessage;)V

    .line 139
    const v14, 0xf41e8

    .line 142
    .local v14, "msgID":I
    move-object v2, v7

    .line 143
    .local v2, "displayedMSG":Ljava/lang/String;
    sget v3, Lcom/yopeso/lieferando/util/UserStore;->shown_messages:I

    const/4 v6, 0x1

    if-le v3, v6, :cond_1

    .line 145
    const v14, 0xf41e8

    .line 146
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yopeso/lieferando/net/push/RateOrderTask;->myContext:Landroid/content/Context;

    sget v6, Lcom/yopeso/lieferando/R$string;->push_messages_count:I

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    sget v9, Lcom/yopeso/lieferando/util/UserStore;->shown_messages:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 147
    const-class v3, Lcom/yopeso/lieferando/net/push/RateOrderTask;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "MSG: count > 0"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :goto_1
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yopeso/lieferando/net/push/RateOrderTask;->myContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 155
    sget v6, Lcom/yopeso/lieferando/R$drawable;->l:I

    invoke-virtual {v3, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 156
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yopeso/lieferando/net/push/RateOrderTask;->myContext:Landroid/content/Context;

    sget v8, Lcom/yopeso/lieferando/R$string;->app_name:I

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 157
    invoke-virtual {v3, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 158
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 159
    new-instance v6, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v6}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 160
    invoke-virtual {v6, v2}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v6

    .line 159
    invoke-virtual {v3, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v12

    .line 162
    .local v12, "mBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    const/16 v16, 0x0

    .line 163
    .local v16, "resultIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yopeso/lieferando/net/push/RateOrderTask;->myContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v18

    .line 165
    .local v18, "stackBuilder":Landroid/support/v4/app/TaskStackBuilder;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yopeso/lieferando/net/push/RateOrderTask;->myContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/yopeso/lieferando/util/DeviceUtils;->isHoneycombTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 166
    new-instance v16, Landroid/content/Intent;

    .end local v16    # "resultIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yopeso/lieferando/net/push/RateOrderTask;->myContext:Landroid/content/Context;

    const-class v6, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;

    move-object/from16 v0, v16

    invoke-direct {v0, v3, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 167
    .restart local v16    # "resultIntent":Landroid/content/Intent;
    const/high16 v3, 0x10000

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 168
    const-class v3, Lcom/yopeso/lieferando/net/push/RateOrderTask;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "RateOrderTask: SearchActivityTABLET"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-class v3, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/support/v4/app/TaskStackBuilder;->addParentStack(Ljava/lang/Class;)Landroid/support/v4/app/TaskStackBuilder;

    .line 175
    :goto_2
    sget v3, Lcom/yopeso/lieferando/util/UserStore;->shown_messages:I

    const/4 v6, 0x1

    if-le v3, v6, :cond_3

    .line 177
    const-string v3, "go_to_inbox_action"

    const/4 v6, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 193
    :goto_3
    const-string v3, "notification_id"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 194
    const/high16 v3, 0x24000000

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 208
    const-string v3, "cancel_notification_key"

    const/4 v6, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 209
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    .line 210
    const/4 v3, 0x0

    const/high16 v6, 0x8000000

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v6}, Landroid/support/v4/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v17

    .line 224
    .local v17, "resultPendingIntent":Landroid/app/PendingIntent;
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 227
    invoke-virtual {v12}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v15

    .line 229
    .local v15, "notification":Landroid/app/Notification;
    invoke-virtual {v13, v14, v15}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 230
    sget-object v3, Lcom/yopeso/lieferando/net/push/RateOrderTask;->TAG:Ljava/lang/String;

    const-string v6, "generate notification"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return-void

    .line 135
    .end local v2    # "displayedMSG":Ljava/lang/String;
    .end local v4    # "requestID":J
    .end local v12    # "mBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v14    # "msgID":I
    .end local v15    # "notification":Landroid/app/Notification;
    .end local v16    # "resultIntent":Landroid/content/Intent;
    .end local v17    # "resultPendingIntent":Landroid/app/PendingIntent;
    .end local v18    # "stackBuilder":Landroid/support/v4/app/TaskStackBuilder;
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yopeso/lieferando/net/push/RateOrderTask;->myContext:Landroid/content/Context;

    sget v6, Lcom/yopeso/lieferando/R$string;->push_rate_restaurant:I

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, ""

    aput-object v9, v6, v8

    const/4 v8, 0x1

    aput-object p2, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 150
    .restart local v2    # "displayedMSG":Ljava/lang/String;
    .restart local v4    # "requestID":J
    .restart local v14    # "msgID":I
    :cond_1
    const-class v3, Lcom/yopeso/lieferando/net/push/RateOrderTask;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "MSG: count == "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v8, Lcom/yopeso/lieferando/util/UserStore;->shown_messages:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 171
    .restart local v12    # "mBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    .restart local v16    # "resultIntent":Landroid/content/Intent;
    .restart local v18    # "stackBuilder":Landroid/support/v4/app/TaskStackBuilder;
    :cond_2
    new-instance v16, Landroid/content/Intent;

    .end local v16    # "resultIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yopeso/lieferando/net/push/RateOrderTask;->myContext:Landroid/content/Context;

    const-class v6, Lcom/yopeso/lieferando/activity/SearchActivity;

    move-object/from16 v0, v16

    invoke-direct {v0, v3, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    .restart local v16    # "resultIntent":Landroid/content/Intent;
    sget-object v3, Lcom/yopeso/lieferando/net/push/RateOrderTask;->TAG:Ljava/lang/String;

    const-string v6, "GetDeliveryTimeService: SearchActivity"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const-class v3, Lcom/yopeso/lieferando/activity/SearchActivity;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/support/v4/app/TaskStackBuilder;->addParentStack(Ljava/lang/Class;)Landroid/support/v4/app/TaskStackBuilder;

    goto/16 :goto_2

    .line 180
    :cond_3
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 181
    sget-object v3, Lcom/yopeso/lieferando/net/push/RateOrderTask;->TAG:Ljava/lang/String;

    const-string v6, "isLoggedIn"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-string v3, "go_to_order_action"

    const/4 v6, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 183
    const-string v3, "order_id_key"

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const-string v3, "msg_key"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3

    .line 189
    :cond_4
    const-string v3, "go_to_order_action"

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_3
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/yopeso/lieferando/net/push/RateOrderTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/yopeso/lieferando/net/push/RateOrderTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "RateOrderTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1
    :goto_0
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/net/push/RateOrderTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "RateOrderTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 6
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 53
    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/yopeso/lieferando/net/push/RateOrderTask;->myContext:Landroid/content/Context;

    .line 54
    iget-object v1, p0, Lcom/yopeso/lieferando/net/push/RateOrderTask;->myContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v1

    iput-object v1, p0, Lcom/yopeso/lieferando/net/push/RateOrderTask;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 55
    const/4 v1, 0x0

    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/yopeso/lieferando/net/push/RateOrderTask;->orderID:Ljava/lang/String;

    .line 56
    const/4 v1, 0x1

    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/yopeso/lieferando/net/push/RateOrderTask;->restaurantName:Ljava/lang/String;

    .line 57
    iget-object v1, p0, Lcom/yopeso/lieferando/net/push/RateOrderTask;->mRequestQueue:Lcom/android/volley/RequestQueue;

    new-instance v2, Lcom/yopeso/lieferando/net/requests/OrderDeliveryTimeRequest;

    iget-object v3, p0, Lcom/yopeso/lieferando/net/push/RateOrderTask;->orderID:Ljava/lang/String;

    new-instance v4, Lcom/yopeso/lieferando/net/push/RateOrderTask$OrdersListener;

    invoke-direct {v4, p0, v5}, Lcom/yopeso/lieferando/net/push/RateOrderTask$OrdersListener;-><init>(Lcom/yopeso/lieferando/net/push/RateOrderTask;Lcom/yopeso/lieferando/net/push/RateOrderTask$OrdersListener;)V

    invoke-direct {v2, v3, v4}, Lcom/yopeso/lieferando/net/requests/OrderDeliveryTimeRequest;-><init>(Ljava/lang/String;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v2}, Lcom/yopeso/lieferando/net/requests/OrderDeliveryTimeRequest;->withAuth()Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 58
    :goto_0
    iget-boolean v1, p0, Lcom/yopeso/lieferando/net/push/RateOrderTask;->request_done:Z

    if-eqz v1, :cond_0

    .line 66
    sget-object v1, Lcom/yopeso/lieferando/net/push/RateOrderTask;->TAG:Ljava/lang/String;

    const-string v2, "onHandleIntent DONE"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v1, p0, Lcom/yopeso/lieferando/net/push/RateOrderTask;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1}, Lcom/android/volley/RequestQueue;->stop()V

    .line 68
    return-object v5

    .line 61
    :cond_0
    const-wide/16 v2, 0x7d0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 50
    return-void
.end method
