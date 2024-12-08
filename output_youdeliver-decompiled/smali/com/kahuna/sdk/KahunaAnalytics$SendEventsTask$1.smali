.class Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask$1;
.super Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;
.source "KahunaAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;


# direct methods
.method constructor <init>(Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;)V
    .locals 0

    .prologue
    .line 1708
    iput-object p1, p0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask$1;->this$1:Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;

    invoke-direct {p0}, Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 1713
    invoke-super {p0, p1, p2}, Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1714
    sget-boolean v0, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v0, :cond_0

    .line 1715
    const-string v0, "KahunaAnalytics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to send request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1717
    :cond_0
    iget-object v0, p0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask$1;->this$1:Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;

    iget-object v0, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    invoke-static {v0}, Lcom/kahuna/sdk/KahunaAnalytics;->access$2700(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1718
    :try_start_0
    iget-object v0, p0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask$1;->this$1:Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;

    iget-object v0, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/kahuna/sdk/KahunaAnalytics;->access$2802(Lcom/kahuna/sdk/KahunaAnalytics;Z)Z

    .line 1719
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1721
    iget-object v0, p0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask$1;->this$1:Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;

    iget-object v0, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    invoke-static {v0}, Lcom/kahuna/sdk/KahunaAnalytics;->access$4300(Lcom/kahuna/sdk/KahunaAnalytics;)V

    .line 1722
    return-void

    .line 1719
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 36
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1727
    const/16 v34, 0x0

    .line 1729
    .local v34, "success":Z
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-static/range {p1 .. p1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v24

    .line 1730
    .local v24, "j":Lorg/json/JSONObject;
    const-string v3, "success"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v34

    .line 1732
    if-eqz v34, :cond_2

    .line 1734
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask$1;->this$1:Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;

    iget-object v3, v3, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    invoke-static {v3}, Lcom/kahuna/sdk/KahunaAnalytics;->access$500(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1735
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask$1;->this$1:Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;

    iget-object v3, v3, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    invoke-static {v3}, Lcom/kahuna/sdk/KahunaAnalytics;->access$600(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask$1;->this$1:Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;

    iget-object v5, v5, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    invoke-static {v5}, Lcom/kahuna/sdk/KahunaAnalytics;->access$4200(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1737
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask$1;->this$1:Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;

    iget-object v3, v3, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    invoke-static {v3}, Lcom/kahuna/sdk/KahunaAnalytics;->access$600(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask$1;->this$1:Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;

    iget-object v5, v5, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    invoke-static {v5}, Lcom/kahuna/sdk/KahunaAnalytics;->access$000(Lcom/kahuna/sdk/KahunaAnalytics;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/kahuna/sdk/KahunaPreferences;->saveEvents(Ljava/util/List;Landroid/content/Context;)V

    .line 1738
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1740
    :try_start_2
    sget-boolean v3, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v3, :cond_0

    .line 1741
    const-string v3, "KahunaAnalytics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Number events submitted: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask$1;->this$1:Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;

    iget-object v5, v5, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    invoke-static {v5}, Lcom/kahuna/sdk/KahunaAnalytics;->access$4200(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask$1;->this$1:Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;

    iget-object v3, v3, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    invoke-static {v3}, Lcom/kahuna/sdk/KahunaAnalytics;->access$4200(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1744
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask$1;->this$1:Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;

    iget-object v3, v3, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/kahuna/sdk/KahunaAnalytics;->access$4202(Lcom/kahuna/sdk/KahunaAnalytics;Ljava/util/List;)Ljava/util/List;

    .line 1746
    sget-boolean v3, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v3, :cond_1

    .line 1747
    const-string v3, "KahunaAnalytics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Events let in Queue: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask$1;->this$1:Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;

    iget-object v5, v5, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    invoke-static {v5}, Lcom/kahuna/sdk/KahunaAnalytics;->access$600(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask$1;->this$1:Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;

    iget-object v3, v3, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v8, 0x3e8

    div-long/2addr v4, v8

    invoke-static {v3, v4, v5}, Lcom/kahuna/sdk/KahunaAnalytics;->access$1902(Lcom/kahuna/sdk/KahunaAnalytics;J)J

    .line 1752
    :cond_2
    sget-boolean v3, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v3, :cond_3

    .line 1753
    const-string v3, "KahunaAnalytics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "server reply: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    :cond_3
    const-string v3, "s"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v32

    .line 1758
    .local v32, "sendArray":Lorg/json/JSONArray;
    if-eqz v32, :cond_9

    .line 1759
    invoke-virtual/range {v32 .. v32}, Lorg/json/JSONArray;->length()I

    move-result v33

    .line 1760
    .local v33, "sendArraySize":I
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_0
    move/from16 v0, v22

    move/from16 v1, v33

    if-ge v0, v1, :cond_9

    .line 1761
    move-object/from16 v0, v32

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v18

    .line 1762
    .local v18, "flushItem":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/kahuna/sdk/KahunaUtils;->isNullOrEmptyString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1763
    const-string v3, "a"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1764
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getSharedInstance()Lcom/kahuna/sdk/KahunaAnalytics;

    move-result-object v3

    invoke-static {v3}, Lcom/kahuna/sdk/KahunaAnalytics;->access$2300(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/util/Map;

    move-result-object v7

    .line 1765
    .local v7, "savedAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/kahuna/sdk/KAEvent;

    const-string v3, "k_user_attributes"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v8, 0x3e8

    div-long/2addr v4, v8

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/kahuna/sdk/KAEvent;-><init>(Ljava/lang/String;JLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    .line 1766
    .local v2, "event":Lcom/kahuna/sdk/KAEvent;
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getSharedInstance()Lcom/kahuna/sdk/KahunaAnalytics;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/kahuna/sdk/KahunaAnalytics;->access$1300(Lcom/kahuna/sdk/KahunaAnalytics;Lcom/kahuna/sdk/KAEvent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1760
    .end local v2    # "event":Lcom/kahuna/sdk/KAEvent;
    .end local v7    # "savedAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 1738
    .end local v18    # "flushItem":Ljava/lang/String;
    .end local v22    # "i":I
    .end local v32    # "sendArray":Lorg/json/JSONArray;
    .end local v33    # "sendArraySize":I
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1853
    .end local v24    # "j":Lorg/json/JSONObject;
    :catch_0
    move-exception v12

    .line 1854
    .local v12, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v3, :cond_5

    .line 1855
    const-string v3, "KahunaAnalytics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caught exception in http response handler: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask$1;->this$1:Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;

    iget-object v3, v3, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    invoke-static {v3}, Lcom/kahuna/sdk/KahunaAnalytics;->access$2700(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1859
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask$1;->this$1:Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;

    iget-object v3, v3, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/kahuna/sdk/KahunaAnalytics;->access$2802(Lcom/kahuna/sdk/KahunaAnalytics;Z)Z

    .line 1860
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1862
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask$1;->this$1:Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;

    iget-object v3, v3, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    invoke-static {v3}, Lcom/kahuna/sdk/KahunaAnalytics;->access$4200(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1863
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask$1;->this$1:Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;

    iget-object v3, v3, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    invoke-static {v3}, Lcom/kahuna/sdk/KahunaAnalytics;->access$4200(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1864
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask$1;->this$1:Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;

    iget-object v3, v3, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/kahuna/sdk/KahunaAnalytics;->access$4202(Lcom/kahuna/sdk/KahunaAnalytics;Ljava/util/List;)Ljava/util/List;

    .line 1867
    :cond_6
    if-eqz v34, :cond_13

    .line 1869
    const/16 v30, 0x0

    .line 1870
    .local v30, "pendingEvents":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask$1;->this$1:Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;

    iget-object v3, v3, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    invoke-static {v3}, Lcom/kahuna/sdk/KahunaAnalytics;->access$500(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1871
    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask$1;->this$1:Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;

    iget-object v3, v3, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    invoke-static {v3}, Lcom/kahuna/sdk/KahunaAnalytics;->access$600(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_12

    const/16 v30, 0x1

    .line 1872
    :goto_2
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1874
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask$1;->this$1:Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;

    iget-object v3, v3, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    invoke-static {v3}, Lcom/kahuna/sdk/KahunaAnalytics;->access$1600(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1875
    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask$1;->this$1:Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;

    iget-object v3, v3, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    invoke-static {v3}, Lcom/kahuna/sdk/KahunaAnalytics;->access$1700(Lcom/kahuna/sdk/KahunaAnalytics;)Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 1876
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask$1;->this$1:Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;

    iget-object v3, v3, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    invoke-static {v3}, Lcom/kahuna/sdk/KahunaAnalytics;->access$1700(Lcom/kahuna/sdk/KahunaAnalytics;)Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;->cancel()V

    .line 1877
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask$1;->this$1:Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;

    iget-object v3, v3, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/kahuna/sdk/KahunaAnalytics;->access$1702(Lcom/kahuna/sdk/KahunaAnalytics;Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;)Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;

    .line 1880
    :cond_7
    if-eqz v30, :cond_8

    .line 1881
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask$1;->this$1:Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;

    iget-object v3, v3, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    new-instance v5, Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask$1;->this$1:Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;

    iget-object v6, v6, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    const/4 v8, 0x0

    invoke-direct {v5, v6, v8}, Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;-><init>(Lcom/kahuna/sdk/KahunaAnalytics;Lcom/kahuna/sdk/KahunaAnalytics$1;)V

    invoke-static {v3, v5}, Lcom/kahuna/sdk/KahunaAnalytics;->access$1702(Lcom/kahuna/sdk/KahunaAnalytics;Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;)Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;

    .line 1882
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask$1;->this$1:Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;

    iget-object v3, v3, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    invoke-static {v3}, Lcom/kahuna/sdk/KahunaAnalytics;->access$1700(Lcom/kahuna/sdk/KahunaAnalytics;)Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;

    move-result-object v3

    new-instance v5, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask$1;->this$1:Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;

    iget-object v6, v6, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    const/4 v8, 0x0

    invoke-direct {v5, v6, v8}, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;-><init>(Lcom/kahuna/sdk/KahunaAnalytics;Lcom/kahuna/sdk/KahunaAnalytics$1;)V

    const-wide/16 v8, 0x7d0

    invoke-virtual {v3, v5, v8, v9}, Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;->schedule(Ljava/util/TimerTask;J)V

    .line 1884
    :cond_8
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1889
    .end local v30    # "pendingEvents":Z
    :goto_3
    return-void

    .line 1773
    .restart local v24    # "j":Lorg/json/JSONObject;
    .restart local v32    # "sendArray":Lorg/json/JSONArray;
    :cond_9
    :try_start_8
    const-string v3, "c"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 1774
    .local v10, "configObject":Lorg/json/JSONObject;
    if-eqz v10, :cond_10

    .line 1775
    const-string v3, "v"

    const-wide/16 v4, 0x0

    invoke-virtual {v10, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v28

    .line 1776
    .local v28, "newVersion":J
    const-string v3, "t"

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    invoke-virtual {v10, v3, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v16

    .line 1777
    .local v16, "flushIntervalTime":D
    const-string v3, "n"

    const-wide/16 v4, 0x64

    invoke-virtual {v10, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 1778
    .local v14, "flushEventCount":J
    const-string v3, "fi"

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v35

    .line 1779
    .local v35, "triggerEventsArray":Lorg/json/JSONArray;
    const-string v3, "ro"

    const/4 v4, 0x5

    invoke-virtual {v10, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v31

    .line 1780
    .local v31, "retryOverride":I
    const-string v3, "fsd"

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    invoke-virtual {v10, v3, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v20

    .line 1781
    .local v20, "flushSoonDelayIntervalTime":D
    const-string v3, "fs"

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v19

    .line 1783
    .local v19, "flushSoonEventsArray":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask$1;->this$1:Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;

    iget-object v3, v3, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    new-instance v4, Lcom/kahuna/sdk/KahunaSDKConfiguration;

    invoke-direct {v4}, Lcom/kahuna/sdk/KahunaSDKConfiguration;-><init>()V

    invoke-static {v3, v4}, Lcom/kahuna/sdk/KahunaAnalytics;->access$3802(Lcom/kahuna/sdk/KahunaAnalytics;Lcom/kahuna/sdk/KahunaSDKConfiguration;)Lcom/kahuna/sdk/KahunaSDKConfiguration;

    .line 1784
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask$1;->this$1:Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;

    iget-object v3, v3, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    invoke-static {v3}, Lcom/kahuna/sdk/KahunaAnalytics;->access$3800(Lcom/kahuna/sdk/KahunaAnalytics;)Lcom/kahuna/sdk/KahunaSDKConfiguration;

    move-result-object v3

    move-wide/from16 v0, v28

    invoke-virtual {v3, v0, v1}, Lcom/kahuna/sdk/KahunaSDKConfiguration;->setVersion(J)V

    .line 1785
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask$1;->this$1:Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;

    iget-object v3, v3, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    invoke-static {v3}, Lcom/kahuna/sdk/KahunaAnalytics;->access$3800(Lcom/kahuna/sdk/KahunaAnalytics;)Lcom/kahuna/sdk/KahunaSDKConfiguration;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Lcom/kahuna/sdk/KahunaSDKConfiguration;->setFlushIntervalMinutes(D)V

    .line 1786
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask$1;->this$1:Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;

    iget-object v3, v3, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    invoke-static {v3}, Lcom/kahuna/sdk/KahunaAnalytics;->access$3800(Lcom/kahuna/sdk/KahunaAnalytics;)Lcom/kahuna/sdk/KahunaSDKConfiguration;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Lcom/kahuna/sdk/KahunaSDKConfiguration;->setFlushOnEventCount(J)V

    .line 1787
    if-eqz v35, :cond_c

    .line 1788
    new-instance v27, Ljava/util/HashSet;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashSet;-><init>()V

    .line 1790
    .local v27, "newTriggerEvents":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual/range {v35 .. v35}, Lorg/json/JSONArray;->length()I

    move-result v11

    .line 1791
    .local v11, "count":I
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_4
    move/from16 v0, v22

    if-ge v0, v11, :cond_b

    .line 1792
    move-object/from16 v0, v35

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v13

    .line 1793
    .local v13, "element":Ljava/lang/String;
    invoke-static {v13}, Lcom/kahuna/sdk/KahunaUtils;->isNullOrEmptyString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 1794
    move-object/from16 v0, v27

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1791
    :cond_a
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 1798
    .end local v13    # "element":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask$1;->this$1:Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;

    iget-object v3, v3, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    invoke-static {v3}, Lcom/kahuna/sdk/KahunaAnalytics;->access$3800(Lcom/kahuna/sdk/KahunaAnalytics;)Lcom/kahuna/sdk/KahunaSDKConfiguration;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Lcom/kahuna/sdk/KahunaSDKConfiguration;->setTriggerEvents(Ljava/util/Set;)V

    .line 1800
    .end local v11    # "count":I
    .end local v22    # "i":I
    .end local v27    # "newTriggerEvents":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask$1;->this$1:Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;

    iget-object v3, v3, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    invoke-static {v3}, Lcom/kahuna/sdk/KahunaAnalytics;->access$3800(Lcom/kahuna/sdk/KahunaAnalytics;)Lcom/kahuna/sdk/KahunaSDKConfiguration;

    move-result-object v3

    move/from16 v0, v31

    invoke-virtual {v3, v0}, Lcom/kahuna/sdk/KahunaSDKConfiguration;->setMaxRetryAttempts(I)V

    .line 1801
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask$1;->this$1:Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;

    iget-object v3, v3, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    invoke-static {v3}, Lcom/kahuna/sdk/KahunaAnalytics;->access$3800(Lcom/kahuna/sdk/KahunaAnalytics;)Lcom/kahuna/sdk/KahunaSDKConfiguration;

    move-result-object v3

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Lcom/kahuna/sdk/KahunaSDKConfiguration;->setFlushSoonDelayIntervalMinutes(D)V

    .line 1802
    if-eqz v19, :cond_f

    .line 1803
    new-instance v26, Ljava/util/HashSet;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashSet;-><init>()V

    .line 1805
    .local v26, "newFlushSoonEvents":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONArray;->length()I

    move-result v11

    .line 1806
    .restart local v11    # "count":I
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_5
    move/from16 v0, v22

    if-ge v0, v11, :cond_e

    .line 1807
    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v13

    .line 1808
    .restart local v13    # "element":Ljava/lang/String;
    invoke-static {v13}, Lcom/kahuna/sdk/KahunaUtils;->isNullOrEmptyString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 1809
    move-object/from16 v0, v26

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1806
    :cond_d
    add-int/lit8 v22, v22, 0x1

    goto :goto_5

    .line 1813
    .end local v13    # "element":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask$1;->this$1:Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;

    iget-object v3, v3, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    invoke-static {v3}, Lcom/kahuna/sdk/KahunaAnalytics;->access$3800(Lcom/kahuna/sdk/KahunaAnalytics;)Lcom/kahuna/sdk/KahunaSDKConfiguration;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Lcom/kahuna/sdk/KahunaSDKConfiguration;->setFlushSoonEvents(Ljava/util/Set;)V

    .line 1816
    .end local v11    # "count":I
    .end local v22    # "i":I
    .end local v26    # "newFlushSoonEvents":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask$1;->this$1:Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;

    iget-object v3, v3, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    invoke-static {v3}, Lcom/kahuna/sdk/KahunaAnalytics;->access$000(Lcom/kahuna/sdk/KahunaAnalytics;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask$1;->this$1:Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;

    iget-object v4, v4, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    invoke-static {v4}, Lcom/kahuna/sdk/KahunaAnalytics;->access$3800(Lcom/kahuna/sdk/KahunaAnalytics;)Lcom/kahuna/sdk/KahunaSDKConfiguration;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kahuna/sdk/KahunaPreferences;->saveSDKConfiguration(Landroid/content/Context;Lcom/kahuna/sdk/KahunaSDKConfiguration;)V

    .line 1818
    sget-boolean v3, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v3, :cond_10

    .line 1819
    const-string v3, "KahunaAnalytics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Updated SDK Config Version:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask$1;->this$1:Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;

    iget-object v5, v5, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    invoke-static {v5}, Lcom/kahuna/sdk/KahunaAnalytics;->access$3800(Lcom/kahuna/sdk/KahunaAnalytics;)Lcom/kahuna/sdk/KahunaSDKConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kahuna/sdk/KahunaSDKConfiguration;->getVersion()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " flushInterval: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask$1;->this$1:Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;

    iget-object v5, v5, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    invoke-static {v5}, Lcom/kahuna/sdk/KahunaAnalytics;->access$3800(Lcom/kahuna/sdk/KahunaAnalytics;)Lcom/kahuna/sdk/KahunaSDKConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kahuna/sdk/KahunaSDKConfiguration;->getFlushIntervalMinutes()D

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " flushEventCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask$1;->this$1:Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;

    iget-object v5, v5, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    invoke-static {v5}, Lcom/kahuna/sdk/KahunaAnalytics;->access$3800(Lcom/kahuna/sdk/KahunaAnalytics;)Lcom/kahuna/sdk/KahunaSDKConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kahuna/sdk/KahunaSDKConfiguration;->getFlushOnEventCount()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " events:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask$1;->this$1:Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;

    iget-object v5, v5, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    invoke-static {v5}, Lcom/kahuna/sdk/KahunaAnalytics;->access$3800(Lcom/kahuna/sdk/KahunaAnalytics;)Lcom/kahuna/sdk/KahunaSDKConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kahuna/sdk/KahunaSDKConfiguration;->getTriggerEvents()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " flushWithDelayTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask$1;->this$1:Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;

    iget-object v5, v5, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    invoke-static {v5}, Lcom/kahuna/sdk/KahunaAnalytics;->access$3800(Lcom/kahuna/sdk/KahunaAnalytics;)Lcom/kahuna/sdk/KahunaSDKConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kahuna/sdk/KahunaSDKConfiguration;->getFlushSoonDelayIntervalMinutes()D

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " delayEvents: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask$1;->this$1:Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;

    iget-object v5, v5, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    invoke-static {v5}, Lcom/kahuna/sdk/KahunaAnalytics;->access$3800(Lcom/kahuna/sdk/KahunaAnalytics;)Lcom/kahuna/sdk/KahunaSDKConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kahuna/sdk/KahunaSDKConfiguration;->getFlushSoonEvents()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    .end local v14    # "flushEventCount":J
    .end local v16    # "flushIntervalTime":D
    .end local v19    # "flushSoonEventsArray":Lorg/json/JSONArray;
    .end local v20    # "flushSoonDelayIntervalTime":D
    .end local v28    # "newVersion":J
    .end local v31    # "retryOverride":I
    .end local v35    # "triggerEventsArray":Lorg/json/JSONArray;
    :cond_10
    const-string v3, "iam"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v23

    .line 1827
    .local v23, "inAppMsgObject":Lorg/json/JSONObject;
    if-eqz v23, :cond_11

    .line 1828
    invoke-static/range {v23 .. v23}, Lcom/kahuna/sdk/KahunaInAppManager;->handleInAppMessageResponse(Lorg/json/JSONObject;)V

    .line 1832
    :cond_11
    const-string v3, "location"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    move-result-object v25

    .line 1833
    .local v25, "locationObject":Lorg/json/JSONObject;
    if-eqz v25, :cond_5

    .line 1835
    :try_start_9
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getSharedInstance()Lcom/kahuna/sdk/KahunaAnalytics;

    move-result-object v3

    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getSharedInstance()Lcom/kahuna/sdk/KahunaAnalytics;

    move-result-object v4

    invoke-static {v4}, Lcom/kahuna/sdk/KahunaAnalytics;->access$000(Lcom/kahuna/sdk/KahunaAnalytics;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-static {v3, v0, v4}, Lcom/kahuna/sdk/location/KahunaRegionManager;->processServerRegions(Lcom/kahuna/sdk/KahunaAnalytics;Lorg/json/JSONObject;Landroid/content/Context;)V

    .line 1836
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getSharedInstance()Lcom/kahuna/sdk/KahunaAnalytics;

    move-result-object v3

    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getSharedInstance()Lcom/kahuna/sdk/KahunaAnalytics;

    move-result-object v4

    invoke-static {v4}, Lcom/kahuna/sdk/KahunaAnalytics;->access$000(Lcom/kahuna/sdk/KahunaAnalytics;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-static {v3, v0, v4}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->processServerIBeacons(Lcom/kahuna/sdk/KahunaAnalytics;Lorg/json/JSONObject;Landroid/content/Context;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_1

    .line 1838
    :catch_1
    move-exception v12

    .line 1839
    .restart local v12    # "e":Ljava/lang/Exception;
    :try_start_a
    sget-boolean v3, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v3, :cond_5

    .line 1840
    const-string v3, "KahunaAnalytics"

    const-string v4, "Caught error when attepmting to to parse server location services command. If you are NOT using location services please ignore this error: "

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    const-string v3, "KahunaAnalytics"

    invoke-static {v3, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1844
    .end local v12    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v12

    .line 1845
    .local v12, "e":Ljava/lang/Error;
    sget-boolean v3, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v3, :cond_5

    .line 1846
    const-string v3, "KahunaAnalytics"

    const-string v4, "Caught error when attepmting to to parse server location services command. If you are NOT using location services please ignore this error: "

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    const-string v3, "KahunaAnalytics"

    invoke-static {v3, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_1

    .line 1860
    .end local v10    # "configObject":Lorg/json/JSONObject;
    .end local v12    # "e":Ljava/lang/Error;
    .end local v23    # "inAppMsgObject":Lorg/json/JSONObject;
    .end local v24    # "j":Lorg/json/JSONObject;
    .end local v25    # "locationObject":Lorg/json/JSONObject;
    .end local v32    # "sendArray":Lorg/json/JSONArray;
    :catchall_1
    move-exception v3

    :try_start_b
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw v3

    .line 1871
    .restart local v30    # "pendingEvents":Z
    :cond_12
    const/16 v30, 0x0

    goto/16 :goto_2

    .line 1872
    :catchall_2
    move-exception v3

    :try_start_c
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    throw v3

    .line 1884
    :catchall_3
    move-exception v3

    :try_start_d
    monitor-exit v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    throw v3

    .line 1887
    .end local v30    # "pendingEvents":Z
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask$1;->this$1:Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;

    iget-object v3, v3, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;->this$0:Lcom/kahuna/sdk/KahunaAnalytics;

    invoke-static {v3}, Lcom/kahuna/sdk/KahunaAnalytics;->access$4300(Lcom/kahuna/sdk/KahunaAnalytics;)V

    goto/16 :goto_3
.end method
