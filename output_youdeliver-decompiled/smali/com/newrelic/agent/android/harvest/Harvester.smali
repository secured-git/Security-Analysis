.class public Lcom/newrelic/agent/android/harvest/Harvester;
.super Ljava/lang/Object;
.source "Harvester.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newrelic/agent/android/harvest/Harvester$1;,
        Lcom/newrelic/agent/android/harvest/Harvester$State;
    }
.end annotation


# instance fields
.field private agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

.field private configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

.field private harvestConnection:Lcom/newrelic/agent/android/harvest/HarvestConnection;

.field private harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

.field private final harvestListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;",
            ">;"
        }
    .end annotation
.end field

.field private final log:Lcom/newrelic/agent/android/logging/AgentLog;

.field private state:Lcom/newrelic/agent/android/harvest/Harvester$State;

.field protected stateChanged:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    .line 52
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvester$State;->UNINITIALIZED:Lcom/newrelic/agent/android/harvest/Harvester$State;

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->state:Lcom/newrelic/agent/android/harvest/Harvester$State;

    .line 62
    invoke-static {}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getDefaultHarvestConfiguration()Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestListeners:Ljava/util/Collection;

    return-void
.end method

.method private changeState(Lcom/newrelic/agent/android/harvest/Harvester$State;)V
    .locals 3
    .param p1, "newState"    # Lcom/newrelic/agent/android/harvest/Harvester$State;

    .prologue
    .line 409
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Harvester changing state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->state:Lcom/newrelic/agent/android/harvest/Harvester$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->state:Lcom/newrelic/agent/android/harvest/Harvester$State;

    sget-object v1, Lcom/newrelic/agent/android/harvest/Harvester$State;->CONNECTED:Lcom/newrelic/agent/android/harvest/Harvester$State;

    if-ne v0, v1, :cond_0

    .line 412
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvester$State;->DISCONNECTED:Lcom/newrelic/agent/android/harvest/Harvester$State;

    if-ne p1, v0, :cond_1

    .line 413
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->fireOnHarvestDisconnected()V

    .line 418
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/Harvester;->state:Lcom/newrelic/agent/android/harvest/Harvester$State;

    .line 419
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->stateChanged:Z

    .line 420
    return-void

    .line 414
    :cond_1
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvester$State;->DISABLED:Lcom/newrelic/agent/android/harvest/Harvester$State;

    if-ne p1, v0, :cond_0

    .line 415
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->fireOnHarvestDisabled()V

    goto :goto_0
.end method

.method private configureHarvester(Lcom/newrelic/agent/android/harvest/HarvestConfiguration;)V
    .locals 2
    .param p1, "harvestConfiguration"    # Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    .prologue
    .line 402
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->reconfigure(Lcom/newrelic/agent/android/harvest/HarvestConfiguration;)V

    .line 403
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvester;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getDataToken()Lcom/newrelic/agent/android/harvest/DataToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/HarvestData;->setDataToken(Lcom/newrelic/agent/android/harvest/DataToken;)V

    .line 404
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->setHarvestConfiguration(Lcom/newrelic/agent/android/harvest/HarvestConfiguration;)V

    .line 405
    return-void
.end method

