.class public Lcom/newrelic/agent/android/harvest/ApplicationInformation;
.super Lcom/newrelic/agent/android/harvest/type/HarvestableArray;
.source "ApplicationInformation.java"


# instance fields
.field private appBuild:Ljava/lang/String;

.field private appName:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private packageId:Ljava/lang/String;

.field private versionCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/type/HarvestableArray;-><init>()V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->versionCode:I

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "appVersion"    # Ljava/lang/String;
    .param p3, "packageId"    # Ljava/lang/String;
    .param p4, "appBuild"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/ApplicationInformation;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->appName:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->appVersion:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->packageId:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->appBuild:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public asJsonArray()Lcom/newrelic/com/google/gson/JsonArray;
    .locals 3

    .prologue
    .line 33
    new-instance v0, Lcom/newrelic/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/newrelic/com/google/gson/JsonArray;-><init>()V

    .line 40
    .local v0, "array":Lcom/newrelic/com/google/gson/JsonArray;
    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->appName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->notEmpty(Ljava/lang/String;)V

    .line 41
    new-instance v1, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->appName:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 42
    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->appVersion:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->notEmpty(Ljava/lang/String;)V

    .line 43
    new-instance v1, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->appVersion:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 44
    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->packageId:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->notEmpty(Ljava/lang/String;)V

    .line 45
    new-instance v1, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->packageId:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 47
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 92
    if-ne p0, p1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v1

    .line 93
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 95
    check-cast v0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;

    .line 97
    .local v0, "that":Lcom/newrelic/agent/android/harvest/ApplicationInformation;
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->appName:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->appName:Ljava/lang/String;

    iget-object v4, v0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->appName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v3, v0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->appName:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 98
    :cond_6
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->appVersion:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->appVersion:Ljava/lang/String;

    iget-object v4, v0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->appVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_7
    move v1, v2

    goto :goto_0

    :cond_8
    iget-object v3, v0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->appVersion:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 99
    :cond_9
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->appBuild:Ljava/lang/String;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->appBuild:Ljava/lang/String;

    iget-object v4, v0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->appBuild:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_a
    move v1, v2

    goto :goto_0

    :cond_b
    iget-object v3, v0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->appBuild:Ljava/lang/String;

    if-nez v3, :cond_a

    .line 100
    :cond_c
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->packageId:Ljava/lang/String;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->packageId:Ljava/lang/String;

    iget-object v4, v0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->packageId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    :cond_d
    move v1, v2

    goto :goto_0

    :cond_e
    iget-object v3, v0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->packageId:Ljava/lang/String;

    if-nez v3, :cond_d

    .line 101
    :cond_f
    iget v3, p0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->versionCode:I

    iget v4, v0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->versionCode:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getAppBuild()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->appBuild:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->packageId:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->versionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 108
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->appName:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->appName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 109
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->appVersion:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->appVersion:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 110
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->appBuild:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->appBuild:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 111
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->packageId:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->packageId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 112
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 108
    goto :goto_0

    .restart local v0    # "result":I
    :cond_2
    move v2, v1

    .line 109
    goto :goto_1

    :cond_3
    move v2, v1

    .line 110
    goto :goto_2
.end method

.method public isAppUpgrade(Lcom/newrelic/agent/android/harvest/ApplicationInformation;)Z
    .locals 5
    .param p1, "that"    # Lcom/newrelic/agent/android/harvest/ApplicationInformation;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 116
    const/4 v0, 0x0

    .line 122
    .local v0, "brc":Z
    iget v3, p1, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->versionCode:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 123
    iget v3, p0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->versionCode:I

    if-ltz v3, :cond_0

    iget-object v3, p1, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->appVersion:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v0, v1

    .line 128
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 123
    goto :goto_0

    .line 125
    :cond_1
    iget v3, p0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->versionCode:I

    iget v4, p1, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->versionCode:I

    if-le v3, v4, :cond_2

    move v0, v1

    :goto_1
    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public setAppBuild(Ljava/lang/String;)V
    .locals 0
    .param p1, "appBuild"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->appBuild:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->appName:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "appVersion"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->appVersion:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setPackageId(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageId"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->packageId:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setVersionCode(I)V
    .locals 0
    .param p1, "versionCode"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->versionCode:I

    .line 84
    return-void
.end method
