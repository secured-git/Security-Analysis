.class public Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNSPECIFIED:I = -0x1


# instance fields
.field private final mVersionCode:I

.field private final zzanm:Lcom/google/android/gms/fitness/data/DataSource;

.field private final zzaqR:J

.field private final zzaqS:J

.field private final zzaqi:Lcom/google/android/gms/fitness/data/zzj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/service/zza;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/service/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/fitness/data/DataSource;Landroid/os/IBinder;JJ)V
    .locals 2
    .param p1, "versionCode"    # I
    .param p2, "dataSource"    # Lcom/google/android/gms/fitness/data/DataSource;
    .param p3, "listenerBinder"    # Landroid/os/IBinder;
    .param p4, "samplingRateMicros"    # J
    .param p6, "batchIntervalMicros"    # J

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->zzanm:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-static {p3}, Lcom/google/android/gms/fitness/data/zzj$zza;->zzbl(Landroid/os/IBinder;)Lcom/google/android/gms/fitness/data/zzj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->zzaqi:Lcom/google/android/gms/fitness/data/zzj;

    iput-wide p4, p0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->zzaqR:J

    iput-wide p6, p0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->zzaqS:J

    return-void
.end method

.method private zza(Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;)Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->zzanm:Lcom/google/android/gms/fitness/data/DataSource;

    iget-object v1, p1, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->zzanm:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->zzaqR:J

    iget-wide v2, p1, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->zzaqR:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->zzaqS:J

    iget-wide v2, p1, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->zzaqS:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->zza(Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBatchInterval(Ljava/util/concurrent/TimeUnit;)J
    .locals 3
    .param p1, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    iget-wide v0, p0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->zzaqS:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDataSource()Lcom/google/android/gms/fitness/data/DataSource;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->zzanm:Lcom/google/android/gms/fitness/data/DataSource;

    return-object v0
.end method

.method public getDispatcher()Lcom/google/android/gms/fitness/service/SensorEventDispatcher;
    .locals 2

    new-instance v0, Lcom/google/android/gms/fitness/service/zzb;

    iget-object v1, p0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->zzaqi:Lcom/google/android/gms/fitness/data/zzj;

    invoke-direct {v0, v1}, Lcom/google/android/gms/fitness/service/zzb;-><init>(Lcom/google/android/gms/fitness/data/zzj;)V

    return-object v0
.end method

.method public getSamplingRate(Ljava/util/concurrent/TimeUnit;)J
    .locals 4
    .param p1, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    const-wide/16 v0, -0x1

    iget-wide v2, p0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->zzaqR:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->zzaqR:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    goto :goto_0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->zzanm:Lcom/google/android/gms/fitness/data/DataSource;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->zzaqR:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->zzaqS:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "FitnessSensorServiceRequest{%s}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->zzanm:Lcom/google/android/gms/fitness/data/DataSource;

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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/service/zza;->zza(Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzrP()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->zzaqR:J

    return-wide v0
.end method

.method public zzsJ()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->zzaqS:J

    return-wide v0
.end method

.method zzst()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->zzaqi:Lcom/google/android/gms/fitness/data/zzj;

    invoke-interface {v0}, Lcom/google/android/gms/fitness/data/zzj;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
