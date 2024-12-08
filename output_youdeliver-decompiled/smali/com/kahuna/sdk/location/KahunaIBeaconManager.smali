.class public Lcom/kahuna/sdk/location/KahunaIBeaconManager;
.super Ljava/lang/Object;
.source "KahunaIBeaconManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScannerRunnable;,
        Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;
    }
.end annotation


# static fields
.field private static final ADV_PREFIX:[B

.field protected static final DEFAULT_EXPIRY_DURATION_SECONDS:J = 0x15180L

.field static final HEXES:Ljava/lang/String; = "0123456789ABCDEF"

.field private static final SCAN_PERIOD:J = 0x2710L

.field private static final UUID_LEN:I = 0x10

.field private static final instance:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

.field private static mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private static runnable:Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScannerRunnable;

.field private static state:Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;


# instance fields
.field private mAnalyticsReference:Lcom/kahuna/sdk/KahunaAnalytics;

.field private mBeaconSetLock:Ljava/lang/Object;

.field private mCurrentBeaconFilters:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/kahuna/sdk/location/KahunaIBeacon;",
            ">;"
        }
    .end annotation
.end field

.field private mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field private prevScannedIBeacons:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/kahuna/sdk/location/KahunaIBeacon;",
            ">;"
        }
    .end annotation
.end field

.field private readyForIBeaconMonitoring:Z

.field private scanInProgressIBeacons:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/kahuna/sdk/location/KahunaIBeacon;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->ADV_PREFIX:[B

    .line 67
    sget-object v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;->NOT_SCANNING:Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;

    sput-object v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->state:Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;

    .line 76
    new-instance v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    invoke-direct {v0}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;-><init>()V

    sput-object v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->instance:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    return-void

    .line 52
    nop

    :array_0
    .array-data 1
        0x2t
        0x1t
        0x6t
        0x1at
        -0x1t
        0x4ct
        0x0t
        0x2t
        0x15t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->prevScannedIBeacons:Ljava/util/Set;

    .line 70
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->scanInProgressIBeacons:Ljava/util/Set;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->readyForIBeaconMonitoring:Z

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->mBeaconSetLock:Ljava/lang/Object;

    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->mCurrentBeaconFilters:Ljava/util/Set;

    .line 374
    new-instance v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager$1;

    invoke-direct {v0, p0}, Lcom/kahuna/sdk/location/KahunaIBeaconManager$1;-><init>(Lcom/kahuna/sdk/location/KahunaIBeaconManager;)V

    iput-object v0, p0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 80
    return-void
.end method

.method private static JSONArrayToIBeaconSet(Lorg/json/JSONArray;)Ljava/util/Set;
    .locals 8
    .param p0, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/kahuna/sdk/location/KahunaIBeacon;",
            ">;"
        }
    .end annotation

    .prologue
    .line 544
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 545
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 570
    :cond_1
    return-object v1

    .line 548
    :cond_2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 549
    .local v1, "beaconSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/kahuna/sdk/location/KahunaIBeacon;>;"
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 550
    .local v5, "numIBeacons":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_1

    .line 552
    :try_start_0
    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 553
    .local v2, "currObject":Lorg/json/JSONObject;
    if-nez v2, :cond_4

    .line 550
    .end local v2    # "currObject":Lorg/json/JSONObject;
    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 557
    .restart local v2    # "currObject":Lorg/json/JSONObject;
    :cond_4
    invoke-static {v2}, Lcom/kahuna/sdk/location/KahunaIBeacon;->fromJSONObject(Lorg/json/JSONObject;)Lcom/kahuna/sdk/location/KahunaIBeacon;

    move-result-object v0

    .line 558
    .local v0, "beacon":Lcom/kahuna/sdk/location/KahunaIBeacon;
    if-eqz v0, :cond_3

    .line 561
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 563
    .end local v0    # "beacon":Lcom/kahuna/sdk/location/KahunaIBeacon;
    .end local v2    # "currObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 564
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 565
    const-string v6, "KahunaEngine"

    const-string v7, "Caught exception when performing serialization of saved iBeacons"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const-string v6, "KahunaEngine"

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method static synthetic access$100()Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->state:Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/kahuna/sdk/location/KahunaIBeaconManager;)Lcom/kahuna/sdk/KahunaAnalytics;
    .locals 1
    .param p0, "x0"    # Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->mAnalyticsReference:Lcom/kahuna/sdk/KahunaAnalytics;

    return-object v0