.method private fireOnHarvest()V
    .locals 5

    .prologue
    .line 610
    :try_start_0
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->getHarvestListeners()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    .line 611
    .local v1, "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    invoke-interface {v1}, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;->onHarvest()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 613
    .end local v1    # "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 614
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v4, "Error in fireOnHarvest"

    invoke-interface {v3, v4, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 615
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    .line 617
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private fireOnHarvestBefore()V
    .locals 5

    .prologue
    .line 574
    :try_start_0
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->getHarvestListeners()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    .line 575
    .local v1, "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    invoke-interface {v1}, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;->onHarvestBefore()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 577
    .end local v1    # "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 578
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v4, "Error in fireOnHarvestBefore"

    invoke-interface {v3, v4, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 579
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    .line 581
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private fireOnHarvestComplete()V
    .locals 5

    .prologue
    .line 682
    :try_start_0
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->getHarvestListeners()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    .line 683
    .local v1, "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    invoke-interface {v1}, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;->onHarvestComplete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 685
    .end local v1    # "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 686
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v4, "Error in fireOnHarvestComplete"

    invoke-interface {v3, v4, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 687
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    .line 689
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private fireOnHarvestConnected()V
    .locals 5

    .prologue
    .line 694
    :try_start_0
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->getHarvestListeners()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    .line 695
    .local v1, "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    invoke-interface {v1}, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;->onHarvestConnected()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 697
    .end local v1    # "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 698
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v4, "Error in fireOnHarvestConnected"

    invoke-interface {v3, v4, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 699
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    .line 701
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private fireOnHarvestDisabled()V
    .locals 5

    .prologue
    .line 634
    :try_start_0
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->getHarvestListeners()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    .line 635
    .local v1, "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    invoke-interface {v1}, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;->onHarvestDisabled()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 637
    .end local v1    # "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 638
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v4, "Error in fireOnHarvestDisabled"

    invoke-interface {v3, v4, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 639
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    .line 641
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private fireOnHarvestDisconnected()V
    .locals 5

    .prologue
    .line 646
    :try_start_0
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->getHarvestListeners()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    .line 647
    .local v1, "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    invoke-interface {v1}, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;->onHarvestDisconnected()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 649
    .end local v1    # "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 650
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v4, "Error in fireOnHarvestDisconnected"

    invoke-interface {v3, v4, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 651
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    .line 653
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private fireOnHarvestError()V
    .locals 5

    .prologue
    .line 658
    :try_start_0
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->getHarvestListeners()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    .line 659
    .local v1, "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    invoke-interface {v1}, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;->onHarvestError()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 661
    .end local v1    # "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 662
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v4, "Error in fireOnHarvestError"

    invoke-interface {v3, v4, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 663
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    .line 665
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private fireOnHarvestFinalize()V
    .locals 5

    .prologue
    .line 622
    :try_start_0
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->getHarvestListeners()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    .line 623
    .local v1, "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    invoke-interface {v1}, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;->onHarvestFinalize()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 625
    .end local v1    # "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 626
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v4, "Error in fireOnHarvestFinalize"

    invoke-interface {v3, v4, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 627
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    .line 629
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private fireOnHarvestSendFailed()V
    .locals 5

    .prologue
    .line 670
    :try_start_0
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->getHarvestListeners()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    .line 671
    .local v1, "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    invoke-interface {v1}, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;->onHarvestSendFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 673
    .end local v1    # "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 674
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v4, "Error in fireOnHarvestSendFailed"

    invoke-interface {v3, v4, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 675
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    .line 677
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private fireOnHarvestStart()V
    .locals 5

    .prologue
    .line 586
    :try_start_0
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->getHarvestListeners()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    .line 587
    .local v1, "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    invoke-interface {v1}, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;->onHarvestStart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 589
    .end local v1    # "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 590
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v4, "Error in fireOnHarvestStart"

    invoke-interface {v3, v4, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 591
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    .line 593
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private fireOnHarvestStop()V
    .locals 5

    .prologue
    .line 598
    :try_start_0
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->getHarvestListeners()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    .line 599
    .local v1, "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    invoke-interface {v1}, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;->onHarvestStop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 601
    .end local v1    # "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 602
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v4, "Error in fireOnHarvestStop"

    invoke-interface {v3, v4, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 603
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    .line 605
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private getHarvestListeners()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;",
            ">;"
        }
    .end annotation

    .prologue
    .line 708
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestListeners:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private parseHarvesterConfiguration(Lcom/newrelic/agent/android/harvest/HarvestResponse;)Lcom/newrelic/agent/android/harvest/HarvestConfiguration;
    .locals 8
    .param p1, "response"    # Lcom/newrelic/agent/android/harvest/HarvestResponse;

    .prologue
    .line 388
    new-instance v4, Lcom/newrelic/com/google/gson/GsonBuilder;

    invoke-direct {v4}, Lcom/newrelic/com/google/gson/GsonBuilder;-><init>()V

    .line 389
    .local v4, "gsonBuilder":Lcom/newrelic/com/google/gson/GsonBuilder;
    const-class v5, Lcom/newrelic/agent/android/activity/config/ActivityTraceConfiguration;

    new-instance v6, Lcom/newrelic/agent/android/activity/config/ActivityTraceConfigurationDeserializer;

    invoke-direct {v6}, Lcom/newrelic/agent/android/activity/config/ActivityTraceConfigurationDeserializer;-><init>()V

    invoke-virtual {v4, v5, v6}, Lcom/newrelic/com/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/newrelic/com/google/gson/GsonBuilder;

    .line 390
    invoke-virtual {v4}, Lcom/newrelic/com/google/gson/GsonBuilder;->create()Lcom/newrelic/com/google/gson/Gson;

    move-result-object v3

    .line 391
    .local v3, "gson":Lcom/newrelic/com/google/gson/Gson;
    const/4 v1, 0x0

    .line 393
    .local v1, "config":Lcom/newrelic/agent/android/harvest/HarvestConfiguration;
    :try_start_0
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/HarvestResponse;->getResponseBody()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {v3, v5, v6}, Lcom/newrelic/com/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    move-object v1, v0
    :try_end_0
    .catch Lcom/newrelic/com/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    :goto_0
    return-object v1

    .line 394
    :catch_0
    move-exception v2

    .line 395
    .local v2, "e":Lcom/newrelic/com/google/gson/JsonSyntaxException;
    iget-object v5, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to parse collector configuration: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/newrelic/com/google/gson/JsonSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 396
    invoke-static {v2}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private varargs stateIn(Lcom/newrelic/agent/android/harvest/Harvester$State;[Lcom/newrelic/agent/android/harvest/Harvester$State;)Z
    .locals 5
    .param p1, "testState"    # Lcom/newrelic/agent/android/harvest/Harvester$State;
    .param p2, "legalStates"    # [Lcom/newrelic/agent/android/harvest/Harvester$State;

    .prologue
    .line 424
    move-object v0, p2

    .local v0, "arr$":[Lcom/newrelic/agent/android/harvest/Harvester$State;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 425
    .local v3, "state":Lcom/newrelic/agent/android/harvest/Harvester$State;
    if-ne p1, v3, :cond_0

    .line 426
    const/4 v4, 0x1

    .line 427
    .end local v3    # "state":Lcom/newrelic/agent/android/harvest/Harvester$State;
    :goto_1
    return v4

    .line 424
    .restart local v3    # "state":Lcom/newrelic/agent/android/harvest/Harvester$State;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 427
    .end local v3    # "state":Lcom/newrelic/agent/android/harvest/Harvester$State;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public addHarvestListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)V
    .locals 2
    .param p1, "harvestAware"    # Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    .prologue
    .line 449
    if-nez p1, :cond_0

    .line 450
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "Can\'t add null harvest listener"

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 451
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 460
    :goto_0
    return-void

    .line 455
    :cond_0
    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestListeners:Ljava/util/Collection;

    monitor-enter v1

    .line 456
    :try_start_0
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 457
    monitor-exit v1

    goto :goto_0

    .line 459
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 458
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 459
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected connected()V
    .locals 10

    .prologue
    .line 192
    iget-object v5, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v6, "Harvester: connected"

    invoke-interface {v5, v6}, Lcom/newrelic/agent/android/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 193
    iget-object v5, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Harvester: Sending "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    invoke-virtual {v7}, Lcom/newrelic/agent/android/harvest/HarvestData;->getHttpTransactions()Lcom/newrelic/agent/android/harvest/HttpTransactions;

    move-result-object v7

    invoke-virtual {v7}, Lcom/newrelic/agent/android/harvest/HttpTransactions;->count()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " HTTP transactions."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/newrelic/agent/android/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 194
    iget-object v5, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Harvester: Sending "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    invoke-virtual {v7}, Lcom/newrelic/agent/android/harvest/HarvestData;->getHttpErrors()Lcom/newrelic/agent/android/harvest/HttpErrors;

    move-result-object v7

    invoke-virtual {v7}, Lcom/newrelic/agent/android/harvest/HttpErrors;->count()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " HTTP errors."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/newrelic/agent/android/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 195
    iget-object v5, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Harvester: Sending "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    invoke-virtual {v7}, Lcom/newrelic/agent/android/harvest/HarvestData;->getActivityTraces()Lcom/newrelic/agent/android/harvest/ActivityTraces;

    move-result-object v7

    invoke-virtual {v7}, Lcom/newrelic/agent/android/harvest/ActivityTraces;->count()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " activity traces."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/newrelic/agent/android/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 198
    iget-object v5, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    iget-object v6, p0, Lcom/newrelic/agent/android/harvest/Harvester;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v6}, Lcom/newrelic/agent/android/AgentConfiguration;->getEnableAnalyticsEvents()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/newrelic/agent/android/harvest/HarvestData;->setAnalyticsEnabled(Z)V

    .line 199
    iget-object v5, p0, Lcom/newrelic/agent/android/harvest/Harvester;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v5}, Lcom/newrelic/agent/android/AgentConfiguration;->getEnableAnalyticsEvents()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/newrelic/agent/android/FeatureFlag;->AnalyticsEvents:Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {v5}, Lcom/newrelic/agent/android/FeatureFlag;->featureEnabled(Lcom/newrelic/agent/android/FeatureFlag;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 202
    invoke-static {}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getInstance()Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getEventManager()Lcom/newrelic/agent/android/analytics/EventManager;

    move-result-object v1

    .line 203
    .local v1, "eventManager":Lcom/newrelic/agent/android/analytics/EventManager;
    invoke-interface {v1}, Lcom/newrelic/agent/android/analytics/EventManager;->isTransmitRequired()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 208
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 209
    .local v4, "sessionAttributes":Ljava/util/Set;, "Ljava/util/Set<Lcom/newrelic/agent/android/analytics/AnalyticAttribute;>;"
    invoke-static {}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getInstance()Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getSystemAttributes()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 210
    invoke-static {}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getInstance()Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getUserAttributes()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 211
    iget-object v5, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    invoke-virtual {v5, v4}, Lcom/newrelic/agent/android/harvest/HarvestData;->setSessionAttributes(Ljava/util/Set;)V

    .line 213
    iget-object v5, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Harvester: Sending "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    invoke-virtual {v7}, Lcom/newrelic/agent/android/harvest/HarvestData;->getSessionAttributes()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " session attributes."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/newrelic/agent/android/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 215
    invoke-interface {v1}, Lcom/newrelic/agent/android/analytics/EventManager;->getQueuedEvents()Ljava/util/Collection;

    move-result-object v2

    .line 216
    .local v2, "events":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/newrelic/agent/android/analytics/AnalyticsEvent;>;"
    iget-object v5, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    invoke-virtual {v5, v2}, Lcom/newrelic/agent/android/harvest/HarvestData;->setAnalyticsEvents(Ljava/util/Collection;)V

    .line 218
    invoke-interface {v1}, Lcom/newrelic/agent/android/analytics/EventManager;->empty()V

    .line 221
    .end local v2    # "events":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/newrelic/agent/android/analytics/AnalyticsEvent;>;"
    .end local v4    # "sessionAttributes":Ljava/util/Set;, "Ljava/util/Set<Lcom/newrelic/agent/android/analytics/AnalyticAttribute;>;"
    :cond_0
    iget-object v5, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Harvester: Sending "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    invoke-virtual {v7}, Lcom/newrelic/agent/android/harvest/HarvestData;->getAnalyticsEvents()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " analytics events."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/newrelic/agent/android/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 224
    .end local v1    # "eventManager":Lcom/newrelic/agent/android/analytics/EventManager;
    :cond_1
    iget-object v5, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestConnection:Lcom/newrelic/agent/android/harvest/HarvestConnection;

    iget-object v6, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    invoke-virtual {v5, v6}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->sendData(Lcom/newrelic/agent/android/harvest/type/Harvestable;)Lcom/newrelic/agent/android/harvest/HarvestResponse;

    move-result-object v3

    .line 227
    .local v3, "response":Lcom/newrelic/agent/android/harvest/HarvestResponse;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/newrelic/agent/android/harvest/HarvestResponse;->isUnknown()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 228
    :cond_2
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->fireOnHarvestSendFailed()V

    .line 278
    :goto_0
    return-void

    .line 232
    :cond_3
    iget-object v5, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    invoke-virtual {v5}, Lcom/newrelic/agent/android/harvest/HarvestData;->reset()V

    .line 234
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v5

    const-string v6, "Supportability/AgentHealth/Collector/Harvest"

    invoke-virtual {v3}, Lcom/newrelic/agent/android/harvest/HarvestResponse;->getResponseTime()J

    move-result-wide v8

    invoke-virtual {v5, v6, v8, v9}, Lcom/newrelic/agent/android/stats/StatsEngine;->sampleTimeMs(Ljava/lang/String;J)V

    .line 236
    iget-object v5, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Harvest data response: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/newrelic/agent/android/harvest/HarvestResponse;->getResponseCode()Lcom/newrelic/agent/android/harvest/HarvestResponse$Code;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 237
    iget-object v5, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Harvest data response status code: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/newrelic/agent/android/harvest/HarvestResponse;->getStatusCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 238
    iget-object v5, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Harvest data response BODY: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/newrelic/agent/android/harvest/HarvestResponse;->getResponseBody()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v3}, Lcom/newrelic/agent/android/harvest/HarvestResponse;->isError()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 241
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->fireOnHarvestError()V

    .line 243
    sget-object v5, Lcom/newrelic/agent/android/harvest/Harvester$1;->$SwitchMap$com$newrelic$agent$android$harvest$HarvestResponse$Code:[I

    invoke-virtual {v3}, Lcom/newrelic/agent/android/harvest/HarvestResponse;->getResponseCode()Lcom/newrelic/agent/android/harvest/HarvestResponse$Code;

    move-result-object v6

    invoke-virtual {v6}, Lcom/newrelic/agent/android/harvest/HarvestResponse$Code;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 263
    iget-object v5, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v6, "An unknown error occurred when connecting to the Collector."

    invoke-interface {v5, v6}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 246
    :pswitch_0
    iget-object v5, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    invoke-virtual {v5}, Lcom/newrelic/agent/android/harvest/HarvestData;->getDataToken()Lcom/newrelic/agent/android/harvest/DataToken;

    move-result-object v5

    invoke-virtual {v5}, Lcom/newrelic/agent/android/harvest/DataToken;->clear()V

    .line 247
    sget-object v5, Lcom/newrelic/agent/android/harvest/Harvester$State;->DISCONNECTED:Lcom/newrelic/agent/android/harvest/Harvester$State;

    invoke-virtual {p0, v5}, Lcom/newrelic/agent/android/harvest/Harvester;->transition(Lcom/newrelic/agent/android/harvest/Harvester$State;)V

    goto/16 :goto_0

    .line 250
    :pswitch_1
    invoke-virtual {v3}, Lcom/newrelic/agent/android/harvest/HarvestResponse;->isDisableCommand()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 251
    iget-object v5, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v6, "Collector has commanded Agent to disable."

    invoke-interface {v5, v6}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 252
    sget-object v5, Lcom/newrelic/agent/android/harvest/Harvester$State;->DISABLED:Lcom/newrelic/agent/android/harvest/Harvester$State;

    invoke-virtual {p0, v5}, Lcom/newrelic/agent/android/harvest/Harvester;->transition(Lcom/newrelic/agent/android/harvest/Harvester$State;)V

    goto/16 :goto_0

    .line 255
    :cond_4
    iget-object v5, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v6, "Unexpected Collector response: FORBIDDEN"

    invoke-interface {v5, v6}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 256
    sget-object v5, Lcom/newrelic/agent/android/harvest/Harvester$State;->DISCONNECTED:Lcom/newrelic/agent/android/harvest/Harvester$State;

    invoke-virtual {p0, v5}, Lcom/newrelic/agent/android/harvest/Harvester;->transition(Lcom/newrelic/agent/android/harvest/Harvester$State;)V

    goto/16 :goto_0

    .line 260
    :pswitch_2
    iget-object v5, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v6, "Invalid ConnectionInformation was sent to the Collector."

    invoke-interface {v5, v6}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 268
    :cond_5
    invoke-direct {p0, v3}, Lcom/newrelic/agent/android/harvest/Harvester;->parseHarvesterConfiguration(Lcom/newrelic/agent/android/harvest/HarvestResponse;)Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    move-result-object v0

    .line 269
    .local v0, "configuration":Lcom/newrelic/agent/android/harvest/HarvestConfiguration;
    if-nez v0, :cond_6

    .line 270
    iget-object v5, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v6, "Unable to configure Harvester using Collector configuration."

    invoke-interface {v5, v6}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 274
    :cond_6
    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/harvest/Harvester;->configureHarvester(Lcom/newrelic/agent/android/harvest/HarvestConfiguration;)V

    .line 277
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->fireOnHarvestComplete()V

    goto/16 :goto_0

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected disabled()V
    .locals 0

    .prologue
    .line 286
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->stop()V

    .line 287
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->fireOnHarvestDisabled()V

    .line 288
    return-void
.end method

.method protected disconnected()V
    .locals 6

    .prologue
    .line 108
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    if-nez v2, :cond_0

    .line 109
    invoke-static {}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getDefaultHarvestConfiguration()Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/newrelic/agent/android/harvest/Harvester;->configureHarvester(Lcom/newrelic/agent/android/harvest/HarvestConfiguration;)V

    .line 113
    :cond_0
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/HarvestData;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 114
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping connect call, saved state is available: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    invoke-virtual {v4}, Lcom/newrelic/agent/android/harvest/HarvestData;->getDataToken()Lcom/newrelic/agent/android/harvest/DataToken;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->verbose(Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v2

    const-string v3, "Session/Start"

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4}, Lcom/newrelic/agent/android/stats/StatsEngine;->sample(Ljava/lang/String;F)V

    .line 118
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->fireOnHarvestConnected()V

    .line 119
    sget-object v2, Lcom/newrelic/agent/android/harvest/Harvester$State;->CONNECTED:Lcom/newrelic/agent/android/harvest/Harvester$State;

    invoke-virtual {p0, v2}, Lcom/newrelic/agent/android/harvest/Harvester;->transition(Lcom/newrelic/agent/android/harvest/Harvester$State;)V

    .line 120
    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->execute()V

    .line 183
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connecting, saved state is not available: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    invoke-virtual {v4}, Lcom/newrelic/agent/android/harvest/HarvestData;->getDataToken()Lcom/newrelic/agent/android/harvest/DataToken;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 127
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestConnection:Lcom/newrelic/agent/android/harvest/HarvestConnection;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->sendConnect()Lcom/newrelic/agent/android/harvest/HarvestResponse;

    move-result-object v1

    .line 130
    .local v1, "response":Lcom/newrelic/agent/android/harvest/HarvestResponse;
    if-nez v1, :cond_2

    .line 131
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v3, "Unable to connect to the Collector."

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_2
    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/HarvestResponse;->isOK()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 137
    invoke-direct {p0, v1}, Lcom/newrelic/agent/android/harvest/Harvester;->parseHarvesterConfiguration(Lcom/newrelic/agent/android/harvest/HarvestResponse;)Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    move-result-object v0

    .line 138
    .local v0, "configuration":Lcom/newrelic/agent/android/harvest/HarvestConfiguration;
    if-nez v0, :cond_3

    .line 139
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v3, "Unable to configure Harvester using Collector configuration."

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :cond_3
    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/harvest/Harvester;->configureHarvester(Lcom/newrelic/agent/android/harvest/HarvestConfiguration;)V

    .line 144
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v2

    const-string v3, "Supportability/AgentHealth/Collector/Harvest"

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/HarvestResponse;->getResponseTime()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/newrelic/agent/android/stats/StatsEngine;->sampleTimeMs(Ljava/lang/String;J)V

    .line 145
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->fireOnHarvestConnected()V

    .line 148
    sget-object v2, Lcom/newrelic/agent/android/harvest/Harvester$State;->CONNECTED:Lcom/newrelic/agent/android/harvest/Harvester$State;

    invoke-virtual {p0, v2}, Lcom/newrelic/agent/android/harvest/Harvester;->transition(Lcom/newrelic/agent/android/harvest/Harvester$State;)V

    goto :goto_0

    .line 152
    .end local v0    # "configuration":Lcom/newrelic/agent/android/harvest/HarvestConfiguration;
    :cond_4
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Harvest connect response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/HarvestResponse;->getResponseCode()Lcom/newrelic/agent/android/harvest/HarvestResponse$Code;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 155
    sget-object v2, Lcom/newrelic/agent/android/harvest/Harvester$1;->$SwitchMap$com$newrelic$agent$android$harvest$HarvestResponse$Code:[I

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/HarvestResponse;->getResponseCode()Lcom/newrelic/agent/android/harvest/HarvestResponse$Code;

    move-result-object v3

    invoke-virtual {v3}, Lcom/newrelic/agent/android/harvest/HarvestResponse$Code;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 177
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v3, "An unknown error occurred when connecting to the Collector."

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 180
    :goto_1
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->fireOnHarvestError()V

    goto/16 :goto_0

    .line 160
    :pswitch_0
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/HarvestData;->getDataToken()Lcom/newrelic/agent/android/harvest/DataToken;

    move-result-object v2

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/DataToken;->clear()V

    .line 161
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->fireOnHarvestDisconnected()V

    goto/16 :goto_0

    .line 164
    :pswitch_1
    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/HarvestResponse;->isDisableCommand()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 165
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v3, "Collector has commanded Agent to disable."

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 166
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->fireOnHarvestDisabled()V

    .line 167
    sget-object v2, Lcom/newrelic/agent/android/harvest/Harvester$State;->DISABLED:Lcom/newrelic/agent/android/harvest/Harvester$State;

    invoke-virtual {p0, v2}, Lcom/newrelic/agent/android/harvest/Harvester;->transition(Lcom/newrelic/agent/android/harvest/Harvester$State;)V

    goto/16 :goto_0

    .line 170
    :cond_5
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v3, "Unexpected Collector response: FORBIDDEN"

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 174
    :pswitch_2
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v3, "Invalid ConnectionInformation was sent to the Collector."

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected execute()V
    .locals 4

    .prologue
    .line 296
    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Harvester state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/Harvester;->state:Lcom/newrelic/agent/android/harvest/Harvester$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 298
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/newrelic/agent/android/harvest/Harvester;->stateChanged:Z

    .line 301
    :try_start_0
    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->expireHarvestData()V

    .line 303
    sget-object v1, Lcom/newrelic/agent/android/harvest/Harvester$1;->$SwitchMap$com$newrelic$agent$android$harvest$Harvester$State:[I

    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->state:Lcom/newrelic/agent/android/harvest/Harvester$State;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/Harvester$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 324
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "Exception encountered while attempting to harvest"

    invoke-interface {v1, v2, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 328
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    .line 330
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 305
    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->uninitialized()V

    goto :goto_0

    .line 308
    :pswitch_1
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->fireOnHarvestBefore()V

    .line 309
    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->disconnected()V

    goto :goto_0

    .line 312
    :pswitch_2
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->fireOnHarvestBefore()V

    .line 313
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->fireOnHarvest()V

    .line 314
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->fireOnHarvestFinalize()V

    .line 316
    invoke-static {}, Lcom/newrelic/agent/android/TaskQueue;->synchronousDequeue()V

    .line 318
    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->connected()V

    goto :goto_0

    .line 321
    :pswitch_3
    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->disabled()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 303
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public expireActivityTraces()V
    .locals 10

    .prologue
    .line 527
    iget-object v6, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    invoke-virtual {v6}, Lcom/newrelic/agent/android/harvest/HarvestData;->getActivityTraces()Lcom/newrelic/agent/android/harvest/ActivityTraces;

    move-result-object v5

    .line 531
    .local v5, "traces":Lcom/newrelic/agent/android/harvest/ActivityTraces;
    monitor-enter v5

    .line 532
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 533
    .local v0, "expiredTraces":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/newrelic/agent/android/tracing/ActivityTrace;>;"
    iget-object v6, p0, Lcom/newrelic/agent/android/harvest/Harvester;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {v6}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getActivity_trace_max_report_attempts()I

    move-result v6

    int-to-long v2, v6

    .line 536
    .local v2, "maxAttempts":J
    invoke-virtual {v5}, Lcom/newrelic/agent/android/harvest/ActivityTraces;->getActivityTraces()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/newrelic/agent/android/tracing/ActivityTrace;

    .line 537
    .local v4, "trace":Lcom/newrelic/agent/android/tracing/ActivityTrace;
    invoke-virtual {v4}, Lcom/newrelic/agent/android/tracing/ActivityTrace;->getReportAttemptCount()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-ltz v6, :cond_0

    .line 538
    iget-object v6, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ActivityTrace has had "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/newrelic/agent/android/tracing/ActivityTrace;->getReportAttemptCount()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " report attempts, purging: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 540
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 548
    .end local v0    # "expiredTraces":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/newrelic/agent/android/tracing/ActivityTrace;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "maxAttempts":J
    .end local v4    # "trace":Lcom/newrelic/agent/android/tracing/ActivityTrace;
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 545
    .restart local v0    # "expiredTraces":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/newrelic/agent/android/tracing/ActivityTrace;>;"
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "maxAttempts":J
    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/newrelic/agent/android/tracing/ActivityTrace;

    .line 546
    .restart local v4    # "trace":Lcom/newrelic/agent/android/tracing/ActivityTrace;
    invoke-virtual {v5, v4}, Lcom/newrelic/agent/android/harvest/ActivityTraces;->remove(Lcom/newrelic/agent/android/tracing/ActivityTrace;)V

    goto :goto_1

    .line 548
    .end local v4    # "trace":Lcom/newrelic/agent/android/tracing/ActivityTrace;
    :cond_2
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 549
    return-void
.end method

.method public expireHarvestData()V
    .locals 0

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->expireHttpErrors()V

    .line 472
    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->expireHttpTransactions()V

    .line 473
    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->expireActivityTraces()V

    .line 474
    return-void
.end method

.method public expireHttpErrors()V
    .locals 12

    .prologue
    .line 477
    iget-object v8, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    invoke-virtual {v8}, Lcom/newrelic/agent/android/harvest/HarvestData;->getHttpErrors()Lcom/newrelic/agent/android/harvest/HttpErrors;

    move-result-object v1

    .line 481
    .local v1, "errors":Lcom/newrelic/agent/android/harvest/HttpErrors;
    monitor-enter v1

    .line 482
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 483
    .local v3, "oldErrors":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/newrelic/agent/android/harvest/HttpError;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 484
    .local v6, "now":J
    iget-object v8, p0, Lcom/newrelic/agent/android/harvest/Harvester;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {v8}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getReportMaxTransactionAgeMilliseconds()J

    move-result-wide v4

    .line 487
    .local v4, "maxAge":J
    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/HttpErrors;->getHttpErrors()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/harvest/HttpError;

    .line 488
    .local v0, "error":Lcom/newrelic/agent/android/harvest/HttpError;
    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/HttpError;->getTimestamp()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v10, v6, v4

    cmp-long v8, v8, v10

    if-gez v8, :cond_0

    .line 489
    iget-object v8, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HttpError too old, purging: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 490
    invoke-interface {v3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 498
    .end local v0    # "error":Lcom/newrelic/agent/android/harvest/HttpError;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "oldErrors":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/newrelic/agent/android/harvest/HttpError;>;"
    .end local v4    # "maxAge":J
    .end local v6    # "now":J
    :catchall_0
    move-exception v8

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 495
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "oldErrors":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/newrelic/agent/android/harvest/HttpError;>;"
    .restart local v4    # "maxAge":J
    .restart local v6    # "now":J
    :cond_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/harvest/HttpError;

    .line 496
    .restart local v0    # "error":Lcom/newrelic/agent/android/harvest/HttpError;
    invoke-virtual {v1, v0}, Lcom/newrelic/agent/android/harvest/HttpErrors;->removeHttpError(Lcom/newrelic/agent/android/harvest/HttpError;)V

    goto :goto_1

    .line 498
    .end local v0    # "error":Lcom/newrelic/agent/android/harvest/HttpError;
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 499
    return-void
.end method

.method public expireHttpTransactions()V
    .locals 12

    .prologue
    .line 502
    iget-object v8, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    invoke-virtual {v8}, Lcom/newrelic/agent/android/harvest/HarvestData;->getHttpTransactions()Lcom/newrelic/agent/android/harvest/HttpTransactions;

    move-result-object v6

    .line 506
    .local v6, "transactions":Lcom/newrelic/agent/android/harvest/HttpTransactions;
    monitor-enter v6

    .line 507
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 508
    .local v1, "oldTransactions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/newrelic/agent/android/harvest/HttpTransaction;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 509
    .local v4, "now":J
    iget-object v8, p0, Lcom/newrelic/agent/android/harvest/Harvester;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {v8}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getReportMaxTransactionAgeMilliseconds()J

    move-result-wide v2

    .line 512
    .local v2, "maxAge":J
    invoke-virtual {v6}, Lcom/newrelic/agent/android/harvest/HttpTransactions;->getHttpTransactions()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/newrelic/agent/android/harvest/HttpTransaction;

    .line 513
    .local v7, "txn":Lcom/newrelic/agent/android/harvest/HttpTransaction;
    invoke-virtual {v7}, Lcom/newrelic/agent/android/harvest/HttpTransaction;->getTimestamp()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v10, v4, v2

    cmp-long v8, v8, v10

    if-gez v8, :cond_0

    .line 514
    iget-object v8, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HttpTransaction too old, purging: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 515
    invoke-interface {v1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 523
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "oldTransactions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/newrelic/agent/android/harvest/HttpTransaction;>;"
    .end local v2    # "maxAge":J
    .end local v4    # "now":J
    .end local v7    # "txn":Lcom/newrelic/agent/android/harvest/HttpTransaction;
    :catchall_0
    move-exception v8

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 520
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "oldTransactions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/newrelic/agent/android/harvest/HttpTransaction;>;"
    .restart local v2    # "maxAge":J
    .restart local v4    # "now":J
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/newrelic/agent/android/harvest/HttpTransaction;

    .line 521
    .restart local v7    # "txn":Lcom/newrelic/agent/android/harvest/HttpTransaction;
    invoke-virtual {v6, v7}, Lcom/newrelic/agent/android/harvest/HttpTransactions;->remove(Lcom/newrelic/agent/android/harvest/HttpTransaction;)V

    goto :goto_1

    .line 523
    .end local v7    # "txn":Lcom/newrelic/agent/android/harvest/HttpTransaction;
    :cond_2
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 524
    return-void
.end method

.method public getCurrentState()Lcom/newrelic/agent/android/harvest/Harvester$State;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->state:Lcom/newrelic/agent/android/harvest/Harvester$State;

    return-object v0
.end method

.method public getHarvestConnection()Lcom/newrelic/agent/android/harvest/HarvestConnection;
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestConnection:Lcom/newrelic/agent/android/harvest/HarvestConnection;

    return-object v0
.end method

.method public getHarvestData()Lcom/newrelic/agent/android/harvest/HarvestData;
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    return-object v0
.end method

.method public isDisabled()Z
    .locals 2

    .prologue
    .line 445
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvester$State;->DISABLED:Lcom/newrelic/agent/android/harvest/Harvester$State;

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvester;->state:Lcom/newrelic/agent/android/harvest/Harvester$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeHarvestListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)V
    .locals 2
    .param p1, "harvestAware"    # Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    .prologue
    .line 463
    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestListeners:Ljava/util/Collection;

    monitor-enter v1

    .line 464
    :try_start_0
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 465
    monitor-exit v1

    .line 468
    :goto_0
    return-void

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 467
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAgentConfiguration(Lcom/newrelic/agent/android/AgentConfiguration;)V
    .locals 0
    .param p1, "agentConfiguration"    # Lcom/newrelic/agent/android/AgentConfiguration;

    .prologue
    .line 552
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/Harvester;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    .line 553
    return-void
.end method

.method public setConfiguration(Lcom/newrelic/agent/android/harvest/HarvestConfiguration;)V
    .locals 0
    .param p1, "configuration"    # Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    .prologue
    .line 704
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/Harvester;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    .line 705
    return-void
.end method

.method public setHarvestConnection(Lcom/newrelic/agent/android/harvest/HarvestConnection;)V
    .locals 0
    .param p1, "connection"    # Lcom/newrelic/agent/android/harvest/HarvestConnection;

    .prologue
    .line 556
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestConnection:Lcom/newrelic/agent/android/harvest/HarvestConnection;

    .line 557
    return-void
.end method

.method public setHarvestData(Lcom/newrelic/agent/android/harvest/HarvestData;)V
    .locals 0
    .param p1, "harvestData"    # Lcom/newrelic/agent/android/harvest/HarvestData;

    .prologue
    .line 564
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    .line 565
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->fireOnHarvestStart()V

    .line 69
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->fireOnHarvestStop()V

    .line 73
    return-void
.end method

.method protected transition(Lcom/newrelic/agent/android/harvest/Harvester$State;)V
    .locals 6
    .param p1, "newState"    # Lcom/newrelic/agent/android/harvest/Harvester$State;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 352
    iget-boolean v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->stateChanged:Z

    if-eqz v0, :cond_1

    .line 353
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring multiple transition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->state:Lcom/newrelic/agent/android/harvest/Harvester$State;

    if-eq v0, p1, :cond_0

    .line 361
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvester$1;->$SwitchMap$com$newrelic$agent$android$harvest$Harvester$State:[I

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvester;->state:Lcom/newrelic/agent/android/harvest/Harvester$State;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/Harvester$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 376
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 363
    :pswitch_0
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/newrelic/agent/android/harvest/Harvester$State;

    sget-object v1, Lcom/newrelic/agent/android/harvest/Harvester$State;->DISCONNECTED:Lcom/newrelic/agent/android/harvest/Harvester$State;

    aput-object v1, v0, v2

    aput-object p1, v0, v3

    sget-object v1, Lcom/newrelic/agent/android/harvest/Harvester$State;->CONNECTED:Lcom/newrelic/agent/android/harvest/Harvester$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/newrelic/agent/android/harvest/Harvester$State;->DISABLED:Lcom/newrelic/agent/android/harvest/Harvester$State;

    aput-object v1, v0, v5

    invoke-direct {p0, p1, v0}, Lcom/newrelic/agent/android/harvest/Harvester;->stateIn(Lcom/newrelic/agent/android/harvest/Harvester$State;[Lcom/newrelic/agent/android/harvest/Harvester$State;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 378
    :cond_2
    invoke-direct {p0, p1}, Lcom/newrelic/agent/android/harvest/Harvester;->changeState(Lcom/newrelic/agent/android/harvest/Harvester$State;)V

    goto :goto_0

    .line 365
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 367
    :pswitch_1
    new-array v0, v5, [Lcom/newrelic/agent/android/harvest/Harvester$State;

    sget-object v1, Lcom/newrelic/agent/android/harvest/Harvester$State;->UNINITIALIZED:Lcom/newrelic/agent/android/harvest/Harvester$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/newrelic/agent/android/harvest/Harvester$State;->CONNECTED:Lcom/newrelic/agent/android/harvest/Harvester$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/newrelic/agent/android/harvest/Harvester$State;->DISABLED:Lcom/newrelic/agent/android/harvest/Harvester$State;

    aput-object v1, v0, v4

    invoke-direct {p0, p1, v0}, Lcom/newrelic/agent/android/harvest/Harvester;->stateIn(Lcom/newrelic/agent/android/harvest/Harvester$State;[Lcom/newrelic/agent/android/harvest/Harvester$State;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 369
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 371
    :pswitch_2
    new-array v0, v4, [Lcom/newrelic/agent/android/harvest/Harvester$State;

    sget-object v1, Lcom/newrelic/agent/android/harvest/Harvester$State;->DISCONNECTED:Lcom/newrelic/agent/android/harvest/Harvester$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/newrelic/agent/android/harvest/Harvester$State;->DISABLED:Lcom/newrelic/agent/android/harvest/Harvester$State;

    aput-object v1, v0, v3

    invoke-direct {p0, p1, v0}, Lcom/newrelic/agent/android/harvest/Harvester;->stateIn(Lcom/newrelic/agent/android/harvest/Harvester$State;[Lcom/newrelic/agent/android/harvest/Harvester$State;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 373
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 361
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected uninitialized()V
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "Agent configuration unavailable."

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 100
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getImpl()Lcom/newrelic/agent/android/AgentImpl;

    move-result-object v0

    invoke-interface {v0}, Lcom/newrelic/agent/android/AgentImpl;->updateSavedConnectInformation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    invoke-static {}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getDefaultHarvestConfiguration()Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/harvest/Harvester;->configureHarvester(Lcom/newrelic/agent/android/harvest/HarvestConfiguration;)V

    .line 88
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/HarvestData;->getDataToken()Lcom/newrelic/agent/android/harvest/DataToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/DataToken;->clear()V

    .line 92
    :cond_1
    new-instance v0, Lcom/newrelic/agent/android/harvest/ConnectInformation;

    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getApplicationInformation()Lcom/newrelic/agent/android/harvest/ApplicationInformation;

    move-result-object v1

    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getDeviceInformation()Lcom/newrelic/agent/android/harvest/DeviceInformation;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/newrelic/agent/android/harvest/ConnectInformation;-><init>(Lcom/newrelic/agent/android/harvest/ApplicationInformation;Lcom/newrelic/agent/android/harvest/DeviceInformation;)V

    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->setHarvestConnectInformation(Lcom/newrelic/agent/android/harvest/ConnectInformation;)V

    .line 94
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestConnection:Lcom/newrelic/agent/android/harvest/HarvestConnection;

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvester;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/AgentConfiguration;->getApplicationToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->setApplicationToken(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestConnection:Lcom/newrelic/agent/android/harvest/HarvestConnection;

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvester;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/AgentConfiguration;->getCollectorHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->setCollectorHost(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestConnection:Lcom/newrelic/agent/android/harvest/HarvestConnection;

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvester;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/AgentConfiguration;->useSsl()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->useSsl(Z)V

    .line 98
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvester$State;->DISCONNECTED:Lcom/newrelic/agent/android/harvest/Harvester$State;

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/harvest/Harvester;->transition(Lcom/newrelic/agent/android/harvest/Harvester$State;)V

    .line 99
    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->execute()V

    goto :goto_0
.end method
