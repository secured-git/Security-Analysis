.class Lcom/yopeso/lieferando/util/TrackingUtils$2;
.super Ljava/util/TimerTask;
.source "TrackingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/util/TrackingUtils;->trackSearchCathegory(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 809
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 817
    const/4 v1, 0x0

    .line 819
    .local v1, "event":Lcom/adjust/sdk/AdjustEvent;
    :try_start_0
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 820
    new-instance v2, Lcom/adjust/sdk/AdjustEvent;

    const-string v3, "i8iypj"

    invoke-direct {v2, v3}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 821
    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    .local v2, "event":Lcom/adjust/sdk/AdjustEvent;
    :try_start_1
    const-string v3, "actionValue"

    invoke-static {}, Lcom/yopeso/lieferando/util/TrackingUtils;->access$1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    invoke-static {v2}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 842
    .end local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    :cond_0
    :goto_0
    :try_start_2
    const-class v3, Lcom/yopeso/lieferando/util/TrackingUtils;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "trackSearchCathegory:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 843
    invoke-static {}, Lcom/yopeso/lieferando/util/TrackingUtils;->access$1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mjxjxj"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 842
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :goto_1
    return-void

    .line 824
    :cond_1
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v3

    if-nez v3, :cond_0

    .line 830
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v3

    if-nez v3, :cond_0

    .line 834
    new-instance v2, Lcom/adjust/sdk/AdjustEvent;

    const-string v3, "mjxjxj"

    invoke-direct {v2, v3}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 835
    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    .restart local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    :try_start_3
    const-string v3, "actionValue"

    .line 836
    invoke-static {}, Lcom/yopeso/lieferando/util/TrackingUtils;->access$1()Ljava/lang/String;

    move-result-object v4

    .line 835
    invoke-virtual {v2, v3, v4}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    invoke-static {v2}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v1, v2

    .end local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    goto :goto_0

    .line 844
    :catch_0
    move-exception v0

    .line 845
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 844
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    .restart local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    goto :goto_2
.end method
