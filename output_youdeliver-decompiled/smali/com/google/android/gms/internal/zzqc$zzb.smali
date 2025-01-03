.class Lcom/google/android/gms/internal/zzqc$zzb;
.super Lcom/google/android/gms/common/api/zzc$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzqc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/zzc$zza",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        "Lcom/google/android/gms/internal/zzqb;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzTC:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private final zzaNN:Ljava/lang/String;

.field private final zzaNQ:Z


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/search/SearchAuth;->zzQf:Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/zzc$zza;-><init>(Lcom/google/android/gms/common/api/Api$zzc;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    const-string v0, "SearchAuth"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzqc$zzb;->zzaNQ:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqc$zzb;->zzTC:Lcom/google/android/gms/common/api/GoogleApiClient;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzqc$zzb;->zzaNN:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzqc$zzb;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqc$zzb;->zzaNQ:Z

    return v0
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzqb;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzqc$zzb;->zza(Lcom/google/android/gms/internal/zzqb;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzqb;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqc$zzb;->zzaNQ:Z

    if-eqz v0, :cond_0

    const-string v0, "SearchAuth"

    const-string v1, "ClearTokenImpl started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzb;->zzTC:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzqc$zzb$1;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzqc$zzb$1;-><init>(Lcom/google/android/gms/internal/zzqc$zzb;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqb;->zzoA()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqa;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqc$zzb;->zzaNN:Ljava/lang/String;

    invoke-interface {v0, v2, v1, v3}, Lcom/google/android/gms/internal/zzqa;->zzb(Lcom/google/android/gms/internal/zzpz;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzqc$zzb;->zzd(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method

.method protected zzd(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqc$zzb;->zzaNQ:Z

    if-eqz v0, :cond_0

    const-string v0, "SearchAuth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClearTokenImpl received failure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object p1
.end method
