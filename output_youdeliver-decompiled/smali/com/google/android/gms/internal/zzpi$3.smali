.class final Lcom/google/android/gms/internal/zzpi$3;
.super Lcom/google/android/gms/internal/zzpg$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzpi;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzph;Lcom/google/android/gms/internal/zzpg;Landroid/net/Uri;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic zzaKA:Lcom/google/android/gms/internal/zzpg;

.field final synthetic zzaKy:Landroid/net/Uri;

.field final synthetic zzrn:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/google/android/gms/internal/zzpg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpi$3;->zzrn:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzpi$3;->zzaKy:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzpi$3;->zzaKA:Lcom/google/android/gms/internal/zzpg;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpg$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(ILandroid/os/Bundle;ILandroid/content/Intent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpi$3;->zzrn:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpi$3;->zzaKy:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzpi;->zzb(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpi$3;->zzaKA:Lcom/google/android/gms/internal/zzpg;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzpg;->zza(ILandroid/os/Bundle;ILandroid/content/Intent;)V

    return-void
.end method
