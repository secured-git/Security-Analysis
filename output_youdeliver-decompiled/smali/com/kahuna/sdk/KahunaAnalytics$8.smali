.class final Lcom/kahuna/sdk/KahunaAnalytics$8;
.super Ljava/lang/Object;
.source "KahunaAnalytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kahuna/sdk/KahunaAnalytics;->logout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 747
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 754
    :try_start_0
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getSharedInstance()Lcom/kahuna/sdk/KahunaAnalytics;

    move-result-object v9

    .line 755
    .local v9, "instance":Lcom/kahuna/sdk/KahunaAnalytics;
    const/4 v1, 0x0

    invoke-static {v9}, Lcom/kahuna/sdk/KahunaAnalytics;->access$000(Lcom/kahuna/sdk/KahunaAnalytics;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kahuna/sdk/KahunaPreferences;->saveUserCredentials(Ljava/util/Map;Landroid/content/Context;)V

    .line 756
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v9, v1}, Lcom/kahuna/sdk/KahunaAnalytics;->access$2202(Lcom/kahuna/sdk/KahunaAnalytics;Ljava/util/Map;)Ljava/util/Map;

    .line 757
    const/4 v1, 0x0

    invoke-static {v9}, Lcom/kahuna/sdk/KahunaAnalytics;->access$000(Lcom/kahuna/sdk/KahunaAnalytics;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kahuna/sdk/KahunaPreferences;->saveUserAttributes(Ljava/util/Map;Landroid/content/Context;)V

    .line 760
    const/4 v1, 0x0

    invoke-static {v9, v1}, Lcom/kahuna/sdk/KahunaAnalytics;->access$1202(Lcom/kahuna/sdk/KahunaAnalytics;Z)Z

    .line 761
    invoke-static {v9}, Lcom/kahuna/sdk/KahunaAnalytics;->access$1200(Lcom/kahuna/sdk/KahunaAnalytics;)Z

    move-result v1

    invoke-static {v9}, Lcom/kahuna/sdk/KahunaAnalytics;->access$000(Lcom/kahuna/sdk/KahunaAnalytics;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kahuna/sdk/KahunaPreferences;->saveShouldInsertCreds(ZLandroid/content/Context;)V

    .line 763
    new-instance v0, Lcom/kahuna/sdk/KAEvent;

    const-string v1, "k_user_logout"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/kahuna/sdk/KAEvent;-><init>(Ljava/lang/String;JLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    .line 764
    .local v0, "event":Lcom/kahuna/sdk/KAEvent;
    invoke-static {v9, v0}, Lcom/kahuna/sdk/KahunaAnalytics;->access$1300(Lcom/kahuna/sdk/KahunaAnalytics;Lcom/kahuna/sdk/KAEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 770
    .end local v0    # "event":Lcom/kahuna/sdk/KAEvent;
    .end local v9    # "instance":Lcom/kahuna/sdk/KahunaAnalytics;
    :goto_0
    return-void

    .line 766
    :catch_0
    move-exception v8

    .line 768
    .local v8, "e":Ljava/lang/Exception;
    const-string v1, "KahunaAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handled exception in KahunaAnalytics.clearUserCredentials(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
