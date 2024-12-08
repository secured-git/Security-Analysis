.class public Lcom/kahuna/sdk/location/KahunaIBeacon;
.super Ljava/lang/Object;
.source "KahunaIBeacon.java"


# static fields
.field private static final PREFS_KEY_EXPIRY:Ljava/lang/String; = "expiry"

.field private static final PREFS_KEY_ID:Ljava/lang/String; = "id"

.field private static final PREFS_KEY_MAJOR:Ljava/lang/String; = "major"

.field private static final PREFS_KEY_MINOR:Ljava/lang/String; = "minor"

.field private static final PREFS_KEY_UUID:Ljava/lang/String; = "uuid"


# instance fields
.field private mExpireTimeSeconds:J

.field private mId:Ljava/lang/String;

.field private mMacAddress:Ljava/lang/String;

.field private mMajor:I

.field private mMeasuredRSSI:I

.field private mMinor:I

.field private mName:Ljava/lang/String;

.field private mPowerValue:I

.field private mProximity:I

.field private mUUID:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/lang/String;
    .param p3, "major"    # I
    .param p4, "minor"    # I
    .param p5, "expireTimeSeconds"    # J

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/kahuna/sdk/location/KahunaIBeacon;->mId:Ljava/lang/String;

    .line 95
    iput-object p2, p0, Lcom/kahuna/sdk/location/KahunaIBeacon;->mUUID:Ljava/lang/String;

    .line 96
    iput p3, p0, Lcom/kahuna/sdk/location/KahunaIBeacon;->mMajor:I

    .line 97
    iput p4, p0, Lcom/kahuna/sdk/location/KahunaIBeacon;->mMinor:I

    .line 99
    iget-wide v0, p0, Lcom/kahuna/sdk/location/KahunaIBeacon;->mExpireTimeSeconds:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/32 v2, 0x15180

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/kahuna/sdk/location/KahunaIBeacon;->mExpireTimeSeconds:J

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    iput-wide p5, p0, Lcom/kahuna/sdk/location/KahunaIBeacon;->mExpireTimeSeconds:J

    goto :goto_0
.end method

