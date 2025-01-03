.class public Lcom/google/android/gms/wearable/internal/zzbn;
.super Lcom/google/android/gms/common/internal/zzj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzj",
        "<",
        "Lcom/google/android/gms/wearable/internal/zzaw;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzaRv:Ljava/util/concurrent/ExecutorService;

.field private final zzbaU:Lcom/google/android/gms/wearable/internal/zzax;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/wearable/internal/zzax",
            "<",
            "Lcom/google/android/gms/wearable/zzc$zza;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbaV:Lcom/google/android/gms/wearable/internal/zzax;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/wearable/internal/zzax",
            "<",
            "Lcom/google/android/gms/wearable/zza$zza;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbaW:Lcom/google/android/gms/wearable/internal/zzax;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/wearable/internal/zzax",
            "<",
            "Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbaX:Lcom/google/android/gms/wearable/internal/zzax;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/wearable/internal/zzax",
            "<",
            "Lcom/google/android/gms/wearable/DataApi$DataListener;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbaY:Lcom/google/android/gms/wearable/internal/zzax;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/wearable/internal/zzax",
            "<",
            "Lcom/google/android/gms/wearable/MessageApi$MessageListener;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbaZ:Lcom/google/android/gms/wearable/internal/zzax;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/wearable/internal/zzax",
            "<",
            "Lcom/google/android/gms/wearable/NodeApi$NodeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbba:Lcom/google/android/gms/wearable/internal/zzax;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/wearable/internal/zzax",
            "<",
            "Lcom/google/android/gms/wearable/NodeApi$zza;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbbb:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/wearable/internal/zzax",
            "<",
            "Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Lcom/google/android/gms/common/internal/zzf;)V
    .locals 7

    const/16 v3, 0xe

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzj;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzbn;->zzaRv:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzax;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzax;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzbn;->zzbaU:Lcom/google/android/gms/wearable/internal/zzax;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzax;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzax;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzbn;->zzbaV:Lcom/google/android/gms/wearable/internal/zzax;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzax;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzax;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzbn;->zzbaW:Lcom/google/android/gms/wearable/internal/zzax;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzax;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzax;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzbn;->zzbaX:Lcom/google/android/gms/wearable/internal/zzax;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzax;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzax;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzbn;->zzbaY:Lcom/google/android/gms/wearable/internal/zzax;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzax;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzax;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzbn;->zzbaZ:Lcom/google/android/gms/wearable/internal/zzax;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzax;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzax;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzbn;->zzbba:Lcom/google/android/gms/wearable/internal/zzax;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzbn;->zzbbb:Ljava/util/Map;

    return-void
.end method

