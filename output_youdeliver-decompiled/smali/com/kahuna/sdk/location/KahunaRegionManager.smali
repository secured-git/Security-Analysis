.class public Lcom/kahuna/sdk/location/KahunaRegionManager;
.super Ljava/lang/Object;
.source "KahunaRegionManager.java"


# static fields
.field protected static final DEFAULT_EXPIRE_TIME_MILLI:J = 0x9a7ec800L

.field public static final GEOFENCE_ID_PREFFIX:Ljava/lang/String; = "KahunaEngineRegion_"

.field private static final instance:Lcom/kahuna/sdk/location/KahunaRegionManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGeofenceRemover:Lcom/kahuna/sdk/location/KahunaGeofenceRemover;

.field private mGeofenceRequester:Lcom/kahuna/sdk/location/KahunaGeofenceRequester;

.field private mRegionsBeingMonitored:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mRegionsBeingMonitoredLock:Ljava/lang/Object;

.field private readyForGeo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/kahuna/sdk/location/KahunaRegionManager;

    invoke-direct {v0}, Lcom/kahuna/sdk/location/KahunaRegionManager;-><init>()V

    sput-object v0, Lcom/kahuna/sdk/location/KahunaRegionManager;->instance:Lcom/kahuna/sdk/location/KahunaRegionManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kahuna/sdk/location/KahunaRegionManager;->readyForGeo:Z

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kahuna/sdk/location/KahunaRegionManager;->mRegionsBeingMonitoredLock:Ljava/lang/Object;

    .line 59
    return-void
.end method

