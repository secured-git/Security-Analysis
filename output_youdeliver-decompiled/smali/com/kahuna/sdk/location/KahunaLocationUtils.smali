.class public Lcom/kahuna/sdk/location/KahunaLocationUtils;
.super Ljava/lang/Object;
.source "KahunaLocationUtils.java"


# static fields
.field protected static final LOG_TAG:Ljava/lang/String; = "KahunaEngine"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static checkManifestPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    .line 65
    .local v1, "res":I
    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 67
    .local v0, "hasPermission":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 68
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    const-string v2, "KahunaEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " permission available."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    :goto_1
    return v0

    .line 65
    .end local v0    # "hasPermission":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 72
    .restart local v0    # "hasPermission":Z
    :cond_2
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    const-string v2, "KahunaEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " NOT available"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected static hasPlayServices(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    .line 46
    .local v1, "resultCode":I
    const/4 v0, 0x0

    .line 48
    .local v0, "hasPlayServices":Z
    if-nez v1, :cond_1

    .line 49
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    const-string v2, "KahunaEngine"

    const-string v3, "Google Play services is available. yay!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    const/4 v0, 0x1

    .line 60
    :goto_0
    return v0

    .line 54
    :cond_1
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getDebugModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 55
    const-string v2, "KahunaEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Google Play services is NOT available. Code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
