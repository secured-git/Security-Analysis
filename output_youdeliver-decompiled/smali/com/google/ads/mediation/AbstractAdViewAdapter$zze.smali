.class final Lcom/google/ads/mediation/AbstractAdViewAdapter$zze;
.super Lcom/google/android/gms/ads/AdListener;

# interfaces
.implements Lcom/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener;
.implements Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;
.implements Lcom/google/android/gms/ads/internal/client/zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/AbstractAdViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zze"
.end annotation


# instance fields
.field final zzaP:Lcom/google/ads/mediation/AbstractAdViewAdapter;

.field final zzaS:Lcom/google/android/gms/ads/mediation/zzb;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;Lcom/google/android/gms/ads/mediation/zzb;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    iput-object p1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zze;->zzaP:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    iput-object p2, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zze;->zzaS:Lcom/google/android/gms/ads/mediation/zzb;

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zze;->zzaS:Lcom/google/android/gms/ads/mediation/zzb;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zze;->zzaP:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/zzb;->zzd(Lcom/google/android/gms/ads/mediation/zza;)V

    return-void
.end method

.method public onAdClosed()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zze;->zzaS:Lcom/google/android/gms/ads/mediation/zzb;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zze;->zzaP:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/zzb;->zzb(Lcom/google/android/gms/ads/mediation/zza;)V

    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zze;->zzaS:Lcom/google/android/gms/ads/mediation/zzb;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zze;->zzaP:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/ads/mediation/zzb;->zza(Lcom/google/android/gms/ads/mediation/zza;I)V

    return-void
.end method

.method public onAdLeftApplication()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zze;->zzaS:Lcom/google/android/gms/ads/mediation/zzb;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zze;->zzaP:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/zzb;->zzc(Lcom/google/android/gms/ads/mediation/zza;)V

    return-void
.end method

.method public onAdLoaded()V
    .locals 0

    return-void
.end method

.method public onAdOpened()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zze;->zzaS:Lcom/google/android/gms/ads/mediation/zzb;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zze;->zzaP:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/zzb;->zza(Lcom/google/android/gms/ads/mediation/zza;)V

    return-void
.end method

.method public onAppInstallAdLoaded(Lcom/google/android/gms/ads/formats/NativeAppInstallAd;)V
    .locals 3
    .param p1, "ad"    # Lcom/google/android/gms/ads/formats/NativeAppInstallAd;

    .prologue
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zze;->zzaS:Lcom/google/android/gms/ads/mediation/zzb;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zze;->zzaP:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    new-instance v2, Lcom/google/ads/mediation/AbstractAdViewAdapter$zza;

    invoke-direct {v2, p1}, Lcom/google/ads/mediation/AbstractAdViewAdapter$zza;-><init>(Lcom/google/android/gms/ads/formats/NativeAppInstallAd;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/mediation/zzb;->zza(Lcom/google/android/gms/ads/mediation/zza;Lcom/google/android/gms/ads/mediation/NativeAdMapper;)V

    return-void
.end method

.method public onContentAdLoaded(Lcom/google/android/gms/ads/formats/NativeContentAd;)V
    .locals 3
    .param p1, "ad"    # Lcom/google/android/gms/ads/formats/NativeContentAd;

    .prologue
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zze;->zzaS:Lcom/google/android/gms/ads/mediation/zzb;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zze;->zzaP:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    new-instance v2, Lcom/google/ads/mediation/AbstractAdViewAdapter$zzb;

    invoke-direct {v2, p1}, Lcom/google/ads/mediation/AbstractAdViewAdapter$zzb;-><init>(Lcom/google/android/gms/ads/formats/NativeContentAd;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/mediation/zzb;->zza(Lcom/google/android/gms/ads/mediation/zza;Lcom/google/android/gms/ads/mediation/NativeAdMapper;)V

    return-void
.end method
