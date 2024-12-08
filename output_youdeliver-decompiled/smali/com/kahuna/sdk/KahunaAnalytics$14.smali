.class final Lcom/kahuna/sdk/KahunaAnalytics$14;
.super Ljava/lang/Object;
.source "KahunaAnalytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kahuna/sdk/KahunaAnalytics;->_internalTrackiBeaconEvent(Lcom/kahuna/sdk/KahunaAnalytics;Lcom/kahuna/sdk/location/KahunaIBeacon;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$beacon:Lcom/kahuna/sdk/location/KahunaIBeacon;

.field final synthetic val$status:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kahuna/sdk/location/KahunaIBeacon;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1063
    iput-object p1, p0, Lcom/kahuna/sdk/KahunaAnalytics$14;->val$beacon:Lcom/kahuna/sdk/location/KahunaIBeacon;

    iput-object p2, p0, Lcom/kahuna/sdk/KahunaAnalytics$14;->val$status:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v3, -0x1

    .line 1068
    :try_start_0
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getSharedInstance()Lcom/kahuna/sdk/KahunaAnalytics;

    move-result-object v9

    .line 1069
    .local v9, "instance":Lcom/kahuna/sdk/KahunaAnalytics;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1070
    .local v6, "locationMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "id"

    iget-object v2, p0, Lcom/kahuna/sdk/KahunaAnalytics$14;->val$beacon:Lcom/kahuna/sdk/location/KahunaIBeacon;

    invoke-virtual {v2}, Lcom/kahuna/sdk/location/KahunaIBeacon;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
    const-string v1, "status"

    iget-object v2, p0, Lcom/kahuna/sdk/KahunaAnalytics$14;->val$status:Ljava/lang/String;

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    const-string v1, "type"

    const-string v2, "beacon"

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    iget-object v1, p0, Lcom/kahuna/sdk/KahunaAnalytics$14;->val$beacon:Lcom/kahuna/sdk/location/KahunaIBeacon;

    invoke-virtual {v1}, Lcom/kahuna/sdk/location/KahunaIBeacon;->getMajor()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 1074
    const-string v1, "major"

    iget-object v2, p0, Lcom/kahuna/sdk/KahunaAnalytics$14;->val$beacon:Lcom/kahuna/sdk/location/KahunaIBeacon;

    invoke-virtual {v2}, Lcom/kahuna/sdk/location/KahunaIBeacon;->getMajor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    :cond_0
    iget-object v1, p0, Lcom/kahuna/sdk/KahunaAnalytics$14;->val$beacon:Lcom/kahuna/sdk/location/KahunaIBeacon;

    invoke-virtual {v1}, Lcom/kahuna/sdk/location/KahunaIBeacon;->getMinor()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 1077
    const-string v1, "minor"

    iget-object v2, p0, Lcom/kahuna/sdk/KahunaAnalytics$14;->val$beacon:Lcom/kahuna/sdk/location/KahunaIBeacon;

    invoke-virtual {v2}, Lcom/kahuna/sdk/location/KahunaIBeacon;->getMinor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    :cond_1
    new-instance v0, Lcom/kahuna/sdk/KAEvent;

    const-string v1, "k_user_location"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/kahuna/sdk/KAEvent;-><init>(Ljava/lang/String;JLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    .line 1080
    .local v0, "event":Lcom/kahuna/sdk/KAEvent;
    invoke-static {v9, v0}, Lcom/kahuna/sdk/KahunaAnalytics;->access$1300(Lcom/kahuna/sdk/KahunaAnalytics;Lcom/kahuna/sdk/KAEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1086
    .end local v0    # "event":Lcom/kahuna/sdk/KAEvent;
    .end local v6    # "locationMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v9    # "instance":Lcom/kahuna/sdk/KahunaAnalytics;
    :goto_0
    return-void

    .line 1082
    :catch_0
    move-exception v8

    .line 1084
    .local v8, "e":Ljava/lang/Exception;
    const-string v1, "KahunaAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handled exception in KahunaAnalytics.trackRegionMonitoringEvent(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