.method protected static fromJSONObject(Lorg/json/JSONObject;)Lcom/kahuna/sdk/location/KahunaIBeacon;
    .locals 8
    .param p0, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 199
    :try_start_0
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "id":Ljava/lang/String;
    const-string v0, "uuid"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 201
    .local v3, "uuid":Ljava/lang/String;
    const-string v0, "major"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 202
    .local v4, "major":I
    const-string v0, "minor"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 203
    .local v5, "minor":I
    const-string v0, "expiry"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 205
    .local v6, "expiry":J
    new-instance v1, Lcom/kahuna/sdk/location/KahunaIBeacon;

    invoke-direct/range {v1 .. v7}, Lcom/kahuna/sdk/location/KahunaIBeacon;-><init>(Ljava/lang/String;Ljava/lang/String;IIJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "uuid":Ljava/lang/String;
    .end local v4    # "major":I
    .end local v5    # "minor":I
    .end local v6    # "expiry":J
    :goto_0
    return-object v1

    .line 207
    :catch_0
    move-exception v0

    .line 211
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static getUuidHexString([B)Ljava/lang/String;
    .locals 7
    .param p0, "uuid"    # [B

    .prologue
    .line 132
    const-string v1, ""

    .line 133
    .local v1, "s":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%2X"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-byte v6, p0, v0

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_0
    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 219
    if-nez p1, :cond_1

    .line 247
    :cond_0
    :goto_0
    return v3

    .line 222
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-ne v5, v6, :cond_0

    move-object v0, p1

    .line 225
    check-cast v0, Lcom/kahuna/sdk/location/KahunaIBeacon;

    .line 226
    .local v0, "ibeacon":Lcom/kahuna/sdk/location/KahunaIBeacon;
    iget-object v5, p0, Lcom/kahuna/sdk/location/KahunaIBeacon;->mUUID:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 227
    iget-object v5, p0, Lcom/kahuna/sdk/location/KahunaIBeacon;->mUUID:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/kahuna/sdk/location/KahunaIBeacon;->getUuid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 229
    const/4 v1, 0x0

    .line 230
    .local v1, "majorsEqual":Z
    const/4 v2, 0x0

    .line 231
    .local v2, "minorsEqual":Z
    iget v5, p0, Lcom/kahuna/sdk/location/KahunaIBeacon;->mMajor:I

    if-ltz v5, :cond_2

    invoke-virtual {v0}, Lcom/kahuna/sdk/location/KahunaIBeacon;->getMajor()I

    move-result v5

    if-gez v5, :cond_3

    .line 232
    :cond_2
    const/4 v1, 0x1

    .line 234
    :cond_3
    iget v5, p0, Lcom/kahuna/sdk/location/KahunaIBeacon;->mMinor:I

    if-ltz v5, :cond_4

    invoke-virtual {v0}, Lcom/kahuna/sdk/location/KahunaIBeacon;->getMinor()I

    move-result v5

    if-gez v5, :cond_5

    .line 235
    :cond_4
    const/4 v2, 0x1

    .line 238
    :cond_5
    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    move v3, v4

    .line 239
    goto :goto_0

    .line 242
    :cond_6
    iget v5, p0, Lcom/kahuna/sdk/location/KahunaIBeacon;->mMajor:I

    invoke-virtual {v0}, Lcom/kahuna/sdk/location/KahunaIBeacon;->getMajor()I

    move-result v6

    if-ne v5, v6, :cond_0

    iget v5, p0, Lcom/kahuna/sdk/location/KahunaIBeacon;->mMinor:I

    invoke-virtual {v0}, Lcom/kahuna/sdk/location/KahunaIBeacon;->getMinor()I

    move-result v6

    if-ne v5, v6, :cond_0

    move v3, v4

    .line 243
    goto :goto_0
.end method

.method protected getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/kahuna/sdk/location/KahunaIBeacon;->mName:Ljava/lang/String;

    return-object v0
.end method

.method protected getExpireTimeSeconds()J
    .locals 2

    .prologue
    .line 179
    iget-wide v0, p0, Lcom/kahuna/sdk/location/KahunaIBeacon;->mExpireTimeSeconds:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/kahuna/sdk/location/KahunaIBeacon;->mId:Ljava/lang/String;

    return-object v0
.end method

.method protected getMacAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/kahuna/sdk/location/KahunaIBeacon;->mMacAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getMajor()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/kahuna/sdk/location/KahunaIBeacon;->mMajor:I

    return v0
.end method

.method protected getMeasuredRSSI()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/kahuna/sdk/location/KahunaIBeacon;->mMeasuredRSSI:I

    return v0
.end method

.method public getMinor()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/kahuna/sdk/location/KahunaIBeacon;->mMinor:I

    return v0
.end method

.method protected getPowerValue()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/kahuna/sdk/location/KahunaIBeacon;->mPowerValue:I

    return v0
.end method

.method protected getProximity()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/kahuna/sdk/location/KahunaIBeacon;->mProximity:I

    return v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/kahuna/sdk/location/KahunaIBeacon;->mUUID:Ljava/lang/String;

    return-object v0
.end method

.method protected setDeviceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "_deviceName"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/kahuna/sdk/location/KahunaIBeacon;->mName:Ljava/lang/String;

    .line 117
    return-void
.end method

.method protected setMacAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "_macAddress"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/kahuna/sdk/location/KahunaIBeacon;->mMacAddress:Ljava/lang/String;

    .line 125
    return-void
.end method

.method protected setMajor(I)V
    .locals 0
    .param p1, "_major"    # I

    .prologue
    .line 143
    iput p1, p0, Lcom/kahuna/sdk/location/KahunaIBeacon;->mMajor:I

    .line 144
    return-void
.end method

.method protected setMeasuredRSSI(I)V
    .locals 0
    .param p1, "rssi"    # I

    .prologue
    .line 175
    iput p1, p0, Lcom/kahuna/sdk/location/KahunaIBeacon;->mMeasuredRSSI:I

    .line 176
    return-void
.end method

.method protected setMinor(I)V
    .locals 0
    .param p1, "_minor"    # I

    .prologue
    .line 151
    iput p1, p0, Lcom/kahuna/sdk/location/KahunaIBeacon;->mMinor:I

    .line 152
    return-void
.end method

.method protected setPowerValue(I)V
    .locals 0
    .param p1, "_pv"    # I

    .prologue
    .line 159
    iput p1, p0, Lcom/kahuna/sdk/location/KahunaIBeacon;->mPowerValue:I

    .line 160
    return-void
.end method

.method protected setProximity(I)V
    .locals 0
    .param p1, "_proximity"    # I

    .prologue
    .line 167
    iput p1, p0, Lcom/kahuna/sdk/location/KahunaIBeacon;->mProximity:I

    .line 168
    return-void
.end method

.method protected toJSONObject()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 183
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 185
    .local v0, "myObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "id"

    iget-object v2, p0, Lcom/kahuna/sdk/location/KahunaIBeacon;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    const-string v1, "uuid"

    iget-object v2, p0, Lcom/kahuna/sdk/location/KahunaIBeacon;->mUUID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    const-string v1, "major"

    iget v2, p0, Lcom/kahuna/sdk/location/KahunaIBeacon;->mMajor:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 188
    const-string v1, "minor"

    iget v2, p0, Lcom/kahuna/sdk/location/KahunaIBeacon;->mMinor:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 189
    const-string v1, "expiry"

    iget-wide v2, p0, Lcom/kahuna/sdk/location/KahunaIBeacon;->mExpireTimeSeconds:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    return-object v0

    .line 190
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UUID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kahuna/sdk/location/KahunaIBeacon;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " M:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kahuna/sdk/location/KahunaIBeacon;->getMajor()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " m:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kahuna/sdk/location/KahunaIBeacon;->getMinor()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " p:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kahuna/sdk/location/KahunaIBeacon;->getProximity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
