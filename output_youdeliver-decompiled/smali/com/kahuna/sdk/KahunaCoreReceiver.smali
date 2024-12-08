.class public Lcom/kahuna/sdk/KahunaCoreReceiver;
.super Landroid/content/BroadcastReceiver;
.source "KahunaCoreReceiver.java"


# static fields
.field public static final GEOFENCE_UPDATED_ACTION:Ljava/lang/String; = "KAHUNA_GEOFENCES_UPDATED"

.field protected static final LANDING_DICTIONARY_EXTRAS:Ljava/lang/String; = "KAHUNA_LANDING_EXTRAS_ID"

.field protected static final LAYOUT_ID_EXTRA:Ljava/lang/String; = "KAHUNA_LAYOUT_ID"

.field protected static final NOTIFICATION_ID_EXTRA:Ljava/lang/String; = "KAHUNA_NID"

.field protected static final PUSH_CLICKED_ACTION:Ljava/lang/String; = "KAHUNA_PUSH_CLICKED"

.field protected static final TRACKING_ID_EXTRA:Ljava/lang/String; = "KAHUNA_TRACKING_ID"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getTransitionString(I)Ljava/lang/String;
    .locals 1
    .param p1, "transitionType"    # I

    .prologue
    .line 171
    packed-switch p1, :pswitch_data_0

    .line 180
    const-string v0, "unknown"

    :goto_0
    return-object v0

    .line 174
    :pswitch_0
    const-string v0, "enter"

    goto :goto_0

    .line 177
    :pswitch_1
    const-string v0, "exit"

    goto :goto_0

    .line 171
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleGeofenceIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 120
    invoke-static {p2}, Lcom/google/android/gms/location/LocationClient;->hasError(Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 123
    invoke-static {p2}, Lcom/google/android/gms/location/LocationClient;->getErrorCode(Landroid/content/Intent;)I

    move-result v0

    .line 125
    .local v0, "errorCode":I
    sget-boolean v7, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v7, :cond_0

    .line 126
    const-string v7, "KahunaAnalytics"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "LocationClient has an error processing intent. Code:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .end local v0    # "errorCode":I
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    invoke-static {p2}, Lcom/google/android/gms/location/LocationClient;->getGeofenceTransition(Landroid/content/Intent;)I

    move-result v6

    .line 134
    .local v6, "transition":I
    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_6

    .line 136
    :cond_2
    sget-boolean v7, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v7, :cond_3

    .line 137
    const-string v7, "KahunaAnalytics"

    const-string v8, "Recevied Kahuna Geofence update!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_3
    invoke-static {p2}, Lcom/google/android/gms/location/LocationClient;->getTriggeringGeofences(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v2

    .line 141
    .local v2, "geofences":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/location/Geofence;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    new-array v1, v7, [Ljava/lang/String;

    .line 142
    .local v1, "geofenceIds":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 143
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/location/Geofence;

    invoke-interface {v7}, Lcom/google/android/gms/location/Geofence;->getRequestId()Ljava/lang/String;

    move-result-object v4

    .line 144
    .local v4, "requestId":Ljava/lang/String;
    aput-object v4, v1, v3

    .line 146
    sget-boolean v7, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v7, :cond_4

    .line 147
    const-string v7, "KahunaAnalytics"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GeofenceId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Transition: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0, v6}, Lcom/kahuna/sdk/KahunaCoreReceiver;->getTransitionString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_4
    const-string v7, "KahunaEngineRegion_"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 152
    const-string v7, "KahunaEngineRegion_"

    const-string v8, ""

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 153
    .local v5, "serverDefinedId":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/kahuna/sdk/KahunaCoreReceiver;->getTransitionString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/kahuna/sdk/KahunaAnalytics;->trackRegionMonitoringEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .end local v5    # "serverDefinedId":Ljava/lang/String;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 158
    .end local v1    # "geofenceIds":[Ljava/lang/String;
    .end local v2    # "geofences":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/location/Geofence;>;"
    .end local v3    # "index":I
    .end local v4    # "requestId":Ljava/lang/String;
    :cond_6
    sget-boolean v7, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v7, :cond_0

    .line 159
    const-string v7, "KahunaAnalytics"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received Unknown Geofence transition state:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 60
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "action":Ljava/lang/String;
    const-string v13, "KAHUNA_PUSH_CLICKED"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 64
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 65
    .local v6, "extras":Landroid/os/Bundle;
    const-wide/16 v8, 0x0

    .line 66
    .local v8, "layoutId":J
    const/4 v10, 0x0

    .line 67
    .local v10, "notificationId":I
    if-eqz v6, :cond_3

    .line 68
    const-string v13, "KAHUNA_TRACKING_ID"

    invoke-virtual {v6, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 70
    .local v12, "trackingId":Ljava/lang/String;
    if-eqz v12, :cond_0

    .line 71
    invoke-static {v12}, Lcom/kahuna/sdk/KahunaAnalytics;->trackPushClickedEvent(Ljava/lang/String;)V

    .line 72
    :cond_0
    const-string v13, "KAHUNA_LAYOUT_ID"

    invoke-virtual {v6, v13}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 73
    const-string v13, "KAHUNA_NID"

    invoke-virtual {v6, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 74
    if-nez v10, :cond_1

    .line 75
    sget v10, Lcom/kahuna/sdk/KahunaPushService;->KAHUNA_PRIVATE_ID:I

    .line 77
    :cond_1
    sget-boolean v13, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v13, :cond_2

    .line 78
    const-string v13, "KahunaAnalytics"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Push clicked for notificationID: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_2
    sget v13, Lcom/kahuna/sdk/KahunaPushService;->KAHUNA_PRIVATE_ID:I

    if-eq v10, v13, :cond_3

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    move-object/from16 v0, p1

    invoke-static {v0, v10, v14, v15}, Lcom/kahuna/sdk/KahunaPreferences;->saveLastPushClicked(Landroid/content/Context;IJ)V

    .line 86
    .end local v12    # "trackingId":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getKahunaPushLaunchOverride()Z

    move-result v13

    if-nez v13, :cond_4

    .line 87
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 88
    .local v11, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 89
    .local v3, "activityIntent":Landroid/content/Intent;
    const/high16 v13, 0x34000000

    invoke-virtual {v3, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 91
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 95
    .end local v3    # "activityIntent":Landroid/content/Intent;
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    :cond_4
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getCustomPushReceiver()Ljava/lang/Class;

    move-result-object v13

    if-eqz v13, :cond_6

    .line 96
    new-instance v4, Landroid/content/Intent;

    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getCustomPushReceiver()Ljava/lang/Class;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    .local v4, "customBroadcastIntent":Landroid/content/Intent;
    const-string v13, "com.kahuna.sdk.push.clicked"

    invoke-virtual {v4, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const-string v13, "layout_id"

    invoke-virtual {v4, v13, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 99
    const-string v13, "KAHUNA_LANDING_EXTRAS_ID"

    invoke-virtual {v6, v13}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 100
    .local v7, "landingExtras":Landroid/os/Bundle;
    if-eqz v7, :cond_5

    .line 101
    const-string v13, "landing_extras_id"

    invoke-virtual {v4, v13, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 103
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 117
    .end local v2    # "action":Ljava/lang/String;
    .end local v4    # "customBroadcastIntent":Landroid/content/Intent;
    .end local v6    # "extras":Landroid/os/Bundle;
    .end local v7    # "landingExtras":Landroid/os/Bundle;
    .end local v8    # "layoutId":J
    .end local v10    # "notificationId":I
    :cond_6
    :goto_0
    return-void

    .line 106
    .restart local v2    # "action":Ljava/lang/String;
    :cond_7
    const-string v13, "KAHUNA_GEOFENCES_UPDATED"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 107
    invoke-direct/range {p0 .. p2}, Lcom/kahuna/sdk/KahunaCoreReceiver;->handleGeofenceIntent(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    .end local v2    # "action":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 115
    .local v5, "e":Ljava/lang/Exception;
    const-string v13, "KahunaAnalytics"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Handled exception in CoreReceiver.onReceive(): "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 109
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v2    # "action":Ljava/lang/String;
    :cond_8
    :try_start_1
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/location/ActivityRecognitionResult;->hasResult(Landroid/content/Intent;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 110
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getSharedInstance()Lcom/kahuna/sdk/KahunaAnalytics;

    move-result-object v13

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v13, v0, v1}, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->handleActivityRecognitionIntent(Lcom/kahuna/sdk/KahunaAnalytics;Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
