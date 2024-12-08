.class public Lcom/kahuna/sdk/KahunaPreferences;
.super Ljava/lang/Object;
.source "KahunaPreferences.java"


# static fields
.field private static final DEVICE_ID_PREF_KEY:Ljava/lang/String; = "device_id"

.field private static final EVENTS_PREF_KEY:Ljava/lang/String; = "events"

.field private static final GEOFENCE_REGION_IDS_KEY:Ljava/lang/String; = "geofencing_regions"

.field private static final LAST_FLUSH_TIMESTAMP_KEY:Ljava/lang/String; = "last_flush_timestamp"

.field private static final PREFERENCES:Ljava/lang/String; = "com.kahuna.sdk.android"

.field private static final PREV_PUSH_TOKEN:Ljava/lang/String; = "prev_push_token"

.field private static final PUSHES_CLICKED_KEY:Ljava/lang/String; = "pushes_clicked"

.field private static final PUSHES_RECEIVED_KEY:Ljava/lang/String; = "pushes_received"

.field private static final PUSH_ENABLED_KEY:Ljava/lang/String; = "push_enabled"

.field private static final PUSH_PURGE_WINDOW_TIME:I = 0x278d00

.field private static final PushMapLockObject:Ljava/lang/Object;

.field private static final SDK_CONFIGURATION_KEY:Ljava/lang/String; = "sdk_configuration"

.field private static final SHOULD_INSERT_CREDS_KEY:Ljava/lang/String; = "insert_credentials"

.field private static final SUPPORT_LIB_MISSING:Ljava/lang/String; = "support_library_missing"

.field private static final TRACKED_IBEACONS_KEY:Ljava/lang/String; = "tracked_ibeacons"

.field private static final USER_ATTRIBUTES_PREF_KEY:Ljava/lang/String; = "user_attributes"