.method private zza(Landroid/os/ParcelFileDescriptor;[B)Ljava/util/concurrent/FutureTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "[B)",
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzbn$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/wearable/internal/zzbn$1;-><init>(Lcom/google/android/gms/wearable/internal/zzbn;Landroid/os/ParcelFileDescriptor;[B)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method private zzb(Lcom/google/android/gms/common/api/zzc$zzb;Ljava/lang/String;Landroid/net/Uri;JJ)Ljava/util/concurrent/FutureTask;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "JJ)",
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzv(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzv(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzx;->zzv(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "startOffset is negative: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, -0x1

    cmp-long v0, p6, v0

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    const-string v1, "invalid length: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzbn$3;

    move-object v2, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/wearable/internal/zzbn$3;-><init>(Lcom/google/android/gms/wearable/internal/zzbn;Landroid/net/Uri;Lcom/google/android/gms/common/api/zzc$zzb;Ljava/lang/String;JJ)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private zzb(Lcom/google/android/gms/common/api/zzc$zzb;Ljava/lang/String;Landroid/net/Uri;Z)Ljava/util/concurrent/FutureTask;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Z)",
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzv(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzv(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzx;->zzv(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Ljava/util/concurrent/FutureTask;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzbn$2;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/wearable/internal/zzbn$2;-><init>(Lcom/google/android/gms/wearable/internal/zzbn;Landroid/net/Uri;Lcom/google/android/gms/common/api/zzc$zzb;ZLjava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {v6, v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v6
.end method

.method private zzfw(Ljava/lang/String;)Lcom/google/android/gms/wearable/internal/zzax;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/wearable/internal/zzax",
            "<",
            "Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzbn;->zzbbb:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzax;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzax;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzax;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzbn;->zzbbb:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public disconnect()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzbn;->zzbaU:Lcom/google/android/gms/wearable/internal/zzax;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/wearable/internal/zzax;->zzb(Lcom/google/android/gms/wearable/internal/zzbn;)V

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzbn;->zzbaV:Lcom/google/android/gms/wearable/internal/zzax;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/wearable/internal/zzax;->zzb(Lcom/google/android/gms/wearable/internal/zzbn;)V

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzbn;->zzbaX:Lcom/google/android/gms/wearable/internal/zzax;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/wearable/internal/zzax;->zzb(Lcom/google/android/gms/wearable/internal/zzbn;)V

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzbn;->zzbaY:Lcom/google/android/gms/wearable/internal/zzax;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/wearable/internal/zzax;->zzb(Lcom/google/android/gms/wearable/internal/zzbn;)V

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzbn;->zzbaZ:Lcom/google/android/gms/wearable/internal/zzax;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/wearable/internal/zzax;->zzb(Lcom/google/android/gms/wearable/internal/zzbn;)V

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzbn;->zzbba:Lcom/google/android/gms/wearable/internal/zzax;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/wearable/internal/zzax;->zzb(Lcom/google/android/gms/wearable/internal/zzbn;)V

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzbn;->zzbbb:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzbn;->zzbbb:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzax;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/wearable/internal/zzax;->zzb(Lcom/google/android/gms/wearable/internal/zzbn;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-super {p0}, Lcom/google/android/gms/common/internal/zzj;->disconnect()V

    return-void
.end method

.method protected synthetic zzV(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzbn;->zzec(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzaw;

    move-result-object v0

    return-object v0
.end method

.method protected zza(ILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 3

    const-string v0, "WearableClient"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WearableClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPostInitHandler: statusCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzbn;->zzbaU:Lcom/google/android/gms/wearable/internal/zzax;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/wearable/internal/zzax;->zzeb(Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzbn;->zzbaV:Lcom/google/android/gms/wearable/internal/zzax;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/wearable/internal/zzax;->zzeb(Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzbn;->zzbaX:Lcom/google/android/gms/wearable/internal/zzax;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/wearable/internal/zzax;->zzeb(Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzbn;->zzbaY:Lcom/google/android/gms/wearable/internal/zzax;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/wearable/internal/zzax;->zzeb(Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzbn;->zzbaZ:Lcom/google/android/gms/wearable/internal/zzax;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/wearable/internal/zzax;->zzeb(Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzbn;->zzbba:Lcom/google/android/gms/wearable/internal/zzax;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/wearable/internal/zzax;->zzeb(Landroid/os/IBinder;)V

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzbn;->zzbbb:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzbn;->zzbbb:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzax;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/wearable/internal/zzax;->zzeb(Landroid/os/IBinder;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/internal/zzj;->zza(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/api/zzc$zzb;Landroid/net/Uri;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/wearable/DataApi$DataItemResult;",
            ">;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/zzbn;->zzoA()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzaw;

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzbm$zzk;

    invoke-direct {v1, p1}, Lcom/google/android/gms/wearable/internal/zzbm$zzk;-><init>(Lcom/google/android/gms/common/api/zzc$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/wearable/internal/zzaw;->zza(Lcom/google/android/gms/wearable/internal/zzau;Landroid/net/Uri;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/api/zzc$zzb;Landroid/net/Uri;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/wearable/DataItemBuffer;",
            ">;",
            "Landroid/net/Uri;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/zzbn;->zzoA()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzaw;

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzbm$zzl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/wearable/internal/zzbm$zzl;-><init>(Lcom/google/android/gms/common/api/zzc$zzb;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/wearable/internal/zzaw;->zza(Lcom/google/android/gms/wearable/internal/zzau;Landroid/net/Uri;I)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/api/zzc$zzb;Lcom/google/android/gms/wearable/Asset;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/wearable/DataApi$GetFdForAssetResult;",
            ">;",
            "Lcom/google/android/gms/wearable/Asset;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/zzbn;->zzoA()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzaw;

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzbm$zzm;

    invoke-direct {v1, p1}, Lcom/google/android/gms/wearable/internal/zzbm$zzm;-><init>(Lcom/google/android/gms/common/api/zzc$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/wearable/internal/zzaw;->zza(Lcom/google/android/gms/wearable/internal/zzau;Lcom/google/android/gms/wearable/Asset;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/api/zzc$zzb;Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzbn;->zzbbb:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p3}, Lcom/google/android/gms/wearable/internal/zzbn;->zzfw(Ljava/lang/String;)Lcom/google/android/gms/wearable/internal/zzax;

    move-result-object v0

    invoke-static {p2, p3}, Lcom/google/android/gms/wearable/internal/zzbo;->zza(Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;Ljava/lang/String;)Lcom/google/android/gms/wearable/internal/zzbo;

    move-result-object v2

    invoke-virtual {v0, p0, p1, p2, v2}, Lcom/google/android/gms/wearable/internal/zzax;->zza(Lcom/google/android/gms/wearable/internal/zzbn;Lcom/google/android/gms/common/api/zzc$zzb;Ljava/lang/Object;Lcom/google/android/gms/wearable/internal/zzbo;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zza(Lcom/google/android/gms/common/api/zzc$zzb;Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzbn;->zzbaW:Lcom/google/android/gms/wearable/internal/zzax;

    invoke-static {p2}, Lcom/google/android/gms/wearable/internal/zzbo;->zzb(Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;)Lcom/google/android/gms/wearable/internal/zzbo;

    move-result-object v1

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/google/android/gms/wearable/internal/zzax;->zza(Lcom/google/android/gms/wearable/internal/zzbn;Lcom/google/android/gms/common/api/zzc$zzb;Ljava/lang/Object;Lcom/google/android/gms/wearable/internal/zzbo;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/wearable/internal/zzbi;

    invoke-direct {v0, p3, p2}, Lcom/google/android/gms/wearable/internal/zzbi;-><init>(Ljava/lang/String;Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;)V

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzbn;->zzbaW:Lcom/google/android/gms/wearable/internal/zzax;

    invoke-static {v0, p3}, Lcom/google/android/gms/wearable/internal/zzbo;->zza(Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;Ljava/lang/String;)Lcom/google/android/gms/wearable/internal/zzbo;

    move-result-object v2

    invoke-virtual {v1, p0, p1, v0, v2}, Lcom/google/android/gms/wearable/internal/zzax;->zza(Lcom/google/android/gms/wearable/internal/zzbn;Lcom/google/android/gms/common/api/zzc$zzb;Ljava/lang/Object;Lcom/google/android/gms/wearable/internal/zzbo;)V

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/common/api/zzc$zzb;Lcom/google/android/gms/wearable/DataApi$DataListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/wearable/DataApi$DataListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzbn;->zzbaX:Lcom/google/android/gms/wearable/internal/zzax;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/wearable/internal/zzax;->zza(Lcom/google/android/gms/wearable/internal/zzbn;Lcom/google/android/gms/common/api/zzc$zzb;Ljava/lang/Object;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/api/zzc$zzb;Lcom/google/android/gms/wearable/DataApi$DataListener;[Landroid/content/IntentFilter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/wearable/DataApi$DataListener;",
            "[",
            "Landroid/content/IntentFilter;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzbn;->zzbaX:Lcom/google/android/gms/wearable/internal/zzax;

    invoke-static {p2, p3}, Lcom/google/android/gms/wearable/internal/zzbo;->zza(Lcom/google/android/gms/wearable/DataApi$DataListener;[Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/zzbo;

    move-result-object v1

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/google/android/gms/wearable/internal/zzax;->zza(Lcom/google/android/gms/wearable/internal/zzbn;Lcom/google/android/gms/common/api/zzc$zzb;Ljava/lang/Object;Lcom/google/android/gms/wearable/internal/zzbo;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/api/zzc$zzb;Lcom/google/android/gms/wearable/DataItemAsset;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/wearable/DataApi$GetFdForAssetResult;",
            ">;",
            "Lcom/google/android/gms/wearable/DataItemAsset;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p2}, Lcom/google/android/gms/wearable/DataItemAsset;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/wearable/Asset;->createFromRef(Ljava/lang/String;)Lcom/google/android/gms/wearable/Asset;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/wearable/internal/zzbn;->zza(Lcom/google/android/gms/common/api/zzc$zzb;Lcom/google/android/gms/wearable/Asset;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/api/zzc$zzb;Lcom/google/android/gms/wearable/MessageApi$MessageListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/wearable/MessageApi$MessageListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzbn;->zzbaY:Lcom/google/android/gms/wearable/internal/zzax;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/wearable/internal/zzax;->zza(Lcom/google/android/gms/wearable/internal/zzbn;Lcom/google/android/gms/common/api/zzc$zzb;Ljava/lang/Object;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/api/zzc$zzb;Lcom/google/android/gms/wearable/MessageApi$MessageListener;[Landroid/content/IntentFilter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/wearable/MessageApi$MessageListener;",
            "[",
            "Landroid/content/IntentFilter;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzbn;->zzbaY:Lcom/google/android/gms/wearable/internal/zzax;

    invoke-static {p2, p3}, Lcom/google/android/gms/wearable/internal/zzbo;->zza(Lcom/google/android/gms/wearable/MessageApi$MessageListener;[Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/zzbo;

    move-result-object v1

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/google/android/gms/wearable/internal/zzax;->zza(Lcom/google/android/gms/wearable/internal/zzbn;Lcom/google/android/gms/common/api/zzc$zzb;Ljava/lang/Object;Lcom/google/android/gms/wearable/internal/zzbo;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/api/zzc$zzb;Lcom/google/android/gms/wearable/NodeApi$NodeListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/wearable/NodeApi$NodeListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzbn;->zzbaZ:Lcom/google/android/gms/wearable/internal/zzax;

    invoke-static {p2}, Lcom/google/android/gms/wearable/internal/zzbo;->zza(Lcom/google/android/gms/wearable/NodeApi$NodeListener;)Lcom/google/android/gms/wearable/internal/zzbo;

    move-result-object v1

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/google/android/gms/wearable/internal/zzax;->zza(Lcom/google/android/gms/wearable/internal/zzbn;Lcom/google/android/gms/common/api/zzc$zzb;Ljava/lang/Object;Lcom/google/android/gms/wearable/internal/zzbo;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/api/zzc$zzb;Lcom/google/android/gms/wearable/PutDataRequest;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/wearable/DataApi$DataItemResult;",
            ">;",
            "Lcom/google/android/gms/wearable/PutDataRequest;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p2}, Lcom/google/android/gms/wearable/PutDataRequest;->getAssets()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/Asset;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/Asset;->getData()[B

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/Asset;->getDigest()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/Asset;->getFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/Asset;->getUri()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Put for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/gms/wearable/PutDataRequest;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " contains invalid asset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/wearable/PutDataRequest;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/wearable/PutDataRequest;->zzo(Landroid/net/Uri;)Lcom/google/android/gms/wearable/PutDataRequest;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/gms/wearable/PutDataRequest;->getData()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/wearable/PutDataRequest;->setData([B)Lcom/google/android/gms/wearable/PutDataRequest;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/wearable/PutDataRequest;->getAssets()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/wearable/Asset;

    invoke-virtual {v1}, Lcom/google/android/gms/wearable/Asset;->getData()[B

    move-result-object v5

    if-nez v5, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/Asset;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/wearable/PutDataRequest;->putAsset(Ljava/lang/String;Lcom/google/android/gms/wearable/Asset;)Lcom/google/android/gms/wearable/PutDataRequest;

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    const-string v6, "WearableClient"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "WearableClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processAssets: replacing data with FD in asset: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " read:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v5, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " write:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v5, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aget-object v6, v5, v9

    invoke-static {v6}, Lcom/google/android/gms/wearable/Asset;->createFromFd(Landroid/os/ParcelFileDescriptor;)Lcom/google/android/gms/wearable/Asset;

    move-result-object v6

    invoke-virtual {v2, v0, v6}, Lcom/google/android/gms/wearable/PutDataRequest;->putAsset(Ljava/lang/String;Lcom/google/android/gms/wearable/Asset;)Lcom/google/android/gms/wearable/PutDataRequest;

    aget-object v0, v5, v10

    invoke-virtual {v1}, Lcom/google/android/gms/wearable/Asset;->getData()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/wearable/internal/zzbn;->zza(Landroid/os/ParcelFileDescriptor;[B)Ljava/util/concurrent/FutureTask;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzbn;->zzaRv:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create ParcelFileDescriptor for asset in request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/zzbn;->zzoA()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzaw;

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzbm$zzq;

    invoke-direct {v1, p1, v3}, Lcom/google/android/gms/wearable/internal/zzbm$zzq;-><init>(Lcom/google/android/gms/common/api/zzc$zzb;Ljava/util/List;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/wearable/internal/zzaw;->zza(Lcom/google/android/gms/wearable/internal/zzau;Lcom/google/android/gms/wearable/PutDataRequest;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/api/zzc$zzb;Ljava/lang/String;Landroid/net/Uri;JJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "JJ)V"
        }
    .end annotation

    :try_start_0
    invoke-direct/range {p0 .. p7}, Lcom/google/android/gms/wearable/internal/zzbn;->zzb(Lcom/google/android/gms/common/api/zzc$zzb;Ljava/lang/String;Landroid/net/Uri;JJ)Ljava/util/concurrent/FutureTask;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzbn;->zzaRv:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/common/api/zzc$zzb;->zzx(Lcom/google/android/gms/common/api/Status;)V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/common/api/zzc$zzb;Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Z)V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/wearable/internal/zzbn;->zzb(Lcom/google/android/gms/common/api/zzc$zzb;Ljava/lang/String;Landroid/net/Uri;Z)Ljava/util/concurrent/FutureTask;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzbn;->zzaRv:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/common/api/zzc$zzb;->zzx(Lcom/google/android/gms/common/api/Status;)V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/common/api/zzc$zzb;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/wearable/MessageApi$SendMessageResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/zzbn;->zzoA()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzaw;

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzbm$zzt;

    invoke-direct {v1, p1}, Lcom/google/android/gms/wearable/internal/zzbm$zzt;-><init>(Lcom/google/android/gms/common/api/zzc$zzb;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/wearable/internal/zzaw;->zza(Lcom/google/android/gms/wearable/internal/zzau;Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/common/api/zzc$zzb;Landroid/net/Uri;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/wearable/DataApi$DeleteDataItemsResult;",
            ">;",
            "Landroid/net/Uri;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/zzbn;->zzoA()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzaw;

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzbm$zze;

    invoke-direct {v1, p1}, Lcom/google/android/gms/wearable/internal/zzbm$zze;-><init>(Lcom/google/android/gms/common/api/zzc$zzb;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/wearable/internal/zzaw;->zzb(Lcom/google/android/gms/wearable/internal/zzau;Landroid/net/Uri;I)V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/common/api/zzc$zzb;Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzbn;->zzbbb:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p3}, Lcom/google/android/gms/wearable/internal/zzbn;->zzfw(Ljava/lang/String;)Lcom/google/android/gms/wearable/internal/zzax;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/wearable/internal/zzax;->zza(Lcom/google/android/gms/wearable/internal/zzbn;Lcom/google/android/gms/common/api/zzc$zzb;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/internal/zzax;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzbn;->zzbbb:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzb(Lcom/google/android/gms/common/api/zzc$zzb;Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzbn;->zzbaW:Lcom/google/android/gms/wearable/internal/zzax;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/wearable/internal/zzax;->zza(Lcom/google/android/gms/wearable/internal/zzbn;Lcom/google/android/gms/common/api/zzc$zzb;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/wearable/internal/zzbi;

    invoke-direct {v0, p3, p2}, Lcom/google/android/gms/wearable/internal/zzbi;-><init>(Ljava/lang/String;Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;)V

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzbn;->zzbaW:Lcom/google/android/gms/wearable/internal/zzax;

    invoke-virtual {v1, p0, p1, v0}, Lcom/google/android/gms/wearable/internal/zzax;->zza(Lcom/google/android/gms/wearable/internal/zzbn;Lcom/google/android/gms/common/api/zzc$zzb;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public zzb(Lcom/google/android/gms/common/api/zzc$zzb;Lcom/google/android/gms/wearable/NodeApi$NodeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/wearable/NodeApi$NodeListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzbn;->zzbaZ:Lcom/google/android/gms/wearable/internal/zzax;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/wearable/internal/zzax;->zza(Lcom/google/android/gms/wearable/internal/zzbn;Lcom/google/android/gms/common/api/zzc$zzb;Ljava/lang/Object;)V

    return-void
.end method

.method public zzd(Lcom/google/android/gms/common/api/zzc$zzb;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/wearable/CapabilityApi$GetAllCapabilitiesResult;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/zzbn;->zzoA()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzaw;

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzbm$zzf;

    invoke-direct {v1, p1}, Lcom/google/android/gms/wearable/internal/zzbm$zzf;-><init>(Lcom/google/android/gms/common/api/zzc$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/wearable/internal/zzaw;->zza(Lcom/google/android/gms/wearable/internal/zzau;I)V

    return-void
.end method

.method public zze(Lcom/google/android/gms/common/api/zzc$zzb;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/wearable/ChannelApi$OpenChannelResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/zzbn;->zzoA()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzaw;

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzbm$zzp;

    invoke-direct {v1, p1}, Lcom/google/android/gms/wearable/internal/zzbm$zzp;-><init>(Lcom/google/android/gms/common/api/zzc$zzb;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/wearable/internal/zzaw;->zza(Lcom/google/android/gms/wearable/internal/zzau;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected zzec(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzaw;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzaw$zza;->zzea(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzaw;

    move-result-object v0

    return-object v0
.end method

.method protected zzfA()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.wearable.BIND"

    return-object v0
.end method

.method protected zzfB()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.wearable.internal.IWearableService"

    return-object v0
.end method

.method public zzg(Lcom/google/android/gms/common/api/zzc$zzb;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/wearable/CapabilityApi$GetCapabilityResult;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/zzbn;->zzoA()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzaw;

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzbm$zzg;

    invoke-direct {v1, p1}, Lcom/google/android/gms/wearable/internal/zzbm$zzg;-><init>(Lcom/google/android/gms/common/api/zzc$zzb;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/wearable/internal/zzaw;->zza(Lcom/google/android/gms/wearable/internal/zzau;Ljava/lang/String;I)V

    return-void
.end method

.method public zzh(Lcom/google/android/gms/common/api/zzc$zzb;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/zzbn;->zzoA()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzaw;

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzbm$zzd;

    invoke-direct {v1, p1}, Lcom/google/android/gms/wearable/internal/zzbm$zzd;-><init>(Lcom/google/android/gms/common/api/zzc$zzb;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/wearable/internal/zzaw;->zzb(Lcom/google/android/gms/wearable/internal/zzau;Ljava/lang/String;I)V

    return-void
.end method

.method public zzn(Lcom/google/android/gms/common/api/zzc$zzb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/wearable/DataItemBuffer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/zzbn;->zzoA()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzaw;

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzbm$zzl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/wearable/internal/zzbm$zzl;-><init>(Lcom/google/android/gms/common/api/zzc$zzb;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/wearable/internal/zzaw;->zzb(Lcom/google/android/gms/wearable/internal/zzau;)V

    return-void
.end method

.method public zzo(Lcom/google/android/gms/common/api/zzc$zzb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/wearable/NodeApi$GetLocalNodeResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/zzbn;->zzoA()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzaw;

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzbm$zzn;

    invoke-direct {v1, p1}, Lcom/google/android/gms/wearable/internal/zzbm$zzn;-><init>(Lcom/google/android/gms/common/api/zzc$zzb;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/wearable/internal/zzaw;->zzc(Lcom/google/android/gms/wearable/internal/zzau;)V

    return-void
.end method

.method public zzp(Lcom/google/android/gms/common/api/zzc$zzb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/wearable/NodeApi$GetConnectedNodesResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/zzbn;->zzoA()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzaw;

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzbm$zzj;

    invoke-direct {v1, p1}, Lcom/google/android/gms/wearable/internal/zzbm$zzj;-><init>(Lcom/google/android/gms/common/api/zzc$zzb;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/wearable/internal/zzaw;->zzd(Lcom/google/android/gms/wearable/internal/zzau;)V

    return-void
.end method

.method public zzr(Lcom/google/android/gms/common/api/zzc$zzb;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/wearable/CapabilityApi$AddLocalCapabilityResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/zzbn;->zzoA()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzaw;

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzbm$zza;

    invoke-direct {v1, p1}, Lcom/google/android/gms/wearable/internal/zzbm$zza;-><init>(Lcom/google/android/gms/common/api/zzc$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/wearable/internal/zzaw;->zzd(Lcom/google/android/gms/wearable/internal/zzau;Ljava/lang/String;)V

    return-void
.end method

.method public zzs(Lcom/google/android/gms/common/api/zzc$zzb;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/wearable/CapabilityApi$RemoveLocalCapabilityResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/zzbn;->zzoA()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzaw;

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzbm$zzs;

    invoke-direct {v1, p1}, Lcom/google/android/gms/wearable/internal/zzbm$zzs;-><init>(Lcom/google/android/gms/common/api/zzc$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/wearable/internal/zzaw;->zze(Lcom/google/android/gms/wearable/internal/zzau;Ljava/lang/String;)V

    return-void
.end method

.method public zzt(Lcom/google/android/gms/common/api/zzc$zzb;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/zzbn;->zzoA()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzaw;

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzbm$zzc;

    invoke-direct {v1, p1}, Lcom/google/android/gms/wearable/internal/zzbm$zzc;-><init>(Lcom/google/android/gms/common/api/zzc$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/wearable/internal/zzaw;->zzf(Lcom/google/android/gms/wearable/internal/zzau;Ljava/lang/String;)V

    return-void
.end method

.method public zzu(Lcom/google/android/gms/common/api/zzc$zzb;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/wearable/Channel$GetInputStreamResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzs;

    invoke-direct {v1}, Lcom/google/android/gms/wearable/internal/zzs;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/zzbn;->zzoA()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzaw;

    new-instance v2, Lcom/google/android/gms/wearable/internal/zzbm$zzh;

    invoke-direct {v2, p1, v1}, Lcom/google/android/gms/wearable/internal/zzbm$zzh;-><init>(Lcom/google/android/gms/common/api/zzc$zzb;Lcom/google/android/gms/wearable/internal/zzs;)V

    invoke-interface {v0, v2, v1, p2}, Lcom/google/android/gms/wearable/internal/zzaw;->zza(Lcom/google/android/gms/wearable/internal/zzau;Lcom/google/android/gms/wearable/internal/zzat;Ljava/lang/String;)V

    return-void
.end method

.method public zzv(Lcom/google/android/gms/common/api/zzc$zzb;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc$zzb",
            "<",
            "Lcom/google/android/gms/wearable/Channel$GetOutputStreamResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzs;

    invoke-direct {v1}, Lcom/google/android/gms/wearable/internal/zzs;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/zzbn;->zzoA()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzaw;

    new-instance v2, Lcom/google/android/gms/wearable/internal/zzbm$zzi;

    invoke-direct {v2, p1, v1}, Lcom/google/android/gms/wearable/internal/zzbm$zzi;-><init>(Lcom/google/android/gms/common/api/zzc$zzb;Lcom/google/android/gms/wearable/internal/zzs;)V

    invoke-interface {v0, v2, v1, p2}, Lcom/google/android/gms/wearable/internal/zzaw;->zzb(Lcom/google/android/gms/wearable/internal/zzau;Lcom/google/android/gms/wearable/internal/zzat;Ljava/lang/String;)V

    return-void
.end method