.end method

.method static synthetic access$102(Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;)Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;
    .locals 0
    .param p0, "x0"    # Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;

    .prologue
    .line 41
    sput-object p0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->state:Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/kahuna/sdk/location/KahunaIBeaconManager;[B)Lcom/kahuna/sdk/location/KahunaIBeacon;
    .locals 1
    .param p0, "x0"    # Lcom/kahuna/sdk/location/KahunaIBeaconManager;
    .param p1, "x1"    # [B

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->parseAdvertisementData([B)Lcom/kahuna/sdk/location/KahunaIBeacon;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/kahuna/sdk/location/KahunaIBeaconManager;ID)D
    .locals 2
    .param p0, "x0"    # Lcom/kahuna/sdk/location/KahunaIBeaconManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # D

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->calculateDistance(ID)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/kahuna/sdk/location/KahunaIBeaconManager;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->prevScannedIBeacons:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$202(Lcom/kahuna/sdk/location/KahunaIBeaconManager;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .param p0, "x0"    # Lcom/kahuna/sdk/location/KahunaIBeaconManager;
    .param p1, "x1"    # Ljava/util/Set;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->prevScannedIBeacons:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic access$300(Lcom/kahuna/sdk/location/KahunaIBeaconManager;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->scanInProgressIBeacons:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400(Lcom/kahuna/sdk/location/KahunaIBeaconManager;)Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    .locals 1
    .param p0, "x0"    # Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    return-object v0
.end method

.method static synthetic access$500()Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$600()Lcom/kahuna/sdk/location/KahunaIBeaconManager;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->instance:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/kahuna/sdk/location/KahunaIBeaconManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->mBeaconSetLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/kahuna/sdk/location/KahunaIBeaconManager;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->mCurrentBeaconFilters:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$900(Ljava/util/Set;Lcom/kahuna/sdk/location/KahunaIBeacon;)Z
    .locals 1
    .param p0, "x0"    # Ljava/util/Set;
    .param p1, "x1"    # Lcom/kahuna/sdk/location/KahunaIBeacon;

    .prologue
    .line 41
    invoke-static {p0, p1}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->setContainsIBeacon(Ljava/util/Set;Lcom/kahuna/sdk/location/KahunaIBeacon;)Z

    move-result v0

    return v0
.end method

.method private calculateDistance(ID)D
    .locals 10
    .param p1, "txPower"    # I
    .param p2, "rssi"    # D

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 450
    const-wide/16 v4, 0x0

    cmpl-double v4, p2, v4

    if-nez v4, :cond_0

    .line 451
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 460
    :goto_0
    return-wide v0

    .line 454
    :cond_0
    mul-double v4, p2, v8

    int-to-double v6, p1

    div-double v2, v4, v6

    .line 455
    .local v2, "ratio":D
    cmpg-double v4, v2, v8

    if-gez v4, :cond_1

    .line 456
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    goto :goto_0

    .line 459
    :cond_1
    const-wide v4, 0x3feccad57bc7f77bL    # 0.89976

    const-wide v6, 0x401ed6872b020c4aL    # 7.7095

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    const-wide v6, 0x3fbc6a7ef9db22d1L    # 0.111

    add-double v0, v4, v6

    .line 460
    .local v0, "accuracy":D
    goto :goto_0
.end method

.method public static checkForExpiredBeacons(Lcom/kahuna/sdk/KahunaAnalytics;Landroid/content/Context;)V
    .locals 12
    .param p0, "analytics"    # Lcom/kahuna/sdk/KahunaAnalytics;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 208
    if-eqz p0, :cond_0

    instance-of v6, p0, Lcom/kahuna/sdk/KahunaAnalytics;

    if-nez v6, :cond_1

    .line 209
    :cond_0
    const-string v6, "KahunaEngine"

    const-string v7, "You cannot use IBeacon Manager externally from the Kahuna SDK. Aborting!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :goto_0
    return-void

    .line 213
    :cond_1
    sget-object v6, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->instance:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    iget-object v7, v6, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->mBeaconSetLock:Ljava/lang/Object;

    monitor-enter v7

    .line 214
    :try_start_0
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 215
    .local v5, "nonExpiredBeacons":Ljava/util/Set;, "Ljava/util/Set<Lcom/kahuna/sdk/location/KahunaIBeacon;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v2, v8, v10

    .line 216
    .local v2, "currentTimeSeconds":J
    sget-object v6, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->instance:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    iget-object v6, v6, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->mCurrentBeaconFilters:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kahuna/sdk/location/KahunaIBeacon;

    .line 217
    .local v1, "beacon":Lcom/kahuna/sdk/location/KahunaIBeacon;
    invoke-virtual {v1}, Lcom/kahuna/sdk/location/KahunaIBeacon;->getExpireTimeSeconds()J

    move-result-wide v8

    cmp-long v6, v8, v2

    if-lez v6, :cond_2

    .line 218
    invoke-interface {v5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 229
    .end local v1    # "beacon":Lcom/kahuna/sdk/location/KahunaIBeacon;
    .end local v2    # "currentTimeSeconds":J
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "nonExpiredBeacons":Ljava/util/Set;, "Ljava/util/Set<Lcom/kahuna/sdk/location/KahunaIBeacon;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 221
    .restart local v2    # "currentTimeSeconds":J
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "nonExpiredBeacons":Ljava/util/Set;, "Ljava/util/Set<Lcom/kahuna/sdk/location/KahunaIBeacon;>;"
    :cond_3
    :try_start_1
    sget-object v6, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->instance:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    iput-object v5, v6, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->mCurrentBeaconFilters:Ljava/util/Set;

    .line 222
    sget-object v6, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->instance:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    iget-object v6, v6, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->mCurrentBeaconFilters:Ljava/util/Set;

    invoke-static {v6}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->iBeaconSetToJSONArray(Ljava/util/Set;)Lorg/json/JSONArray;

    move-result-object v0

    .line 223
    .local v0, "arrayToSave":Lorg/json/JSONArray;
    invoke-static {p0, p1, v0}, Lcom/kahuna/sdk/KahunaPreferences;->saveIBeacons(Lcom/kahuna/sdk/KahunaAnalytics;Landroid/content/Context;Lorg/json/JSONArray;)V

    .line 225
    sget-object v6, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->instance:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    iget-object v6, v6, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->mCurrentBeaconFilters:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    if-nez v6, :cond_4

    .line 226
    invoke-static {p0}, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->removeActivityUpdates(Lcom/kahuna/sdk/KahunaAnalytics;)V

    .line 229
    :cond_4
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static getCurrentlyMonitorediBeacons(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/util/Set;
    .locals 7
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

    instance-of v4, p0, Lcom/kahuna/sdk/KahunaAnalytics;

    if-nez v4, :cond_2

    .line 186
    :cond_0
    const-string v4, "KahunaEngine"

    const-string v5, "You cannot use IBeacon Manager externally from the Kahuna SDK. Aborting!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 204
    :cond_1
    :goto_0
    return-object v3

    .line 190
    :cond_2
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 192
    .local v3, "idsMonitored":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    sget-object v4, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->instance:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    iget-object v5, v4, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->mBeaconSetLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :try_start_1
    sget-object v4, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->instance:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    iget-object v4, v4, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->mCurrentBeaconFilters:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kahuna/sdk/location/KahunaIBeacon;

    .line 194
    .local v0, "beacon":Lcom/kahuna/sdk/location/KahunaIBeacon;
    invoke-virtual {v0}, Lcom/kahuna/sdk/location/KahunaIBeacon;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 196
    .end local v0    # "beacon":Lcom/kahuna/sdk/location/KahunaIBeacon;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 198
    :catch_0
    move-exception v1

    .line 199
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 200
    const-string v4, "KahunaEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception when getting currently monitored beacons: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 196
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private static iBeaconSetToJSONArray(Ljava/util/Set;)Lorg/json/JSONArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/kahuna/sdk/location/KahunaIBeacon;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 526
    .local p0, "targetSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/kahuna/sdk/location/KahunaIBeacon;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 527
    :cond_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 540
    :cond_1
    return-object v2

    .line 530
    :cond_2
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 531
    .local v2, "iBeaconArray":Lorg/json/JSONArray;
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kahuna/sdk/location/KahunaIBeacon;

    .line 532
    .local v0, "beacon":Lcom/kahuna/sdk/location/KahunaIBeacon;
    invoke-virtual {v0}, Lcom/kahuna/sdk/location/KahunaIBeacon;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    .line 533
    .local v3, "object":Lorg/json/JSONObject;
    if-eqz v3, :cond_3

    .line 537
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0
.end method

.method public static init(Lcom/kahuna/sdk/KahunaAnalytics;Landroid/content/Context;)V
    .locals 5
    .param p0, "analytics"    # Lcom/kahuna/sdk/KahunaAnalytics;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    if-eqz p0, :cond_0

    instance-of v2, p0, Lcom/kahuna/sdk/KahunaAnalytics;

    if-nez v2, :cond_1

    .line 84
    :cond_0
    const-string v2, "KahunaEngine"

    const-string v3, "You cannot init the IBeacon Manager externally from the Kahuna SDK. Aborting!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :goto_0
    return-void

    .line 89
    :cond_1
    invoke-static {}, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->isInited()Z

    move-result v2

    if-nez v2, :cond_2

    .line 90
    invoke-static {p0, p1}, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->init(Lcom/kahuna/sdk/KahunaAnalytics;Landroid/content/Context;)V

    .line 92
    :cond_2
    sget-object v2, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->instance:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    iput-object p0, v2, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->mAnalyticsReference:Lcom/kahuna/sdk/KahunaAnalytics;

    .line 93
    sget-object v2, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->instance:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    invoke-static {p1}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->servicesConnected(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->readyForIBeaconMonitoring:Z

    .line 94
    new-instance v2, Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScannerRunnable;

    sget-object v3, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->instance:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScannerRunnable;-><init>(Lcom/kahuna/sdk/location/KahunaIBeaconManager;Lcom/kahuna/sdk/location/KahunaIBeaconManager$1;)V

    sput-object v2, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->runnable:Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScannerRunnable;

    .line 96
    const-string v2, "bluetooth"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 97
    .local v0, "bluetoothManager":Landroid/bluetooth/BluetoothManager;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    sput-object v2, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 100
    sget-object v2, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->instance:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    iget-object v3, v2, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->mBeaconSetLock:Ljava/lang/Object;

    monitor-enter v3

    .line 101
    :try_start_0
    invoke-static {p0, p1}, Lcom/kahuna/sdk/KahunaPreferences;->getSavedIBeacons(Lcom/kahuna/sdk/KahunaAnalytics;Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v1

    .line 102
    .local v1, "savedBeaconArray":Lorg/json/JSONArray;
    sget-object v2, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->instance:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    invoke-static {v1}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->JSONArrayToIBeaconSet(Lorg/json/JSONArray;)Ljava/util/Set;

    move-result-object v4

    iput-object v4, v2, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->mCurrentBeaconFilters:Ljava/util/Set;

    .line 103
    sget-object v2, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->instance:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    iget-object v2, v2, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->mCurrentBeaconFilters:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 104
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 105
    const-string v2, "KahunaEngine"

    const-string v4, "Activating Activity Recognition due to previously saved iBeacon tracking."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_3
    invoke-static {p0}, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->requestActivityUpdates(Lcom/kahuna/sdk/KahunaAnalytics;)V

    .line 109
    :cond_4
    monitor-exit v3

    goto :goto_0

    .end local v1    # "savedBeaconArray":Lorg/json/JSONArray;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static isDeviceReadyForIBeaconMonitoring(Lcom/kahuna/sdk/KahunaAnalytics;)Z
    .locals 2
    .param p0, "analytics"    # Lcom/kahuna/sdk/KahunaAnalytics;

    .prologue
    .line 113
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/kahuna/sdk/KahunaAnalytics;

    if-nez v0, :cond_1

    .line 114
    :cond_0
    const-string v0, "KahunaEngine"

    const-string v1, "You cannot use IBeacon Manager externally from the Kahuna SDK. Aborting!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v0, 0x0

    .line 118
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->instance:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    iget-boolean v0, v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->readyForIBeaconMonitoring:Z

    goto :goto_0
.end method

.method private isIBeaconAdvertisement([B)Z
    .locals 4
    .param p1, "data"    # [B

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v0, 0x0

    .line 412
    sget-object v1, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->ADV_PREFIX:[B

    invoke-static {v1, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {p1, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->ADV_PREFIX:[B

    sget-object v2, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->ADV_PREFIX:[B

    array-length v2, v2

    invoke-static {v1, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    sget-object v2, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->ADV_PREFIX:[B

    array-length v2, v2

    invoke-static {p1, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 414
    const/4 v0, 0x1

    .line 417
    :cond_0
    return v0
.end method

.method private parseAdvertisementData([B)Lcom/kahuna/sdk/location/KahunaIBeacon;
    .locals 9
    .param p1, "data"    # [B

    .prologue
    const/4 v2, 0x0

    const v7, 0xff00

    .line 427
    invoke-direct {p0, p1}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->isIBeaconAdvertisement([B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 428
    sget-object v3, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->ADV_PREFIX:[B

    array-length v3, v3

    sget-object v6, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->ADV_PREFIX:[B

    array-length v6, v6

    add-int/lit8 v6, v6, 0x10

    invoke-static {p1, v3, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    .line 430
    .local v8, "uuid":[B
    sget-object v3, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->ADV_PREFIX:[B

    array-length v3, v3

    add-int/lit8 v0, v3, 0x10

    .line 431
    .local v0, "offset":I
    aget-byte v3, p1, v0

    shl-int/lit8 v3, v3, 0x8

    and-int/2addr v3, v7

    add-int/lit8 v6, v0, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    or-int v4, v3, v6

    .line 432
    .local v4, "major":I
    add-int/lit8 v3, v0, 0x2

    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x8

    and-int/2addr v3, v7

    add-int/lit8 v6, v0, 0x3

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    or-int v5, v3, v6

    .line 433
    .local v5, "minor":I
    new-instance v1, Lcom/kahuna/sdk/location/KahunaIBeacon;

    invoke-static {v8}, Lcom/kahuna/sdk/location/KahunaIBeacon;->getUuidHexString([B)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v6, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/kahuna/sdk/location/KahunaIBeacon;-><init>(Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 435
    .local v1, "ibeacon":Lcom/kahuna/sdk/location/KahunaIBeacon;
    add-int/lit8 v2, v0, 0x4

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x18

    shr-int/lit8 v2, v2, 0x18

    invoke-virtual {v1, v2}, Lcom/kahuna/sdk/location/KahunaIBeacon;->setPowerValue(I)V

    .line 438
    .end local v0    # "offset":I
    .end local v1    # "ibeacon":Lcom/kahuna/sdk/location/KahunaIBeacon;
    .end local v4    # "major":I
    .end local v5    # "minor":I
    .end local v8    # "uuid":[B
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v2

    goto :goto_0
.end method

.method public static processServerIBeacons(Lcom/kahuna/sdk/KahunaAnalytics;Lorg/json/JSONObject;Landroid/content/Context;)V
    .locals 22
    .param p0, "analytics"    # Lcom/kahuna/sdk/KahunaAnalytics;
    .param p1, "locationObject"    # Lorg/json/JSONObject;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 233
    if-eqz p0, :cond_0

    move-object/from16 v0, p0

    instance-of v3, v0, Lcom/kahuna/sdk/KahunaAnalytics;

    if-nez v3, :cond_2

    .line 234
    :cond_0
    const-string v3, "KahunaEngine"

    const-string v18, "You cannot request to process iBeacons externally from the Kahuna SDK. Aborting!"

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_1
    :goto_0
    return-void

    .line 239
    :cond_2
    :try_start_0
    const-string v3, "beacon"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 240
    .local v15, "iBeaconsArray":Lorg/json/JSONArray;
    if-eqz v15, :cond_1

    .line 241
    sget-object v3, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->instance:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    iget-boolean v3, v3, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->readyForIBeaconMonitoring:Z

    if-nez v3, :cond_3

    .line 242
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 243
    const-string v3, "KahunaEngine"

    const-string v18, "App doens\'t have required permissions for iBeacon Monitoring. Aborting processing of server response"

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 294
    .end local v15    # "iBeaconsArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v11

    .line 295
    .local v11, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 296
    const-string v3, "KahunaEngine"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Caught exception in iBeacon Manager process server iBeacons: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 248
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v15    # "iBeaconsArray":Lorg/json/JSONArray;
    :cond_3
    :try_start_1
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .local v16, "newServerIBeacons":Ljava/util/List;, "Ljava/util/List<Lcom/kahuna/sdk/location/KahunaIBeacon;>;"
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v17

    .line 250
    .local v17, "numBeacons":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    div-long v12, v18, v20
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 251
    .local v12, "currentTimeSeconds":J
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    move/from16 v0, v17

    if-ge v14, v0, :cond_6

    .line 254
    :try_start_2
    invoke-virtual {v15, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 255
    .local v10, "currBeaconObject":Lorg/json/JSONObject;
    if-eqz v10, :cond_4

    .line 256
    const-string v3, "id"

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 257
    .local v4, "regionId":Ljava/lang/String;
    const-string v3, "uuid"

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 258
    .local v5, "uuid":Ljava/lang/String;
    const-string v3, "major"

    const/16 v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v10, v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 259
    .local v6, "major":I
    const-string v3, "minor"

    const/16 v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v10, v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 260
    .local v7, "minor":I
    const-string v3, "expiry"

    const-wide/16 v18, -0x1

    move-wide/from16 v0, v18

    invoke-virtual {v10, v3, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 262
    .local v8, "expiredTimeSeconds":J
    const-wide/16 v18, 0x0

    cmp-long v3, v8, v18

    if-lez v3, :cond_5

    cmp-long v3, v8, v12

    if-gez v3, :cond_5

    .line 263
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 264
    const-string v3, "KahunaEngine"

    const-string v18, "Received iBeacon monitor request that already expired, ignoring..."

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    .end local v4    # "regionId":Ljava/lang/String;
    .end local v5    # "uuid":Ljava/lang/String;
    .end local v6    # "major":I
    .end local v7    # "minor":I
    .end local v8    # "expiredTimeSeconds":J
    .end local v10    # "currBeaconObject":Lorg/json/JSONObject;
    :cond_4
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 269
    .restart local v4    # "regionId":Ljava/lang/String;
    .restart local v5    # "uuid":Ljava/lang/String;
    .restart local v6    # "major":I
    .restart local v7    # "minor":I
    .restart local v8    # "expiredTimeSeconds":J
    .restart local v10    # "currBeaconObject":Lorg/json/JSONObject;
    :cond_5
    new-instance v3, Lcom/kahuna/sdk/location/KahunaIBeacon;

    invoke-direct/range {v3 .. v9}, Lcom/kahuna/sdk/location/KahunaIBeacon;-><init>(Ljava/lang/String;Ljava/lang/String;IIJ)V

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 272
    .end local v4    # "regionId":Ljava/lang/String;
    .end local v5    # "uuid":Ljava/lang/String;
    .end local v6    # "major":I
    .end local v7    # "minor":I
    .end local v8    # "expiredTimeSeconds":J
    .end local v10    # "currBeaconObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v11

    .line 273
    .restart local v11    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 274
    const-string v3, "KahunaEngine"

    const-string v18, "Encountered error processing geofence regions from Kahuna servers."

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 280
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_6
    sget-object v3, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->instance:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    iget-object v0, v3, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->mBeaconSetLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 281
    :try_start_4
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 282
    sget-object v3, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->instance:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    iget-object v3, v3, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->mCurrentBeaconFilters:Ljava/util/Set;

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 283
    invoke-static/range {p0 .. p0}, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->requestActivityUpdates(Lcom/kahuna/sdk/KahunaAnalytics;)V

    .line 289
    :goto_3
    sget-object v3, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->instance:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    iget-object v3, v3, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->mCurrentBeaconFilters:Ljava/util/Set;

    invoke-static {v3}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->iBeaconSetToJSONArray(Ljava/util/Set;)Lorg/json/JSONArray;

    move-result-object v2

    .line 290
    .local v2, "arrayToSave":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1, v2}, Lcom/kahuna/sdk/KahunaPreferences;->saveIBeacons(Lcom/kahuna/sdk/KahunaAnalytics;Landroid/content/Context;Lorg/json/JSONArray;)V

    .line 291
    monitor-exit v18

    goto/16 :goto_0

    .end local v2    # "arrayToSave":Lorg/json/JSONArray;
    :catchall_0
    move-exception v3

    monitor-exit v18
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 286
    :cond_7
    :try_start_6
    sget-object v3, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->instance:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    iget-object v3, v3, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->mCurrentBeaconFilters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 287
    invoke-static/range {p0 .. p0}, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->removeActivityUpdates(Lcom/kahuna/sdk/KahunaAnalytics;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3
.end method

.method private static servicesConnected(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 472
    const/4 v1, 0x0

    .line 474
    .local v1, "readyForiBeaconMonitoring":Z
    :try_start_0
    invoke-static {p0}, Lcom/kahuna/sdk/location/KahunaLocationUtils;->hasPlayServices(Landroid/content/Context;)Z

    move-result v1

    .line 475
    if-eqz v1, :cond_0

    .line 476
    invoke-static {}, Lcom/kahuna/sdk/location/KahunaActivityRecognitionManager;->isDeviceReadyForActivityRecognition()Z

    move-result v1

    .line 478
    :cond_0
    if-eqz v1, :cond_1

    .line 479
    const-string v2, "android.permission.BLUETOOTH"

    invoke-static {p0, v2}, Lcom/kahuna/sdk/location/KahunaLocationUtils;->checkManifestPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 481
    :cond_1
    if-eqz v1, :cond_2

    .line 482
    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-static {p0, v2}, Lcom/kahuna/sdk/location/KahunaLocationUtils;->checkManifestPermission(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 500
    :cond_2
    :goto_0
    return v1

    .line 485
    :catch_0
    move-exception v0

    .line 486
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 487
    const-string v2, "KahunaEngine"

    const-string v3, "Caught error when checking for iBeacon Monitoring. If you are NOT using iBeacons please ignore this warning: "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const-string v2, "KahunaEngine"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 490
    :cond_3
    const/4 v1, 0x0

    .line 498
    goto :goto_0

    .line 492
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 493
    .local v0, "e":Ljava/lang/Error;
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 494
    const-string v2, "KahunaEngine"

    const-string v3, "Caught error when checking for iBeacon Monitoring. If you are NOT using iBeacons please ignore this warning: "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const-string v2, "KahunaEngine"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 497
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static setContainsIBeacon(Ljava/util/Set;Lcom/kahuna/sdk/location/KahunaIBeacon;)Z
    .locals 4
    .param p1, "desiredBeacon"    # Lcom/kahuna/sdk/location/KahunaIBeacon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/kahuna/sdk/location/KahunaIBeacon;",
            ">;",
            "Lcom/kahuna/sdk/location/KahunaIBeacon;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "targetSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/kahuna/sdk/location/KahunaIBeacon;>;"
    const/4 v2, 0x0

    .line 512
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 522
    :cond_0
    :goto_0
    return v2

    .line 516
    :cond_1
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kahuna/sdk/location/KahunaIBeacon;

    .line 517
    .local v0, "beacon":Lcom/kahuna/sdk/location/KahunaIBeacon;
    invoke-virtual {v0, p1}, Lcom/kahuna/sdk/location/KahunaIBeacon;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 518
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static startScanning(Lcom/kahuna/sdk/KahunaAnalytics;)V
    .locals 2
    .param p0, "analytics"    # Lcom/kahuna/sdk/KahunaAnalytics;

    .prologue
    .line 122
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/kahuna/sdk/KahunaAnalytics;

    if-nez v0, :cond_2

    .line 123
    :cond_0
    const-string v0, "KahunaEngine"

    const-string v1, "You cannot use IBeacon Manager externally from the Kahuna SDK. Aborting!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_1
    :goto_0
    return-void

    .line 127
    :cond_2
    sget-object v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->instance:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    iget-boolean v0, v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->readyForIBeaconMonitoring:Z

    if-nez v0, :cond_3

    .line 128
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    const-string v0, "KahunaEngine"

    const-string v1, "App doens\'t have required permissions for iBeacon Monitoring. Aborting request for scan"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 134
    :cond_3
    sget-object v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->state:Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;

    sget-object v1, Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;->NOT_SCANNING:Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;

    if-ne v0, v1, :cond_4

    .line 135
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->runnable:Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScannerRunnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 138
    :cond_4
    sget-object v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->runnable:Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScannerRunnable;

    if-eqz v0, :cond_1

    .line 139
    sget-object v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->runnable:Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScannerRunnable;

    invoke-virtual {v0}, Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScannerRunnable;->resumeScan()Z

    move-result v0

    if-nez v0, :cond_1

    .line 140
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->runnable:Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScannerRunnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static stopScanning(Lcom/kahuna/sdk/KahunaAnalytics;)V
    .locals 6
    .param p0, "analytics"    # Lcom/kahuna/sdk/KahunaAnalytics;

    .prologue
    .line 147
    if-eqz p0, :cond_0

    instance-of v2, p0, Lcom/kahuna/sdk/KahunaAnalytics;

    if-nez v2, :cond_2

    .line 148
    :cond_0
    const-string v2, "KahunaEngine"

    const-string v3, "You cannot use IBeacon Manager externally from the Kahuna SDK. Aborting!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_1
    :goto_0
    return-void

    .line 153
    :cond_2
    :try_start_0
    sget-object v2, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->runnable:Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScannerRunnable;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->state:Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;

    sget-object v3, Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;->SCANNING:Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;

    if-ne v2, v3, :cond_3

    .line 154
    sget-object v2, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->runnable:Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScannerRunnable;

    invoke-virtual {v2}, Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScannerRunnable;->stopScan()V

    .line 158
    :cond_3
    sget-object v2, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->instance:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    iget-object v3, v2, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->mBeaconSetLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :try_start_1
    sget-object v2, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->instance:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    iget-object v2, v2, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->prevScannedIBeacons:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kahuna/sdk/location/KahunaIBeacon;

    .line 160
    .local v0, "beacon":Lcom/kahuna/sdk/location/KahunaIBeacon;
    sget-object v2, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->instance:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    iget-object v2, v2, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->mCurrentBeaconFilters:Ljava/util/Set;

    invoke-static {v2, v0}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->setContainsIBeacon(Ljava/util/Set;Lcom/kahuna/sdk/location/KahunaIBeacon;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 162
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 163
    const-string v2, "KahunaEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tracking iBeacon exit for UUID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/kahuna/sdk/location/KahunaIBeacon;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_5
    sget-object v2, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->instance:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    iget-object v2, v2, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->mAnalyticsReference:Lcom/kahuna/sdk/KahunaAnalytics;

    const-string v4, "exit"

    invoke-static {v2, v0, v4}, Lcom/kahuna/sdk/KahunaAnalytics;->_internalTrackiBeaconEvent(Lcom/kahuna/sdk/KahunaAnalytics;Lcom/kahuna/sdk/location/KahunaIBeacon;Ljava/lang/String;)V

    goto :goto_1

    .line 168
    .end local v0    # "beacon":Lcom/kahuna/sdk/location/KahunaIBeacon;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 170
    :catch_0
    move-exception v2

    .line 174
    :goto_2
    sget-object v2, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->instance:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    iget-object v2, v2, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->prevScannedIBeacons:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 176
    sget-object v2, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->instance:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    iget-boolean v2, v2, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->readyForIBeaconMonitoring:Z

    if-nez v2, :cond_1

    .line 177
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    const-string v2, "KahunaEngine"

    const-string v3, "App doens\'t have required permissions for iBeacon Monitoring. Aborting request for scan"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 168
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_6
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method
