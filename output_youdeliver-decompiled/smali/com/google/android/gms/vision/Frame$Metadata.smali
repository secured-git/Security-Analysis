.class public Lcom/google/android/gms/vision/Frame$Metadata;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/vision/Frame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Metadata"
.end annotation


# instance fields
.field private mId:I

.field private zzaxC:J

.field private zznP:I

.field private zznQ:I

.field private zzzS:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/vision/Frame$Metadata;)V
    .locals 2
    .param p1, "metadata"    # Lcom/google/android/gms/vision/Frame$Metadata;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/vision/Frame$Metadata;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/vision/Frame$Metadata;->zznP:I

    invoke-virtual {p1}, Lcom/google/android/gms/vision/Frame$Metadata;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/vision/Frame$Metadata;->zznQ:I

    invoke-virtual {p1}, Lcom/google/android/gms/vision/Frame$Metadata;->getId()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/vision/Frame$Metadata;->mId:I

    invoke-virtual {p1}, Lcom/google/android/gms/vision/Frame$Metadata;->getTimestampMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/vision/Frame$Metadata;->zzaxC:J

    invoke-virtual {p1}, Lcom/google/android/gms/vision/Frame$Metadata;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/vision/Frame$Metadata;->zzzS:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/vision/Frame$Metadata;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/vision/Frame$Metadata;->zznP:I

    return p1
.end method

.method static synthetic zza(Lcom/google/android/gms/vision/Frame$Metadata;J)J
    .locals 1

    iput-wide p1, p0, Lcom/google/android/gms/vision/Frame$Metadata;->zzaxC:J

    return-wide p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/vision/Frame$Metadata;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/vision/Frame$Metadata;->zznQ:I

    return p1
.end method

.method static synthetic zzc(Lcom/google/android/gms/vision/Frame$Metadata;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/vision/Frame$Metadata;->mId:I

    return p1
.end method

.method static synthetic zzd(Lcom/google/android/gms/vision/Frame$Metadata;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/vision/Frame$Metadata;->zzzS:I

    return p1
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/vision/Frame$Metadata;->zznQ:I

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/vision/Frame$Metadata;->mId:I

    return v0
.end method

.method public getRotation()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/vision/Frame$Metadata;->zzzS:I

    return v0
.end method

.method public getTimestampMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/vision/Frame$Metadata;->zzaxC:J

    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/vision/Frame$Metadata;->zznP:I

    return v0
.end method

.method public zzCd()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/vision/Frame$Metadata;->zzzS:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/vision/Frame$Metadata;->zznP:I

    iget v1, p0, Lcom/google/android/gms/vision/Frame$Metadata;->zznQ:I

    iput v1, p0, Lcom/google/android/gms/vision/Frame$Metadata;->zznP:I

    iput v0, p0, Lcom/google/android/gms/vision/Frame$Metadata;->zznQ:I

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/vision/Frame$Metadata;->zzzS:I

    return-void
.end method
