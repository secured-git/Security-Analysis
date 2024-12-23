.class public Lcom/google/android/gms/fitness/request/StopBleScanRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/StopBleScanRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mVersionCode:I

.field private final zzOZ:Ljava/lang/String;

.field private final zzapE:Lcom/google/android/gms/internal/zznh;

.field private final zzaqB:Lcom/google/android/gms/fitness/request/zzn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzab;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzab;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/StopBleScanRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 1
    .param p1, "versionCode"    # I
    .param p2, "bleScanCallback"    # Landroid/os/IBinder;
    .param p3, "callback"    # Landroid/os/IBinder;
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/StopBleScanRequest;->mVersionCode:I

    invoke-static {p2}, Lcom/google/android/gms/fitness/request/zzn$zza;->zzbM(Landroid/os/IBinder;)Lcom/google/android/gms/fitness/request/zzn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/StopBleScanRequest;->zzaqB:Lcom/google/android/gms/fitness/request/zzn;

    if-nez p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/fitness/request/StopBleScanRequest;->zzapE:Lcom/google/android/gms/internal/zznh;

    iput-object p4, p0, Lcom/google/android/gms/fitness/request/StopBleScanRequest;->zzOZ:Ljava/lang/String;

    return-void

    :cond_0
    invoke-static {p3}, Lcom/google/android/gms/internal/zznh$zza;->zzbJ(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zznh;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/request/BleScanCallback;Lcom/google/android/gms/internal/zznh;Ljava/lang/String;)V
    .locals 1
    .param p1, "bleScanCallback"    # Lcom/google/android/gms/fitness/request/BleScanCallback;
    .param p2, "callback"    # Lcom/google/android/gms/internal/zznh;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Lcom/google/android/gms/fitness/request/zza$zza;->zzsa()Lcom/google/android/gms/fitness/request/zza$zza;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/request/zza$zza;->zzb(Lcom/google/android/gms/fitness/request/BleScanCallback;)Lcom/google/android/gms/fitness/request/zza;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/gms/fitness/request/StopBleScanRequest;-><init>(Lcom/google/android/gms/fitness/request/zzn;Lcom/google/android/gms/internal/zznh;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/request/zzn;Lcom/google/android/gms/internal/zznh;Ljava/lang/String;)V
    .locals 1
    .param p1, "bleScanCallback"    # Lcom/google/android/gms/fitness/request/zzn;
    .param p2, "callback"    # Lcom/google/android/gms/internal/zznh;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/fitness/request/StopBleScanRequest;->mVersionCode:I

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/StopBleScanRequest;->zzaqB:Lcom/google/android/gms/fitness/request/zzn;

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/StopBleScanRequest;->zzapE:Lcom/google/android/gms/internal/zznh;

    iput-object p3, p0, Lcom/google/android/gms/fitness/request/StopBleScanRequest;->zzOZ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/StopBleScanRequest;->zzOZ:Ljava/lang/String;

    return-object v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/request/StopBleScanRequest;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/zzab;->zza(Lcom/google/android/gms/fitness/request/StopBleScanRequest;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzsc()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/StopBleScanRequest;->zzapE:Lcom/google/android/gms/internal/zznh;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/StopBleScanRequest;->zzapE:Lcom/google/android/gms/internal/zznh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zznh;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public zzsy()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/StopBleScanRequest;->zzaqB:Lcom/google/android/gms/fitness/request/zzn;

    invoke-interface {v0}, Lcom/google/android/gms/fitness/request/zzn;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