.field private static final USER_CREDENTIALS_PREF_KEY:Ljava/lang/String; = "user_credentials"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kahuna/sdk/KahunaPreferences;->PushMapLockObject:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method private static getKahunaPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    const-string v0, "com.kahuna.sdk.android"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method protected static getLastFlushTimestamp(Landroid/content/Context;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 376
    invoke-static {p0}, Lcom/kahuna/sdk/KahunaPreferences;->getKahunaPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 377
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "last_flush_timestamp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method protected static getLastPushesClicked(Landroid/content/Context;)Landroid/util/SparseArray;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/kahuna/sdk/KahunaNotificationTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 364
    sget-object v2, Lcom/kahuna/sdk/KahunaPreferences;->PushMapLockObject:Ljava/lang/Object;

    monitor-enter v2

    .line 365
    :try_start_0
    const-string v1, "pushes_clicked"

    invoke-static {p0, v1}, Lcom/kahuna/sdk/KahunaPreferences;->getLastPushesInternal(Landroid/content/Context;Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 366
    .local v0, "pushClickedArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/kahuna/sdk/KahunaNotificationTracker;>;"
    monitor-exit v2

    return-object v0

    .line 367
    .end local v0    # "pushClickedArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/kahuna/sdk/KahunaNotificationTracker;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getLastPushesInternal(Landroid/content/Context;Ljava/lang/String;)Landroid/util/SparseArray;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prefKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/kahuna/sdk/KahunaNotificationTracker;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 653
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    .line 654
    .local v8, "savedPushes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/kahuna/sdk/KahunaNotificationTracker;>;"
    invoke-static {p0}, Lcom/kahuna/sdk/KahunaPreferences;->getKahunaPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 657
    .local v5, "prefs":Landroid/content/SharedPreferences;
    const/4 v9, 0x0

    :try_start_0
    invoke-interface {v5, p1, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 659
    .local v7, "pushesJsonArray":Ljava/lang/String;
    invoke-static {v7}, Lcom/kahuna/sdk/KahunaUtils;->isNullOrEmptyString(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 662
    new-instance v9, Lorg/json/JSONArray;

    invoke-static {v7}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 663
    .local v2, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 664
    .local v4, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 665
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 666
    .local v3, "jsonObject":Lorg/json/JSONObject;
    invoke-static {v3}, Lcom/kahuna/sdk/KahunaNotificationTracker;->buildFromJSON(Lorg/json/JSONObject;)Lcom/kahuna/sdk/KahunaNotificationTracker;

    move-result-object v6

    .line 667
    .local v6, "pushTracked":Lcom/kahuna/sdk/KahunaNotificationTracker;
    invoke-virtual {v6}, Lcom/kahuna/sdk/KahunaNotificationTracker;->getNotificationId()I

    move-result v9

    invoke-virtual {v8, v9, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 664
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 671
    .end local v1    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "length":I
    .end local v6    # "pushTracked":Lcom/kahuna/sdk/KahunaNotificationTracker;
    .end local v7    # "pushesJsonArray":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 672
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v9, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v9, :cond_0

    .line 673
    const-string v9, "KahunaAnalytics"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception getting saved push sparseArray: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :cond_0
    new-instance v8, Landroid/util/SparseArray;

    .end local v8    # "savedPushes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/kahuna/sdk/KahunaNotificationTracker;>;"
    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    .line 676
    .restart local v8    # "savedPushes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/kahuna/sdk/KahunaNotificationTracker;>;"
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, p1, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 679
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v8
.end method

.method protected static getLastPushesRecieved(Landroid/content/Context;)Landroid/util/SparseArray;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/kahuna/sdk/KahunaNotificationTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 357
    sget-object v2, Lcom/kahuna/sdk/KahunaPreferences;->PushMapLockObject:Ljava/lang/Object;

    monitor-enter v2

    .line 358
    :try_start_0
    const-string v1, "pushes_received"

    invoke-static {p0, v1}, Lcom/kahuna/sdk/KahunaPreferences;->getLastPushesInternal(Landroid/content/Context;Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 359
    .local v0, "pushReceivedArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/kahuna/sdk/KahunaNotificationTracker;>;"
    monitor-exit v2

    return-object v0

    .line 360
    .end local v0    # "pushReceivedArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/kahuna/sdk/KahunaNotificationTracker;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static declared-synchronized getMapInternal(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prefKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    const-class v13, Lcom/kahuna/sdk/KahunaPreferences;

    monitor-enter v13

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 196
    .local v1, "credentials":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p0 .. p0}, Lcom/kahuna/sdk/KahunaPreferences;->getKahunaPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 199
    .local v10, "prefs":Landroid/content/SharedPreferences;
    const/4 v12, 0x0

    :try_start_1
    move-object/from16 v0, p1

    invoke-interface {v10, v0, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, "credsJsonArray":Ljava/lang/String;
    invoke-static {v2}, Lcom/kahuna/sdk/KahunaUtils;->isNullOrEmptyString(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 203
    new-instance v12, Lorg/json/JSONArray;

    invoke-static {v2}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 204
    .local v5, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v9

    .line 205
    .local v9, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v9, :cond_1

    .line 206
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 207
    .local v6, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    .line 209
    .local v8, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 210
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 211
    .local v7, "key":Ljava/lang/String;
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 212
    .local v11, "value":Ljava/lang/String;
    invoke-interface {v1, v7, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 217
    .end local v2    # "credsJsonArray":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v9    # "length":I
    .end local v11    # "value":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 218
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    sget-boolean v12, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v12, :cond_0

    .line 219
    const-string v12, "KahunaAnalytics"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception getting user map: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "credentials":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 222
    .restart local v1    # "credentials":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-interface {v12, v0, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 224
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    monitor-exit v13

    return-object v1

    .line 205
    .restart local v2    # "credsJsonArray":Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v5    # "jsonArray":Lorg/json/JSONArray;
    .restart local v6    # "jsonObject":Lorg/json/JSONObject;
    .restart local v8    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v9    # "length":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 195
    .end local v1    # "credentials":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "credsJsonArray":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    .end local v8    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v9    # "length":I
    .end local v10    # "prefs":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v12

    monitor-exit v13

    throw v12
.end method

.method protected static getPreviousSDKVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 487
    invoke-static {p0}, Lcom/kahuna/sdk/KahunaPreferences;->getKahunaPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 488
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "prev_sdk_version"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected static getPushEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    invoke-static {p0}, Lcom/kahuna/sdk/KahunaPreferences;->getKahunaPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 96
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "push_enabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method protected static getSavedDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    invoke-static {p0}, Lcom/kahuna/sdk/KahunaPreferences;->getKahunaPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 86
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "device_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected static declared-synchronized getSavedEvents(Landroid/content/Context;)Ljava/util/List;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/kahuna/sdk/KAEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    const-class v10, Lcom/kahuna/sdk/KahunaPreferences;

    monitor-enter v10

    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 261
    .local v8, "savedEvents":Ljava/util/List;, "Ljava/util/List<Lcom/kahuna/sdk/KAEvent;>;"
    invoke-static {p0}, Lcom/kahuna/sdk/KahunaPreferences;->getKahunaPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 264
    .local v7, "prefs":Landroid/content/SharedPreferences;
    :try_start_1
    const-string v9, "events"

    const/4 v11, 0x0

    invoke-interface {v7, v9, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 266
    .local v2, "eventsJsonArray":Ljava/lang/String;
    invoke-static {v2}, Lcom/kahuna/sdk/KahunaUtils;->isNullOrEmptyString(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 268
    new-instance v9, Lorg/json/JSONArray;

    invoke-static {v2}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 269
    .local v4, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    .line 270
    .local v6, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_1

    .line 271
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 272
    .local v5, "jsonObject":Lorg/json/JSONObject;
    invoke-static {v5}, Lcom/kahuna/sdk/KAEvent;->buildFromJSON(Lorg/json/JSONObject;)Lcom/kahuna/sdk/KAEvent;

    move-result-object v1

    .line 273
    .local v1, "event":Lcom/kahuna/sdk/KAEvent;
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 277
    .end local v1    # "event":Lcom/kahuna/sdk/KAEvent;
    .end local v2    # "eventsJsonArray":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "length":I
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    sget-boolean v9, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v9, :cond_0

    .line 279
    const-string v9, "KahunaAnalytics"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception getting saved events: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "savedEvents":Ljava/util/List;, "Ljava/util/List<Lcom/kahuna/sdk/KAEvent;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .restart local v8    # "savedEvents":Ljava/util/List;, "Ljava/util/List<Lcom/kahuna/sdk/KAEvent;>;"
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v11, "events"

    const/4 v12, 0x0

    invoke-interface {v9, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 284
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    monitor-exit v10

    return-object v8

    .line 260
    .end local v7    # "prefs":Landroid/content/SharedPreferences;
    .end local v8    # "savedEvents":Ljava/util/List;, "Ljava/util/List<Lcom/kahuna/sdk/KAEvent;>;"
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9
.end method

.method public static getSavedIBeacons(Lcom/kahuna/sdk/KahunaAnalytics;Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 7
    .param p0, "analytics"    # Lcom/kahuna/sdk/KahunaAnalytics;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 571
    if-eqz p0, :cond_0

    instance-of v4, p0, Lcom/kahuna/sdk/KahunaAnalytics;

    if-nez v4, :cond_2

    .line 572
    :cond_0
    const-string v4, "KahunaAnalytics"

    const-string v5, "You cannot request to get any data from Kahuna preferences externally from the Kahuna SDK. Aborting!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 590
    :cond_1
    :goto_0
    return-object v2

    .line 576
    :cond_2
    invoke-static {p1}, Lcom/kahuna/sdk/KahunaPreferences;->getKahunaPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 577
    .local v1, "prefs":Landroid/content/SharedPreferences;
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 579
    .local v2, "savedIBeaconsArray":Lorg/json/JSONArray;
    :try_start_0
    const-string v4, "tracked_ibeacons"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 581
    .local v3, "savedIBeaconsString":Ljava/lang/String;
    invoke-static {v3}, Lcom/kahuna/sdk/KahunaUtils;->isNullOrEmptyString(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 582
    new-instance v4, Lorg/json/JSONArray;

    invoke-static {v3}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 585
    .end local v3    # "savedIBeaconsString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 586
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v4, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v4, :cond_1

    .line 587
    const-string v4, "KahunaAnalytics"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception getting tracked iBeacons: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static getSavedPushToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    invoke-static {p0}, Lcom/kahuna/sdk/KahunaPreferences;->getKahunaPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 116
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "prev_push_token"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static declared-synchronized getSavedRegionIds(Lcom/kahuna/sdk/KahunaAnalytics;Landroid/content/Context;)Ljava/util/Map;
    .locals 12
    .param p0, "analytics"    # Lcom/kahuna/sdk/KahunaAnalytics;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kahuna/sdk/KahunaAnalytics;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 522
    const-class v9, Lcom/kahuna/sdk/KahunaPreferences;

    monitor-enter v9

    if-eqz p0, :cond_0

    :try_start_0
    instance-of v8, p0, Lcom/kahuna/sdk/KahunaAnalytics;

    if-nez v8, :cond_2

    .line 523
    :cond_0
    const-string v8, "KahunaAnalytics"

    const-string v10, "You cannot request to get any data from Kahuna preferences externally from the Kahuna SDK. Aborting!"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 552
    :cond_1
    :goto_0
    monitor-exit v9

    return-object v6

    .line 527
    :cond_2
    :try_start_1
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 528
    .local v6, "savedRegionIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-static {p1}, Lcom/kahuna/sdk/KahunaPreferences;->getKahunaPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 531
    .local v4, "prefs":Landroid/content/SharedPreferences;
    :try_start_2
    const-string v8, "geofencing_regions"

    const/4 v10, 0x0

    invoke-interface {v4, v8, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 533
    .local v5, "regionIdsJsonObject":Ljava/lang/String;
    invoke-static {v5}, Lcom/kahuna/sdk/KahunaUtils;->isNullOrEmptyString(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 535
    new-instance v8, Lorg/json/JSONObject;

    invoke-static {v5}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 536
    .local v1, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 538
    .local v3, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 539
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 540
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 541
    .local v7, "value":Ljava/lang/Long;
    invoke-interface {v6, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 545
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v5    # "regionIdsJsonObject":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/Long;
    :catch_0
    move-exception v0

    .line 546
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    sget-boolean v8, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v8, :cond_3

    .line 547
    const-string v8, "KahunaAnalytics"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception getting saved region Ids: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_3
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "savedRegionIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 550
    .restart local v6    # "savedRegionIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v10, "geofencing_regions"

    const/4 v11, 0x0

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 522
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "prefs":Landroid/content/SharedPreferences;
    .end local v6    # "savedRegionIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8
.end method

.method protected static getSavedSDKConfiguration(Landroid/content/Context;)Lcom/kahuna/sdk/KahunaSDKConfiguration;
    .locals 30
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 415
    invoke-static/range {p0 .. p0}, Lcom/kahuna/sdk/KahunaPreferences;->getKahunaPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 417
    .local v16, "prefs":Landroid/content/SharedPreferences;
    const/16 v18, 0x0

    .line 419
    .local v18, "sdkConfig":Lcom/kahuna/sdk/KahunaSDKConfiguration;
    :try_start_0
    const-string v26, "sdk_configuration"

    const/16 v27, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 421
    .local v21, "sdkConfigString":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/kahuna/sdk/KahunaUtils;->isNullOrEmptyString(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_6

    .line 422
    new-instance v26, Lorg/json/JSONObject;

    invoke-static/range {v21 .. v21}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v20

    .line 424
    .local v20, "sdkConfigJSONObject":Lorg/json/JSONObject;
    const-string v26, "version"

    const-wide/16 v28, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v24

    .line 425
    .local v24, "version":J
    const-string v26, "flush_interval_min"

    const-wide/high16 v28, 0x4014000000000000L    # 5.0

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    .line 426
    .local v8, "flushIntervalMinutes":D
    const-string v26, "flush_on_event_count"

    const-wide/16 v28, 0x64

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 427
    .local v10, "flushOnEventCount":J
    const-string v26, "trigger_events"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v23

    .line 428
    .local v23, "triggerEventsArray":Lorg/json/JSONArray;
    new-instance v22, Ljava/util/HashSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashSet;-><init>()V

    .line 429
    .local v22, "triggerEvents":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v23, :cond_1

    .line 430
    invoke-virtual/range {v23 .. v23}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 431
    .local v4, "count":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    if-ge v15, v4, :cond_2

    .line 432
    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    .line 433
    .local v6, "element":Ljava/lang/String;
    invoke-static {v6}, Lcom/kahuna/sdk/KahunaUtils;->isNullOrEmptyString(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_0

    .line 434
    move-object/from16 v0, v22

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 431
    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 439
    .end local v4    # "count":I
    .end local v6    # "element":Ljava/lang/String;
    .end local v15    # "i":I
    :cond_1
    sget-object v22, Lcom/kahuna/sdk/KahunaSDKConfiguration;->DEFAULT_FLUSH_IMMEDIATELY_LIST:Ljava/util/HashSet;

    .line 441
    :cond_2
    const-string v26, "retry_attempts"

    const/16 v27, 0x5

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v17

    .line 443
    .local v17, "retryMaxAttempts":I
    const-string v26, "flush_soon_delay_min"

    const-wide/high16 v28, 0x3fe0000000000000L    # 0.5

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v12

    .line 444
    .local v12, "flushSoonDelayIntervalMinutes":D
    const-string v26, "flush_soon_events"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 445
    .local v14, "flushSoonEventsArray":Lorg/json/JSONArray;
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 446
    .local v7, "flushSoonEvents":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v14, :cond_4

    .line 447
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 448
    .restart local v4    # "count":I
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_1
    if-ge v15, v4, :cond_5

    .line 449
    invoke-virtual {v14, v15}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    .line 450
    .restart local v6    # "element":Ljava/lang/String;
    invoke-static {v6}, Lcom/kahuna/sdk/KahunaUtils;->isNullOrEmptyString(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_3

    .line 451
    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 448
    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 456
    .end local v4    # "count":I
    .end local v6    # "element":Ljava/lang/String;
    .end local v15    # "i":I
    :cond_4
    sget-object v7, Lcom/kahuna/sdk/KahunaSDKConfiguration;->DEFAULT_FLUSH_SOON_EVENTS_LIST:Ljava/util/HashSet;

    .line 459
    :cond_5
    new-instance v19, Lcom/kahuna/sdk/KahunaSDKConfiguration;

    invoke-direct/range {v19 .. v19}, Lcom/kahuna/sdk/KahunaSDKConfiguration;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    .end local v18    # "sdkConfig":Lcom/kahuna/sdk/KahunaSDKConfiguration;
    .local v19, "sdkConfig":Lcom/kahuna/sdk/KahunaSDKConfiguration;
    :try_start_1
    move-object/from16 v0, v19

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/kahuna/sdk/KahunaSDKConfiguration;->setVersion(J)V

    .line 461
    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v9}, Lcom/kahuna/sdk/KahunaSDKConfiguration;->setFlushIntervalMinutes(D)V

    .line 462
    move-object/from16 v0, v19

    invoke-virtual {v0, v10, v11}, Lcom/kahuna/sdk/KahunaSDKConfiguration;->setFlushOnEventCount(J)V

    .line 463
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/kahuna/sdk/KahunaSDKConfiguration;->setTriggerEvents(Ljava/util/Set;)V

    .line 464
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/kahuna/sdk/KahunaSDKConfiguration;->setMaxRetryAttempts(I)V

    .line 465
    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v13}, Lcom/kahuna/sdk/KahunaSDKConfiguration;->setFlushSoonDelayIntervalMinutes(D)V

    .line 466
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/kahuna/sdk/KahunaSDKConfiguration;->setFlushSoonEvents(Ljava/util/Set;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v18, v19

    .line 474
    .end local v7    # "flushSoonEvents":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "flushIntervalMinutes":D
    .end local v10    # "flushOnEventCount":J
    .end local v12    # "flushSoonDelayIntervalMinutes":D
    .end local v14    # "flushSoonEventsArray":Lorg/json/JSONArray;
    .end local v17    # "retryMaxAttempts":I
    .end local v19    # "sdkConfig":Lcom/kahuna/sdk/KahunaSDKConfiguration;
    .end local v20    # "sdkConfigJSONObject":Lorg/json/JSONObject;
    .end local v21    # "sdkConfigString":Ljava/lang/String;
    .end local v22    # "triggerEvents":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v23    # "triggerEventsArray":Lorg/json/JSONArray;
    .end local v24    # "version":J
    .restart local v18    # "sdkConfig":Lcom/kahuna/sdk/KahunaSDKConfiguration;
    :cond_6
    :goto_2
    if-nez v18, :cond_7

    .line 475
    new-instance v18, Lcom/kahuna/sdk/KahunaSDKConfiguration;

    .end local v18    # "sdkConfig":Lcom/kahuna/sdk/KahunaSDKConfiguration;
    invoke-direct/range {v18 .. v18}, Lcom/kahuna/sdk/KahunaSDKConfiguration;-><init>()V

    .line 478
    .restart local v18    # "sdkConfig":Lcom/kahuna/sdk/KahunaSDKConfiguration;
    :cond_7
    return-object v18

    .line 469
    :catch_0
    move-exception v5

    .line 470
    .local v5, "e":Ljava/lang/Exception;
    :goto_3
    sget-boolean v26, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v26, :cond_6

    .line 471
    const-string v26, "KahunaAnalytics"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Exception getting SDK configurations: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 469
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v18    # "sdkConfig":Lcom/kahuna/sdk/KahunaSDKConfiguration;
    .restart local v7    # "flushSoonEvents":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v8    # "flushIntervalMinutes":D
    .restart local v10    # "flushOnEventCount":J
    .restart local v12    # "flushSoonDelayIntervalMinutes":D
    .restart local v14    # "flushSoonEventsArray":Lorg/json/JSONArray;
    .restart local v17    # "retryMaxAttempts":I
    .restart local v19    # "sdkConfig":Lcom/kahuna/sdk/KahunaSDKConfiguration;
    .restart local v20    # "sdkConfigJSONObject":Lorg/json/JSONObject;
    .restart local v21    # "sdkConfigString":Ljava/lang/String;
    .restart local v22    # "triggerEvents":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v23    # "triggerEventsArray":Lorg/json/JSONArray;
    .restart local v24    # "version":J
    :catch_1
    move-exception v5

    move-object/from16 v18, v19

    .end local v19    # "sdkConfig":Lcom/kahuna/sdk/KahunaSDKConfiguration;
    .restart local v18    # "sdkConfig":Lcom/kahuna/sdk/KahunaSDKConfiguration;
    goto :goto_3
.end method

.method protected static getShouldInsertCreds(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    invoke-static {p0}, Lcom/kahuna/sdk/KahunaPreferences;->getKahunaPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 126
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "insert_credentials"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method protected static getSupportLibMissing(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    invoke-static {p0}, Lcom/kahuna/sdk/KahunaPreferences;->getKahunaPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 106
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "support_library_missing"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method protected static getUserAttributes(Landroid/content/Context;)Ljava/util/Map;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    const-string v0, "user_attributes"

    invoke-static {p0, v0}, Lcom/kahuna/sdk/KahunaPreferences;->getMapInternal(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected static getUserCredentials(Landroid/content/Context;)Ljava/util/Map;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    const-string v0, "user_credentials"

    invoke-static {p0, v0}, Lcom/kahuna/sdk/KahunaPreferences;->getMapInternal(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static handleMonthlyPushesPurge(Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/kahuna/sdk/KahunaNotificationTracker;",
            ">;)",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/kahuna/sdk/KahunaNotificationTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 610
    .local p0, "pushesArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/kahuna/sdk/KahunaNotificationTracker;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    const-wide/32 v10, 0x278d00

    sub-long v4, v8, v10

    .line 611
    .local v4, "purgeTimestamp":J
    move-object v0, p0

    .line 612
    .local v0, "fixedArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/kahuna/sdk/KahunaNotificationTracker;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 615
    .local v2, "purgeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 616
    .local v6, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_1

    .line 617
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kahuna/sdk/KahunaNotificationTracker;

    invoke-virtual {v7}, Lcom/kahuna/sdk/KahunaNotificationTracker;->getTimestamp()J

    move-result-wide v8

    cmp-long v7, v8, v4

    if-gez v7, :cond_0

    .line 618
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kahuna/sdk/KahunaNotificationTracker;

    invoke-virtual {v7}, Lcom/kahuna/sdk/KahunaNotificationTracker;->getNotificationId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 616
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 622
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 623
    .local v3, "purgeSize":I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_2

    .line 624
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->remove(I)V

    .line 623
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 627
    :cond_2
    return-object v0
.end method

.method private static removeOldestPush(Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/kahuna/sdk/KahunaNotificationTracker;",
            ">;)",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/kahuna/sdk/KahunaNotificationTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 594
    .local p0, "pushesArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/kahuna/sdk/KahunaNotificationTracker;>;"
    move-object v0, p0

    .line 595
    .local v0, "fixedArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/kahuna/sdk/KahunaNotificationTracker;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 596
    .local v3, "size":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long v4, v6, v8

    .line 597
    .local v4, "oldestTime":J
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kahuna/sdk/KahunaNotificationTracker;

    invoke-virtual {v6}, Lcom/kahuna/sdk/KahunaNotificationTracker;->getNotificationId()I

    move-result v2

    .line 598
    .local v2, "oldestId":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 599
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kahuna/sdk/KahunaNotificationTracker;

    invoke-virtual {v6}, Lcom/kahuna/sdk/KahunaNotificationTracker;->getTimestamp()J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-gez v6, :cond_0

    .line 600
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kahuna/sdk/KahunaNotificationTracker;

    invoke-virtual {v6}, Lcom/kahuna/sdk/KahunaNotificationTracker;->getTimestamp()J

    move-result-wide v4

    .line 601
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kahuna/sdk/KahunaNotificationTracker;

    invoke-virtual {v6}, Lcom/kahuna/sdk/KahunaNotificationTracker;->getNotificationId()I

    move-result v2

    .line 598
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 605
    :cond_1
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 606
    return-object v0
.end method

.method protected static saveDeviceId(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .param p0, "deviceId"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-static {p1}, Lcom/kahuna/sdk/KahunaPreferences;->getKahunaPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 81
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "device_id"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 82
    return-void
.end method

.method protected static declared-synchronized saveEvents(Ljava/util/List;Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kahuna/sdk/KAEvent;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 228
    .local p0, "events":Ljava/util/List;, "Ljava/util/List<Lcom/kahuna/sdk/KAEvent;>;"
    const-class v8, Lcom/kahuna/sdk/KahunaPreferences;

    monitor-enter v8

    :try_start_0
    invoke-static {p1}, Lcom/kahuna/sdk/KahunaPreferences;->getKahunaPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 229
    .local v5, "prefs":Landroid/content/SharedPreferences;
    if-nez p0, :cond_1

    .line 231
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v9, "events"

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    :cond_0
    :goto_0
    monitor-exit v8

    return-void

    .line 238
    :cond_1
    :try_start_1
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 241
    .local v3, "jsonArray":Lorg/json/JSONArray;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    .line 242
    .local v6, "totalEventsSize":I
    sget v7, Lcom/kahuna/sdk/KahunaAnalytics;->MAX_EVENTS_TO_ARCHIVE:I

    sub-int v4, v6, v7

    .line 243
    .local v4, "offsetToArchiveFrom":I
    if-gez v4, :cond_2

    .line 244
    const/4 v4, 0x0

    .line 245
    :cond_2
    move v2, v4

    .local v2, "i":I
    :goto_1
    if-ge v2, v6, :cond_3

    .line 246
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kahuna/sdk/KAEvent;

    invoke-virtual {v7}, Lcom/kahuna/sdk/KAEvent;->getJSONRepresentation()Lorg/json/JSONObject;

    move-result-object v1

    .line 247
    .local v1, "eventObject":Lorg/json/JSONObject;
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 245
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 251
    .end local v1    # "eventObject":Lorg/json/JSONObject;
    :cond_3
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "events"

    instance-of v7, v3, Lorg/json/JSONArray;

    if-nez v7, :cond_4

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    :goto_2
    invoke-interface {v9, v10, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 253
    .end local v2    # "i":I
    .end local v4    # "offsetToArchiveFrom":I
    .end local v6    # "totalEventsSize":I
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    sget-boolean v7, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v7, :cond_0

    .line 255
    const-string v7, "KahunaAnalytics"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception saving events: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 228
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "prefs":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 251
    .restart local v2    # "i":I
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    .restart local v4    # "offsetToArchiveFrom":I
    .restart local v5    # "prefs":Landroid/content/SharedPreferences;
    .restart local v6    # "totalEventsSize":I
    :cond_4
    :try_start_3
    check-cast v3, Lorg/json/JSONArray;

    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    invoke-static {v3}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->toString(Lorg/json/JSONArray;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v7

    goto :goto_2
.end method

.method public static saveIBeacons(Lcom/kahuna/sdk/KahunaAnalytics;Landroid/content/Context;Lorg/json/JSONArray;)V
    .locals 5
    .param p0, "analytics"    # Lcom/kahuna/sdk/KahunaAnalytics;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "beaconsToSave"    # Lorg/json/JSONArray;

    .prologue
    .line 556
    if-eqz p0, :cond_0

    instance-of v2, p0, Lcom/kahuna/sdk/KahunaAnalytics;

    if-nez v2, :cond_2

    .line 557
    :cond_0
    const-string v2, "KahunaAnalytics"

    const-string v3, "You cannot request to save any data to Kahuna preferences externally from the Kahuna SDK. Aborting!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    .end local p2    # "beaconsToSave":Lorg/json/JSONArray;
    :cond_1
    :goto_0
    return-void

    .line 561
    .restart local p2    # "beaconsToSave":Lorg/json/JSONArray;
    :cond_2
    invoke-static {p1}, Lcom/kahuna/sdk/KahunaPreferences;->getKahunaPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 563
    .local v1, "prefs":Landroid/content/SharedPreferences;
    :try_start_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "tracked_ibeacons"

    instance-of v2, p2, Lorg/json/JSONArray;

    if-nez v2, :cond_3

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    .end local p2    # "beaconsToSave":Lorg/json/JSONArray;
    :goto_1
    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 564
    :catch_0
    move-exception v0

    .line 565
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v2, :cond_1

    .line 566
    const-string v2, "KahunaAnalytics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception saving tracked iBeacons: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 563
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local p2    # "beaconsToSave":Lorg/json/JSONArray;
    :cond_3
    :try_start_1
    check-cast p2, Lorg/json/JSONArray;

    .end local p2    # "beaconsToSave":Lorg/json/JSONArray;
    invoke-static {p2}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->toString(Lorg/json/JSONArray;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_1
.end method

.method protected static saveLastFlushTimestamp(JLandroid/content/Context;)V
    .locals 4
    .param p0, "lastFlushTimestamp"    # J
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 371
    invoke-static {p2}, Lcom/kahuna/sdk/KahunaPreferences;->getKahunaPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 372
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "last_flush_timestamp"

    invoke-interface {v1, v2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 373
    return-void
.end method

.method protected static saveLastPushClicked(Landroid/content/Context;IJ)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "timestamp"    # J

    .prologue
    .line 330
    sget-object v4, Lcom/kahuna/sdk/KahunaPreferences;->PushMapLockObject:Ljava/lang/Object;

    monitor-enter v4

    .line 332
    :try_start_0
    const-string v3, "pushes_clicked"

    invoke-static {p0, v3}, Lcom/kahuna/sdk/KahunaPreferences;->getLastPushesInternal(Landroid/content/Context;Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v2

    .line 333
    .local v2, "pushClickedArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/kahuna/sdk/KahunaNotificationTracker;>;"
    invoke-static {v2}, Lcom/kahuna/sdk/KahunaPreferences;->handleMonthlyPushesPurge(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object v2

    .line 335
    new-instance v1, Lcom/kahuna/sdk/KahunaNotificationTracker;

    invoke-direct {v1, p1, p2, p3}, Lcom/kahuna/sdk/KahunaNotificationTracker;-><init>(IJ)V

    .line 336
    .local v1, "newPushClicked":Lcom/kahuna/sdk/KahunaNotificationTracker;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/kahuna/sdk/KahunaNotificationTracker;->setNotficationClicked(Z)V

    .line 337
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/16 v5, 0x64

    if-ge v3, v5, :cond_0

    .line 339
    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 340
    const-string v3, "pushes_clicked"

    invoke-static {p0, v2, v3}, Lcom/kahuna/sdk/KahunaPreferences;->saveLastPushesInternal(Landroid/content/Context;Landroid/util/SparseArray;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 354
    .end local v1    # "newPushClicked":Lcom/kahuna/sdk/KahunaNotificationTracker;
    .end local v2    # "pushClickedArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/kahuna/sdk/KahunaNotificationTracker;>;"
    :goto_0
    return-void

    .line 345
    .restart local v1    # "newPushClicked":Lcom/kahuna/sdk/KahunaNotificationTracker;
    .restart local v2    # "pushClickedArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/kahuna/sdk/KahunaNotificationTracker;>;"
    :cond_0
    :try_start_2
    invoke-static {v2}, Lcom/kahuna/sdk/KahunaPreferences;->removeOldestPush(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object v2

    .line 346
    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 347
    const-string v3, "pushes_clicked"

    invoke-static {p0, v2, v3}, Lcom/kahuna/sdk/KahunaPreferences;->saveLastPushesInternal(Landroid/content/Context;Landroid/util/SparseArray;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 353
    .end local v1    # "newPushClicked":Lcom/kahuna/sdk/KahunaNotificationTracker;
    .end local v2    # "pushClickedArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/kahuna/sdk/KahunaNotificationTracker;>;"
    :cond_1
    :goto_1
    :try_start_3
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 349
    :catch_0
    move-exception v0

    .line 350
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    sget-boolean v3, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v3, :cond_1

    .line 351
    const-string v3, "KahunaAnalytics"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception saving pushes clicked: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method protected static saveLastPushRecieved(Landroid/content/Context;IJ)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "timestamp"    # J

    .prologue
    .line 296
    sget-object v4, Lcom/kahuna/sdk/KahunaPreferences;->PushMapLockObject:Ljava/lang/Object;

    monitor-enter v4

    .line 298
    :try_start_0
    const-string v3, "pushes_received"

    invoke-static {p0, v3}, Lcom/kahuna/sdk/KahunaPreferences;->getLastPushesInternal(Landroid/content/Context;Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v2

    .line 299
    .local v2, "pushReceivedArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/kahuna/sdk/KahunaNotificationTracker;>;"
    invoke-static {v2}, Lcom/kahuna/sdk/KahunaPreferences;->handleMonthlyPushesPurge(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object v2

    .line 301
    new-instance v1, Lcom/kahuna/sdk/KahunaNotificationTracker;

    invoke-direct {v1, p1, p2, p3}, Lcom/kahuna/sdk/KahunaNotificationTracker;-><init>(IJ)V

    .line 302
    .local v1, "newPushReceived":Lcom/kahuna/sdk/KahunaNotificationTracker;
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/16 v5, 0x64

    if-ge v3, v5, :cond_0

    .line 304
    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 305
    const-string v3, "pushes_received"

    invoke-static {p0, v2, v3}, Lcom/kahuna/sdk/KahunaPreferences;->saveLastPushesInternal(Landroid/content/Context;Landroid/util/SparseArray;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    .end local v1    # "newPushReceived":Lcom/kahuna/sdk/KahunaNotificationTracker;
    .end local v2    # "pushReceivedArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/kahuna/sdk/KahunaNotificationTracker;>;"
    :goto_0
    return-void

    .line 310
    .restart local v1    # "newPushReceived":Lcom/kahuna/sdk/KahunaNotificationTracker;
    .restart local v2    # "pushReceivedArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/kahuna/sdk/KahunaNotificationTracker;>;"
    :cond_0
    :try_start_2
    invoke-static {v2}, Lcom/kahuna/sdk/KahunaPreferences;->removeOldestPush(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object v2

    .line 311
    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 312
    const-string v3, "pushes_received"

    invoke-static {p0, v2, v3}, Lcom/kahuna/sdk/KahunaPreferences;->saveLastPushesInternal(Landroid/content/Context;Landroid/util/SparseArray;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 318
    .end local v1    # "newPushReceived":Lcom/kahuna/sdk/KahunaNotificationTracker;
    .end local v2    # "pushReceivedArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/kahuna/sdk/KahunaNotificationTracker;>;"
    :cond_1
    :goto_1
    :try_start_3
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    sget-boolean v3, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v3, :cond_1

    .line 316
    const-string v3, "KahunaAnalytics"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception saving pushes received: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private static saveLastPushesInternal(Landroid/content/Context;Landroid/util/SparseArray;Ljava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "prefKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/kahuna/sdk/KahunaNotificationTracker;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 633
    .local p1, "pushesArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/kahuna/sdk/KahunaNotificationTracker;>;"
    invoke-static {p0}, Lcom/kahuna/sdk/KahunaPreferences;->getKahunaPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 635
    .local v4, "prefs":Landroid/content/SharedPreferences;
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 637
    .local v2, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 638
    .local v5, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 639
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kahuna/sdk/KahunaNotificationTracker;

    invoke-virtual {v6}, Lcom/kahuna/sdk/KahunaNotificationTracker;->getJSONRepresentation()Lorg/json/JSONObject;

    move-result-object v3

    .line 640
    .local v3, "notificationObject":Lorg/json/JSONObject;
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 638
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 644
    .end local v3    # "notificationObject":Lorg/json/JSONObject;
    :cond_0
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    instance-of v6, v2, Lorg/json/JSONArray;

    if-nez v6, :cond_2

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    :goto_1
    invoke-interface {v7, p2, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 650
    .end local v1    # "i":I
    .end local v5    # "size":I
    :cond_1
    :goto_2
    return-void

    .line 644
    .restart local v1    # "i":I
    .restart local v2    # "jsonArray":Lorg/json/JSONArray;
    .restart local v5    # "size":I
    :cond_2
    check-cast v2, Lorg/json/JSONArray;

    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    invoke-static {v2}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->toString(Lorg/json/JSONArray;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_1

    .line 646
    .end local v1    # "i":I
    .end local v5    # "size":I
    :catch_0
    move-exception v0

    .line 647
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v6, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v6, :cond_1

    .line 648
    const-string v6, "KahunaAnalytics"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception saving pushes sparseArray: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static declared-synchronized saveMapInternal(Ljava/util/Map;Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prefKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v8, Lcom/kahuna/sdk/KahunaPreferences;

    monitor-enter v8

    :try_start_0
    invoke-static {p1}, Lcom/kahuna/sdk/KahunaPreferences;->getKahunaPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 153
    .local v5, "prefs":Landroid/content/SharedPreferences;
    if-nez p0, :cond_1

    .line 155
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const/4 v9, 0x0

    invoke-interface {v7, p2, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :cond_0
    :goto_0
    monitor-exit v8

    return-void

    .line 162
    :cond_1
    :try_start_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 164
    .local v2, "jsonArray":Lorg/json/JSONArray;
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 165
    .local v3, "key":Ljava/lang/String;
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 167
    .local v6, "value":Ljava/lang/String;
    invoke-static {v6}, Lcom/kahuna/sdk/KahunaUtils;->isNullOrEmptyString(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 172
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 173
    .local v4, "obj":Lorg/json/JSONObject;
    invoke-virtual {v4, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 180
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "obj":Lorg/json/JSONObject;
    .end local v6    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    sget-boolean v7, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v7, :cond_0

    .line 182
    const-string v7, "KahunaAnalytics"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception saving user map: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 152
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "prefs":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 178
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "jsonArray":Lorg/json/JSONArray;
    .restart local v5    # "prefs":Landroid/content/SharedPreferences;
    :cond_3
    :try_start_3
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    instance-of v7, v2, Lorg/json/JSONArray;

    if-nez v7, :cond_4

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    :goto_2
    invoke-interface {v9, p2, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .restart local v2    # "jsonArray":Lorg/json/JSONArray;
    :cond_4
    check-cast v2, Lorg/json/JSONArray;

    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    invoke-static {v2}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->toString(Lorg/json/JSONArray;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v7

    goto :goto_2
.end method

.method protected static savePreviousSDKVersion(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .param p0, "sdkVersion"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 482
    invoke-static {p1}, Lcom/kahuna/sdk/KahunaPreferences;->getKahunaPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 483
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "prev_sdk_version"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 484
    return-void
.end method

.method protected static savePushEnabled(ZLandroid/content/Context;)V
    .locals 3
    .param p0, "enabled"    # Z
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    invoke-static {p1}, Lcom/kahuna/sdk/KahunaPreferences;->getKahunaPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 91
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "push_enabled"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 92
    return-void
.end method

.method protected static savePushToken(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .param p0, "pushToken"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    invoke-static {p1}, Lcom/kahuna/sdk/KahunaPreferences;->getKahunaPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 111
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "prev_push_token"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 112
    return-void
.end method

.method public static declared-synchronized saveRegionIds(Lcom/kahuna/sdk/KahunaAnalytics;Ljava/util/Map;Landroid/content/Context;)V
    .locals 9
    .param p0, "analytics"    # Lcom/kahuna/sdk/KahunaAnalytics;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kahuna/sdk/KahunaAnalytics;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 492
    .local p1, "regionIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    const-class v6, Lcom/kahuna/sdk/KahunaPreferences;

    monitor-enter v6

    if-eqz p0, :cond_0

    :try_start_0
    instance-of v5, p0, Lcom/kahuna/sdk/KahunaAnalytics;

    if-nez v5, :cond_2

    .line 493
    :cond_0
    const-string v5, "KahunaAnalytics"

    const-string v7, "You cannot request to save any data to Kahuna preferences externally from the Kahuna SDK. Aborting!"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    :cond_1
    :goto_0
    monitor-exit v6

    return-void

    .line 497
    :cond_2
    :try_start_1
    invoke-static {p2}, Lcom/kahuna/sdk/KahunaPreferences;->getKahunaPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 498
    .local v4, "prefs":Landroid/content/SharedPreferences;
    if-nez p1, :cond_3

    .line 500
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v7, "geofencing_regions"

    const/4 v8, 0x0

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 492
    .end local v4    # "prefs":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 505
    .restart local v4    # "prefs":Landroid/content/SharedPreferences;
    :cond_3
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 508
    .local v2, "jsonObject":Lorg/json/JSONObject;
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 509
    .local v3, "key":Ljava/lang/String;
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 515
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "key":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 516
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    sget-boolean v5, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v5, :cond_1

    .line 517
    const-string v5, "KahunaAnalytics"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception saving region Ids: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 513
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    :cond_4
    :try_start_4
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "geofencing_regions"

    instance-of v5, v2, Lorg/json/JSONObject;

    if-nez v5, :cond_5

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :goto_2
    invoke-interface {v7, v8, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    :cond_5
    check-cast v2, Lorg/json/JSONObject;

    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v5

    goto :goto_2
.end method

.method protected static saveSDKConfiguration(Landroid/content/Context;Lcom/kahuna/sdk/KahunaSDKConfiguration;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "configuration"    # Lcom/kahuna/sdk/KahunaSDKConfiguration;

    .prologue
    .line 381
    if-nez p1, :cond_1

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    invoke-static {p0}, Lcom/kahuna/sdk/KahunaPreferences;->getKahunaPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 388
    .local v5, "prefs":Landroid/content/SharedPreferences;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 389
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string v8, "version"

    invoke-virtual {p1}, Lcom/kahuna/sdk/KahunaSDKConfiguration;->getVersion()J

    move-result-wide v10

    invoke-virtual {v4, v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 390
    const-string v8, "flush_interval_min"

    invoke-virtual {p1}, Lcom/kahuna/sdk/KahunaSDKConfiguration;->getFlushIntervalMinutes()D

    move-result-wide v10

    invoke-virtual {v4, v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 391
    const-string v8, "flush_on_event_count"

    invoke-virtual {p1}, Lcom/kahuna/sdk/KahunaSDKConfiguration;->getFlushOnEventCount()J

    move-result-wide v10

    invoke-virtual {v4, v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 393
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 394
    .local v6, "triggerEventsArray":Lorg/json/JSONArray;
    invoke-virtual {p1}, Lcom/kahuna/sdk/KahunaSDKConfiguration;->getTriggerEvents()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 395
    .local v7, "triggerString":Ljava/lang/String;
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 408
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "triggerEventsArray":Lorg/json/JSONArray;
    .end local v7    # "triggerString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 409
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v8, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v8, :cond_0

    .line 410
    const-string v8, "KahunaAnalytics"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception saving SDK configuration: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 397
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "jsonObject":Lorg/json/JSONObject;
    .restart local v6    # "triggerEventsArray":Lorg/json/JSONArray;
    :cond_2
    :try_start_1
    const-string v8, "trigger_events"

    invoke-virtual {v4, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 398
    const-string v8, "retry_attempts"

    invoke-virtual {p1}, Lcom/kahuna/sdk/KahunaSDKConfiguration;->getMaxRetryAttempts()I

    move-result v9

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 399
    const-string v8, "flush_soon_delay_min"

    invoke-virtual {p1}, Lcom/kahuna/sdk/KahunaSDKConfiguration;->getFlushSoonDelayIntervalMinutes()D

    move-result-wide v10

    invoke-virtual {v4, v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 400
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 401
    .local v1, "flushSoonEventsArray":Lorg/json/JSONArray;
    invoke-virtual {p1}, Lcom/kahuna/sdk/KahunaSDKConfiguration;->getFlushSoonEvents()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 402
    .local v2, "flushSoonString":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 404
    .end local v2    # "flushSoonString":Ljava/lang/String;
    :cond_3
    const-string v8, "flush_soon_events"

    invoke-virtual {v4, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 406
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "sdk_configuration"

    instance-of v8, v4, Lorg/json/JSONObject;

    if-nez v8, :cond_4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    :goto_3
    invoke-interface {v9, v10, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .restart local v4    # "jsonObject":Lorg/json/JSONObject;
    :cond_4
    check-cast v4, Lorg/json/JSONObject;

    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    invoke-static {v4}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    goto :goto_3
.end method

.method protected static saveShouldInsertCreds(ZLandroid/content/Context;)V
    .locals 3
    .param p0, "shouldInsertCreds"    # Z
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    invoke-static {p1}, Lcom/kahuna/sdk/KahunaPreferences;->getKahunaPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 121
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "insert_credentials"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 122
    return-void
.end method

.method protected static saveSupportLibMissing(ZLandroid/content/Context;)V
    .locals 3
    .param p0, "libMissing"    # Z
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    invoke-static {p1}, Lcom/kahuna/sdk/KahunaPreferences;->getKahunaPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 101
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "support_library_missing"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 102
    return-void
.end method

.method protected static saveUserAttributes(Ljava/util/Map;Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "userAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "user_attributes"

    invoke-static {p0, p1, v0}, Lcom/kahuna/sdk/KahunaPreferences;->saveMapInternal(Ljava/util/Map;Landroid/content/Context;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method protected static saveUserCredentials(Ljava/util/Map;Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, "userCredentials":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "user_credentials"

    invoke-static {p0, p1, v0}, Lcom/kahuna/sdk/KahunaPreferences;->saveMapInternal(Ljava/util/Map;Landroid/content/Context;Ljava/lang/String;)V

    .line 135
    return-void
.end method
