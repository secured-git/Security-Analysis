.class public Lcom/kahuna/sdk/KahunaInAppManager;
.super Ljava/lang/Object;
.source "KahunaInAppManager.java"


# static fields
.field private static final CREDENTIAL_RESTRICTION_KEY:Ljava/lang/String; = "k_c"

.field private static final DEFAULT_EXPIRATION_OFFSET:J = 0x1c20L

.field private static final EXPIRATION_KEY:Ljava/lang/String; = "k_t"

.field private static final MESSAGE_KEY:Ljava/lang/String; = "k_m"

.field private static mManager:Lcom/kahuna/sdk/KahunaInAppManager;


# instance fields
.field private mPendingBundle:Landroid/os/Bundle;

.field private mPendingLock:Ljava/lang/Object;

.field private mPendingMessage:Ljava/lang/String;

.field private mPendingMessageExpirationTime:J

.field private mPendingRestrictions:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kahuna/sdk/KahunaInAppManager;->mPendingLock:Ljava/lang/Object;

    return-void
.end method

.method private static fireInAppMessageListener(Ljava/lang/String;JLandroid/os/Bundle;Lorg/json/JSONObject;)V
    .locals 17
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expirationTime"    # J
    .param p3, "deepLinkParams"    # Landroid/os/Bundle;
    .param p4, "restrictions"    # Lorg/json/JSONObject;

    .prologue
    .line 158
    invoke-static {}, Lcom/kahuna/sdk/KahunaInAppManager;->getSharedInstance()Lcom/kahuna/sdk/KahunaInAppManager;

    move-result-object v7

    .line 160
    .local v7, "manager":Lcom/kahuna/sdk/KahunaInAppManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long v2, v12, v14

    .line 161
    .local v2, "currentTime":J
    cmp-long v11, v2, p1

    if-gez v11, :cond_6

    .line 162
    const/4 v8, 0x0

    .line 163
    .local v8, "restricted":Z
    if-eqz p4, :cond_1

    .line 164
    const/4 v8, 0x1

    .line 165
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getUserCredentials()Ljava/util/Map;

    move-result-object v9

    .line 166
    .local v9, "userCreds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p4 .. p4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 167
    .local v5, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 169
    :try_start_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 170
    .local v6, "key":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 172
    .local v10, "value":Ljava/lang/String;
    invoke-static {v6}, Lcom/kahuna/sdk/KahunaUtils;->isNullOrEmptyString(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-static {v10}, Lcom/kahuna/sdk/KahunaUtils;->isNullOrEmptyString(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 176
    invoke-interface {v9, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-eqz v11, :cond_0

    .line 177
    const/4 v8, 0x0

    .line 188
    .end local v5    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v6    # "key":Ljava/lang/String;
    .end local v9    # "userCreds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "value":Ljava/lang/String;
    :cond_1
    if-eqz v8, :cond_3

    .line 189
    sget-boolean v11, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v11, :cond_2

    .line 190
    const-string v11, "KahunaAnalytics"

    const-string v12, "In-App Message recieved, but was restricted due to non-matching user not logged into the app"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    .end local v8    # "restricted":Z
    :cond_2
    :goto_1
    return-void

    .line 181
    .restart local v5    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v8    # "restricted":Z
    .restart local v9    # "userCreds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v4

    .line 183
    .local v4, "e":Ljava/lang/Exception;
    const/4 v8, 0x1

    .line 184
    goto :goto_0

    .line 195
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v9    # "userCreds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    sget-boolean v11, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v11, :cond_4

    .line 196
    const-string v11, "KahunaAnalytics"

    const-string v12, "Calling in-app message listener"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_4
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getCustomInAppMessageListener()Lcom/kahuna/sdk/KahunaInAppMessageListener;

    move-result-object v11

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-interface {v11, v0, v1}, Lcom/kahuna/sdk/KahunaInAppMessageListener;->onInAppMessageReceived(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 205
    .end local v8    # "restricted":Z
    :cond_5
    :goto_2
    iget-object v12, v7, Lcom/kahuna/sdk/KahunaInAppManager;->mPendingLock:Ljava/lang/Object;

    monitor-enter v12

    .line 206
    const/4 v11, 0x0

    :try_start_1
    iput-object v11, v7, Lcom/kahuna/sdk/KahunaInAppManager;->mPendingMessage:Ljava/lang/String;

    .line 207
    const/4 v11, 0x0

    iput-object v11, v7, Lcom/kahuna/sdk/KahunaInAppManager;->mPendingBundle:Landroid/os/Bundle;

    .line 208
    const-wide/16 v14, 0x0

    iput-wide v14, v7, Lcom/kahuna/sdk/KahunaInAppManager;->mPendingMessageExpirationTime:J

    .line 209
    const/4 v11, 0x0

    iput-object v11, v7, Lcom/kahuna/sdk/KahunaInAppManager;->mPendingRestrictions:Lorg/json/JSONObject;

    .line 210
    monitor-exit v12

    goto :goto_1

    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v11

    .line 201
    :cond_6
    sget-boolean v11, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v11, :cond_5

    .line 202
    const-string v11, "KahunaAnalytics"

    const-string v12, "Supressing in-app message due to expiration time"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static getSharedInstance()Lcom/kahuna/sdk/KahunaInAppManager;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/kahuna/sdk/KahunaInAppManager;->mManager:Lcom/kahuna/sdk/KahunaInAppManager;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/kahuna/sdk/KahunaInAppManager;

    invoke-direct {v0}, Lcom/kahuna/sdk/KahunaInAppManager;-><init>()V

    sput-object v0, Lcom/kahuna/sdk/KahunaInAppManager;->mManager:Lcom/kahuna/sdk/KahunaInAppManager;

    .line 49
    :cond_0
    sget-object v0, Lcom/kahuna/sdk/KahunaInAppManager;->mManager:Lcom/kahuna/sdk/KahunaInAppManager;

    return-object v0
.end method

.method protected static handleInAppMessageResponse(Lorg/json/JSONObject;)V
    .locals 18
    .param p0, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 83
    if-nez p0, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    :try_start_0
    const-string v12, "k_m"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 88
    .local v10, "message":Ljava/lang/String;
    const-string v12, "k_t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    const-wide/16 v16, 0x1c20

    add-long v14, v14, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v14, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 89
    .local v6, "expirationTimestamp":J
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 91
    .local v3, "deepLinkParams":Landroid/os/Bundle;
    invoke-static {v10}, Lcom/kahuna/sdk/KahunaUtils;->isNullOrEmptyString(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 92
    const-string v12, "k_m"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    const-string v12, "k_t"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 96
    const-string v12, "k_c"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 97
    .local v2, "credRestrictions":Lorg/json/JSONObject;
    if-nez v2, :cond_2

    const-string v12, "k_c"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 99
    sget-boolean v12, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v12, :cond_0

    .line 100
    const-string v12, "KahunaAnalytics"

    const-string v13, "In-App Message recieved, but was restricted due to non-matching user not logged into the app"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 152
    .end local v2    # "credRestrictions":Lorg/json/JSONObject;
    .end local v3    # "deepLinkParams":Landroid/os/Bundle;
    .end local v6    # "expirationTimestamp":J
    .end local v10    # "message":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 153
    .local v4, "e":Ljava/lang/Exception;
    const-string v12, "KahunaAnalytics"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Caught exception in handle InAppMessage Response handler: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 104
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "credRestrictions":Lorg/json/JSONObject;
    .restart local v3    # "deepLinkParams":Landroid/os/Bundle;
    .restart local v6    # "expirationTimestamp":J
    .restart local v10    # "message":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v12, "k_c"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 106
    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 107
    .local v5, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 108
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 109
    .local v8, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 110
    .local v11, "value":Ljava/lang/Object;
    if-eqz v11, :cond_3

    .line 112
    instance-of v12, v11, Ljava/lang/Boolean;

    if-eqz v12, :cond_4

    .line 113
    check-cast v11, Ljava/lang/Boolean;

    .end local v11    # "value":Ljava/lang/Object;
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-virtual {v3, v8, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 115
    .restart local v11    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v12, v11, Ljava/lang/Integer;

    if-eqz v12, :cond_5

    .line 116
    check-cast v11, Ljava/lang/Integer;

    .end local v11    # "value":Ljava/lang/Object;
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v3, v8, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 118
    .restart local v11    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v12, v11, Ljava/lang/Long;

    if-eqz v12, :cond_6

    .line 119
    check-cast v11, Ljava/lang/Long;

    .end local v11    # "value":Ljava/lang/Object;
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v3, v8, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    .line 121
    .restart local v11    # "value":Ljava/lang/Object;
    :cond_6
    instance-of v12, v11, Ljava/lang/Float;

    if-eqz v12, :cond_7

    .line 122
    check-cast v11, Ljava/lang/Float;

    .end local v11    # "value":Ljava/lang/Object;
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-virtual {v3, v8, v12}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_1

    .line 124
    .restart local v11    # "value":Ljava/lang/Object;
    :cond_7
    instance-of v12, v11, Ljava/lang/Double;

    if-eqz v12, :cond_8

    .line 125
    check-cast v11, Ljava/lang/Double;

    .end local v11    # "value":Ljava/lang/Object;
    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-virtual {v3, v8, v12, v13}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_1

    .line 128
    .restart local v11    # "value":Ljava/lang/Object;
    :cond_8
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v8, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 135
    .end local v8    # "key":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/Object;
    :cond_9
    invoke-static {}, Lcom/kahuna/sdk/KahunaInAppManager;->getSharedInstance()Lcom/kahuna/sdk/KahunaInAppManager;

    move-result-object v9

    .line 136
    .local v9, "manager":Lcom/kahuna/sdk/KahunaInAppManager;
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getCustomInAppMessageListener()Lcom/kahuna/sdk/KahunaInAppMessageListener;

    move-result-object v12

    if-eqz v12, :cond_a

    .line 137
    invoke-static {v10, v6, v7, v3, v2}, Lcom/kahuna/sdk/KahunaInAppManager;->fireInAppMessageListener(Ljava/lang/String;JLandroid/os/Bundle;Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 140
    :cond_a
    sget-boolean v12, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v12, :cond_b

    .line 141
    const-string v12, "KahunaAnalytics"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "In-App Message recieved, but no listener exists. Holding message until: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_b
    iget-object v13, v9, Lcom/kahuna/sdk/KahunaInAppManager;->mPendingLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 144
    :try_start_2
    iput-object v10, v9, Lcom/kahuna/sdk/KahunaInAppManager;->mPendingMessage:Ljava/lang/String;

    .line 145
    iput-object v3, v9, Lcom/kahuna/sdk/KahunaInAppManager;->mPendingBundle:Landroid/os/Bundle;

    .line 146
    iput-wide v6, v9, Lcom/kahuna/sdk/KahunaInAppManager;->mPendingMessageExpirationTime:J

    .line 147
    iput-object v2, v9, Lcom/kahuna/sdk/KahunaInAppManager;->mPendingRestrictions:Lorg/json/JSONObject;

    .line 148
    monitor-exit v13

    goto/16 :goto_0

    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v12
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method protected static hostAppNewActivityStarted()V
    .locals 10

    .prologue
    .line 54
    :try_start_0
    invoke-static {}, Lcom/kahuna/sdk/KahunaInAppManager;->getSharedInstance()Lcom/kahuna/sdk/KahunaInAppManager;

    move-result-object v1

    .line 56
    .local v1, "manager":Lcom/kahuna/sdk/KahunaInAppManager;
    const/4 v5, 0x0

    .line 57
    .local v5, "pendingMessage":Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 58
    .local v2, "expirationTimestamp":J
    const/4 v4, 0x0

    .line 59
    .local v4, "pendingDeepLinkParams":Landroid/os/Bundle;
    const/4 v6, 0x0

    .line 61
    .local v6, "pendingRestrictions":Lorg/json/JSONObject;
    iget-object v8, v1, Lcom/kahuna/sdk/KahunaInAppManager;->mPendingLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :try_start_1
    iget-object v5, v1, Lcom/kahuna/sdk/KahunaInAppManager;->mPendingMessage:Ljava/lang/String;

    .line 63
    iget-wide v2, v1, Lcom/kahuna/sdk/KahunaInAppManager;->mPendingMessageExpirationTime:J

    .line 64
    iget-object v4, v1, Lcom/kahuna/sdk/KahunaInAppManager;->mPendingBundle:Landroid/os/Bundle;

    .line 65
    iget-object v6, v1, Lcom/kahuna/sdk/KahunaInAppManager;->mPendingRestrictions:Lorg/json/JSONObject;

    .line 66
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    if-eqz v5, :cond_1

    :try_start_2
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getCustomInAppMessageListener()Lcom/kahuna/sdk/KahunaInAppMessageListener;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 71
    if-nez v4, :cond_0

    .line 72
    new-instance v4, Landroid/os/Bundle;

    .end local v4    # "pendingDeepLinkParams":Landroid/os/Bundle;
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 74
    .restart local v4    # "pendingDeepLinkParams":Landroid/os/Bundle;
    :cond_0
    invoke-static {v5, v2, v3, v4, v6}, Lcom/kahuna/sdk/KahunaInAppManager;->fireInAppMessageListener(Ljava/lang/String;JLandroid/os/Bundle;Lorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 80
    .end local v4    # "pendingDeepLinkParams":Landroid/os/Bundle;
    :cond_1
    :goto_0
    return-void

    .line 66
    .restart local v4    # "pendingDeepLinkParams":Landroid/os/Bundle;
    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 77
    .end local v4    # "pendingDeepLinkParams":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "KahunaAnalytics"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Caught exception when checking pending in-app message on activity start: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
