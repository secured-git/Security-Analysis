.class public final Lcom/google/android/gms/drive/internal/zzar;
.super Lcom/google/android/gms/internal/zzrr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzrr",
        "<",
        "Lcom/google/android/gms/drive/internal/zzar;",
        ">;"
    }
.end annotation


# instance fields
.field public versionCode:I

.field public zzajA:J

.field public zzajy:J

.field public zzajz:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrr;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/drive/internal/zzar;->zzqK()Lcom/google/android/gms/drive/internal/zzar;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/google/android/gms/drive/internal/zzar;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/drive/internal/zzar;

    .end local p1    # "o":Ljava/lang/Object;
    iget v1, p0, Lcom/google/android/gms/drive/internal/zzar;->versionCode:I

    iget v2, p1, Lcom/google/android/gms/drive/internal/zzar;->versionCode:I

    if-ne v1, v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzar;->zzajy:J

    iget-wide v4, p1, Lcom/google/android/gms/drive/internal/zzar;->zzajy:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzar;->zzajz:J

    iget-wide v4, p1, Lcom/google/android/gms/drive/internal/zzar;->zzajz:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzar;->zzajA:J

    iget-wide v4, p1, Lcom/google/android/gms/drive/internal/zzar;->zzajA:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/zzar;->zza(Lcom/google/android/gms/internal/zzrr;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    const/16 v6, 0x20

    iget v0, p0, Lcom/google/android/gms/drive/internal/zzar;->versionCode:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzar;->zzajy:J

    iget-wide v4, p0, Lcom/google/android/gms/drive/internal/zzar;->zzajy:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzar;->zzajz:J

    iget-wide v4, p0, Lcom/google/android/gms/drive/internal/zzar;->zzajz:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzar;->zzajA:J

    iget-wide v4, p0, Lcom/google/android/gms/drive/internal/zzar;->zzajA:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/drive/internal/zzar;->zzDk()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected zzB()I
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/internal/zzrr;->zzB()I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/drive/internal/zzar;->versionCode:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrq;->zzB(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzar;->zzajy:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzrq;->zze(IJ)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzar;->zzajz:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzrq;->zze(IJ)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzar;->zzajA:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzrq;->zze(IJ)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzrq;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/drive/internal/zzar;->versionCode:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrq;->zzz(II)V

    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzar;->zzajy:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzrq;->zzc(IJ)V

    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzar;->zzajz:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzrq;->zzc(IJ)V

    const/4 v0, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzar;->zzajA:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzrq;->zzc(IJ)V

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzrr;->zza(Lcom/google/android/gms/internal/zzrq;)V

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzrp;)Lcom/google/android/gms/internal/zzrx;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/zzar;->zzm(Lcom/google/android/gms/internal/zzrp;)Lcom/google/android/gms/drive/internal/zzar;

    move-result-object v0

    return-object v0
.end method

.method public zzm(Lcom/google/android/gms/internal/zzrp;)Lcom/google/android/gms/drive/internal/zzar;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrp;->zzCT()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/drive/internal/zzar;->zza(Lcom/google/android/gms/internal/zzrp;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrp;->zzCW()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/drive/internal/zzar;->versionCode:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrp;->zzCZ()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/drive/internal/zzar;->zzajy:J

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrp;->zzCZ()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/drive/internal/zzar;->zzajz:J

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrp;->zzCZ()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/drive/internal/zzar;->zzajA:J

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public zzqK()Lcom/google/android/gms/drive/internal/zzar;
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/drive/internal/zzar;->versionCode:I

    iput-wide v2, p0, Lcom/google/android/gms/drive/internal/zzar;->zzajy:J

    iput-wide v2, p0, Lcom/google/android/gms/drive/internal/zzar;->zzajz:J

    iput-wide v2, p0, Lcom/google/android/gms/drive/internal/zzar;->zzajA:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/drive/internal/zzar;->zzbca:Lcom/google/android/gms/internal/zzrt;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/drive/internal/zzar;->zzbcl:I

    return-object p0
.end method
