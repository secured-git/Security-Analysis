.class public Lcom/google/android/gms/drive/DriveId;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/DriveId;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESOURCE_TYPE_FILE:I = 0x0

.field public static final RESOURCE_TYPE_FOLDER:I = 0x1

.field public static final RESOURCE_TYPE_UNKNOWN:I = -0x1


# instance fields
.field final mVersionCode:I

.field final zzagC:Ljava/lang/String;

.field final zzagD:J

.field final zzagE:I

.field private volatile zzagF:Ljava/lang/String;

.field final zzagn:J

.field private volatile zzagp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/drive/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/DriveId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;JJI)V
    .locals 7
    .param p1, "versionCode"    # I
    .param p2, "resourceId"    # Ljava/lang/String;
    .param p3, "sqlId"    # J
    .param p5, "databaseInstanceId"    # J
    .param p7, "resourceType"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/drive/DriveId;->zzagp:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/drive/DriveId;->zzagF:Ljava/lang/String;

    iput p1, p0, Lcom/google/android/gms/drive/DriveId;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/drive/DriveId;->zzagC:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzZ(Z)V

    if-nez p2, :cond_0

    const-wide/16 v4, -0x1

    cmp-long v0, p3, v4

    if-eqz v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzx;->zzZ(Z)V

    iput-wide p3, p0, Lcom/google/android/gms/drive/DriveId;->zzagD:J

    iput-wide p5, p0, Lcom/google/android/gms/drive/DriveId;->zzagn:J

    iput p7, p0, Lcom/google/android/gms/drive/DriveId;->zzagE:I

    return-void

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;JJI)V
    .locals 10
    .param p1, "resourceId"    # Ljava/lang/String;
    .param p2, "sqlId"    # J
    .param p4, "databaseInstanceId"    # J
    .param p6, "resourceType"    # I

    .prologue
    const/4 v2, 0x1

    if-eqz p1, :cond_0

    const-string v0, "generated-android-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    :goto_0
    move-object v1, p0

    move-wide v4, p2

    move-wide v6, p4

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/drive/DriveId;-><init>(ILjava/lang/String;JJI)V

    return-void

    :cond_0
    move-object v3, p1

    goto :goto_0
.end method