.method public static addGeofences(Lcom/kahuna/sdk/KahunaAnalytics;Ljava/util/List;Landroid/content/Context;)V
    .locals 16
    .param p0, "analytics"    # Lcom/kahuna/sdk/KahunaAnalytics;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kahuna/sdk/KahunaAnalytics;",
            "Ljava/util/List",
            "<",
            "Lcom/kahuna/sdk/location/KahunaGeofence;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, "geofencesToAdd":Ljava/util/List;, "Ljava/util/List<Lcom/kahuna/sdk/location/KahunaGeofence;>;"
    if-eqz p0, :cond_0

    move-object/from16 v0, p0

    instance-of v10, v0, Lcom/kahuna/sdk/KahunaAnalytics;

    if-nez v10, :cond_2

    .line 132
    :cond_0
    const-string v10, "KahunaEngine"

    const-string v11, "You cannot request to add geofences to the Region Manager externally from the Kahuna SDK. Aborting!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_1
    :goto_0
    return-void

    .line 136
    :cond_2
    :try_start_0
    sget-object v10, Lcom/kahuna/sdk/location/KahunaRegionManager;->instance:Lcom/kahuna/sdk/location/KahunaRegionManager;

    iget-boolean v10, v10, Lcom/kahuna/sdk/location/KahunaRegionManager;->readyForGeo:Z

    if-eqz v10, :cond_7

    .line 138
    sget-object v10, Lcom/kahuna/sdk/location/KahunaRegionManager;->instance:Lcom/kahuna/sdk/location/KahunaRegionManager;

    iget-object v11, v10, Lcom/kahuna/sdk/location/KahunaRegionManager;->mRegionsBeingMonitoredLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :try_start_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v9, "regionsToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v10, Lcom/kahuna/sdk/location/KahunaRegionManager;->instance:Lcom/kahuna/sdk/location/KahunaRegionManager;

    iget-object v10, v10, Lcom/kahuna/sdk/location/KahunaRegionManager;->mRegionsBeingMonitored:Ljava/util/Map;

    if-eqz v10, :cond_4

    sget-object v10, Lcom/kahuna/sdk/location/KahunaRegionManager;->instance:Lcom/kahuna/sdk/location/KahunaRegionManager;

    iget-object v10, v10, Lcom/kahuna/sdk/location/KahunaRegionManager;->mRegionsBeingMonitored:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v10

    if-lez v10, :cond_4

    .line 143
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "regionsToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v10, Lcom/kahuna/sdk/location/KahunaRegionManager;->instance:Lcom/kahuna/sdk/location/KahunaRegionManager;

    iget-object v10, v10, Lcom/kahuna/sdk/location/KahunaRegionManager;->mRegionsBeingMonitored:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 144
    .restart local v9    # "regionsToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/kahuna/sdk/location/KahunaGeofence;

    .line 145
    .local v8, "region":Lcom/kahuna/sdk/location/KahunaGeofence;
    invoke-virtual {v8}, Lcom/kahuna/sdk/location/KahunaGeofence;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 146
    invoke-virtual {v8}, Lcom/kahuna/sdk/location/KahunaGeofence;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 168
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "region":Lcom/kahuna/sdk/location/KahunaGeofence;
    .end local v9    # "regionsToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 177
    :catch_0
    move-exception v3

    .line 178
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 179
    const-string v10, "KahunaEngine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Caught exception in Region Manager add geofences: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 150
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v9    # "regionsToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    :try_start_3
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_5

    .line 151
    sget-object v10, Lcom/kahuna/sdk/location/KahunaRegionManager;->instance:Lcom/kahuna/sdk/location/KahunaRegionManager;

    iget-object v10, v10, Lcom/kahuna/sdk/location/KahunaRegionManager;->mGeofenceRemover:Lcom/kahuna/sdk/location/KahunaGeofenceRemover;

    invoke-virtual {v10, v9}, Lcom/kahuna/sdk/location/KahunaGeofenceRemover;->removeGeofencesById(Ljava/util/List;)V

    .line 155
    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v4, "geofences":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/location/Geofence;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 157
    .local v7, "newRegionIdsToAdd":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    if-eqz p1, :cond_6

    .line 158
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_6

    .line 159
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kahuna/sdk/location/KahunaGeofence;

    .line 160
    .local v2, "currGeofence":Lcom/kahuna/sdk/location/KahunaGeofence;
    invoke-virtual {v2}, Lcom/kahuna/sdk/location/KahunaGeofence;->toGeofence()Lcom/google/android/gms/location/Geofence;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-virtual {v2}, Lcom/kahuna/sdk/location/KahunaGeofence;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v2}, Lcom/kahuna/sdk/location/KahunaGeofence;->getExpirationMilli()J

    move-result-wide v14

    add-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v7, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 165
    .end local v2    # "currGeofence":Lcom/kahuna/sdk/location/KahunaGeofence;
    .end local v5    # "i":I
    :cond_6
    sget-object v10, Lcom/kahuna/sdk/location/KahunaRegionManager;->instance:Lcom/kahuna/sdk/location/KahunaRegionManager;

    iget-object v10, v10, Lcom/kahuna/sdk/location/KahunaRegionManager;->mGeofenceRequester:Lcom/kahuna/sdk/location/KahunaGeofenceRequester;

    invoke-virtual {v10, v4}, Lcom/kahuna/sdk/location/KahunaGeofenceRequester;->addGeofences(Ljava/util/List;)V

    .line 166
    sget-object v10, Lcom/kahuna/sdk/location/KahunaRegionManager;->instance:Lcom/kahuna/sdk/location/KahunaRegionManager;

    iput-object v7, v10, Lcom/kahuna/sdk/location/KahunaRegionManager;->mRegionsBeingMonitored:Ljava/util/Map;

    .line 167
    sget-object v10, Lcom/kahuna/sdk/location/KahunaRegionManager;->instance:Lcom/kahuna/sdk/location/KahunaRegionManager;

    iget-object v10, v10, Lcom/kahuna/sdk/location/KahunaRegionManager;->mRegionsBeingMonitored:Ljava/util/Map;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v10, v1}, Lcom/kahuna/sdk/KahunaPreferences;->saveRegionIds(Lcom/kahuna/sdk/KahunaAnalytics;Ljava/util/Map;Landroid/content/Context;)V

    .line 168
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 171
    .end local v4    # "geofences":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/location/Geofence;>;"
    .end local v7    # "newRegionIdsToAdd":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v9    # "regionsToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    :try_start_4
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 172
    const-string v10, "KahunaEngine"

    const-string v11, "Attempted to register geofences but device is not properly setup."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0
