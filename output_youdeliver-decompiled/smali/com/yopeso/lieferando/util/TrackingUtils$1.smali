.class Lcom/yopeso/lieferando/util/TrackingUtils$1;
.super Ljava/util/TimerTask;
.source "TrackingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/util/TrackingUtils;->trackSearchRestaurant(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 742
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 747
    const/4 v1, 0x0

    .line 749
    .local v1, "event":Lcom/adjust/sdk/AdjustEvent;
    :try_start_0
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 750
    new-instance v2, Lcom/adjust/sdk/AdjustEvent;

    const-string v3, "uib3hn"

    invoke-direct {v2, v3}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 751
    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    .local v2, "event":Lcom/adjust/sdk/AdjustEvent;
    :try_start_1
    const-string v3, "actionValue"

    .line 752
    invoke-static {}, Lcom/yopeso/lieferando/util/TrackingUtils;->access$0()Ljava/lang/String;

    move-result-object v4

    .line 751
    invoke-virtual {v2, v3, v4}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    invoke-static {v2}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 775
    .end local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    :cond_0
    :goto_0
    :try_start_2
    const-class v3, Lcom/yopeso/lieferando/util/TrackingUtils;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 776
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "trackSearchRestaurant:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/yopeso/lieferando/util/TrackingUtils;->access$0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 775
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :goto_1
    return-void

    .line 755
    :cond_1
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 756
    new-instance v2, Lcom/adjust/sdk/AdjustEvent;

    .line 757
    const-string v3, "867p6a"

    .line 756
    invoke-direct {v2, v3}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 759
    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    .restart local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    :try_start_3
    const-string v3, "actionValue"

    invoke-static {}, Lcom/yopeso/lieferando/util/TrackingUtils;->access$0()Ljava/lang/String;

    move-result-object v4

    .line 758
    invoke-virtual {v2, v3, v4}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    invoke-static {v2}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v1, v2

    .line 761
    .end local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    goto :goto_0

    .line 762
    :cond_2
    :try_start_4
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v3

    if-nez v3, :cond_0

    .line 766
    new-instance v2, Lcom/adjust/sdk/AdjustEvent;

    .line 767
    const-string v3, "fi8bhb"

    .line 766
    invoke-direct {v2, v3}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 769
    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    .restart local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    :try_start_5
    const-string v3, "actionValue"

    .line 770
    invoke-static {}, Lcom/yopeso/lieferando/util/TrackingUtils;->access$0()Ljava/lang/String;

    move-result-object v4

    .line 768
    invoke-virtual {v2, v3, v4}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    invoke-static {v2}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-object v1, v2

    .end local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    goto :goto_0

    .line 777
    :catch_0
    move-exception v0

    .line 778
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 777
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
