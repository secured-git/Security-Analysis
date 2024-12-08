.class public Lcom/yopeso/lieferando/net/push/KahunaPushReceiver;
.super Landroid/content/BroadcastReceiver;
.source "KahunaPushReceiver.java"


# static fields
.field private static final FAVOURITES_LANDING:Ljava/lang/String; = "favourites"

.field private static final FIDELITY_LANDING:Ljava/lang/String; = "fidelity"

.field public static final GENERAL_MSG_ID:I = 0xf41e8

.field private static final HOME_LANDING:Ljava/lang/String; = "home"

.field private static final ORDER_LANDING:Ljava/lang/String; = "oders"

.field private static final STAMPS_LANDING:Ljava/lang/String; = "stamps"

.field private static final VOUCHER_LANDING:Ljava/lang/String; = "voucher"

.field private static final WEB_LANDING:Ljava/lang/String; = "web"

.field private static final ZIP_LANDING:Ljava/lang/String; = "zip"


# instance fields
.field private vibrate:[J


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1f4

    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 42
    const/4 v0, 0x4

    new-array v0, v0, [J

    const/4 v1, 0x1

    aput-wide v4, v0, v1

    const/4 v1, 0x2

    const-wide/16 v2, 0xfa

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    aput-wide v4, v0, v1

    iput-object v0, p0, Lcom/yopeso/lieferando/net/push/KahunaPushReceiver;->vibrate:[J

    .line 30
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 36
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 56
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, "action":Ljava/lang/String;
    const-class v6, Lcom/yopeso/lieferando/net/push/KahunaPushReceiver;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "KahunaPushReceiver onReceive"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const-string v6, "com.kahuna.sdk.push.received"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 60
    const-string v6, "alert"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 62
    .local v9, "message":Ljava/lang/String;
    const-class v6, Lcom/yopeso/lieferando/net/push/KahunaPushReceiver;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "KahunaPushReceiver message:"

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v23

    .line 66
    .local v23, "ai":Landroid/content/pm/ApplicationInfo;
    const-string v6, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    .line 65
    check-cast v30, Landroid/app/NotificationManager;

    .line 69
    .local v30, "notificationManager":Landroid/app/NotificationManager;
    const-string v6, "landing_extras_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v28

    .line 72
    .local v28, "extras":Landroid/os/Bundle;
    const/16 v32, 0x0

    .line 73
    .local v32, "resultIntent":Landroid/content/Intent;
    const/16 v33, 0x0

    .line 74
    .local v33, "resultPendingIntent":Landroid/app/PendingIntent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-int v0, v6

    move/from16 v31, v0

    .line 75
    .local v31, "requestID":I
    const v8, 0xf41e8

    .line 76
    .local v8, "push_id":I
    const/4 v5, 0x0

    .line 77
    .local v5, "pushMessage":Lcom/yopeso/lieferando/model/PushMessage;
    if-eqz v28, :cond_0

    .line 78
    const-string v6, "action"

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "redirect"

    const-string v7, "action"

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "target"

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 79
    const-string v6, "target"

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 80
    .local v34, "target":Ljava/lang/String;
    const-class v6, Lcom/yopeso/lieferando/net/push/KahunaPushReceiver;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "KahunaPushReceiver extras->Deep linking:"

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-string v6, "homescreen"

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 84
    const-class v6, Lcom/yopeso/lieferando/net/push/KahunaPushReceiver;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "KahunaPushReceiver extras->Deep linking:home"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v5, Lcom/yopeso/lieferando/model/PushMessage;

    .end local v5    # "pushMessage":Lcom/yopeso/lieferando/model/PushMessage;
    move/from16 v0, v31

    int-to-long v6, v0

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    const-string v12, "go_home"

    invoke-direct/range {v5 .. v12}, Lcom/yopeso/lieferando/model/PushMessage;-><init>(JILjava/lang/String;JLjava/lang/String;)V

    .line 87
    .restart local v5    # "pushMessage":Lcom/yopeso/lieferando/model/PushMessage;
    invoke-static/range {p1 .. p1}, Lcom/yopeso/lieferando/util/IntentNavUtils;->getSearchActivityIntentGoHome(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v32

    .line 183
    .end local v34    # "target":Ljava/lang/String;
    :goto_0
    invoke-static {v5}, Lcom/yopeso/lieferando/util/UserStore;->addPushMessage(Lcom/yopeso/lieferando/model/PushMessage;)V

    .line 186
    move-object/from16 v25, v9

    .line 187
    .local v25, "displayedMSG":Ljava/lang/String;
    sget v6, Lcom/yopeso/lieferando/util/UserStore;->shown_messages:I

    const/4 v7, 0x1

    if-le v6, v7, :cond_d

    .line 189
    const v8, 0xf41e8

    .line 190
    sget v6, Lcom/yopeso/lieferando/R$string;->push_messages_count:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    sget v11, Lcom/yopeso/lieferando/util/UserStore;->shown_messages:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    .line 191
    const-class v6, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "MSG: count > 0"

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-static/range {p1 .. p1}, Lcom/yopeso/lieferando/util/IntentNavUtils;->getSearchActivityIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v32

    .line 194
    const-string v6, "go_to_inbox_action"

    const/4 v7, 0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 199
    :goto_1
    const-string v6, "cancel_notification_key"

    const/4 v7, 0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 200
    const/high16 v6, 0x8000000

    move-object/from16 v0, p1

    move/from16 v1, v31

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v33

    .line 202
    new-instance v6, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 203
    sget v7, Lcom/yopeso/lieferando/R$drawable;->l:I

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    .line 204
    move-object/from16 v0, v23

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    .line 205
    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    .line 206
    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    .line 207
    invoke-virtual {v6, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    .line 208
    new-instance v7, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v7}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v24

    .line 210
    .local v24, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    const/4 v6, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 211
    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/yopeso/lieferando/net/push/KahunaPushReceiver;->vibrate:[J

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 212
    invoke-virtual/range {v24 .. v24}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v8, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 216
    .end local v5    # "pushMessage":Lcom/yopeso/lieferando/model/PushMessage;
    .end local v8    # "push_id":I
    .end local v9    # "message":Ljava/lang/String;
    .end local v23    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v24    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v25    # "displayedMSG":Ljava/lang/String;
    .end local v28    # "extras":Landroid/os/Bundle;
    .end local v30    # "notificationManager":Landroid/app/NotificationManager;
    .end local v31    # "requestID":I
    .end local v32    # "resultIntent":Landroid/content/Intent;
    .end local v33    # "resultPendingIntent":Landroid/app/PendingIntent;
    :cond_0
    return-void

    .line 88
    .restart local v5    # "pushMessage":Lcom/yopeso/lieferando/model/PushMessage;
    .restart local v8    # "push_id":I
    .restart local v9    # "message":Ljava/lang/String;
    .restart local v23    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v28    # "extras":Landroid/os/Bundle;
    .restart local v30    # "notificationManager":Landroid/app/NotificationManager;
    .restart local v31    # "requestID":I
    .restart local v32    # "resultIntent":Landroid/content/Intent;
    .restart local v33    # "resultPendingIntent":Landroid/app/PendingIntent;
    .restart local v34    # "target":Ljava/lang/String;
    :cond_1
    const-string v6, "zipcode"

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "cityid"

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 89
    const-class v6, Lcom/yopeso/lieferando/net/push/KahunaPushReceiver;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "KahunaPushReceiver extras->Deep linking:zipID:"

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "cityid"

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance v5, Lcom/yopeso/lieferando/model/PushMessage;

    .end local v5    # "pushMessage":Lcom/yopeso/lieferando/model/PushMessage;
    move/from16 v0, v31

    int-to-long v6, v0

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    const-string v12, "push_list_action"

    const-string v15, "cityid"

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct/range {v5 .. v13}, Lcom/yopeso/lieferando/model/PushMessage;-><init>(JILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 92
    .restart local v5    # "pushMessage":Lcom/yopeso/lieferando/model/PushMessage;
    new-instance v29, Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-direct/range {v29 .. v29}, Lcom/yopeso/lieferando/model/LocationSuggestion;-><init>()V

    .line 93
    .local v29, "ls":Lcom/yopeso/lieferando/model/LocationSuggestion;
    const-string v6, "cityid"

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Lcom/yopeso/lieferando/model/LocationSuggestion;->setCityId(I)V

    .line 94
    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/util/IntentNavUtils;->goToRestaurantListPush(Landroid/content/Context;Lcom/yopeso/lieferando/model/LocationSuggestion;)Landroid/content/Intent;

    move-result-object v32

    .line 95
    goto/16 :goto_0

    .end local v29    # "ls":Lcom/yopeso/lieferando/model/LocationSuggestion;
    :cond_2
    const-string v6, "orders"

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 96
    const-class v6, Lcom/yopeso/lieferando/net/push/KahunaPushReceiver;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "KahunaPushReceiver extras->Deep linking:oders"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance v5, Lcom/yopeso/lieferando/model/PushMessage;

    .end local v5    # "pushMessage":Lcom/yopeso/lieferando/model/PushMessage;
    move/from16 v0, v31

    int-to-long v6, v0

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    const-string v12, "go_to_order_action"

    invoke-direct/range {v5 .. v12}, Lcom/yopeso/lieferando/model/PushMessage;-><init>(JILjava/lang/String;JLjava/lang/String;)V

    .line 99
    .restart local v5    # "pushMessage":Lcom/yopeso/lieferando/model/PushMessage;
    invoke-static/range {p1 .. p1}, Lcom/yopeso/lieferando/util/IntentNavUtils;->getSearchActivityOrdersIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v32

    .line 100
    goto/16 :goto_0

    :cond_3
    const-string v6, "stampcards"

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 101
    const-class v6, Lcom/yopeso/lieferando/net/push/KahunaPushReceiver;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "KahunaPushReceiver extras->Deep linking:stamps"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance v5, Lcom/yopeso/lieferando/model/PushMessage;

    .end local v5    # "pushMessage":Lcom/yopeso/lieferando/model/PushMessage;
    move/from16 v0, v31

    int-to-long v6, v0

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    const-string v12, "go_to_stamps_action"

    invoke-direct/range {v5 .. v12}, Lcom/yopeso/lieferando/model/PushMessage;-><init>(JILjava/lang/String;JLjava/lang/String;)V

    .line 104
    .restart local v5    # "pushMessage":Lcom/yopeso/lieferando/model/PushMessage;
    invoke-static/range {p1 .. p1}, Lcom/yopeso/lieferando/util/IntentNavUtils;->getSearchActivityStampsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v32

    .line 105
    goto/16 :goto_0

    :cond_4
    const-string v6, "favorites"

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 106
    const-class v6, Lcom/yopeso/lieferando/net/push/KahunaPushReceiver;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "KahunaPushReceiver extras->Deep linking:favourites"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v5, Lcom/yopeso/lieferando/model/PushMessage;

    .end local v5    # "pushMessage":Lcom/yopeso/lieferando/model/PushMessage;
    move/from16 v0, v31

    int-to-long v6, v0

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    const-string v12, "go_to_favourites_action"

    invoke-direct/range {v5 .. v12}, Lcom/yopeso/lieferando/model/PushMessage;-><init>(JILjava/lang/String;JLjava/lang/String;)V

    .line 109
    .restart local v5    # "pushMessage":Lcom/yopeso/lieferando/model/PushMessage;
    invoke-static/range {p1 .. p1}, Lcom/yopeso/lieferando/util/IntentNavUtils;->getSearchActivityFavouritesIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v32

    .line 110
    goto/16 :goto_0

    :cond_5
    const-string v6, "fidelitypoints"

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 111
    const-class v6, Lcom/yopeso/lieferando/net/push/KahunaPushReceiver;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "KahunaPushReceiver extras->Deep linking:fidelity"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v5, Lcom/yopeso/lieferando/model/PushMessage;

    .end local v5    # "pushMessage":Lcom/yopeso/lieferando/model/PushMessage;
    move/from16 v0, v31

    int-to-long v6, v0

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    const-string v12, "go_to_fidelity_action"

    invoke-direct/range {v5 .. v12}, Lcom/yopeso/lieferando/model/PushMessage;-><init>(JILjava/lang/String;JLjava/lang/String;)V

    .line 114
    .restart local v5    # "pushMessage":Lcom/yopeso/lieferando/model/PushMessage;
    invoke-static/range {p1 .. p1}, Lcom/yopeso/lieferando/util/IntentNavUtils;->getSearchActivityFidelityIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v32

    .line 115
    goto/16 :goto_0

    :cond_6
    const-string v6, "rating"

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 116
    const-class v6, Lcom/yopeso/lieferando/net/push/KahunaPushReceiver;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "KahunaPushReceiver extras->Deep linking: go to rating"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    new-instance v5, Lcom/yopeso/lieferando/model/PushMessage;

    .end local v5    # "pushMessage":Lcom/yopeso/lieferando/model/PushMessage;
    move/from16 v0, v31

    int-to-long v6, v0

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    const-string v12, "go_to_rating_action"

    invoke-direct/range {v5 .. v12}, Lcom/yopeso/lieferando/model/PushMessage;-><init>(JILjava/lang/String;JLjava/lang/String;)V

    .line 119
    .restart local v5    # "pushMessage":Lcom/yopeso/lieferando/model/PushMessage;
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/yopeso/lieferando/util/IntentNavUtils;->getSearchActivityRatingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v32

    .line 120
    goto/16 :goto_0

    .line 123
    :cond_7
    const-class v6, Lcom/yopeso/lieferando/net/push/KahunaPushReceiver;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "KahunaPushReceiver extras->Deep linking: HOME"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v5, Lcom/yopeso/lieferando/model/PushMessage;

    .end local v5    # "pushMessage":Lcom/yopeso/lieferando/model/PushMessage;
    move/from16 v0, v31

    int-to-long v6, v0

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    const-string v12, "go_home"

    invoke-direct/range {v5 .. v12}, Lcom/yopeso/lieferando/model/PushMessage;-><init>(JILjava/lang/String;JLjava/lang/String;)V

    .line 125
    .restart local v5    # "pushMessage":Lcom/yopeso/lieferando/model/PushMessage;
    invoke-static/range {p1 .. p1}, Lcom/yopeso/lieferando/util/IntentNavUtils;->getSearchActivityIntentGoHome(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v32

    .line 127
    goto/16 :goto_0

    .line 129
    .end local v34    # "target":Ljava/lang/String;
    :cond_8
    const-string v6, "action"

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, "webview"

    const-string v7, "action"

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, "url"

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 131
    const-class v6, Lcom/yopeso/lieferando/net/push/KahunaPushReceiver;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "KahunaPushReceiver extras->Deep linking:web"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    new-instance v5, Lcom/yopeso/lieferando/model/PushMessage;

    .end local v5    # "pushMessage":Lcom/yopeso/lieferando/model/PushMessage;
    move/from16 v0, v31

    int-to-long v6, v0

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    const-string v12, "webad_action"

    const-string v15, "url"

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct/range {v5 .. v13}, Lcom/yopeso/lieferando/model/PushMessage;-><init>(JILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 134
    .restart local v5    # "pushMessage":Lcom/yopeso/lieferando/model/PushMessage;
    const-string v6, "url"

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/yopeso/lieferando/util/IntentNavUtils;->goToStartPageWebAd(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v32

    .line 135
    goto/16 :goto_0

    .line 137
    :cond_9
    const-string v6, "action"

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    const-string v6, "voucher"

    const-string v7, "action"

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    const-string v6, "code"

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 139
    const-class v6, Lcom/yopeso/lieferando/net/push/KahunaPushReceiver;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "KahunaPushReceiver extras->Deep linking:voucher"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v12, 0x0

    .line 148
    .local v12, "vCode":Ljava/lang/String;
    const/4 v13, 0x0

    .line 149
    .local v13, "vExpDate":Ljava/lang/String;
    const/4 v14, 0x0

    .line 150
    .local v14, "vText":Ljava/lang/String;
    const-string v6, "text"

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 151
    const-string v6, "text"

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 153
    :cond_a
    const-string v6, "exp"

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 154
    const-string v6, "exp"

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 156
    :cond_b
    const-string v6, "code"

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 158
    invoke-static {v12}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v13}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v14}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 162
    new-instance v27, Ljava/util/Date;

    invoke-direct/range {v27 .. v27}, Ljava/util/Date;-><init>()V

    .line 164
    .local v27, "expDate":Ljava/util/Date;
    :try_start_0
    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getSimpleDateFormatterReverse()Ljava/text/SimpleDateFormat;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v27

    .line 168
    :goto_2
    new-instance v5, Lcom/yopeso/lieferando/model/PushMessage;

    .end local v5    # "pushMessage":Lcom/yopeso/lieferando/model/PushMessage;
    move/from16 v0, v31

    int-to-long v6, v0

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-direct/range {v5 .. v14}, Lcom/yopeso/lieferando/model/PushMessage;-><init>(JILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .restart local v5    # "pushMessage":Lcom/yopeso/lieferando/model/PushMessage;
    new-instance v35, Lcom/yopeso/lieferando/model/user/BonusVoucher;

    invoke-virtual/range {v27 .. v27}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    move-object/from16 v0, v35

    invoke-direct {v0, v12, v14, v6, v7}, Lcom/yopeso/lieferando/model/user/BonusVoucher;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 170
    .local v35, "voucher":Lcom/yopeso/lieferando/model/user/BonusVoucher;
    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/util/IntentNavUtils;->goToStartPageVoucher(Landroid/content/Context;Lcom/yopeso/lieferando/model/user/BonusVoucher;)Landroid/content/Intent;

    move-result-object v32

    .line 171
    goto/16 :goto_0

    .line 165
    .end local v35    # "voucher":Lcom/yopeso/lieferando/model/user/BonusVoucher;
    :catch_0
    move-exception v26

    .line 166
    .local v26, "e":Ljava/text/ParseException;
    invoke-virtual/range {v26 .. v26}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_2

    .line 175
    .end local v12    # "vCode":Ljava/lang/String;
    .end local v13    # "vExpDate":Ljava/lang/String;
    .end local v14    # "vText":Ljava/lang/String;
    .end local v26    # "e":Ljava/text/ParseException;
    .end local v27    # "expDate":Ljava/util/Date;
    :cond_c
    new-instance v5, Lcom/yopeso/lieferando/model/PushMessage;

    .end local v5    # "pushMessage":Lcom/yopeso/lieferando/model/PushMessage;
    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v16, v0

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    const-string v22, "go_home"

    move-object v15, v5

    move/from16 v18, v8

    move-object/from16 v19, v9

    invoke-direct/range {v15 .. v22}, Lcom/yopeso/lieferando/model/PushMessage;-><init>(JILjava/lang/String;JLjava/lang/String;)V

    .line 176
    .restart local v5    # "pushMessage":Lcom/yopeso/lieferando/model/PushMessage;
    const-class v6, Lcom/yopeso/lieferando/net/push/KahunaPushReceiver;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "KahunaPushReceiver extras->Deep linking: HOME"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-static/range {p1 .. p1}, Lcom/yopeso/lieferando/util/IntentNavUtils;->getSearchActivityIntentGoHome(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v32

    goto/16 :goto_0

    .line 197
    .restart local v25    # "displayedMSG":Ljava/lang/String;
    :cond_d
    const-class v6, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "MSG: count == "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v10, Lcom/yopeso/lieferando/util/UserStore;->shown_messages:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
