.class public Lcom/newrelic/agent/android/util/JsonCrashStore;
.super Ljava/lang/Object;
.source "JsonCrashStore.java"

# interfaces
.implements Lcom/newrelic/agent/android/crashes/CrashStore;


# static fields
.field private static final STORE_FILE:Ljava/lang/String; = "NRCrashStore"

.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/util/JsonCrashStore;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/newrelic/agent/android/util/JsonCrashStore;->context:Landroid/content/Context;

    .line 24
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 5

    .prologue
    .line 68
    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v2, p0, Lcom/newrelic/agent/android/util/JsonCrashStore;->context:Landroid/content/Context;

    const-string v3, "NRCrashStore"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 70
    .local v1, "store":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 72
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 73
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 74
    monitor-exit p0

    .line 75
    return-void

    .line 74
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "store":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public count()I
    .locals 4

    .prologue
    .line 62
    iget-object v1, p0, Lcom/newrelic/agent/android/util/JsonCrashStore;->context:Landroid/content/Context;

    const-string v2, "NRCrashStore"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 63
    .local v0, "store":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    return v1
.end method

.method public delete(Lcom/newrelic/agent/android/harvest/crash/Crash;)V
    .locals 5
    .param p1, "crash"    # Lcom/newrelic/agent/android/harvest/crash/Crash;

    .prologue
    .line 79
    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v2, p0, Lcom/newrelic/agent/android/util/JsonCrashStore;->context:Landroid/content/Context;

    const-string v3, "NRCrashStore"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 81
    .local v1, "store":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 83
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/crash/Crash;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 85
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 86
    monitor-exit p0

    .line 87
    return-void

    .line 86
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "store":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public fetchAll()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/newrelic/agent/android/harvest/crash/Crash;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v6, p0, Lcom/newrelic/agent/android/util/JsonCrashStore;->context:Landroid/content/Context;

    const-string v7, "NRCrashStore"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 40
    .local v4, "store":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v1, "crashes":Ljava/util/List;, "Ljava/util/List<Lcom/newrelic/agent/android/harvest/crash/Crash;>;"
    monitor-enter p0

    .line 44
    :try_start_0
    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 45
    .local v0, "crashStrings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 48
    .local v5, "string":Ljava/lang/Object;
    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 50
    :try_start_1
    check-cast v5, Ljava/lang/String;

    .end local v5    # "string":Ljava/lang/Object;
    invoke-static {v5}, Lcom/newrelic/agent/android/harvest/crash/Crash;->crashFromJsonString(Ljava/lang/String;)Lcom/newrelic/agent/android/harvest/crash/Crash;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 51
    :catch_0
    move-exception v2

    .line 52
    .local v2, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/newrelic/agent/android/util/JsonCrashStore;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v7, "Exception encountered while deserializing crash"

    invoke-interface {v6, v7, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 45
    .end local v0    # "crashStrings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 57
    .restart local v0    # "crashStrings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v1
.end method

.method public store(Lcom/newrelic/agent/android/harvest/crash/Crash;)V
    .locals 5
    .param p1, "crash"    # Lcom/newrelic/agent/android/harvest/crash/Crash;

    .prologue
    .line 28
    monitor-enter p0

    .line 29
    :try_start_0
    iget-object v2, p0, Lcom/newrelic/agent/android/util/JsonCrashStore;->context:Landroid/content/Context;

    const-string v3, "NRCrashStore"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 30
    .local v1, "store":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 32
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/crash/Crash;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/crash/Crash;->toJsonString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 33
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 34
    monitor-exit p0

    .line 35
    return-void

    .line 34
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "store":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
