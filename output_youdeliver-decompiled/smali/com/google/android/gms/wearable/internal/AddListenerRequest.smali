.class public Lcom/google/android/gms/wearable/internal/AddListenerRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wearable/internal/AddListenerRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field public final zzaZq:Lcom/google/android/gms/wearable/internal/zzav;

.field public final zzaZr:[Landroid/content/IntentFilter;

.field public final zzaZs:Ljava/lang/String;

.field public final zzaZt:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/internal/AddListenerRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;[Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "versionCode"    # I
    .param p2, "listener"    # Landroid/os/IBinder;
    .param p3, "filters"    # [Landroid/content/IntentFilter;
    .param p4, "channelToken"    # Ljava/lang/String;
    .param p5, "capability"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wearable/internal/AddListenerRequest;->mVersionCode:I

    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/google/android/gms/wearable/internal/zzav$zza;->zzdZ(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzav;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/AddListenerRequest;->zzaZq:Lcom/google/android/gms/wearable/internal/zzav;

    :goto_0
    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/AddListenerRequest;->zzaZr:[Landroid/content/IntentFilter;

    iput-object p4, p0, Lcom/google/android/gms/wearable/internal/AddListenerRequest;->zzaZs:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/wearable/internal/AddListenerRequest;->zzaZt:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/AddListenerRequest;->zzaZq:Lcom/google/android/gms/wearable/internal/zzav;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/android/gms/wearable/internal/zzbo;)V
    .locals 1
    .param p1, "stub"    # Lcom/google/android/gms/wearable/internal/zzbo;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/wearable/internal/AddListenerRequest;->mVersionCode:I

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/AddListenerRequest;->zzaZq:Lcom/google/android/gms/wearable/internal/zzav;

    invoke-virtual {p1}, Lcom/google/android/gms/wearable/internal/zzbo;->zzCJ()[Landroid/content/IntentFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/AddListenerRequest;->zzaZr:[Landroid/content/IntentFilter;

    invoke-virtual {p1}, Lcom/google/android/gms/wearable/internal/zzbo;->zzCK()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/AddListenerRequest;->zzaZs:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/wearable/internal/zzbo;->zzCL()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/AddListenerRequest;->zzaZt:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/zzb;->zza(Lcom/google/android/gms/wearable/internal/AddListenerRequest;Landroid/os/Parcel;I)V

    return-void
.end method

.method zzCt()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/AddListenerRequest;->zzaZq:Lcom/google/android/gms/wearable/internal/zzav;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/AddListenerRequest;->zzaZq:Lcom/google/android/gms/wearable/internal/zzav;

    invoke-interface {v0}, Lcom/google/android/gms/wearable/internal/zzav;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method
