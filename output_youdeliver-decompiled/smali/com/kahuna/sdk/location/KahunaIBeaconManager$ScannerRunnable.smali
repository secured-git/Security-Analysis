.class Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScannerRunnable;
.super Ljava/lang/Object;
.source "KahunaIBeaconManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kahuna/sdk/location/KahunaIBeaconManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScannerRunnable"
.end annotation


# instance fields
.field private lock:Ljava/lang/Object;

.field private stopScanning:Z

.field final synthetic this$0:Lcom/kahuna/sdk/location/KahunaIBeaconManager;


# direct methods
.method private constructor <init>(Lcom/kahuna/sdk/location/KahunaIBeaconManager;)V
    .locals 1

    .prologue
    .line 301
    iput-object p1, p0, Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScannerRunnable;->this$0:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScannerRunnable;->lock:Ljava/lang/Object;

    .line 304
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScannerRunnable;->stopScanning:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/kahuna/sdk/location/KahunaIBeaconManager;Lcom/kahuna/sdk/location/KahunaIBeaconManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kahuna/sdk/location/KahunaIBeaconManager;
    .param p2, "x1"    # Lcom/kahuna/sdk/location/KahunaIBeaconManager$1;

    .prologue
    .line 301
    invoke-direct {p0, p1}, Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScannerRunnable;-><init>(Lcom/kahuna/sdk/location/KahunaIBeaconManager;)V

    return-void
.end method


# virtual methods
.method public resumeScan()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 313
    iget-object v2, p0, Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScannerRunnable;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 314
    :try_start_0
    iget-boolean v3, p0, Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScannerRunnable;->stopScanning:Z

    if-nez v3, :cond_0

    .line 315
    monitor-exit v2

    .line 322
    :goto_0
    return v0

    .line 317
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScannerRunnable;->stopScanning:Z

    .line 318
    invoke-static {}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->access$100()Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;

    move-result-object v3

    sget-object v4, Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;->SCANNING:Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;

    if-ne v3, v4, :cond_1

    .line 319
    monitor-exit v2

    goto :goto_0

    .line 320
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 322
    goto :goto_0
.end method

.method public run()V
    .locals 8

    .prologue
    .line 327
    iget-object v5, p0, Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScannerRunnable;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 328
    :try_start_0
    sget-object v4, Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;->SCANNING:Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;

    invoke-static {v4}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->access$102(Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;)Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;

    .line 329
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 330
    iget-boolean v3, p0, Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScannerRunnable;->stopScanning:Z

    .line 331
    .local v3, "shouldStopScanning":Z
    :goto_0
    if-nez v3, :cond_5

    .line 333
    iget-object v4, p0, Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScannerRunnable;->this$0:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    new-instance v5, Ljava/util/HashSet;

    iget-object v6, p0, Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScannerRunnable;->this$0:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    invoke-static {v6}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->access$300(Lcom/kahuna/sdk/location/KahunaIBeaconManager;)Ljava/util/Set;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v4, v5}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->access$202(Lcom/kahuna/sdk/location/KahunaIBeaconManager;Ljava/util/Set;)Ljava/util/Set;

    .line 334
    iget-object v4, p0, Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScannerRunnable;->this$0:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    invoke-static {v4}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->access$300(Lcom/kahuna/sdk/location/KahunaIBeaconManager;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 335
    invoke-static {}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->access$500()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScannerRunnable;->this$0:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    invoke-static {v5}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->access$400(Lcom/kahuna/sdk/location/KahunaIBeaconManager;)Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    .line 336
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 337
    const-string v4, "KahunaEngine"

    const-string v5, "Beginning BLE Scan"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_0
    const-wide/16 v4, 0x2710

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 341
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 342
    const-string v4, "KahunaEngine"

    const-string v5, "BLE Scan resting period"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_1
    invoke-static {}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->access$500()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScannerRunnable;->this$0:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    invoke-static {v5}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->access$400(Lcom/kahuna/sdk/location/KahunaIBeaconManager;)Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 346
    invoke-static {}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->access$600()Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    move-result-object v4

    invoke-static {v4}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->access$700(Lcom/kahuna/sdk/location/KahunaIBeaconManager;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 347
    :try_start_2
    iget-object v4, p0, Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScannerRunnable;->this$0:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    invoke-static {v4}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->access$200(Lcom/kahuna/sdk/location/KahunaIBeaconManager;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kahuna/sdk/location/KahunaIBeacon;

    .line 348
    .local v0, "beacon":Lcom/kahuna/sdk/location/KahunaIBeacon;
    invoke-static {}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->access$600()Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    move-result-object v4

    invoke-static {v4}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->access$800(Lcom/kahuna/sdk/location/KahunaIBeaconManager;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->access$900(Ljava/util/Set;Lcom/kahuna/sdk/location/KahunaIBeacon;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScannerRunnable;->this$0:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    invoke-static {v4}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->access$300(Lcom/kahuna/sdk/location/KahunaIBeaconManager;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->access$900(Ljava/util/Set;Lcom/kahuna/sdk/location/KahunaIBeacon;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 350
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 351
    const-string v4, "KahunaEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Tracking iBeacon exit for UUID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/kahuna/sdk/location/KahunaIBeacon;->getUuid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_3
    invoke-static {}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->access$600()Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    move-result-object v4

    invoke-static {v4}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->access$1000(Lcom/kahuna/sdk/location/KahunaIBeaconManager;)Lcom/kahuna/sdk/KahunaAnalytics;

    move-result-object v4

    const-string v6, "exit"

    invoke-static {v4, v0, v6}, Lcom/kahuna/sdk/KahunaAnalytics;->_internalTrackiBeaconEvent(Lcom/kahuna/sdk/KahunaAnalytics;Lcom/kahuna/sdk/location/KahunaIBeacon;Ljava/lang/String;)V

    goto :goto_1

    .line 356
    .end local v0    # "beacon":Lcom/kahuna/sdk/location/KahunaIBeacon;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 359
    :catch_0
    move-exception v1

    .line 360
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 362
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    iget-object v5, p0, Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScannerRunnable;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 363
    :try_start_4
    iget-boolean v3, p0, Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScannerRunnable;->stopScanning:Z

    .line 364
    monitor-exit v5

    goto/16 :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    .line 329
    .end local v3    # "shouldStopScanning":Z
    :catchall_2
    move-exception v4

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v4

    .line 356
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "shouldStopScanning":Z
    :cond_4
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 358
    const-wide/16 v4, 0x2710

    :try_start_7
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_2

    .line 366
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_5
    iget-object v5, p0, Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScannerRunnable;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 367
    :try_start_8
    sget-object v4, Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;->NOT_SCANNING:Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;

    invoke-static {v4}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->access$102(Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;)Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;

    .line 368
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScannerRunnable;->stopScanning:Z

    .line 369
    monitor-exit v5

    .line 370
    return-void

    .line 369
    :catchall_3
    move-exception v4

    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v4
.end method

.method public stopScan()V
    .locals 2

    .prologue
    .line 307
    iget-object v1, p0, Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScannerRunnable;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 308
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScannerRunnable;->stopScanning:Z

    .line 309
    monitor-exit v1

    .line 310
    return-void

    .line 309
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
