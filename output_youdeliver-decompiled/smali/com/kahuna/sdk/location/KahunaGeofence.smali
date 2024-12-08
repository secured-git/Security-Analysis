.class public Lcom/kahuna/sdk/location/KahunaGeofence;
.super Ljava/lang/Object;
.source "KahunaGeofence.java"


# instance fields
.field private mExpirationDuration:J

.field private final mId:Ljava/lang/String;

.field private final mLatitude:D

.field private final mLongitude:D

.field private final mRadius:F

.field private mTransitionType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;DDFJI)V
    .locals 2
    .param p1, "geofenceId"    # Ljava/lang/String;
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "radius"    # F
    .param p7, "expiration"    # J
    .param p9, "transition"    # I

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {p1}, Lcom/kahuna/sdk/KahunaUtils;->isNullOrEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create Geofence with null or empty regionId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    const-wide v0, -0x3fa9800000000000L    # -90.0

    cmpg-double v0, p2, v0

    if-ltz v0, :cond_1

    const-wide v0, 0x4056800000000000L    # 90.0

    cmpl-double v0, p2, v0

    if-lez v0, :cond_2

    .line 61
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create Geofence with latitude outside of -90 to 90"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_2
    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpg-double v0, p4, v0

    if-ltz v0, :cond_3

    const-wide v0, 0x4066800000000000L    # 180.0

    cmpl-double v0, p4, v0

    if-lez v0, :cond_4

    .line 65
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create Geofence with longitude outside of -180 to 180"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_4
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p6, v0

    if-gez v0, :cond_5

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create Geofence with radius less than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KahunaEngineRegion_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kahuna/sdk/location/KahunaGeofence;->mId:Ljava/lang/String;

    .line 76
    iput-wide p2, p0, Lcom/kahuna/sdk/location/KahunaGeofence;->mLatitude:D

    .line 77
    iput-wide p4, p0, Lcom/kahuna/sdk/location/KahunaGeofence;->mLongitude:D

    .line 80
    iput p6, p0, Lcom/kahuna/sdk/location/KahunaGeofence;->mRadius:F

    .line 83
    const-wide/16 v0, 0x1

    cmp-long v0, p7, v0

    if-gez v0, :cond_6

    .line 84
    const-wide v0, 0x9a7ec800L

    iput-wide v0, p0, Lcom/kahuna/sdk/location/KahunaGeofence;->mExpirationDuration:J

    .line 91
    :goto_0
    iput p9, p0, Lcom/kahuna/sdk/location/KahunaGeofence;->mTransitionType:I

    .line 92
    return-void

    .line 87
    :cond_6
    iput-wide p7, p0, Lcom/kahuna/sdk/location/KahunaGeofence;->mExpirationDuration:J

    goto :goto_0
.end method


# virtual methods
.method protected getExpirationMilli()J
    .locals 2

    .prologue
    .line 132
    iget-wide v0, p0, Lcom/kahuna/sdk/location/KahunaGeofence;->mExpirationDuration:J

    return-wide v0
.end method

.method protected getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/kahuna/sdk/location/KahunaGeofence;->mId:Ljava/lang/String;

    return-object v0
.end method

.method protected getLatitude()D
    .locals 2

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/kahuna/sdk/location/KahunaGeofence;->mLatitude:D

    return-wide v0
.end method

.method protected getLongitude()D
    .locals 2

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/kahuna/sdk/location/KahunaGeofence;->mLongitude:D

    return-wide v0
.end method

.method protected getRadius()F
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/kahuna/sdk/location/KahunaGeofence;->mRadius:F

    return v0
.end method

.method protected getTransitionType()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/kahuna/sdk/location/KahunaGeofence;->mTransitionType:I

    return v0
.end method

.method protected toGeofence()Lcom/google/android/gms/location/Geofence;
    .locals 7

    .prologue
    .line 151
    new-instance v0, Lcom/google/android/gms/location/Geofence$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/location/Geofence$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/kahuna/sdk/location/KahunaGeofence;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/Geofence$Builder;->setRequestId(Ljava/lang/String;)Lcom/google/android/gms/location/Geofence$Builder;

    move-result-object v0

    iget v1, p0, Lcom/kahuna/sdk/location/KahunaGeofence;->mTransitionType:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/Geofence$Builder;->setTransitionTypes(I)Lcom/google/android/gms/location/Geofence$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kahuna/sdk/location/KahunaGeofence;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/kahuna/sdk/location/KahunaGeofence;->getLongitude()D

    move-result-wide v4

    invoke-virtual {p0}, Lcom/kahuna/sdk/location/KahunaGeofence;->getRadius()F

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/location/Geofence$Builder;->setCircularRegion(DDF)Lcom/google/android/gms/location/Geofence$Builder;

    move-result-object v0

    iget-wide v2, p0, Lcom/kahuna/sdk/location/KahunaGeofence;->mExpirationDuration:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/location/Geofence$Builder;->setExpirationDuration(J)Lcom/google/android/gms/location/Geofence$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/location/Geofence$Builder;->build()Lcom/google/android/gms/location/Geofence;

    move-result-object v0

    return-object v0
.end method