.end method

.method public static getCurrentlyMonitoredRegions(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/util/Set;
    .locals 6
    .param p0, "analytics"    # Lcom/kahuna/sdk/KahunaAnalytics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kahuna/sdk/KahunaAnalytics;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    if-eqz p0, :cond_0

    instance-of v3, p0, Lcom/kahuna/sdk/KahunaAnalytics;

    if-nez v3, :cond_1

    .line 186
    :cond_0
    const-string v3, "KahunaEngine"

    const-string v4, "You cannot request to obtain Kahuna monitoring specs externally from the Kahuna SDK. Aborting!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 200
    :goto_0
    return-object v0

    .line 190
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 192
    .local v0, "currentRegionIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v3, Lcom/kahuna/sdk/location/KahunaRegionManager;->instance:Lcom/kahuna/sdk/location/KahunaRegionManager;

    iget-object v4, v3, Lcom/kahuna/sdk/location/KahunaRegionManager;->mRegionsBeingMonitoredLock:Ljava/lang/Object;

    monitor-enter v4

    .line 193
    :try_start_0
    sget-object v3, Lcom/kahuna/sdk/location/KahunaRegionManager;->instance:Lcom/kahuna/sdk/location/KahunaRegionManager;

    iget-object v3, v3, Lcom/kahuna/sdk/location/KahunaRegionManager;->mRegionsBeingMonitored:Ljava/util/Map;

    if-eqz v3, :cond_2

    .line 194
    sget-object v3, Lcom/kahuna/sdk/location/KahunaRegionManager;->instance:Lcom/kahuna/sdk/location/KahunaRegionManager;

    iget-object v3, v3, Lcom/kahuna/sdk/location/KahunaRegionManager;->mRegionsBeingMonitored:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 195
    .local v2, "s":Ljava/lang/String;
    const-string v3, "KahunaEngineRegion_"

    const-string v5, ""

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 198
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "s":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected static getInstance()Lcom/kahuna/sdk/location/KahunaRegionManager;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/kahuna/sdk/location/KahunaRegionManager;->instance:Lcom/kahuna/sdk/location/KahunaRegionManager;

    return-object v0
.end method

.method public static init(Lcom/kahuna/sdk/KahunaAnalytics;Landroid/content/Context;)V
    .locals 13
    .param p0, "analytics"    # Lcom/kahuna/sdk/KahunaAnalytics;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x0

    .line 73
    if-eqz p0, :cond_0

    instance-of v7, p0, Lcom/kahuna/sdk/KahunaAnalytics;

    if-nez v7, :cond_2

    .line 74
    :cond_0
    const-string v7, "KahunaEngine"

    const-string v8, "You cannot init the Region Manager externally from the Kahuna SDK. Aborting!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_1
    :goto_0
    return-void

    .line 79
    :cond_2
    :try_start_0
    sget-object v7, Lcom/kahuna/sdk/location/KahunaRegionManager;->instance:Lcom/kahuna/sdk/location/KahunaRegionManager;

    iput-object p1, v7, Lcom/kahuna/sdk/location/KahunaRegionManager;->mContext:Landroid/content/Context;

    .line 80
    sget-object v7, Lcom/kahuna/sdk/location/KahunaRegionManager;->instance:Lcom/kahuna/sdk/location/KahunaRegionManager;

    invoke-static {p1}, Lcom/kahuna/sdk/location/KahunaRegionManager;->servicesConnected(Landroid/content/Context;)Z

    move-result v8

    iput-boolean v8, v7, Lcom/kahuna/sdk/location/KahunaRegionManager;->readyForGeo:Z

    .line 81
    sget-object v7, Lcom/kahuna/sdk/location/KahunaRegionManager;->instance:Lcom/kahuna/sdk/location/KahunaRegionManager;

    iget-boolean v7, v7, Lcom/kahuna/sdk/location/KahunaRegionManager;->readyForGeo:Z

    if-eqz v7, :cond_1

    .line 82
    sget-object v7, Lcom/kahuna/sdk/location/KahunaRegionManager;->instance:Lcom/kahuna/sdk/location/KahunaRegionManager;

    new-instance v8, Lcom/kahuna/sdk/location/KahunaGeofenceRequester;

    invoke-direct {v8, p1}, Lcom/kahuna/sdk/location/KahunaGeofenceRequester;-><init>(Landroid/content/Context;)V

    iput-object v8, v7, Lcom/kahuna/sdk/location/KahunaRegionManager;->mGeofenceRequester:Lcom/kahuna/sdk/location/KahunaGeofenceRequester;

    .line 83
    sget-object v7, Lcom/kahuna/sdk/location/KahunaRegionManager;->instance:Lcom/kahuna/sdk/location/KahunaRegionManager;

    new-instance v8, Lcom/kahuna/sdk/location/KahunaGeofenceRemover;

    invoke-direct {v8, p1}, Lcom/kahuna/sdk/location/KahunaGeofenceRemover;-><init>(Landroid/content/Context;)V

    iput-object v8, v7, Lcom/kahuna/sdk/location/KahunaRegionManager;->mGeofenceRemover:Lcom/kahuna/sdk/location/KahunaGeofenceRemover;

    .line 85
    sget-object v7, Lcom/kahuna/sdk/location/KahunaRegionManager;->instance:Lcom/kahuna/sdk/location/KahunaRegionManager;

    iget-object v8, v7, Lcom/kahuna/sdk/location/KahunaRegionManager;->mRegionsBeingMonitoredLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 86
    :try_start_1
    sget-object v7, Lcom/kahuna/sdk/location/KahunaRegionManager;->instance:Lcom/kahuna/sdk/location/KahunaRegionManager;

    invoke-static {p0, p1}, Lcom/kahuna/sdk/KahunaPreferences;->getSavedRegionIds(Lcom/kahuna/sdk/KahunaAnalytics;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v9

    iput-object v9, v7, Lcom/kahuna/sdk/location/KahunaRegionManager;->mRegionsBeingMonitored:Ljava/util/Map;

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 90
    .local v0, "currTimeMilli":J
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 91
    .local v3, "expiredIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v7, Lcom/kahuna/sdk/location/KahunaRegionManager;->instance:Lcom/kahuna/sdk/location/KahunaRegionManager;

    iget-object v7, v7, Lcom/kahuna/sdk/location/KahunaRegionManager;->mRegionsBeingMonitored:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 92
    .local v5, "key":Ljava/lang/String;
    sget-object v7, Lcom/kahuna/sdk/location/KahunaRegionManager;->instance:Lcom/kahuna/sdk/location/KahunaRegionManager;

    iget-object v7, v7, Lcom/kahuna/sdk/location/KahunaRegionManager;->mRegionsBeingMonitored:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v7, v0, v10

    if-lez v7, :cond_3

    .line 93
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 102
    .end local v0    # "currTimeMilli":J
    .end local v3    # "expiredIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1

    .line 105
    :catch_0
    move-exception v2

    .line 108
    .local v2, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/kahuna/sdk/location/KahunaRegionManager;->instance:Lcom/kahuna/sdk/location/KahunaRegionManager;

    iput-boolean v12, v7, Lcom/kahuna/sdk/location/KahunaRegionManager;->readyForGeo:Z

    .line 109
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 110
    const-string v7, "KahunaEngine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Caught exception in Region Manager init: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 97
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "currTimeMilli":J
    .restart local v3    # "expiredIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_4
    :try_start_3
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 98
    .local v6, "removalId":Ljava/lang/String;
    sget-object v7, Lcom/kahuna/sdk/location/KahunaRegionManager;->instance:Lcom/kahuna/sdk/location/KahunaRegionManager;

    iget-object v7, v7, Lcom/kahuna/sdk/location/KahunaRegionManager;->mRegionsBeingMonitored:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 101
    .end local v6    # "removalId":Ljava/lang/String;
    :cond_5
    sget-object v7, Lcom/kahuna/sdk/location/KahunaRegionManager;->instance:Lcom/kahuna/sdk/location/KahunaRegionManager;

    iget-object v7, v7, Lcom/kahuna/sdk/location/KahunaRegionManager;->mRegionsBeingMonitored:Ljava/util/Map;

    invoke-static {p0, v7, p1}, Lcom/kahuna/sdk/KahunaPreferences;->saveRegionIds(Lcom/kahuna/sdk/KahunaAnalytics;Ljava/util/Map;Landroid/content/Context;)V

    .line 102
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 114
    .end local v0    # "currTimeMilli":J
    .end local v3    # "expiredIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :catch_1
    move-exception v2

    .line 115
    .local v2, "e":Ljava/lang/Error;
    sget-object v7, Lcom/kahuna/sdk/location/KahunaRegionManager;->instance:Lcom/kahuna/sdk/location/KahunaRegionManager;

    iput-boolean v12, v7, Lcom/kahuna/sdk/location/KahunaRegionManager;->readyForGeo:Z

    goto/16 :goto_0
.end method

.method public static isDeviceReadyForRegionMonitoring()Z
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/kahuna/sdk/location/KahunaRegionManager;->instance:Lcom/kahuna/sdk/location/KahunaRegionManager;

    iget-boolean v0, v0, Lcom/kahuna/sdk/location/KahunaRegionManager;->readyForGeo:Z

    return v0
.end method

.method public static processServerRegions(Lcom/kahuna/sdk/KahunaAnalytics;Lorg/json/JSONObject;Landroid/content/Context;)V
    .locals 30
    .param p0, "analytics"    # Lcom/kahuna/sdk/KahunaAnalytics;
    .param p1, "locationObject"    # Lorg/json/JSONObject;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 220
    if-eqz p0, :cond_0

    move-object/from16 v0, p0

    instance-of v4, v0, Lcom/kahuna/sdk/KahunaAnalytics;

    if-nez v4, :cond_2

    .line 221
    :cond_0
    const-string v4, "KahunaEngine"

    const-string v10, "You cannot request to process regions externally from the Kahuna SDK. Aborting!"

    invoke-static {v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_1
    :goto_0
    return-void

    .line 226
    :cond_2
    :try_start_0
    sget-object v4, Lcom/kahuna/sdk/location/KahunaRegionManager;->instance:Lcom/kahuna/sdk/location/KahunaRegionManager;

    iget-boolean v4, v4, Lcom/kahuna/sdk/location/KahunaRegionManager;->readyForGeo:Z

    if-eqz v4, :cond_6

    .line 227
    const-string v4, "circle"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 228
    .local v14, "circleRegionsArray":Lorg/json/JSONArray;
    if-eqz v14, :cond_1

    .line 229
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v23

    .line 230
    .local v23, "numRegions":I
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 231
    .local v22, "newCircleGeofences":Ljava/util/List;, "Ljava/util/List<Lcom/kahuna/sdk/location/KahunaGeofence;>;"
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    .line 234
    :try_start_1
    move/from16 v0, v19

    invoke-virtual {v14, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 235
    .local v15, "currRegionObject":Lorg/json/JSONObject;
    if-eqz v15, :cond_4

    .line 236
    const-string v4, "id"

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 237
    .local v5, "regionId":Ljava/lang/String;
    const-string v4, "lat"

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 238
    .local v6, "latitude":D
    const-string v4, "long"

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 239
    .local v8, "longitude":D
    const-string v4, "radius"

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v24

    .line 240
    .local v24, "radius":I
    const-string v4, "expiry"

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v20

    .line 242
    .local v20, "expiredTimeSeconds":J
    const-wide/16 v11, 0x0

    .line 243
    .local v11, "expirationDurationMilli":J
    const-wide/16 v26, 0x0

    cmp-long v4, v20, v26

    if-lez v4, :cond_3

    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    const-wide/16 v28, 0x3e8

    div-long v26, v26, v28

    sub-long v16, v20, v26

    .line 245
    .local v16, "deltaTimeSeconds":J
    const-wide/16 v26, 0x0

    cmp-long v4, v16, v26

    if-lez v4, :cond_3

    .line 246
    const-wide/16 v26, 0x3e8

    mul-long v11, v16, v26

    .line 250
    .end local v16    # "deltaTimeSeconds":J
    :cond_3
    new-instance v4, Lcom/kahuna/sdk/location/KahunaGeofence;

    move/from16 v0, v24

    int-to-float v10, v0

    const/4 v13, 0x3

    invoke-direct/range {v4 .. v13}, Lcom/kahuna/sdk/location/KahunaGeofence;-><init>(Ljava/lang/String;DDFJI)V

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 231
    .end local v5    # "regionId":Ljava/lang/String;
    .end local v6    # "latitude":D
    .end local v8    # "longitude":D
    .end local v11    # "expirationDurationMilli":J
    .end local v15    # "currRegionObject":Lorg/json/JSONObject;
    .end local v20    # "expiredTimeSeconds":J
    .end local v24    # "radius":I
    :cond_4
    :goto_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 254
    :catch_0
    move-exception v18

    .line 255
    .local v18, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 256
    const-string v4, "KahunaEngine"

    const-string v10, "Encountered error processing geofence regions from Kahuna servers."

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 270
    .end local v14    # "circleRegionsArray":Lorg/json/JSONArray;
    .end local v18    # "e":Ljava/lang/Exception;
    .end local v19    # "i":I
    .end local v22    # "newCircleGeofences":Ljava/util/List;, "Ljava/util/List<Lcom/kahuna/sdk/location/KahunaGeofence;>;"
    .end local v23    # "numRegions":I
    :catch_1
    move-exception v18

    .line 271
    .restart local v18    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 272
    const-string v4, "KahunaEngine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Caught exception in Region Manager process server regions: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 261
    .end local v18    # "e":Ljava/lang/Exception;
    .restart local v14    # "circleRegionsArray":Lorg/json/JSONArray;
    .restart local v19    # "i":I
    .restart local v22    # "newCircleGeofences":Ljava/util/List;, "Ljava/util/List<Lcom/kahuna/sdk/location/KahunaGeofence;>;"
    .restart local v23    # "numRegions":I
    :cond_5
    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/kahuna/sdk/location/KahunaRegionManager;->addGeofences(Lcom/kahuna/sdk/KahunaAnalytics;Ljava/util/List;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 265
    .end local v14    # "circleRegionsArray":Lorg/json/JSONArray;
    .end local v19    # "i":I
    .end local v22    # "newCircleGeofences":Ljava/util/List;, "Ljava/util/List<Lcom/kahuna/sdk/location/KahunaGeofence;>;"
    .end local v23    # "numRegions":I
    :cond_6
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 266
    const-string v4, "KahunaEngine"

    const-string v10, "Server responded with available geofence regions but device is not setup properly."

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0
.end method

.method public static removeAllMonitoredRegions(Lcom/kahuna/sdk/KahunaAnalytics;)V
    .locals 4
    .param p0, "analytics"    # Lcom/kahuna/sdk/KahunaAnalytics;

    .prologue
    .line 204
    if-eqz p0, :cond_0

    instance-of v1, p0, Lcom/kahuna/sdk/KahunaAnalytics;

    if-nez v1, :cond_1

    .line 205
    :cond_0
    const-string v1, "KahunaEngine"

    const-string v2, "You cannot request to remove Kahuna monitoring specs externally from the Kahuna SDK. Aborting!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :goto_0
    return-void

    .line 209
    :cond_1
    sget-object v1, Lcom/kahuna/sdk/location/KahunaRegionManager;->instance:Lcom/kahuna/sdk/location/KahunaRegionManager;

    iget-object v2, v1, Lcom/kahuna/sdk/location/KahunaRegionManager;->mRegionsBeingMonitoredLock:Ljava/lang/Object;

    monitor-enter v2

    .line 210
    :try_start_0
    sget-object v1, Lcom/kahuna/sdk/location/KahunaRegionManager;->instance:Lcom/kahuna/sdk/location/KahunaRegionManager;

    iget-object v1, v1, Lcom/kahuna/sdk/location/KahunaRegionManager;->mRegionsBeingMonitored:Ljava/util/Map;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/kahuna/sdk/location/KahunaRegionManager;->instance:Lcom/kahuna/sdk/location/KahunaRegionManager;

    iget-object v1, v1, Lcom/kahuna/sdk/location/KahunaRegionManager;->mRegionsBeingMonitored:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/kahuna/sdk/location/KahunaRegionManager;->instance:Lcom/kahuna/sdk/location/KahunaRegionManager;

    iget-object v1, v1, Lcom/kahuna/sdk/location/KahunaRegionManager;->mRegionsBeingMonitored:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 212
    .local v0, "regionsToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/kahuna/sdk/location/KahunaRegionManager;->instance:Lcom/kahuna/sdk/location/KahunaRegionManager;

    iget-object v1, v1, Lcom/kahuna/sdk/location/KahunaRegionManager;->mGeofenceRemover:Lcom/kahuna/sdk/location/KahunaGeofenceRemover;

    invoke-virtual {v1, v0}, Lcom/kahuna/sdk/location/KahunaGeofenceRemover;->removeGeofencesById(Ljava/util/List;)V

    .line 213
    sget-object v1, Lcom/kahuna/sdk/location/KahunaRegionManager;->instance:Lcom/kahuna/sdk/location/KahunaRegionManager;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v1, Lcom/kahuna/sdk/location/KahunaRegionManager;->mRegionsBeingMonitored:Ljava/util/Map;

    .line 214
    sget-object v1, Lcom/kahuna/sdk/location/KahunaRegionManager;->instance:Lcom/kahuna/sdk/location/KahunaRegionManager;

    iget-object v1, v1, Lcom/kahuna/sdk/location/KahunaRegionManager;->mRegionsBeingMonitored:Ljava/util/Map;

    sget-object v3, Lcom/kahuna/sdk/location/KahunaRegionManager;->instance:Lcom/kahuna/sdk/location/KahunaRegionManager;

    iget-object v3, v3, Lcom/kahuna/sdk/location/KahunaRegionManager;->mContext:Landroid/content/Context;

    invoke-static {p0, v1, v3}, Lcom/kahuna/sdk/KahunaPreferences;->saveRegionIds(Lcom/kahuna/sdk/KahunaAnalytics;Ljava/util/Map;Landroid/content/Context;)V

    .line 216
    .end local v0    # "regionsToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static servicesConnected(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 283
    const/4 v1, 0x0

    .line 285
    .local v1, "readyForGeo":Z
    :try_start_0
    invoke-static {p0}, Lcom/kahuna/sdk/location/KahunaLocationUtils;->hasPlayServices(Landroid/content/Context;)Z

    move-result v1

    .line 286
    if-eqz v1, :cond_0

    .line 288
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v2}, Lcom/kahuna/sdk/location/KahunaLocationUtils;->checkManifestPermission(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 306
    :cond_0
    :goto_0
    return v1

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 293
    const-string v2, "KahunaEngine"

    const-string v3, "Caught error when checking for play services. If you are NOT using Geofencing please ignore this error: "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const-string v2, "KahunaEngine"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 296
    :cond_1
    const/4 v1, 0x0

    .line 304
    goto :goto_0

    .line 298
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 299
    .local v0, "e":Ljava/lang/Error;
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 300
    const-string v2, "KahunaEngine"

    const-string v3, "Caught error when checking for play services. If you are NOT using Geofencing please ignore this error: "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const-string v2, "KahunaEngine"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 303
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
