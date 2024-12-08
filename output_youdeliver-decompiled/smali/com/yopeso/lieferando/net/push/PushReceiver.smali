.class public Lcom/yopeso/lieferando/net/push/PushReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PushReceiver.java"


# static fields
.field private static final ACTION_NEW_REST:Ljava/lang/String; = "com.yopeso.lieferando.NEW_REST"

.field private static final ACTION_VOUCHER:Ljava/lang/String; = "com.yopeso.lieferando.VOUCHER"

.field private static final ACTION_WEBAD:Ljava/lang/String; = "com.yopeso.lieferando.WEBAD"

.field private static final TAG:Ljava/lang/String; = "PushReceiver"


# instance fields
.field private vibrate:[J


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1f4

    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 31
    const/4 v0, 0x4

    new-array v0, v0, [J

    const/4 v1, 0x1

    aput-wide v4, v0, v1

    const/4 v1, 0x2

    const-wide/16 v2, 0xfa

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    aput-wide v4, v0, v1

    iput-object v0, p0, Lcom/yopeso/lieferando/net/push/PushReceiver;->vibrate:[J

    .line 28
    return-void
.end method

.method private createNewAdNotification(Lcom/google/gson/JsonObject;Landroid/content/Context;)V
    .locals 10
    .param p1, "pushData"    # Lcom/google/gson/JsonObject;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 141
    :try_start_0
    const-string v7, "msg"

    invoke-virtual {p1, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    .line 143
    .local v4, "notifMsg":Ljava/lang/String;
    const-string v7, "value"

    invoke-virtual {p1, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    .line 145
    .local v6, "value":Ljava/lang/String;
    invoke-static {v6}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v4}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 168
    .end local v4    # "notifMsg":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 149
    .restart local v4    # "notifMsg":Ljava/lang/String;
    .restart local v6    # "value":Ljava/lang/String;
    :cond_1
    invoke-static {p2, v6}, Lcom/yopeso/lieferando/util/IntentNavUtils;->goToStartPageWebAd(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 150
    .local v1, "goToVoucher":Landroid/content/Intent;
    const/4 v7, 0x0

    const/high16 v8, 0x10000000

    invoke-static {p2, v7, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 152
    .local v5, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v3, p2}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 154
    .local v3, "notifBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    new-instance v7, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v7}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;-><init>()V

    .line 156
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/yopeso/lieferando/R$string;->app_title:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/yopeso/lieferando/net/push/PushReceiver;->vibrate:[J

    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    .line 157
    sget v8, Lcom/yopeso/lieferando/R$drawable;->l:I

    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    new-instance v8, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v8}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {v8, v4}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 159
    const-string v7, "notification"

    invoke-virtual {p2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 160
    .local v2, "manager":Landroid/app/NotificationManager;
    const v7, 0xf41e8

    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 161
    .end local v1    # "goToVoucher":Landroid/content/Intent;
    .end local v2    # "manager":Landroid/app/NotificationManager;
    .end local v3    # "notifBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v4    # "notifMsg":Ljava/lang/String;
    .end local v5    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v6    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_0

    .line 163
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 165
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 166
    .local v0, "e":Lcom/google/gson/JsonParseException;
    invoke-virtual {v0}, Lcom/google/gson/JsonParseException;->printStackTrace()V

    goto :goto_0
.end method

.method private createNewRestaurantNotification(Lcom/google/gson/JsonObject;Landroid/content/Context;)V
    .locals 12
    .param p1, "pushData"    # Lcom/google/gson/JsonObject;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-virtual {v8}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    .line 65
    .local v0, "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 67
    :try_start_0
    new-instance v3, Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-direct {v3}, Lcom/yopeso/lieferando/model/LocationSuggestion;-><init>()V

    .line 68
    .local v3, "ls":Lcom/yopeso/lieferando/model/LocationSuggestion;
    const-string v8, "msg"

    invoke-virtual {p1, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    .line 70
    .local v6, "notifMsg":Ljava/lang/String;
    const-string v8, "value"

    invoke-virtual {p1, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v8

    if-eqz v8, :cond_0

    .line 71
    const-string v8, "value"

    invoke-virtual {p1, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/yopeso/lieferando/model/LocationSuggestion;->setCityId(I)V

    .line 76
    invoke-static {p2, v3}, Lcom/yopeso/lieferando/util/IntentNavUtils;->goToRestaurantListPush(Landroid/content/Context;Lcom/yopeso/lieferando/model/LocationSuggestion;)Landroid/content/Intent;

    move-result-object v2

    .line 77
    .local v2, "goToRestList":Landroid/content/Intent;
    const/4 v8, 0x0

    const/high16 v9, 0x10000000

    invoke-static {p2, v8, v2, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 79
    .local v7, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v5, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v5, p2}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 81
    .local v5, "notifBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/yopeso/lieferando/R$string;->restaurantNotification:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/yopeso/lieferando/net/push/PushReceiver;->vibrate:[J

    invoke-virtual {v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    sget v9, Lcom/yopeso/lieferando/R$drawable;->l:I

    invoke-virtual {v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    new-instance v9, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v9}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {v9, v6}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 84
    const-string v8, "notification"

    invoke-virtual {p2, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 85
    .local v4, "manager":Landroid/app/NotificationManager;
    const v8, 0xf41e8

    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_2

    .line 94
    .end local v2    # "goToRestList":Landroid/content/Intent;
    .end local v3    # "ls":Lcom/yopeso/lieferando/model/LocationSuggestion;
    .end local v4    # "manager":Landroid/app/NotificationManager;
    .end local v5    # "notifBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v6    # "notifMsg":Ljava/lang/String;
    .end local v7    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_0
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v1}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_0

    .line 88
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v1

    .line 89
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 90
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v1

    .line 91
    .local v1, "e":Lcom/google/gson/JsonParseException;
    invoke-virtual {v1}, Lcom/google/gson/JsonParseException;->printStackTrace()V

    goto :goto_0
.end method

.method private createNewVoucherNotification(Lcom/google/gson/JsonObject;Landroid/content/Context;)V
    .locals 16
    .param p1, "pushData"    # Lcom/google/gson/JsonObject;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    :try_start_0
    const-string v13, "msg"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    .line 101
    .local v7, "notifMsg":Ljava/lang/String;
    const-string v13, "code"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9

    .line 102
    .local v9, "vCode":Ljava/lang/String;
    const-string v13, "exp"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v10

    .line 103
    .local v10, "vExpDate":Ljava/lang/String;
    const-string v13, "text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v11

    .line 105
    .local v11, "vText":Ljava/lang/String;
    invoke-static {v9}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-static {v10}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-static {v11}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 136
    .end local v7    # "notifMsg":Ljava/lang/String;
    .end local v9    # "vCode":Ljava/lang/String;
    .end local v10    # "vExpDate":Ljava/lang/String;
    .end local v11    # "vText":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 109
    .restart local v7    # "notifMsg":Ljava/lang/String;
    .restart local v9    # "vCode":Ljava/lang/String;
    .restart local v10    # "vExpDate":Ljava/lang/String;
    .restart local v11    # "vText":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_3

    .line 111
    .local v3, "expDate":Ljava/util/Date;
    :try_start_1
    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getSimpleDateFormatterReverse()Ljava/text/SimpleDateFormat;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/gson/JsonParseException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v3

    .line 115
    :goto_1
    :try_start_2
    new-instance v12, Lcom/yopeso/lieferando/model/user/BonusVoucher;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-direct {v12, v9, v11, v14, v15}, Lcom/yopeso/lieferando/model/user/BonusVoucher;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 117
    .local v12, "voucher":Lcom/yopeso/lieferando/model/user/BonusVoucher;
    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lcom/yopeso/lieferando/util/IntentNavUtils;->goToStartPageVoucher(Landroid/content/Context;Lcom/yopeso/lieferando/model/user/BonusVoucher;)Landroid/content/Intent;

    move-result-object v4

    .line 118
    .local v4, "goToVoucher":Landroid/content/Intent;
    const/4 v13, 0x0

    const/high16 v14, 0x10000000

    move-object/from16 v0, p2

    invoke-static {v0, v13, v4, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 120
    .local v8, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v6, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 122
    .local v6, "notifBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    new-instance v13, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v13}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;-><init>()V

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lcom/yopeso/lieferando/R$string;->voucherNotification:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yopeso/lieferando/net/push/PushReceiver;->vibrate:[J

    invoke-virtual {v13, v14}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v13

    invoke-virtual {v13, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v13

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v13

    sget v14, Lcom/yopeso/lieferando/R$drawable;->l:I

    invoke-virtual {v13, v14}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v13

    new-instance v14, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v14}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {v14, v7}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v13

    invoke-virtual {v13, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 127
    const-string v13, "notification"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 128
    .local v5, "manager":Landroid/app/NotificationManager;
    const v13, 0xf41e8

    invoke-virtual {v6}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/google/gson/JsonParseException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_0

    .line 129
    .end local v3    # "expDate":Ljava/util/Date;
    .end local v4    # "goToVoucher":Landroid/content/Intent;
    .end local v5    # "manager":Landroid/app/NotificationManager;
    .end local v6    # "notifBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v7    # "notifMsg":Ljava/lang/String;
    .end local v8    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v9    # "vCode":Ljava/lang/String;
    .end local v10    # "vExpDate":Ljava/lang/String;
    .end local v11    # "vText":Ljava/lang/String;
    .end local v12    # "voucher":Lcom/yopeso/lieferando/model/user/BonusVoucher;
    :catch_0
    move-exception v2

    .line 130
    .local v2, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v2}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto/16 :goto_0

    .line 112
    .end local v2    # "e":Ljava/lang/ClassCastException;
    .restart local v3    # "expDate":Ljava/util/Date;
    .restart local v7    # "notifMsg":Ljava/lang/String;
    .restart local v9    # "vCode":Ljava/lang/String;
    .restart local v10    # "vExpDate":Ljava/lang/String;
    .restart local v11    # "vText":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 113
    .local v2, "e":Ljava/text/ParseException;
    :try_start_3
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/google/gson/JsonParseException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    .line 131
    .end local v2    # "e":Ljava/text/ParseException;
    .end local v3    # "expDate":Ljava/util/Date;
    .end local v7    # "notifMsg":Ljava/lang/String;
    .end local v9    # "vCode":Ljava/lang/String;
    .end local v10    # "vExpDate":Ljava/lang/String;
    .end local v11    # "vText":Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 132
    .local v2, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_0

    .line 133
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v2

    .line 134
    .local v2, "e":Lcom/google/gson/JsonParseException;
    invoke-virtual {v2}, Lcom/google/gson/JsonParseException;->printStackTrace()V

    goto/16 :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 44
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "action":Ljava/lang/String;
    new-instance v3, Lcom/google/gson/JsonParser;

    invoke-direct {v3}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "com.parse.Data"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 47
    .local v2, "jsonData":Lcom/google/gson/JsonObject;
    const-string v3, "PushReceiver"

    invoke-virtual {v2}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const-string v3, "com.yopeso.lieferando.NEW_REST"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 50
    invoke-direct {p0, v2, p1}, Lcom/yopeso/lieferando/net/push/PushReceiver;->createNewRestaurantNotification(Lcom/google/gson/JsonObject;Landroid/content/Context;)V

    .line 60
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "jsonData":Lcom/google/gson/JsonObject;
    :cond_0
    :goto_0
    return-void

    .line 51
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v2    # "jsonData":Lcom/google/gson/JsonObject;
    :cond_1
    const-string v3, "com.yopeso.lieferando.VOUCHER"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 52
    invoke-direct {p0, v2, p1}, Lcom/yopeso/lieferando/net/push/PushReceiver;->createNewVoucherNotification(Lcom/google/gson/JsonObject;Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "jsonData":Lcom/google/gson/JsonObject;
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Lcom/google/gson/JsonParseException;
    const-string v3, "PushReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "JSONException: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/gson/JsonParseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 53
    .end local v1    # "e":Lcom/google/gson/JsonParseException;
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v2    # "jsonData":Lcom/google/gson/JsonObject;
    :cond_2
    :try_start_1
    const-string v3, "com.yopeso.lieferando.WEBAD"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    invoke-direct {p0, v2, p1}, Lcom/yopeso/lieferando/net/push/PushReceiver;->createNewAdNotification(Lcom/google/gson/JsonObject;Landroid/content/Context;)V
    :try_end_1
    .catch Lcom/google/gson/JsonParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
