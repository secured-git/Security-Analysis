.class public Lcom/kahuna/sdk/KahunaSDKUpgradeManager;
.super Ljava/lang/Object;
.source "KahunaSDKUpgradeManager.java"


# static fields
.field protected static final PREFS_PREV_SDK_VERSION_KEY:Ljava/lang/String; = "prev_sdk_version"

.field private static final SDK_CONFIG_BUG_VERSION:I = 0x1cb


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static checkIfSDKUpgraded(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    :try_start_0
    invoke-static {p0}, Lcom/kahuna/sdk/KahunaPreferences;->getPreviousSDKVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "prevSDKVersion":Ljava/lang/String;
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getSDKVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 44
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getSDKVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/kahuna/sdk/KahunaSDKUpgradeManager;->onSDKUpgrade(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getSDKVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/kahuna/sdk/KahunaPreferences;->savePreviousSDKVersion(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v1    # "prevSDKVersion":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v2, :cond_0

    .line 50
    const-string v2, "KahunaAnalytics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception checking SDK upgrade: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getIntSDKVersionFromString(Ljava/lang/String;)I
    .locals 5
    .param p0, "version"    # Ljava/lang/String;

    .prologue
    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 84
    .local v3, "stringLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 85
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 86
    .local v0, "currentChar":C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 87
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    .end local v0    # "currentChar":C
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    return v4
.end method

.method private static onSDKUpgrade(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "previousVersion"    # Ljava/lang/String;
    .param p2, "latestVersion"    # Ljava/lang/String;

    .prologue
    .line 65
    :try_start_0
    invoke-static {p1}, Lcom/kahuna/sdk/KahunaSDKUpgradeManager;->getIntSDKVersionFromString(Ljava/lang/String;)I

    move-result v1

    .line 66
    .local v1, "previousVersionInt":I
    const/16 v2, 0x1cb

    if-gt v1, v2, :cond_1

    .line 67
    sget-boolean v2, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v2, :cond_0

    .line 68
    const-string v2, "KahunaAnalytics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Upgrading from SDK version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " deleting old SDK Config."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    new-instance v2, Lcom/kahuna/sdk/KahunaSDKConfiguration;

    invoke-direct {v2}, Lcom/kahuna/sdk/KahunaSDKConfiguration;-><init>()V

    invoke-static {p0, v2}, Lcom/kahuna/sdk/KahunaPreferences;->saveSDKConfiguration(Landroid/content/Context;Lcom/kahuna/sdk/KahunaSDKConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v1    # "previousVersionInt":I
    :cond_1
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v2, :cond_1

    .line 75
    const-string v2, "KahunaAnalytics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception performing upgrade script: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
