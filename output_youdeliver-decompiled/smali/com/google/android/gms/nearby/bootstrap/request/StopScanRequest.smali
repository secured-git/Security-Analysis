.class public Lcom/google/android/gms/nearby/bootstrap/request/StopScanRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/nearby/bootstrap/request/zzh;


# instance fields
.field final versionCode:I

.field private final zzaJe:Lcom/google/android/gms/internal/zzoy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/bootstrap/request/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/bootstrap/request/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/bootstrap/request/StopScanRequest;->CREATOR:Lcom/google/android/gms/nearby/bootstrap/request/zzh;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;)V
    .locals 1
    .param p1, "versionCode"    # I
    .param p2, "callback"    # Landroid/os/IBinder;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/bootstrap/request/StopScanRequest;->versionCode:I

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzv(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzoy$zza;->zzdb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzoy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/StopScanRequest;->zzaJe:Lcom/google/android/gms/internal/zzoy;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/nearby/bootstrap/request/StopScanRequest;->CREATOR:Lcom/google/android/gms/nearby/bootstrap/request/zzh;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    sget-object v0, Lcom/google/android/gms/nearby/bootstrap/request/StopScanRequest;->CREATOR:Lcom/google/android/gms/nearby/bootstrap/request/zzh;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/nearby/bootstrap/request/zzh;->zza(Lcom/google/android/gms/nearby/bootstrap/request/StopScanRequest;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzsc()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/StopScanRequest;->zzaJe:Lcom/google/android/gms/internal/zzoy;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/StopScanRequest;->zzaJe:Lcom/google/android/gms/internal/zzoy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzoy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method
