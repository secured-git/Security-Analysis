.class public Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;
.super Landroid/os/AsyncTask;
.source "GetDeliveryTimeTask.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask$OrdersListener;
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
.field private final TIME_SEEP:J

.field private final TIME_SEEP_RATE:J

.field private final TIME_UNTIL:I

.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field private last_order_status:Ljava/lang/String;

.field private mRequestQueue:Lcom/android/volley/RequestQueue;

.field private myContext:Landroid/content/Context;

.field private orderID:Ljava/lang/String;

.field private restaurantName:Ljava/lang/String;

.field private time_recieved:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 45
    const/16 v0, 0x14

    iput v0, p0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->TIME_UNTIL:I

    .line 46
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->TIME_SEEP:J

    .line 50
    const-wide/32 v0, 0xa4cb80

    iput-wide v0, p0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->TIME_SEEP_RATE:J

    .line 37
    return-void
.end method

.method static synthetic access$1(Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->last_order_status:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->orderID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->restaurantName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->last_order_status:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;Z)V
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->time_recieved:Z

    return-void
.end method

.method static synthetic access$6(Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;Ljava/lang/String;Ljava/lang/String;Lcom/yopeso/lieferando/model/OrderDeliveryTimeResponse;ZZ)V
    .locals 0

    .prologue
    .line 127
    invoke-direct/range {p0 .. p5}, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->generateNotification(Ljava/lang/String;Ljava/lang/String;Lcom/yopeso/lieferando/model/OrderDeliveryTimeResponse;ZZ)V

    return-void
.end method

