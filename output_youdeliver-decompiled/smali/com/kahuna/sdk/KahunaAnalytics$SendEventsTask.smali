.class Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;
.super Ljava/util/TimerTask;
.source "KahunaAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kahuna/sdk/KahunaAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendEventsTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kahuna/sdk/KahunaAnalytics;


# direct methods
.method private constructor <init>(Lcom/kahuna/sdk/KahunaAnalytics;)V
    .locals 0

    .prologue
    .line 1603
    iput-object p1, p0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kahuna/sdk/KahunaAnalytics;Lcom/kahuna/sdk/KahunaAnalytics$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kahuna/sdk/KahunaAnalytics;
    .param p2, "x1"    # Lcom/kahuna/sdk/KahunaAnalytics$1;

    .prologue
    .line 1603
    invoke-direct {p0, p1}, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;-><init>(Lcom/kahuna/sdk/KahunaAnalytics;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 1608
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/kahuna/sdk/KahunaAnalytics;->access$2700(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1609
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    move-object/from16 v17, v0

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/kahuna/sdk/KahunaAnalytics;->access$2802(Lcom/kahuna/sdk/KahunaAnalytics;Z)Z

    .line 1610
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1612
    :try_start_2
    new-instance v14, Lcom/kahuna/sdk/http/RequestParams;

    invoke-direct {v14}, Lcom/kahuna/sdk/http/RequestParams;-><init>()V

    .line 1613
    .local v14, "params":Lcom/kahuna/sdk/http/RequestParams;
    const-string v17, "key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/kahuna/sdk/KahunaAnalytics;->access$700(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lcom/kahuna/sdk/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1614
    const-string v17, "dev_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/kahuna/sdk/KahunaAnalytics;->access$800(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lcom/kahuna/sdk/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1615
    const-string v17, "app_name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/kahuna/sdk/KahunaAnalytics;->access$2900(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lcom/kahuna/sdk/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1616
    const-string v17, "app_ver"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/kahuna/sdk/KahunaAnalytics;->access$3000(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lcom/kahuna/sdk/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1617
    const-string v17, "os_version"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/kahuna/sdk/KahunaAnalytics;->access$3100(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lcom/kahuna/sdk/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1618
    const-string v17, "os_name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/kahuna/sdk/KahunaAnalytics;->access$3200(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lcom/kahuna/sdk/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1619
    const-string v17, "dev_name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/kahuna/sdk/KahunaAnalytics;->access$3300(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lcom/kahuna/sdk/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1620
    const-string v17, "client_time"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    div-long v20, v20, v22

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lcom/kahuna/sdk/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    const-string v17, "sdk_version"

    const-string v18, "489"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lcom/kahuna/sdk/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/kahuna/sdk/KahunaAnalytics;->access$3400(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/kahuna/sdk/KahunaUtils;->isNullOrEmptyString(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 1623
    const-string v17, "push_token"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/kahuna/sdk/KahunaAnalytics;->access$3400(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lcom/kahuna/sdk/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1624
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/kahuna/sdk/KahunaAnalytics;->access$3500(Lcom/kahuna/sdk/KahunaAnalytics;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 1625
    const-string v17, "support_lib_missing"

    const-string v18, "true"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lcom/kahuna/sdk/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1627
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/kahuna/sdk/KahunaAnalytics;->access$3600(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/kahuna/sdk/KahunaUtils;->isNullOrEmptyString(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/kahuna/sdk/KahunaAnalytics;->access$3700(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/kahuna/sdk/KahunaUtils;->isNullOrEmptyString(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 1628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/kahuna/sdk/KahunaAnalytics;->access$3600(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/kahuna/sdk/KahunaAnalytics;->access$3700(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lcom/kahuna/sdk/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1631
    :cond_2
    const-string v18, "env"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/kahuna/sdk/KahunaAnalytics;->access$900(Lcom/kahuna/sdk/KahunaAnalytics;)Z

    move-result v17

    if-eqz v17, :cond_8

    const-string v17, "s"

    :goto_0
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Lcom/kahuna/sdk/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1632
    const-string v17, "c"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/kahuna/sdk/KahunaAnalytics;->access$3800(Lcom/kahuna/sdk/KahunaAnalytics;)Lcom/kahuna/sdk/KahunaSDKConfiguration;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/kahuna/sdk/KahunaSDKConfiguration;->getVersion()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lcom/kahuna/sdk/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1634
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 1635
    .local v10, "featuresSupported":Lorg/json/JSONArray;
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->access$3900()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1636
    const-string v17, "iam"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1640
    :cond_3
    :try_start_3
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->access$4000()Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-static {}, Lcom/kahuna/sdk/location/KahunaRegionManager;->isDeviceReadyForRegionMonitoring()Z

    move-result v17

    if-eqz v17, :cond_a

    .line 1641
    const-string v17, "rm"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/kahuna/sdk/location/KahunaRegionManager;->getCurrentlyMonitoredRegions(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/util/Set;

    move-result-object v15

    .line 1643
    .local v15, "regionIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v15}, Ljava/util/Set;->size()I

    move-result v17

    if-lez v17, :cond_a

    .line 1644
    new-instance v16, Lorg/json/JSONArray;

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONArray;-><init>()V

    .line 1645
    .local v16, "regionIdsArray":Lorg/json/JSONArray;
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1646
    .local v13, "id":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 1664
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "id":Ljava/lang/String;
    .end local v15    # "regionIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v16    # "regionIdsArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v17

    .line 1672
    :cond_4
    :goto_2
    :try_start_4
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v17

    if-lez v17, :cond_5

    .line 1673
    const-string v18, "fsupported"

    instance-of v0, v10, Lorg/json/JSONArray;

    move/from16 v17, v0

    if-nez v17, :cond_e

    invoke-virtual {v10}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v17

    .end local v10    # "featuresSupported":Lorg/json/JSONArray;
    :goto_3
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Lcom/kahuna/sdk/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    :cond_5
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 1678
    .local v4, "array":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    move-object/from16 v17, v0

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {v17 .. v18}, Lcom/kahuna/sdk/KahunaAnalytics;->access$4202(Lcom/kahuna/sdk/KahunaAnalytics;Ljava/util/List;)Ljava/util/List;

    .line 1679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/kahuna/sdk/KahunaAnalytics;->access$500(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1680
    const/16 v17, 0x64

    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/kahuna/sdk/KahunaAnalytics;->access$600(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_f

    const/16 v9, 0x64

    .line 1682
    .local v9, "eventLimit":I
    :goto_4
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_5
    if-ge v11, v9, :cond_10

    .line 1683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/kahuna/sdk/KahunaAnalytics;->access$600(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/kahuna/sdk/KAEvent;

    .line 1684
    .local v8, "event":Lcom/kahuna/sdk/KAEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/kahuna/sdk/KahunaAnalytics;->access$4200(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1685
    invoke-virtual {v8}, Lcom/kahuna/sdk/KAEvent;->getJSONRepresentation()Lorg/json/JSONObject;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1682
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 1610
    .end local v4    # "array":Lorg/json/JSONArray;
    .end local v8    # "event":Lcom/kahuna/sdk/KAEvent;
    .end local v9    # "eventLimit":I
    .end local v11    # "i":I
    .end local v14    # "params":Lcom/kahuna/sdk/http/RequestParams;
    :catchall_0
    move-exception v17

    :try_start_6
    monitor-exit v18
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v17
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 1893
    :catch_1
    move-exception v7

    .line 1894
    .local v7, "e":Ljava/lang/Exception;
    sget-boolean v17, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v17, :cond_6

    .line 1895
    const-string v17, "KahunaAnalytics"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Caught exception in Send Events Task handler: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 1899
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/kahuna/sdk/KahunaAnalytics;->access$1600(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18

    .line 1900
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/kahuna/sdk/KahunaAnalytics;->access$1700(Lcom/kahuna/sdk/KahunaAnalytics;)Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;

    move-result-object v17

    if-eqz v17, :cond_7

    .line 1901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/kahuna/sdk/KahunaAnalytics;->access$1700(Lcom/kahuna/sdk/KahunaAnalytics;)Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;->cancel()V

    .line 1902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    move-object/from16 v17, v0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/kahuna/sdk/KahunaAnalytics;->access$1702(Lcom/kahuna/sdk/KahunaAnalytics;Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;)Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;

    .line 1904
    :cond_7
    monitor-exit v18
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 1906
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_6
    return-void

    .line 1631
    .restart local v14    # "params":Lcom/kahuna/sdk/http/RequestParams;
    :cond_8
    :try_start_9
    const-string v17, "p"
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_0

    .line 1648
    .restart local v10    # "featuresSupported":Lorg/json/JSONArray;
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v15    # "regionIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v16    # "regionIdsArray":Lorg/json/JSONArray;
    :cond_9
    :try_start_a
    const-string v18, "rm"

    move-object/from16 v0, v16

    instance-of v0, v0, Lorg/json/JSONArray;

    move/from16 v17, v0

    if-nez v17, :cond_b

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v17

    .end local v16    # "regionIdsArray":Lorg/json/JSONArray;
    :goto_7
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Lcom/kahuna/sdk/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1651
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v15    # "regionIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_a
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->access$4100()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-static {}, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->isDeviceReadyForActivityRecognition()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getSharedInstance()Lcom/kahuna/sdk/KahunaAnalytics;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->isDeviceReadyForIBeaconMonitoring(Lcom/kahuna/sdk/KahunaAnalytics;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 1653
    const-string v17, "bm"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1654
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getSharedInstance()Lcom/kahuna/sdk/KahunaAnalytics;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->getCurrentlyMonitorediBeacons(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/util/Set;

    move-result-object v5

    .line 1655
    .local v5, "beaconIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v17

    if-lez v17, :cond_4

    .line 1656
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 1657
    .local v6, "beaconIdsArray":Lorg/json/JSONArray;
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1658
    .restart local v13    # "id":Ljava/lang/String;
    invoke-virtual {v6, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_8

    .line 1667
    .end local v5    # "beaconIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "beaconIdsArray":Lorg/json/JSONArray;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "id":Ljava/lang/String;
    :catch_2
    move-exception v17

    goto/16 :goto_2

    .line 1648
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v15    # "regionIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v16    # "regionIdsArray":Lorg/json/JSONArray;
    :cond_b
    check-cast v16, Lorg/json/JSONArray;

    .end local v16    # "regionIdsArray":Lorg/json/JSONArray;
    invoke-static/range {v16 .. v16}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v17

    goto :goto_7

    .line 1660
    .end local v15    # "regionIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v5    # "beaconIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v6    # "beaconIdsArray":Lorg/json/JSONArray;
    :cond_c
    const-string v18, "bm"

    instance-of v0, v6, Lorg/json/JSONArray;

    move/from16 v17, v0

    if-nez v17, :cond_d

    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v17

    .end local v6    # "beaconIdsArray":Lorg/json/JSONArray;
    :goto_9
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Lcom/kahuna/sdk/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .restart local v6    # "beaconIdsArray":Lorg/json/JSONArray;
    :cond_d
    check-cast v6, Lorg/json/JSONArray;

    .end local v6    # "beaconIdsArray":Lorg/json/JSONArray;
    invoke-static {v6}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->toString(Lorg/json/JSONArray;)Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_a} :catch_2

    move-result-object v17

    goto :goto_9

    .line 1673
    .end local v5    # "beaconIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_e
    :try_start_b
    check-cast v10, Lorg/json/JSONArray;

    .end local v10    # "featuresSupported":Lorg/json/JSONArray;
    invoke-static {v10}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->toString(Lorg/json/JSONArray;)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    move-result-object v17

    goto/16 :goto_3

    .line 1680
    .restart local v4    # "array":Lorg/json/JSONArray;
    :cond_f
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/kahuna/sdk/KahunaAnalytics;->access$600(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v9

    goto/16 :goto_4

    .line 1687
    .restart local v9    # "eventLimit":I
    .restart local v11    # "i":I
    :cond_10
    monitor-exit v18
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 1689
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/kahuna/sdk/KahunaAnalytics;->access$4200(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    if-nez v17, :cond_12

    .line 1691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/kahuna/sdk/KahunaAnalytics;->access$2700(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    .line 1692
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    move-object/from16 v17, v0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/kahuna/sdk/KahunaAnalytics;->access$2802(Lcom/kahuna/sdk/KahunaAnalytics;Z)Z

    .line 1693
    monitor-exit v18
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 1694
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/kahuna/sdk/KahunaAnalytics;->access$1600(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    .line 1695
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/kahuna/sdk/KahunaAnalytics;->access$1700(Lcom/kahuna/sdk/KahunaAnalytics;)Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;

    move-result-object v17

    if-eqz v17, :cond_11

    .line 1696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/kahuna/sdk/KahunaAnalytics;->access$1700(Lcom/kahuna/sdk/KahunaAnalytics;)Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;->cancel()V

    .line 1697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    move-object/from16 v17, v0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/kahuna/sdk/KahunaAnalytics;->access$1702(Lcom/kahuna/sdk/KahunaAnalytics;Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;)Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;

    .line 1699
    :cond_11
    monitor-exit v18

    goto/16 :goto_6

    :catchall_1
    move-exception v17

    monitor-exit v18
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :try_start_11
    throw v17
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1

    .line 1687
    .end local v9    # "eventLimit":I
    .end local v11    # "i":I
    :catchall_2
    move-exception v17

    :try_start_12
    monitor-exit v18
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    :try_start_13
    throw v17
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1

    .line 1693
    .restart local v9    # "eventLimit":I
    .restart local v11    # "i":I
    :catchall_3
    move-exception v17

    :try_start_14
    monitor-exit v18
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    :try_start_15
    throw v17

    .line 1703
    :cond_12
    const-string v18, "events"

    instance-of v0, v4, Lorg/json/JSONArray;

    move/from16 v17, v0

    if-nez v17, :cond_14

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v17

    .end local v4    # "array":Lorg/json/JSONArray;
    :goto_a
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Lcom/kahuna/sdk/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1705
    sget-boolean v17, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v17, :cond_13

    .line 1706
    const-string v17, "KahunaAnalytics"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Sending request: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/kahuna/sdk/KahunaAnalytics;->access$4400(Lcom/kahuna/sdk/KahunaAnalytics;)Lcom/kahuna/sdk/http/AsyncHttpClient;

    move-result-object v17

    const-string v18, "https://tap-nexus.appspot.com/log"

    new-instance v19, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask$1;-><init>(Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v14, v2}, Lcom/kahuna/sdk/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/kahuna/sdk/http/RequestParams;Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;)V

    goto/16 :goto_6

    .line 1703
    .restart local v4    # "array":Lorg/json/JSONArray;
    :cond_14
    check-cast v4, Lorg/json/JSONArray;

    .end local v4    # "array":Lorg/json/JSONArray;
    invoke-static {v4}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->toString(Lorg/json/JSONArray;)Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_1

    move-result-object v17

    goto :goto_a

    .line 1904
    .end local v9    # "eventLimit":I
    .end local v11    # "i":I
    .end local v14    # "params":Lcom/kahuna/sdk/http/RequestParams;
    .restart local v7    # "e":Ljava/lang/Exception;
    :catchall_4
    move-exception v17

    :try_start_16
    monitor-exit v18
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    throw v17
.end method
