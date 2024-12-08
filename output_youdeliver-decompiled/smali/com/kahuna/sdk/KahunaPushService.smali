.class public Lcom/kahuna/sdk/KahunaPushService;
.super Lcom/kahuna/sdk/GCMBaseIntentService;
.source "KahunaPushService.java"


# static fields
.field protected static KAHUNA_PRIVATE_ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/16 v0, 0x7ac

    sput v0, Lcom/kahuna/sdk/KahunaPushService;->KAHUNA_PRIVATE_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 40
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/kahuna/sdk/KahunaAnalytics;->senderId:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/kahuna/sdk/GCMBaseIntentService;-><init>([Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method private static generateNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JIZJLandroid/os/Bundle;)V
    .locals 25
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "trackingId"    # Ljava/lang/String;
    .param p3, "layoutId"    # J
    .param p5, "serverNid"    # I
    .param p6, "silent"    # Z
    .param p7, "overridenThreshold"    # J
    .param p9, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 223
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 225
    .local v4, "ai":Landroid/content/pm/ApplicationInfo;
    const-string v17, ""

    .line 227
    .local v17, "title":Ljava/lang/String;
    :try_start_0
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->labelRes:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 235
    :goto_0
    iget v10, v4, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 236
    .local v10, "icon":I
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getIconResourceId()I

    move-result v20

    if-lez v20, :cond_0

    .line 237
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getIconResourceId()I

    move-result v10

    .line 241
    :cond_0
    :try_start_1
    const-string v20, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1

    if-nez v10, :cond_4

    .line 243
    :cond_1
    sget-boolean v20, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v20, :cond_2

    .line 244
    const-string v20, "KahunaAnalytics"

    const-string v21, "Recieved push, but app has no icon or app name label, NOT showing notification"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 346
    :cond_2
    :goto_1
    return-void

    .line 229
    .end local v10    # "icon":I
    :catch_0
    move-exception v8

    .line 230
    .local v8, "e":Ljava/lang/Exception;
    sget-boolean v20, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v20, :cond_3

    .line 231
    const-string v20, "KahunaAnalytics"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Exception trying to retrieve Application label:  "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_3
    const-string v17, ""

    goto :goto_0

    .line 249
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v10    # "icon":I
    :cond_4
    :try_start_2
    sget v13, Lcom/kahuna/sdk/KahunaPushService;->KAHUNA_PRIVATE_ID:I

    .line 250
    .local v13, "notificationId":I
    const/4 v7, 0x5

    .line 251
    .local v7, "defaultFlags":I
    const/16 v20, -0x1

    move/from16 v0, p5

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    .line 252
    invoke-static/range {p0 .. p0}, Lcom/kahuna/sdk/KahunaPreferences;->getLastPushesClicked(Landroid/content/Context;)Landroid/util/SparseArray;

    move-result-object v16

    .line 254
    .local v16, "pushesClicked":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/kahuna/sdk/KahunaNotificationTracker;>;"
    move-object/from16 v0, v16

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    if-eqz v20, :cond_6

    .line 256
    sget-boolean v20, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v20, :cond_5

    .line 257
    const-string v20, "KahunaAnalytics"

    const-string v21, "Recieved push, but we clicked on it in our last 100 or last 30 days so we are eating it"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    div-long v20, v20, v22

    move-object/from16 v0, p0

    move/from16 v1, p5

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Lcom/kahuna/sdk/KahunaPreferences;->saveLastPushRecieved(Landroid/content/Context;IJ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 342
    .end local v7    # "defaultFlags":I
    .end local v13    # "notificationId":I
    .end local v16    # "pushesClicked":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/kahuna/sdk/KahunaNotificationTracker;>;"
    :catch_1
    move-exception v8

    .line 343
    .restart local v8    # "e":Ljava/lang/Exception;
    sget-boolean v20, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v20, :cond_2

    .line 344
    const-string v20, "KahunaAnalytics"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Caught generic exception trying to build push notification:  "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 261
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v7    # "defaultFlags":I
    .restart local v13    # "notificationId":I
    .restart local v16    # "pushesClicked":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/kahuna/sdk/KahunaNotificationTracker;>;"
    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    move/from16 v1, p5

    move-wide/from16 v2, p7

    invoke-static {v0, v1, v2, v3}, Lcom/kahuna/sdk/KahunaPushService;->getPushRecievedWithinThreshold(Landroid/content/Context;IJ)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 263
    if-eqz p6, :cond_a

    .line 264
    const/4 v7, 0x0

    .line 270
    :goto_2
    move/from16 v13, p5

    .line 277
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    div-long v20, v20, v22

    move-object/from16 v0, p0

    move/from16 v1, p5

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Lcom/kahuna/sdk/KahunaPreferences;->saveLastPushRecieved(Landroid/content/Context;IJ)V

    .line 280
    .end local v16    # "pushesClicked":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/kahuna/sdk/KahunaNotificationTracker;>;"
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 283
    .local v18, "when":J
    new-instance v14, Landroid/content/Intent;

    const-class v20, Lcom/kahuna/sdk/KahunaCoreReceiver;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v14, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 284
    .local v14, "notificationIntent":Landroid/content/Intent;
    const-string v20, "KAHUNA_PUSH_CLICKED"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    if-eqz p2, :cond_8

    .line 286
    const-string v20, "KAHUNA_TRACKING_ID"

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    :cond_8
    const-string v20, "KAHUNA_LAYOUT_ID"

    move-object/from16 v0, v20

    move-wide/from16 v1, p3

    invoke-virtual {v14, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 288
    const-string v20, "KAHUNA_NID"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 289
    if-eqz p9, :cond_9

    .line 290
    const-string v20, "KAHUNA_LANDING_EXTRAS_ID"

    move-object/from16 v0, v20

    move-object/from16 v1, p9

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 292
    :cond_9
    const/16 v20, 0x0

    const/high16 v21, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v14, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 293
    .local v11, "intent":Landroid/app/PendingIntent;
    const-string v20, "notification"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/NotificationManager;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 296
    .local v15, "notificationManager":Landroid/app/NotificationManager;
    const/4 v6, 0x1

    .line 300
    .local v6, "compatClassDefined":Z
    :try_start_4
    new-instance v20, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v20

    new-instance v21, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct/range {v21 .. v21}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 315
    .local v5, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {v5, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 316
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 317
    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v13, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_3

    .line 328
    .end local v5    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    :goto_4
    if-nez v6, :cond_c

    .line 329
    const/16 v20, 0x1

    :try_start_5
    invoke-static/range {v20 .. v20}, Lcom/kahuna/sdk/KahunaAnalytics;->setSupportLibMissing(Z)V

    .line 330
    new-instance v12, Landroid/app/Notification;

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-direct {v12, v10, v0, v1, v2}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 331
    .local v12, "notification":Landroid/app/Notification;
    iget v0, v12, Landroid/app/Notification;->defaults:I

    move/from16 v20, v0

    or-int v20, v20, v7

    move/from16 v0, v20

    iput v0, v12, Landroid/app/Notification;->defaults:I

    .line 333
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-virtual {v12, v0, v1, v2, v11}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 334
    iget v0, v12, Landroid/app/Notification;->flags:I

    move/from16 v20, v0

    or-int/lit8 v20, v20, 0x10

    move/from16 v0, v20

    iput v0, v12, Landroid/app/Notification;->flags:I

    .line 335
    invoke-virtual {v15, v13, v12}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_1

    .line 267
    .end local v6    # "compatClassDefined":Z
    .end local v11    # "intent":Landroid/app/PendingIntent;
    .end local v12    # "notification":Landroid/app/Notification;
    .end local v14    # "notificationIntent":Landroid/content/Intent;
    .end local v15    # "notificationManager":Landroid/app/NotificationManager;
    .end local v18    # "when":J
    .restart local v16    # "pushesClicked":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/kahuna/sdk/KahunaNotificationTracker;>;"
    :cond_a
    const/4 v7, 0x5

    goto/16 :goto_2

    .line 274
    :cond_b
    move/from16 v13, p5

    goto/16 :goto_3

    .line 319
    .end local v16    # "pushesClicked":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/kahuna/sdk/KahunaNotificationTracker;>;"
    .restart local v6    # "compatClassDefined":Z
    .restart local v11    # "intent":Landroid/app/PendingIntent;
    .restart local v14    # "notificationIntent":Landroid/content/Intent;
    .restart local v15    # "notificationManager":Landroid/app/NotificationManager;
    .restart local v18    # "when":J
    :catch_2
    move-exception v8

    .line 320
    .restart local v8    # "e":Ljava/lang/Exception;
    const-string v20, "KahunaAnalytics"

    const-string v21, "You should add the support library to your application"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const/4 v6, 0x0

    .line 326
    goto :goto_4

    .line 323
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v9

    .line 324
    .local v9, "e2":Ljava/lang/Error;
    const-string v20, "KahunaAnalytics"

    const-string v21, "You should add the support library to your application"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const/4 v6, 0x0

    goto :goto_4

    .line 338
    .end local v9    # "e2":Ljava/lang/Error;
    :cond_c
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Lcom/kahuna/sdk/KahunaAnalytics;->setSupportLibMissing(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1
.end method

.method private static getPushRecievedWithinThreshold(Landroid/content/Context;IJ)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nid"    # I
    .param p2, "overridenThreshold"    # J

    .prologue
    .line 349
    invoke-static {p0}, Lcom/kahuna/sdk/KahunaPreferences;->getLastPushesRecieved(Landroid/content/Context;)Landroid/util/SparseArray;

    move-result-object v1

    .line 351
    .local v1, "pushesReceived":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/kahuna/sdk/KahunaNotificationTracker;>;"
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 354
    const-wide/16 v2, 0x12c

    .line 355
    .local v2, "thresholdSubtraction":J
    const-wide/16 v6, 0x0

    cmp-long v6, p2, v6

    if-lez v6, :cond_0

    .line 356
    move-wide v2, p2

    .line 358
    :cond_0
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kahuna/sdk/KahunaNotificationTracker;

    .line 359
    .local v0, "prevNotification":Lcom/kahuna/sdk/KahunaNotificationTracker;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    sub-long v4, v6, v2

    .line 360
    .local v4, "thresholdTime":J
    invoke-virtual {v0}, Lcom/kahuna/sdk/KahunaNotificationTracker;->getTimestamp()J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-lez v6, :cond_1

    .line 361
    const/4 v6, 0x1

    .line 365
    .end local v0    # "prevNotification":Lcom/kahuna/sdk/KahunaNotificationTracker;
    .end local v2    # "thresholdSubtraction":J
    .end local v4    # "thresholdTime":J
    :goto_0
    return v6

    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "errorId"    # Ljava/lang/String;

    .prologue
    .line 207
    sget-boolean v0, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v0, :cond_0

    .line 208
    const-string v0, "KahunaAnalytics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError recieved errorId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_0
    return-void
.end method

.method protected onMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 66
    sget-boolean v3, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v3, :cond_0

    .line 67
    const-string v3, "KahunaAnalytics"

    const-string v18, "onMessage recieved a push event."

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getIsPushEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 70
    const-string v3, "KahunaAnalytics"

    const-string v18, "Received Kahuna push, but Push is not enabled. Aborting the notification!"

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_1
    :goto_0
    return-void

    .line 75
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    .line 76
    .local v12, "extras":Landroid/os/Bundle;
    if-eqz v12, :cond_18

    .line 80
    const-wide/16 v6, 0x0

    .line 81
    .local v6, "layoutId":J
    const/4 v8, -0x1

    .line 82
    .local v8, "notificationId":I
    const/4 v9, 0x1

    .line 83
    .local v9, "silent":Z
    const-wide/16 v10, -0x1

    .line 86
    .local v10, "thresholdOverride":J
    :try_start_0
    const-string v3, "alert"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 87
    .local v4, "alertMessage":Ljava/lang/String;
    const-string v3, "k"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 99
    .local v5, "trackingId":Ljava/lang/String;
    :goto_1
    :try_start_1
    const-string v3, "l"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 100
    const-string v3, "l"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 101
    .local v14, "layoutObject":Ljava/lang/Object;
    instance-of v3, v14, Ljava/lang/String;

    if-eqz v3, :cond_f

    .line 102
    check-cast v14, Ljava/lang/String;

    .end local v14    # "layoutObject":Ljava/lang/Object;
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v6

    .line 120
    :goto_2
    :try_start_2
    const-string v3, "nid"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 121
    const-string v3, "nid"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    .line 122
    .local v15, "nidObject":Ljava/lang/Object;
    instance-of v3, v15, Ljava/lang/String;

    if-eqz v3, :cond_12

    .line 123
    check-cast v15, Ljava/lang/String;

    .end local v15    # "nidObject":Ljava/lang/Object;
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 133
    :goto_3
    const-string v3, "t"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 134
    const-string v3, "t"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    .line 135
    .local v17, "timeObject":Ljava/lang/Object;
    move-object/from16 v0, v17

    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_14

    .line 136
    check-cast v17, Ljava/lang/String;

    .end local v17    # "timeObject":Ljava/lang/Object;
    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 146
    :goto_4
    const-string v3, "s"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 147
    .local v16, "silentData":Ljava/lang/String;
    const-string v3, "n"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v3

    if-eqz v3, :cond_3

    .line 148
    const/4 v9, 0x0

    .line 160
    .end local v16    # "silentData":Ljava/lang/String;
    :cond_3
    :goto_5
    const-string v3, "k"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 161
    const-string v3, "k"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 162
    :cond_4
    const-string v3, "s"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 163
    const-string v3, "s"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 164
    :cond_5
    const-string v3, "nid"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 165
    const-string v3, "nid"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 166
    :cond_6
    const-string v3, "t"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 167
    const-string v3, "t"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 168
    :cond_7
    const-string v3, "collapse_key"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 169
    const-string v3, "collapse_key"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 170
    :cond_8
    const-string v3, "from"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 171
    const-string v3, "from"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 173
    :cond_9
    sget-boolean v3, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v3, :cond_a

    .line 174
    const-string v3, "KahunaAnalytics"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Kahuna Message: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_a
    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    .line 180
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getCustomPushReceiver()Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 181
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getCustomPushReceiver()Ljava/lang/Class;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 182
    .local v2, "customBroadcastIntent":Landroid/content/Intent;
    const-string v3, "com.kahuna.sdk.push.received"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const-string v3, "layout_id"

    invoke-virtual {v2, v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 184
    const-string v3, "alert"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    if-eqz v12, :cond_b

    .line 186
    const-string v3, "landing_extras_id"

    invoke-virtual {v2, v3, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 188
    :cond_b
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 191
    .end local v2    # "customBroadcastIntent":Landroid/content/Intent;
    :cond_c
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getShouldDisplayNotification()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getKahunaGenerateNotificationsOverride()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 192
    :cond_d
    sget-boolean v3, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v3, :cond_1

    .line 193
    const-string v3, "KahunaAnalytics"

    const-string v18, "Hiding Kahuna Push notification because user is generating notification separately."

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 89
    .end local v4    # "alertMessage":Ljava/lang/String;
    .end local v5    # "trackingId":Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 90
    .local v13, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v3, :cond_e

    .line 91
    const-string v3, "KahunaAnalytics"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception reading message from Kahuna Core Receiver: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_e
    const/4 v4, 0x0

    .line 94
    .restart local v4    # "alertMessage":Ljava/lang/String;
    const/4 v5, 0x0

    .restart local v5    # "trackingId":Ljava/lang/String;
    goto/16 :goto_1

    .line 105
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v14    # "layoutObject":Ljava/lang/Object;
    :cond_f
    :try_start_3
    check-cast v14, Ljava/lang/Long;

    .end local v14    # "layoutObject":Ljava/lang/Object;
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-wide v6

    goto/16 :goto_2

    .line 109
    :cond_10
    const-wide/16 v6, 0x0

    goto/16 :goto_2

    .line 112
    :catch_1
    move-exception v13

    .line 113
    .restart local v13    # "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v3, :cond_11

    .line 114
    const-string v3, "KahunaAnalytics"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception reading layoutId from Kahuna Core Receiver: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_11
    const-wide/16 v6, 0x0

    goto/16 :goto_2

    .line 126
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v15    # "nidObject":Ljava/lang/Object;
    :cond_12
    :try_start_4
    check-cast v15, Ljava/lang/Integer;

    .end local v15    # "nidObject":Ljava/lang/Object;
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto/16 :goto_3

    .line 130
    :cond_13
    const/4 v8, -0x1

    goto/16 :goto_3

    .line 139
    .restart local v17    # "timeObject":Ljava/lang/Object;
    :cond_14
    check-cast v17, Ljava/lang/Long;

    .end local v17    # "timeObject":Ljava/lang/Object;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-wide v10

    goto/16 :goto_4

    .line 143
    :cond_15
    const-wide/16 v10, -0x1

    goto/16 :goto_4

    .line 151
    :catch_2
    move-exception v13

    .line 152
    .restart local v13    # "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v3, :cond_16

    .line 153
    const-string v3, "KahunaAnalytics"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception reading notificationId from Kahuna Core Receiver: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_16
    const/4 v8, -0x1

    goto/16 :goto_5

    .end local v13    # "e":Ljava/lang/Exception;
    :cond_17
    move-object/from16 v3, p1

    .line 197
    invoke-static/range {v3 .. v12}, Lcom/kahuna/sdk/KahunaPushService;->generateNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JIZJLandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 201
    .end local v4    # "alertMessage":Ljava/lang/String;
    .end local v5    # "trackingId":Ljava/lang/String;
    .end local v6    # "layoutId":J
    .end local v8    # "notificationId":I
    .end local v9    # "silent":Z
    .end local v10    # "thresholdOverride":J
    :cond_18
    const-string v3, "KahunaAnalytics"

    const-string v18, "Received Kahuna push with no extras, cannot display push with no extras!"

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected onRecoverableError(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "errorId"    # Ljava/lang/String;

    .prologue
    .line 213
    sget-boolean v0, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v0, :cond_0

    .line 214
    const-string v0, "KahunaAnalytics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecoverableError recieved errorId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/kahuna/sdk/GCMBaseIntentService;->onRecoverableError(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected onRegistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "registrationId"    # Ljava/lang/String;

    .prologue
    .line 45
    sget-boolean v0, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v0, :cond_0

    .line 46
    const-string v0, "KahunaAnalytics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRegistered recieved Push Token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_0
    invoke-static {p2}, Lcom/kahuna/sdk/KahunaAnalytics;->setPushToken(Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->enablePush()V

    .line 52
    return-void
.end method

.method protected onUnregistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "registrationId"    # Ljava/lang/String;

    .prologue
    .line 57
    sget-boolean v0, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v0, :cond_0

    .line 58
    const-string v0, "KahunaAnalytics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUnregistered recieved to remove Push Token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->disablePush()V

    .line 61
    return-void
.end method