.method public static decodeFromString(Ljava/lang/String;)Lcom/google/android/gms/drive/DriveId;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const-string v0, "DriveId:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid DriveId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    const-string v0, "DriveId:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/DriveId;->zzk([B)Lcom/google/android/gms/drive/DriveId;

    move-result-object v0

    return-object v0
.end method

.method public static zzcC(Ljava/lang/String;)Lcom/google/android/gms/drive/DriveId;
    .locals 7

    const-wide/16 v2, -0x1

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzx;->zzv(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/drive/DriveId;

    const/4 v6, -0x1

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/drive/DriveId;-><init>(Ljava/lang/String;JJI)V

    return-object v0
.end method

.method static zzk([B)Lcom/google/android/gms/drive/DriveId;
    .locals 9

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/drive/internal/zzas;->zzl([B)Lcom/google/android/gms/drive/internal/zzas;
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzrw; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    const-string v1, ""

    iget-object v2, v0, Lcom/google/android/gms/drive/internal/zzas;->zzajB:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    :goto_0
    new-instance v1, Lcom/google/android/gms/drive/DriveId;

    iget v2, v0, Lcom/google/android/gms/drive/internal/zzas;->versionCode:I

    iget-wide v4, v0, Lcom/google/android/gms/drive/internal/zzas;->zzajC:J

    iget-wide v6, v0, Lcom/google/android/gms/drive/internal/zzas;->zzajz:J

    iget v8, v0, Lcom/google/android/gms/drive/internal/zzas;->zzajD:I

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/drive/DriveId;-><init>(ILjava/lang/String;JJI)V

    return-object v1

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iget-object v3, v0, Lcom/google/android/gms/drive/internal/zzas;->zzajB:Ljava/lang/String;

    goto :goto_0
.end method

.method private zzqk()[B
    .locals 4

    new-instance v0, Lcom/google/android/gms/drive/internal/zzat;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/zzat;-><init>()V

    iget-wide v2, p0, Lcom/google/android/gms/drive/DriveId;->zzagD:J

    iput-wide v2, v0, Lcom/google/android/gms/drive/internal/zzat;->zzajC:J

    iget-wide v2, p0, Lcom/google/android/gms/drive/DriveId;->zzagn:J

    iput-wide v2, v0, Lcom/google/android/gms/drive/internal/zzat;->zzajz:J

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrx;->zzf(Lcom/google/android/gms/internal/zzrx;)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final encodeToString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->zzagp:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/drive/DriveId;->zzqe()[B

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DriveId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/drive/DriveId;->zzagp:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->zzagp:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const-wide/16 v6, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/google/android/gms/drive/DriveId;

    if-nez v2, :cond_1

    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v1

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    check-cast p1, Lcom/google/android/gms/drive/DriveId;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-wide v2, p1, Lcom/google/android/gms/drive/DriveId;->zzagn:J

    iget-wide v4, p0, Lcom/google/android/gms/drive/DriveId;->zzagn:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    const-string v0, "DriveId"

    const-string v2, "Attempt to compare invalid DriveId detected. Has local storage been cleared?"

    invoke-static {v0, v2}, Lcom/google/android/gms/drive/internal/zzy;->zzw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-wide v2, p1, Lcom/google/android/gms/drive/DriveId;->zzagD:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_3

    iget-wide v2, p0, Lcom/google/android/gms/drive/DriveId;->zzagD:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/drive/DriveId;->zzagC:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/drive/DriveId;->zzagC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/drive/DriveId;->zzagC:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/google/android/gms/drive/DriveId;->zzagC:Ljava/lang/String;

    if-nez v2, :cond_6

    :cond_4
    iget-wide v2, p1, Lcom/google/android/gms/drive/DriveId;->zzagD:J

    iget-wide v4, p0, Lcom/google/android/gms/drive/DriveId;->zzagD:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    iget-wide v2, p1, Lcom/google/android/gms/drive/DriveId;->zzagD:J

    iget-wide v4, p0, Lcom/google/android/gms/drive/DriveId;->zzagD:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/google/android/gms/drive/DriveId;->zzagC:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/drive/DriveId;->zzagC:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    move v1, v0

    goto :goto_0

    :cond_7
    const-string v0, "DriveId"

    const-string v2, "Unexpected unequal resourceId for same DriveId object."

    invoke-static {v0, v2}, Lcom/google/android/gms/drive/internal/zzy;->zzw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getResourceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->zzagC:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/drive/DriveId;->zzagE:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/drive/DriveId;->zzagD:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->zzagC:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/google/android/gms/drive/DriveId;->zzagn:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/drive/DriveId;->zzagD:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final toInvariantString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->zzagF:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/drive/DriveId;->zzqk()[B

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/drive/DriveId;->zzagF:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->zzagF:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/drive/DriveId;->encodeToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/zzd;->zza(Lcom/google/android/gms/drive/DriveId;Landroid/os/Parcel;I)V

    return-void
.end method

.method final zzqe()[B
    .locals 4

    new-instance v1, Lcom/google/android/gms/drive/internal/zzas;

    invoke-direct {v1}, Lcom/google/android/gms/drive/internal/zzas;-><init>()V

    iget v0, p0, Lcom/google/android/gms/drive/DriveId;->mVersionCode:I

    iput v0, v1, Lcom/google/android/gms/drive/internal/zzas;->versionCode:I

    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->zzagC:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, v1, Lcom/google/android/gms/drive/internal/zzas;->zzajB:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/drive/DriveId;->zzagD:J

    iput-wide v2, v1, Lcom/google/android/gms/drive/internal/zzas;->zzajC:J

    iget-wide v2, p0, Lcom/google/android/gms/drive/DriveId;->zzagn:J

    iput-wide v2, v1, Lcom/google/android/gms/drive/internal/zzas;->zzajz:J

    iget v0, p0, Lcom/google/android/gms/drive/DriveId;->zzagE:I

    iput v0, v1, Lcom/google/android/gms/drive/internal/zzas;->zzajD:I

    invoke-static {v1}, Lcom/google/android/gms/internal/zzrx;->zzf(Lcom/google/android/gms/internal/zzrx;)[B

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->zzagC:Ljava/lang/String;

    goto :goto_0
.end method
