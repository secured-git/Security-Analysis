.class public final Lcom/google/android/gms/wallet/firstparty/GetBuyFlowInitializationTokenResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/firstparty/GetBuyFlowInitializationTokenResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mVersionCode:I

.field zzaXI:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/firstparty/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/firstparty/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/firstparty/GetBuyFlowInitializationTokenResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/wallet/firstparty/GetBuyFlowInitializationTokenResponse;-><init>(I[B)V

    return-void
.end method

.method constructor <init>(I[B)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "buyFlowInitializationToken"    # [B

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/firstparty/GetBuyFlowInitializationTokenResponse;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/firstparty/GetBuyFlowInitializationTokenResponse;->zzaXI:[B

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/wallet/firstparty/GetBuyFlowInitializationTokenResponse;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/firstparty/zzc;->zza(Lcom/google/android/gms/wallet/firstparty/GetBuyFlowInitializationTokenResponse;Landroid/os/Parcel;I)V

    return-void
.end method
