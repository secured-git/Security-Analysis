.class public Lcom/kahuna/sdk/KahunaNotificationTracker;
.super Ljava/lang/Object;
.source "KahunaNotificationTracker.java"


# static fields
.field private static final CLICKED_KEY:Ljava/lang/String; = "clicked_key"

.field private static final NOTIFICATION_ID_KEY:Ljava/lang/String; = "notif_id_key"

.field private static final TIMESTAMP_KEY:Ljava/lang/String; = "timestamp_key"


# instance fields
.field private mClicked:Z

.field private mNotificationId:I

.field private mTimestamp:J


# direct methods
.method protected constructor <init>(IJ)V
    .locals 4
    .param p1, "notificationId"    # I
    .param p2, "timestamp"    # J

    .prologue
    const/4 v2, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput v2, p0, Lcom/kahuna/sdk/KahunaNotificationTracker;->mNotificationId:I

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kahuna/sdk/KahunaNotificationTracker;->mTimestamp:J

    .line 39
    iput-boolean v2, p0, Lcom/kahuna/sdk/KahunaNotificationTracker;->mClicked:Z

    .line 42
    iput p1, p0, Lcom/kahuna/sdk/KahunaNotificationTracker;->mNotificationId:I

    .line 43
    iput-wide p2, p0, Lcom/kahuna/sdk/KahunaNotificationTracker;->mTimestamp:J

    .line 44
    iput-boolean v2, p0, Lcom/kahuna/sdk/KahunaNotificationTracker;->mClicked:Z

    .line 45
    return-void
.end method

.method protected static buildFromJSON(Lorg/json/JSONObject;)Lcom/kahuna/sdk/KahunaNotificationTracker;
    .locals 10
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 93
    if-nez p0, :cond_1

    .line 94
    const/4 v3, 0x0

    .line 110
    :cond_0
    :goto_0
    return-object v3

    .line 96
    :cond_1
    const/4 v3, 0x0

    .line 98
    .local v3, "notificationTracker":Lcom/kahuna/sdk/KahunaNotificationTracker;
    :try_start_0
    const-string v5, "notif_id_key"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 99
    .local v2, "notificationId":I
    const-string v5, "timestamp_key"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 100
    .local v6, "timestamp":J
    const-string v5, "clicked_key"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 102
    .local v0, "clicked":Z
    new-instance v4, Lcom/kahuna/sdk/KahunaNotificationTracker;

    invoke-direct {v4, v2, v6, v7}, Lcom/kahuna/sdk/KahunaNotificationTracker;-><init>(IJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v3    # "notificationTracker":Lcom/kahuna/sdk/KahunaNotificationTracker;
    .local v4, "notificationTracker":Lcom/kahuna/sdk/KahunaNotificationTracker;
    :try_start_1
    invoke-virtual {v4, v0}, Lcom/kahuna/sdk/KahunaNotificationTracker;->setNotficationClicked(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .line 108
    .end local v4    # "notificationTracker":Lcom/kahuna/sdk/KahunaNotificationTracker;
    .restart local v3    # "notificationTracker":Lcom/kahuna/sdk/KahunaNotificationTracker;
    goto :goto_0

    .line 105
    .end local v0    # "clicked":Z
    .end local v2    # "notificationId":I
    .end local v6    # "timestamp":J
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    sget-boolean v5, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v5, :cond_0

    .line 107
    const-string v5, "KahunaAnalytics"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception building NotificationTracker from JSONObject: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " andException:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 105
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "notificationTracker":Lcom/kahuna/sdk/KahunaNotificationTracker;
    .restart local v0    # "clicked":Z
    .restart local v2    # "notificationId":I
    .restart local v4    # "notificationTracker":Lcom/kahuna/sdk/KahunaNotificationTracker;
    .restart local v6    # "timestamp":J
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4    # "notificationTracker":Lcom/kahuna/sdk/KahunaNotificationTracker;
    .restart local v3    # "notificationTracker":Lcom/kahuna/sdk/KahunaNotificationTracker;
    goto :goto_1
.end method


# virtual methods
.method protected getJSONRepresentation()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 70
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 73
    .local v1, "obj":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "notif_id_key"

    iget v3, p0, Lcom/kahuna/sdk/KahunaNotificationTracker;->mNotificationId:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 74
    const-string v2, "timestamp_key"

    iget-wide v4, p0, Lcom/kahuna/sdk/KahunaNotificationTracker;->mTimestamp:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 75
    const-string v2, "clicked_key"

    iget-boolean v3, p0, Lcom/kahuna/sdk/KahunaNotificationTracker;->mClicked:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :cond_0
    :goto_0
    return-object v1

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v2, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v2, :cond_0

    .line 79
    const-string v2, "KahunaAnalytics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception getting JSON representation for NotificationTracker: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getNotificationClicked()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/kahuna/sdk/KahunaNotificationTracker;->mClicked:Z

    return v0
.end method

.method protected getNotificationId()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/kahuna/sdk/KahunaNotificationTracker;->mNotificationId:I

    return v0
.end method

.method protected getTimestamp()J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/kahuna/sdk/KahunaNotificationTracker;->mTimestamp:J

    return-wide v0
.end method

.method protected setNotficationClicked(Z)V
    .locals 0
    .param p1, "clicked"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/kahuna/sdk/KahunaNotificationTracker;->mClicked:Z

    .line 57
    return-void
.end method
