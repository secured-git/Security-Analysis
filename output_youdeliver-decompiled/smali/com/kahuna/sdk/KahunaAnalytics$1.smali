.class final Lcom/kahuna/sdk/KahunaAnalytics$1;
.super Ljava/lang/Object;
.source "KahunaAnalytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kahuna/sdk/KahunaAnalytics;->onAppCreate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 223
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getSharedInstance()Lcom/kahuna/sdk/KahunaAnalytics;

    move-result-object v1

    .line 226
    .local v1, "instance":Lcom/kahuna/sdk/KahunaAnalytics;
    invoke-static {v1}, Lcom/kahuna/sdk/KahunaAnalytics;->access$000(Lcom/kahuna/sdk/KahunaAnalytics;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/kahuna/sdk/KahunaSDKUpgradeManager;->checkIfSDKUpgraded(Landroid/content/Context;)V

    .line 228
    invoke-static {v1}, Lcom/kahuna/sdk/KahunaAnalytics;->access$100(Lcom/kahuna/sdk/KahunaAnalytics;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 229
    invoke-static {v1}, Lcom/kahuna/sdk/KahunaAnalytics;->access$200(Lcom/kahuna/sdk/KahunaAnalytics;)V

    .line 231
    :cond_0
    invoke-static {v1}, Lcom/kahuna/sdk/KahunaAnalytics;->access$000(Lcom/kahuna/sdk/KahunaAnalytics;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/kahuna/sdk/KahunaFindMyDeviceManager;->onAppCreate(Landroid/content/Context;)V

    .line 234
    :try_start_0
    invoke-static {v1}, Lcom/kahuna/sdk/KahunaAnalytics;->access$000(Lcom/kahuna/sdk/KahunaAnalytics;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kahuna/sdk/location/KahunaRegionManager;->init(Lcom/kahuna/sdk/KahunaAnalytics;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 251
    :cond_1
    :goto_0
    return-void

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v2, :cond_1

    .line 241
    const-string v2, "KahunaAnalytics"

    const-string v3, "Caught error when attepmting to initialize location services. If you are NOT using location services please ignore this error: "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const-string v2, "KahunaAnalytics"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 245
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/Error;
    sget-boolean v2, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v2, :cond_1

    .line 247
    const-string v2, "KahunaAnalytics"

    const-string v3, "Caught error when attepmting to initialize location services. If you are NOT using location services please ignore this error: "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const-string v2, "KahunaAnalytics"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
