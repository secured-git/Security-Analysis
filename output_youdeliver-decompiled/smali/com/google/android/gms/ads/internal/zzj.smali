.class public Lcom/google/android/gms/ads/internal/zzj;
.super Lcom/google/android/gms/ads/internal/client/zzp$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgk;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private zzoS:Lcom/google/android/gms/ads/internal/client/zzn;

.field private zzoX:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

.field private final zzoZ:Ljava/lang/String;

.field private final zzow:Lcom/google/android/gms/internal/zzeh;

.field private final zzpa:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private zzpf:Lcom/google/android/gms/internal/zzct;

.field private zzpg:Lcom/google/android/gms/internal/zzcu;

.field private zzph:Lcom/google/android/gms/internal/zzlh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzlh",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzcv;",
            ">;"
        }
    .end annotation
.end field

.field private zzpi:Lcom/google/android/gms/internal/zzlh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzlh",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzcw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzeh;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzp$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzj;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzj;->zzoZ:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzj;->zzow:Lcom/google/android/gms/internal/zzeh;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/zzj;->zzpa:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    new-instance v0, Lcom/google/android/gms/internal/zzlh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzlh;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzj;->zzpi:Lcom/google/android/gms/internal/zzlh;

    new-instance v0, Lcom/google/android/gms/internal/zzlh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzlh;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzj;->zzph:Lcom/google/android/gms/internal/zzlh;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzj;->zzoX:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzct;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzj;->zzpf:Lcom/google/android/gms/internal/zzct;

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzcu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzj;->zzpg:Lcom/google/android/gms/internal/zzcu;

    return-void
.end method

.method public zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzcw;Lcom/google/android/gms/internal/zzcv;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Custom template ID for native custom template ad is empty. Please provide a valid template id."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzj;->zzpi:Lcom/google/android/gms/internal/zzlh;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzlh;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzj;->zzph:Lcom/google/android/gms/internal/zzlh;

    invoke-virtual {v0, p1, p3}, Lcom/google/android/gms/internal/zzlh;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public zzb(Lcom/google/android/gms/ads/internal/client/zzn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzj;->zzoS:Lcom/google/android/gms/ads/internal/client/zzn;

    return-void
.end method

.method public zzbk()Lcom/google/android/gms/ads/internal/client/zzo;
    .locals 11

    new-instance v0, Lcom/google/android/gms/ads/internal/zzi;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzj;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzj;->zzoZ:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzj;->zzow:Lcom/google/android/gms/internal/zzeh;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzj;->zzpa:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/zzj;->zzoS:Lcom/google/android/gms/ads/internal/client/zzn;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/zzj;->zzpf:Lcom/google/android/gms/internal/zzct;

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/zzj;->zzpg:Lcom/google/android/gms/internal/zzcu;

    iget-object v8, p0, Lcom/google/android/gms/ads/internal/zzj;->zzpi:Lcom/google/android/gms/internal/zzlh;

    iget-object v9, p0, Lcom/google/android/gms/ads/internal/zzj;->zzph:Lcom/google/android/gms/internal/zzlh;

    iget-object v10, p0, Lcom/google/android/gms/ads/internal/zzj;->zzoX:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/ads/internal/zzi;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzeh;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/client/zzn;Lcom/google/android/gms/internal/zzct;Lcom/google/android/gms/internal/zzcu;Lcom/google/android/gms/internal/zzlh;Lcom/google/android/gms/internal/zzlh;Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;)V

    return-object v0
.end method
