.class Lcom/kahuna/sdk/location/KahunaIBeaconManager$1;
.super Ljava/lang/Object;
.source "KahunaIBeaconManager.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kahuna/sdk/location/KahunaIBeaconManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kahuna/sdk/location/KahunaIBeaconManager;


# direct methods
.method constructor <init>(Lcom/kahuna/sdk/location/KahunaIBeaconManager;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/kahuna/sdk/location/KahunaIBeaconManager$1;->this$0:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "rssi"    # I
    .param p3, "scanRecord"    # [B

    .prologue
    .line 379
    iget-object v1, p0, Lcom/kahuna/sdk/location/KahunaIBeaconManager$1;->this$0:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    invoke-static {v1, p3}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->access$1100(Lcom/kahuna/sdk/location/KahunaIBeaconManager;[B)Lcom/kahuna/sdk/location/KahunaIBeacon;

    move-result-object v0

    .line 382
    .local v0, "newBeacon":Lcom/kahuna/sdk/location/KahunaIBeacon;
    if-nez v0, :cond_0

    .line 407
    :goto_0
    return-void

    .line 385
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kahuna/sdk/location/KahunaIBeacon;->setDeviceName(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kahuna/sdk/location/KahunaIBeacon;->setMacAddress(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v0, p2}, Lcom/kahuna/sdk/location/KahunaIBeacon;->setMeasuredRSSI(I)V

    .line 388
    iget-object v1, p0, Lcom/kahuna/sdk/location/KahunaIBeaconManager$1;->this$0:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    invoke-virtual {v0}, Lcom/kahuna/sdk/location/KahunaIBeacon;->getPowerValue()I

    move-result v2

    int-to-double v4, p2

    invoke-static {v1, v2, v4, v5}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->access$1200(Lcom/kahuna/sdk/location/KahunaIBeaconManager;ID)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/kahuna/sdk/location/KahunaIBeacon;->setProximity(I)V

    .line 390
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 391
    const-string v1, "KahunaEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Beacon scanned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/kahuna/sdk/location/KahunaIBeacon;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_1
    invoke-static {}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->access$600()Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    move-result-object v1

    invoke-static {v1}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->access$700(Lcom/kahuna/sdk/location/KahunaIBeaconManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 396
    :try_start_0
    invoke-static {}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->access$600()Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    move-result-object v1

    invoke-static {v1}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->access$800(Lcom/kahuna/sdk/location/KahunaIBeaconManager;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->access$900(Ljava/util/Set;Lcom/kahuna/sdk/location/KahunaIBeacon;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 397
    iget-object v1, p0, Lcom/kahuna/sdk/location/KahunaIBeaconManager$1;->this$0:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    invoke-static {v1}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->access$200(Lcom/kahuna/sdk/location/KahunaIBeaconManager;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->access$900(Ljava/util/Set;Lcom/kahuna/sdk/location/KahunaIBeacon;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 398
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 399
    const-string v1, "KahunaEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tracking iBeacon enter for UUID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/kahuna/sdk/location/KahunaIBeacon;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_2
    invoke-static {}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->access$600()Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    move-result-object v1

    invoke-static {v1}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->access$1000(Lcom/kahuna/sdk/location/KahunaIBeaconManager;)Lcom/kahuna/sdk/KahunaAnalytics;

    move-result-object v1

    const-string v3, "enter"

    invoke-static {v1, v0, v3}, Lcom/kahuna/sdk/KahunaAnalytics;->_internalTrackiBeaconEvent(Lcom/kahuna/sdk/KahunaAnalytics;Lcom/kahuna/sdk/location/KahunaIBeacon;Ljava/lang/String;)V

    .line 404
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    iget-object v1, p0, Lcom/kahuna/sdk/location/KahunaIBeaconManager$1;->this$0:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    invoke-static {v1}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->access$300(Lcom/kahuna/sdk/location/KahunaIBeaconManager;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 404
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