.method static synthetic access$7(Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->myContext:Landroid/content/Context;

    return-object v0
.end method

.method private generateNotification(Ljava/lang/String;Ljava/lang/String;Lcom/yopeso/lieferando/model/OrderDeliveryTimeResponse;ZZ)V
    .locals 23
    .param p1, "orderID"    # Ljava/lang/String;
    .param p2, "restaurantName"    # Ljava/lang/String;
    .param p3, "orderResponseDelivery"    # Lcom/yopeso/lieferando/model/OrderDeliveryTimeResponse;
    .param p4, "storno"    # Z
    .param p5, "no_time"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi",
            "SimpleDateFormat",
            "StringFormatMatches"
        }
    .end annotation

    .prologue
    .line 129
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->myContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/NotificationManager;

    .line 130
    .local v15, "mNotificationManager":Landroid/app/NotificationManager;
    const/4 v7, 0x0

    .line 131
    .local v7, "msg":Ljava/lang/String;
    if-eqz p4, :cond_2

    .line 133
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->myContext:Landroid/content/Context;

    sget v6, Lcom/yopeso/lieferando/R$string;->push_delivery_storno:I

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p2, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 134
    const-class v3, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "generateNotification -> storno"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    :goto_0
    const-class v3, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "MSG:"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 173
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

    .line 175
    if-eqz v7, :cond_1

    .line 176
    const v16, 0xf41e8

    .line 178
    .local v16, "msgID":I
    move-object v2, v7

    .line 179
    .local v2, "displayedMSG":Ljava/lang/String;
    sget v3, Lcom/yopeso/lieferando/util/UserStore;->shown_messages:I

    const/4 v6, 0x1

    if-le v3, v6, :cond_4

    .line 181
    const v16, 0xf41e8

    .line 182
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->myContext:Landroid/content/Context;

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

    .line 183
    const-class v3, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "MSG: count > 0"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :goto_1
    const-class v3, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "MSG:"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->myContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 192
    sget v6, Lcom/yopeso/lieferando/R$drawable;->l:I

    invoke-virtual {v3, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 193
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->myContext:Landroid/content/Context;

    sget v8, Lcom/yopeso/lieferando/R$string;->app_name:I

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 194
    invoke-virtual {v3, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 195
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 196
    new-instance v6, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v6}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {v6, v2}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v14

    .line 198
    .local v14, "mBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    const/16 v20, 0x0

    .line 199
    .local v20, "resultIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->myContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v22

    .line 201
    .local v22, "stackBuilder":Landroid/support/v4/app/TaskStackBuilder;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->myContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/yopeso/lieferando/util/DeviceUtils;->isHoneycombTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 202
    new-instance v20, Landroid/content/Intent;

    .end local v20    # "resultIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->myContext:Landroid/content/Context;

    const-class v6, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;

    move-object/from16 v0, v20

    invoke-direct {v0, v3, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 203
    .restart local v20    # "resultIntent":Landroid/content/Intent;
    const/high16 v3, 0x10000

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 204
    const-class v3, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "GetDeliveryTimeTask: SearchActivityTABLET"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const-class v3, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/support/v4/app/TaskStackBuilder;->addParentStack(Ljava/lang/Class;)Landroid/support/v4/app/TaskStackBuilder;

    .line 211
    :goto_2
    sget v3, Lcom/yopeso/lieferando/util/UserStore;->shown_messages:I

    const/4 v6, 0x1

    if-le v3, v6, :cond_6

    .line 213
    const-string v3, "go_to_inbox_action"

    const/4 v6, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 231
    :goto_3
    const-string v3, "notification_id"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 232
    const-string v3, "cancel_notification_key"

    const/4 v6, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 233
    const/high16 v3, 0x24000000

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 246
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    .line 247
    const/4 v3, 0x0

    const/high16 v6, 0x8000000

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v6}, Landroid/support/v4/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v21

    .line 265
    .local v21, "resultPendingIntent":Landroid/app/PendingIntent;
    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 268
    invoke-virtual {v14}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v18

    .line 270
    .local v18, "notification":Landroid/app/Notification;
    move/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 271
    const-class v3, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "generate notification"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .end local v2    # "displayedMSG":Ljava/lang/String;
    .end local v14    # "mBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v16    # "msgID":I
    .end local v18    # "notification":Landroid/app/Notification;
    .end local v20    # "resultIntent":Landroid/content/Intent;
    .end local v21    # "resultPendingIntent":Landroid/app/PendingIntent;
    .end local v22    # "stackBuilder":Landroid/support/v4/app/TaskStackBuilder;
    :cond_1
    return-void

    .line 137
    .end local v4    # "requestID":J
    :cond_2
    if-eqz p5, :cond_3

    .line 139
    const-class v3, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ":generateNotification -> no time"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->myContext:Landroid/content/Context;

    sget v6, Lcom/yopeso/lieferando/R$string;->push_delivery_without_time:I

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p2, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 141
    goto/16 :goto_0

    .line 143
    :cond_3
    if-eqz p3, :cond_0

    .line 144
    const-class v3, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Status ->"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lcom/yopeso/lieferando/model/OrderDeliveryTimeResponse;->getmStatus()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const-string v3, "AFFIRMED"

    invoke-virtual/range {p3 .. p3}, Lcom/yopeso/lieferando/model/OrderDeliveryTimeResponse;->getmStatus()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    invoke-virtual/range {p3 .. p3}, Lcom/yopeso/lieferando/model/OrderDeliveryTimeResponse;->getmDelivery()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 149
    const-class v3, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "generateNotification -> time received"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const-class v3, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Lcom/yopeso/lieferando/model/OrderDeliveryTimeResponse;->getmDelivery()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v3, "EEE, dd MMM yyyyy HH:mm:ss z"

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v13, v3, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 152
    .local v13, "format":Ljava/text/SimpleDateFormat;
    new-instance v17, Ljava/text/SimpleDateFormat;

    const-string v3, "HH:mm (dd.MM.yyyy)"

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 153
    .local v17, "myFormat":Ljava/text/SimpleDateFormat;
    const/16 v19, 0x0

    .line 155
    .local v19, "reformattedStr":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Lcom/yopeso/lieferando/model/OrderDeliveryTimeResponse;->getmDelivery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v19

    .line 161
    :goto_4
    if-eqz v19, :cond_0

    .line 162
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->myContext:Landroid/content/Context;

    sget v6, Lcom/yopeso/lieferando/R$string;->push_delivery_with_time:I

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v19, v6, v8

    const/4 v8, 0x1

    aput-object p2, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 156
    :catch_0
    move-exception v12

    .line 157
    .local v12, "e":Landroid/net/ParseException;
    invoke-virtual {v12}, Landroid/net/ParseException;->printStackTrace()V

    goto :goto_4

    .line 158
    .end local v12    # "e":Landroid/net/ParseException;
    :catch_1
    move-exception v12

    .line 159
    .local v12, "e":Ljava/text/ParseException;
    invoke-virtual {v12}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_4

    .line 186
    .end local v12    # "e":Ljava/text/ParseException;
    .end local v13    # "format":Ljava/text/SimpleDateFormat;
    .end local v17    # "myFormat":Ljava/text/SimpleDateFormat;
    .end local v19    # "reformattedStr":Ljava/lang/String;
    .restart local v2    # "displayedMSG":Ljava/lang/String;
    .restart local v4    # "requestID":J
    .restart local v16    # "msgID":I
    :cond_4
    const-class v3, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;

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

    .line 207
    .restart local v14    # "mBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    .restart local v20    # "resultIntent":Landroid/content/Intent;
    .restart local v22    # "stackBuilder":Landroid/support/v4/app/TaskStackBuilder;
    :cond_5
    new-instance v20, Landroid/content/Intent;

    .end local v20    # "resultIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->myContext:Landroid/content/Context;

    const-class v6, Lcom/yopeso/lieferando/activity/SearchActivity;

    move-object/from16 v0, v20

    invoke-direct {v0, v3, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 208
    .restart local v20    # "resultIntent":Landroid/content/Intent;
    const-class v3, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "GetDeliveryTimeTask: SearchActivity"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const-class v3, Lcom/yopeso/lieferando/activity/SearchActivity;

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/support/v4/app/TaskStackBuilder;->addParentStack(Ljava/lang/Class;)Landroid/support/v4/app/TaskStackBuilder;

    goto/16 :goto_2

    .line 216
    :cond_6
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 217
    const-class v3, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "isLoggedIn"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const-string v3, "go_to_order_action"

    const/4 v6, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 219
    const-string v3, "order_id_key"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    const-string v3, "msg_key"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3

    .line 225
    :cond_7
    const-string v3, "go_to_order_action"

    const/4 v6, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_3
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
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
    iget-object v0, p0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "GetDeliveryTimeTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1
    :goto_0
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "GetDeliveryTimeTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 11
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 59
    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->myContext:Landroid/content/Context;

    .line 60
    iget-object v0, p0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->myContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 61
    aget-object v0, p1, v4

    iput-object v0, p0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->orderID:Ljava/lang/String;

    .line 62
    aget-object v0, p1, v5

    iput-object v0, p0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->restaurantName:Ljava/lang/String;

    .line 63
    const/4 v6, 0x0

    .line 64
    .local v6, "counter":I
    :goto_0
    iget-boolean v0, p0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->time_recieved:Z

    if-nez v0, :cond_0

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "counter":I
    .local v7, "counter":I
    const/16 v0, 0x14

    if-lt v6, v0, :cond_3

    move v6, v7

    .line 73
    .end local v7    # "counter":I
    .restart local v6    # "counter":I
    :cond_0
    iget-boolean v0, p0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->time_recieved:Z

    if-nez v0, :cond_1

    const-string v0, "STORNO"

    iget-object v1, p0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->last_order_status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    const-class v0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onHandleIntent DONE -> generateNotification NO TIME:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->last_order_status:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v1, p0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->orderID:Ljava/lang/String;

    iget-object v2, p0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->restaurantName:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->generateNotification(Ljava/lang/String;Ljava/lang/String;Lcom/yopeso/lieferando/model/OrderDeliveryTimeResponse;ZZ)V

    .line 78
    :cond_1
    const-string v0, "STORNO"

    iget-object v1, p0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->last_order_status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 79
    const-class v0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "startCheckRateOrder timer.schedule for:10800000 milliseconds"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .line 81
    .local v9, "timer":Ljava/util/Timer;
    new-instance v9, Ljava/util/Timer;

    .end local v9    # "timer":Ljava/util/Timer;
    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .line 82
    .restart local v9    # "timer":Ljava/util/Timer;
    new-instance v0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask$1;

    invoke-direct {v0, p0}, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask$1;-><init>(Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;)V

    .line 90
    const-wide/32 v4, 0xa4cb80

    .line 82
    invoke-virtual {v9, v0, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 92
    .end local v9    # "timer":Ljava/util/Timer;
    :cond_2
    iget-object v0, p0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->stop()V

    .line 93
    const-class v0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onHandleIntent DONE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-object v3

    .line 65
    .end local v6    # "counter":I
    .restart local v7    # "counter":I
    :cond_3
    sget-object v0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "add to queue ..."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->restaurantName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->mRequestQueue:Lcom/android/volley/RequestQueue;

    new-instance v1, Lcom/yopeso/lieferando/net/requests/OrderDeliveryTimeRequest;

    iget-object v2, p0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->orderID:Ljava/lang/String;

    new-instance v10, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask$OrdersListener;

    invoke-direct {v10, p0, v3}, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask$OrdersListener;-><init>(Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask$OrdersListener;)V

    invoke-direct {v1, v2, v10}, Lcom/yopeso/lieferando/net/requests/OrderDeliveryTimeRequest;-><init>(Ljava/lang/String;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v1}, Lcom/yopeso/lieferando/net/requests/OrderDeliveryTimeRequest;->withAuth()Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 68
    const-wide/16 v0, 0x7530

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v7

    .line 69
    .end local v7    # "counter":I
    .restart local v6    # "counter":I
    goto/16 :goto_0

    .end local v6    # "counter":I
    .restart local v7    # "counter":I
    :catch_0
    move-exception v8

    .line 70
    .local v8, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    move v6, v7

    .end local v7    # "counter":I
    .restart local v6    # "counter":I
    goto/16 :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 54
    sget-object v0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->TAG:Ljava/lang/String;

    const-string v1, "started ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 56
    return-void
.end method
