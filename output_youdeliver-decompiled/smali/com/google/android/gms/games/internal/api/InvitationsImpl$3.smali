.class Lcom/google/android/gms/games/internal/api/InvitationsImpl$3;
.super Lcom/google/android/gms/games/internal/api/InvitationsImpl$LoadInvitationsImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/InvitationsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzauS:Ljava/lang/String;


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/InvitationsImpl$3;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/InvitationsImpl$3;->zzauS:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzm(Lcom/google/android/gms/common/api/zzc$zzb;Ljava/lang/String;)V

    return-void
.end method
