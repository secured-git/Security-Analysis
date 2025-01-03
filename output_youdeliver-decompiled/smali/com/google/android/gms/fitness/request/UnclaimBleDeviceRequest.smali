.class public Lcom/google/android/gms/fitness/request/UnclaimBleDeviceRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/UnclaimBleDeviceRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mVersionCode:I

.field private final zzOZ:Ljava/lang/String;

.field private final zzapC:Ljava/lang/String;

.field private final zzapE:Lcom/google/android/gms/internal/zznh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzad;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzad;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/UnclaimBleDeviceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 1
    .param p1, "versionCode"    # I
    .param p2, "deviceAddress"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/os/IBinder;
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/UnclaimBleDeviceRequest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/UnclaimBleDeviceRequest;->zzapC:Ljava/lang/String;

    if-nez p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/fitness/request/UnclaimBleDeviceRequest;->zzapE:Lcom/google/android/gms/internal/zznh;

    iput-object p4, p0, Lcom/google/android/gms/fitness/request/UnclaimBleDeviceRequest;->zzOZ:Ljava/lang/String;

    return-void

    :cond_0
    invoke-static {p3}, Lcom/google/android/gms/internal/zznh$zza;->zzbJ(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zznh;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/zznh;Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/google/android/gms/internal/zznh;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/fitness/request/UnclaimBleDeviceRequest;->mVersionCode:I

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/UnclaimBleDeviceRequest;->zzapC:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/UnclaimBleDeviceRequest;->zzapE:Lcom/google/android/gms/internal/zznh;

    iput-object p3, p0, Lcom/google/android/gms/fitness/request/UnclaimBleDeviceRequest;->zzOZ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/UnclaimBleDeviceRequest;->zzapC:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/UnclaimBleDeviceRequest;->zzOZ:Ljava/lang/String;

    return-object v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/request/UnclaimBleDeviceRequest;->mVersionCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "UnclaimBleDeviceRequest{%s}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/fitness/request/UnclaimBleDeviceRequest;->zzapC:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/zzad;->zza(Lcom/google/android/gms/fitness/request/UnclaimBleDeviceRequest;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzsc()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/UnclaimBleDeviceRequest;->zzapE:Lcom/google/android/gms/internal/zznh;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/UnclaimBleDeviceRequest;->zzapE:Lcom/google/android/gms/internal/zznh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zznh;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method
