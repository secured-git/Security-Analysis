.class public Lcom/kahuna/sdk/KAEvent;
.super Ljava/lang/Object;
.source "KAEvent.java"


# static fields
.field private static final COUNT_KEY:Ljava/lang/String; = "count"

.field private static final EVENT_KEY:Ljava/lang/String; = "event"

.field private static final EVENT_TIME_KEY:Ljava/lang/String; = "time"

.field private static final LAUNCH_OVERRIDE_KEY:Ljava/lang/String; = "push_launch_override"

.field private static final LOCATION_KEY:Ljava/lang/String; = "location"

.field private static final TRACKING_ID_KEY:Ljava/lang/String; = "tracking_id"

.field private static final USER_ATTRIBUTES_KEY:Ljava/lang/String; = "user_info"

.field private static final USER_CREDENTIALS_KEY:Ljava/lang/String; = "credentials"

.field private static final VALUE_KEY:Ljava/lang/String; = "value"


# instance fields
.field private mCount:I

.field private mCreationDate:J

.field private mLocationString:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPushOverride:I

.field private mTrackingIdString:Ljava/lang/String;

.field private mUserAttributesString:Ljava/lang/String;

.field private mUserCredentialsString:Ljava/lang/String;

.field private mValue:I


# direct methods
.method protected constructor <init>(Lcom/kahuna/sdk/KAEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/kahuna/sdk/KAEvent;

    .prologue
    const/4 v0, -0x1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput v0, p0, Lcom/kahuna/sdk/KAEvent;->mCount:I

    .line 54
    iput v0, p0, Lcom/kahuna/sdk/KAEvent;->mValue:I

    .line 55
    iput v0, p0, Lcom/kahuna/sdk/KAEvent;->mPushOverride:I

    .line 77
    iget-object v0, p1, Lcom/kahuna/sdk/KAEvent;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/kahuna/sdk/KAEvent;->mName:Ljava/lang/String;

    .line 78
    iget-wide v0, p1, Lcom/kahuna/sdk/KAEvent;->mCreationDate:J

    iput-wide v0, p0, Lcom/kahuna/sdk/KAEvent;->mCreationDate:J

    .line 79
    iget-object v0, p1, Lcom/kahuna/sdk/KAEvent;->mUserCredentialsString:Ljava/lang/String;

    iput-object v0, p0, Lcom/kahuna/sdk/KAEvent;->mUserCredentialsString:Ljava/lang/String;

    .line 80
    iget-object v0, p1, Lcom/kahuna/sdk/KAEvent;->mUserAttributesString:Ljava/lang/String;

    iput-object v0, p0, Lcom/kahuna/sdk/KAEvent;->mUserAttributesString:Ljava/lang/String;

    .line 81
    iget-object v0, p1, Lcom/kahuna/sdk/KAEvent;->mTrackingIdString:Ljava/lang/String;

    iput-object v0, p0, Lcom/kahuna/sdk/KAEvent;->mTrackingIdString:Ljava/lang/String;

    .line 82
    iget-object v0, p1, Lcom/kahuna/sdk/KAEvent;->mLocationString:Ljava/lang/String;

    iput-object v0, p0, Lcom/kahuna/sdk/KAEvent;->mLocationString:Ljava/lang/String;

    .line 83
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;JLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "creationDate"    # J
    .param p7, "trackingId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p4, "userCredentials":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "userAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p6, "locationMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, -0x1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput v0, p0, Lcom/kahuna/sdk/KAEvent;->mCount:I

    .line 54
    iput v0, p0, Lcom/kahuna/sdk/KAEvent;->mValue:I

    .line 55
    iput v0, p0, Lcom/kahuna/sdk/KAEvent;->mPushOverride:I

    .line 59
    iput-object p1, p0, Lcom/kahuna/sdk/KAEvent;->mName:Ljava/lang/String;

    .line 60
    iput-wide p2, p0, Lcom/kahuna/sdk/KAEvent;->mCreationDate:J

    .line 61
    if-eqz p4, :cond_0

    .line 62
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/kahuna/sdk/KAEvent;->mUserCredentialsString:Ljava/lang/String;

    .line 65
    :cond_0
    if-eqz p5, :cond_1

    .line 66
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p5}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/kahuna/sdk/KAEvent;->mUserAttributesString:Ljava/lang/String;

    .line 69
    :cond_1
    if-eqz p6, :cond_2

    .line 70
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p6}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/kahuna/sdk/KAEvent;->mLocationString:Ljava/lang/String;

    .line 73
    :cond_2
    iput-object p7, p0, Lcom/kahuna/sdk/KAEvent;->mTrackingIdString:Ljava/lang/String;

    .line 74
    return-void

    .line 62
    :cond_3
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 66
    :cond_4
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 70
    :cond_5
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method protected static buildFromJSON(Lorg/json/JSONObject;)Lcom/kahuna/sdk/KAEvent;
    .locals 18
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 138
    if-nez p0, :cond_1

    .line 139
    const/4 v2, 0x0

    .line 210
    :cond_0
    :goto_0
    return-object v2

    .line 141
    :cond_1
    const/4 v12, 0x0

    .line 143
    .local v12, "event":Lcom/kahuna/sdk/KAEvent;
    :try_start_0
    const-string v6, "event"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, "name":Ljava/lang/String;
    const-string v6, "time"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 146
    .local v4, "creationTime":J
    const-string v6, "credentials"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 147
    .local v16, "userCreds":Ljava/lang/String;
    const-string v6, ""

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 148
    const/16 v16, 0x0

    .line 151
    :cond_2
    const-string v6, "user_info"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 152
    .local v15, "userAtts":Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 153
    const/4 v15, 0x0

    .line 156
    :cond_3
    const-string v6, "location"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 157
    .local v13, "locationData":Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 158
    const/4 v13, 0x0

    .line 161
    :cond_4
    const-string v6, "tracking_id"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 162
    .local v9, "trackingId":Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result v6

    if-eqz v6, :cond_5

    .line 163
    const/4 v9, 0x0

    .line 166
    :cond_5
    const/4 v10, -0x1

    .line 168
    .local v10, "count":I
    :try_start_1
    const-string v6, "count"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result v10

    .line 175
    :goto_1
    const/16 v17, -0x1

    .line 177
    .local v17, "value":I
    :try_start_2
    const-string v6, "value"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-result v17

    .line 184
    :goto_2
    const/4 v14, -0x1

    .line 186
    .local v14, "pushOverride":I
    :try_start_3
    const-string v6, "push_launch_override"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result v14

    .line 193
    :goto_3
    :try_start_4
    new-instance v2, Lcom/kahuna/sdk/KAEvent;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/kahuna/sdk/KAEvent;-><init>(Ljava/lang/String;JLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 194
    .end local v12    # "event":Lcom/kahuna/sdk/KAEvent;
    .local v2, "event":Lcom/kahuna/sdk/KAEvent;
    :try_start_5
    move-object/from16 v0, v16

    iput-object v0, v2, Lcom/kahuna/sdk/KAEvent;->mUserCredentialsString:Ljava/lang/String;

    .line 195
    iput-object v15, v2, Lcom/kahuna/sdk/KAEvent;->mUserAttributesString:Ljava/lang/String;

    .line 196
    iput-object v13, v2, Lcom/kahuna/sdk/KAEvent;->mLocationString:Ljava/lang/String;

    .line 197
    const/4 v6, -0x1

    if-eq v10, v6, :cond_6

    .line 198
    iput v10, v2, Lcom/kahuna/sdk/KAEvent;->mCount:I

    .line 199
    :cond_6
    const/4 v6, -0x1

    move/from16 v0, v17

    if-eq v0, v6, :cond_7

    .line 200
    move/from16 v0, v17

    iput v0, v2, Lcom/kahuna/sdk/KAEvent;->mValue:I

    .line 201
    :cond_7
    const/4 v6, -0x1

    if-eq v14, v6, :cond_0

    .line 202
    iput v14, v2, Lcom/kahuna/sdk/KAEvent;->mPushOverride:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 205
    :catch_0
    move-exception v11

    .line 206
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "creationTime":J
    .end local v9    # "trackingId":Ljava/lang/String;
    .end local v10    # "count":I
    .end local v13    # "locationData":Ljava/lang/String;
    .end local v14    # "pushOverride":I
    .end local v15    # "userAtts":Ljava/lang/String;
    .end local v16    # "userCreds":Ljava/lang/String;
    .end local v17    # "value":I
    .local v11, "e":Ljava/lang/Exception;
    :goto_4
    sget-boolean v6, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v6, :cond_0

    .line 207
    const-string v6, "KahunaAnalytics"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception building KAEvent from JSONObject: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " andException:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 170
    .end local v2    # "event":Lcom/kahuna/sdk/KAEvent;
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "creationTime":J
    .restart local v9    # "trackingId":Ljava/lang/String;
    .restart local v10    # "count":I
    .restart local v12    # "event":Lcom/kahuna/sdk/KAEvent;
    .restart local v13    # "locationData":Ljava/lang/String;
    .restart local v15    # "userAtts":Ljava/lang/String;
    .restart local v16    # "userCreds":Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 172
    .local v11, "e":Lorg/json/JSONException;
    const/4 v10, -0x1

    goto :goto_1

    .line 179
    .end local v11    # "e":Lorg/json/JSONException;
    .restart local v17    # "value":I
    :catch_2
    move-exception v11

    .line 181
    .restart local v11    # "e":Lorg/json/JSONException;
    const/16 v17, -0x1

    goto :goto_2

    .line 188
    .end local v11    # "e":Lorg/json/JSONException;
    .restart local v14    # "pushOverride":I
    :catch_3
    move-exception v11

    .line 190
    .restart local v11    # "e":Lorg/json/JSONException;
    const/4 v14, -0x1

    goto :goto_3

    .line 205
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "creationTime":J
    .end local v9    # "trackingId":Ljava/lang/String;
    .end local v10    # "count":I
    .end local v11    # "e":Lorg/json/JSONException;
    .end local v13    # "locationData":Ljava/lang/String;
    .end local v14    # "pushOverride":I
    .end local v15    # "userAtts":Ljava/lang/String;
    .end local v16    # "userCreds":Ljava/lang/String;
    .end local v17    # "value":I
    :catch_4
    move-exception v11

    move-object v2, v12

    .end local v12    # "event":Lcom/kahuna/sdk/KAEvent;
    .restart local v2    # "event":Lcom/kahuna/sdk/KAEvent;
    goto :goto_4
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 112
    instance-of v2, p1, Lcom/kahuna/sdk/KAEvent;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 113
    check-cast v0, Lcom/kahuna/sdk/KAEvent;

    .line 114
    .local v0, "other":Lcom/kahuna/sdk/KAEvent;
    iget-object v2, p0, Lcom/kahuna/sdk/KAEvent;->mName:Ljava/lang/String;

    invoke-static {v2}, Lcom/kahuna/sdk/KahunaUtils;->isNullOrEmptyString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/kahuna/sdk/KAEvent;->mName:Ljava/lang/String;

    invoke-static {v2}, Lcom/kahuna/sdk/KahunaUtils;->isNullOrEmptyString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 121
    .end local v0    # "other":Lcom/kahuna/sdk/KAEvent;
    :cond_0
    :goto_0
    return v1

    .line 116
    .restart local v0    # "other":Lcom/kahuna/sdk/KAEvent;
    :cond_1
    iget-object v2, p0, Lcom/kahuna/sdk/KAEvent;->mName:Ljava/lang/String;

    iget-object v3, v0, Lcom/kahuna/sdk/KAEvent;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/kahuna/sdk/KAEvent;->mCreationDate:J

    iget-wide v4, v0, Lcom/kahuna/sdk/KAEvent;->mCreationDate:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 117
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected getJSONRepresentation()Lorg/json/JSONObject;
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 220
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 223
    .local v1, "obj":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "event"

    iget-object v3, p0, Lcom/kahuna/sdk/KAEvent;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    const-string v2, "time"

    iget-wide v4, p0, Lcom/kahuna/sdk/KAEvent;->mCreationDate:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 226
    iget-object v2, p0, Lcom/kahuna/sdk/KAEvent;->mUserCredentialsString:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 227
    const-string v2, "credentials"

    new-instance v3, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/kahuna/sdk/KAEvent;->mUserCredentialsString:Ljava/lang/String;

    invoke-static {v3}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 230
    :cond_0
    iget-object v2, p0, Lcom/kahuna/sdk/KAEvent;->mUserAttributesString:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 231
    const-string v2, "user_info"

    new-instance v3, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/kahuna/sdk/KAEvent;->mUserAttributesString:Ljava/lang/String;

    invoke-static {v3}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    :cond_1
    iget-object v2, p0, Lcom/kahuna/sdk/KAEvent;->mLocationString:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 235
    const-string v2, "location"

    new-instance v3, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/kahuna/sdk/KAEvent;->mLocationString:Ljava/lang/String;

    invoke-static {v3}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 238
    :cond_2
    iget-object v2, p0, Lcom/kahuna/sdk/KAEvent;->mTrackingIdString:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 239
    const-string v2, "tracking_id"

    iget-object v3, p0, Lcom/kahuna/sdk/KAEvent;->mTrackingIdString:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    :cond_3
    iget v2, p0, Lcom/kahuna/sdk/KAEvent;->mCount:I

    if-eq v2, v6, :cond_4

    .line 243
    const-string v2, "count"

    iget v3, p0, Lcom/kahuna/sdk/KAEvent;->mCount:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 245
    :cond_4
    iget v2, p0, Lcom/kahuna/sdk/KAEvent;->mValue:I

    if-eq v2, v6, :cond_5

    .line 246
    const-string v2, "value"

    iget v3, p0, Lcom/kahuna/sdk/KAEvent;->mValue:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 248
    :cond_5
    iget v2, p0, Lcom/kahuna/sdk/KAEvent;->mPushOverride:I

    if-eq v2, v6, :cond_6

    .line 249
    const-string v2, "push_launch_override"

    iget v3, p0, Lcom/kahuna/sdk/KAEvent;->mPushOverride:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :cond_6
    :goto_0
    return-object v1

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v2, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v2, :cond_6

    .line 253
    const-string v2, "KahunaAnalytics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception getting JSON representation for KAEvent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/kahuna/sdk/KAEvent;->mName:Ljava/lang/String;

    return-object v0
.end method

.method protected setCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 103
    iput p1, p0, Lcom/kahuna/sdk/KAEvent;->mCount:I

    .line 104
    return-void
.end method

.method protected setPushClickedOverride()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    iput v0, p0, Lcom/kahuna/sdk/KAEvent;->mPushOverride:I

    .line 91
    return-void
.end method

.method protected setUserCredentials(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "userCredentials":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 95
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/kahuna/sdk/KAEvent;->mUserCredentialsString:Ljava/lang/String;

    .line 100
    :goto_1
    return-void

    .line 95
    :cond_0
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 98
    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/kahuna/sdk/KAEvent;->mUserCredentialsString:Ljava/lang/String;

    goto :goto_1
.end method

.method protected setValue(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 107
    iput p1, p0, Lcom/kahuna/sdk/KAEvent;->mValue:I

    .line 108
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KAEvent: name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kahuna/sdk/KAEvent;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " creationDate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/kahuna/sdk/KAEvent;->mCreationDate:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
