.class public final Lcom/newrelic/agent/android/util/Connectivity;
.super Ljava/lang/Object;
.source "Connectivity.java"


# static fields
.field private static final ANDROID:Ljava/lang/String; = "Android"

.field private static log:Lcom/newrelic/agent/android/logging/AgentLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/util/Connectivity;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static carrierNameFromContext(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    :try_start_0
    invoke-static {p0}, Lcom/newrelic/agent/android/util/Connectivity;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 29
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    invoke-static {v1}, Lcom/newrelic/agent/android/util/Connectivity;->isConnected(Landroid/net/NetworkInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 30
    const-string v2, "none"

    .line 37
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :goto_0
    return-object v2

    .line 25
    :catch_0
    move-exception v0

    .line 26
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "unknown"

    goto :goto_0

    .line 31
    .end local v0    # "e":Ljava/lang/SecurityException;
    .restart local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_0
    invoke-static {v1}, Lcom/newrelic/agent/android/util/Connectivity;->isWan(Landroid/net/NetworkInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 32
    invoke-static {p0}, Lcom/newrelic/agent/android/util/Connectivity;->carrierNameFromTelephonyManager(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 33
    :cond_1
    invoke-static {v1}, Lcom/newrelic/agent/android/util/Connectivity;->isWifi(Landroid/net/NetworkInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 34
    const-string v2, "wifi"

    goto :goto_0

    .line 36
    :cond_2
    sget-object v2, Lcom/newrelic/agent/android/util/Connectivity;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v3, "Unknown network type: {0} [{1}]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 37
    const-string v2, "unknown"

    goto :goto_0
.end method

.method private static carrierNameFromTelephonyManager(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 103
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "networkOperator":Ljava/lang/String;
    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v4, "google_sdk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v4, "sdk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v4, "sdk_x86"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v4, "generic"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 106
    .local v1, "smellsLikeAnEmulator":Z
    :goto_0
    const-string v3, "Android"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    .line 110
    const-string v0, "wifi"

    .line 113
    .end local v0    # "networkOperator":Ljava/lang/String;
    :cond_1
    return-object v0

    .line 105
    .end local v1    # "smellsLikeAnEmulator":Z
    .restart local v0    # "networkOperator":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static connectionNameFromNetworkSubtype(I)Ljava/lang/String;
    .locals 1
    .param p0, "subType"    # I

    .prologue
    .line 118
    packed-switch p0, :pswitch_data_0

    .line 154
    const-string v0, "unknown"

    :goto_0
    return-object v0

    .line 120
    :pswitch_0
    const-string v0, "1xRTT"

    goto :goto_0

    .line 122
    :pswitch_1
    const-string v0, "CDMA"

    goto :goto_0

    .line 124
    :pswitch_2
    const-string v0, "EDGE"

    goto :goto_0

    .line 126
    :pswitch_3
    const-string v0, "EVDO rev 0"

    goto :goto_0

    .line 128
    :pswitch_4
    const-string v0, "EVDO rev A"

    goto :goto_0

    .line 130
    :pswitch_5
    const-string v0, "GPRS"

    goto :goto_0

    .line 132
    :pswitch_6
    const-string v0, "HSDPA"

    goto :goto_0

    .line 134
    :pswitch_7
    const-string v0, "HSPA"

    goto :goto_0

    .line 136
    :pswitch_8
    const-string v0, "HSUPA"

    goto :goto_0

    .line 138
    :pswitch_9
    const-string v0, "UMTS"

    goto :goto_0

    .line 140
    :pswitch_a
    const-string v0, "IDEN"

    goto :goto_0

    .line 145
    :pswitch_b
    const-string v0, "EVDO rev B"

    goto :goto_0

    .line 147
    :pswitch_c
    const-string v0, "HSPAP"

    goto :goto_0

    .line 149
    :pswitch_d
    const-string v0, "HRPD"

    goto :goto_0

    .line 151
    :pswitch_e
    const-string v0, "LTE"

    goto :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_2
        :pswitch_9
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_b
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method

.method private static getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 91
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 93
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Ljava/lang/SecurityException;
    sget-object v2, Lcom/newrelic/agent/android/util/Connectivity;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v3, "Cannot determine network state. Enable android.permission.ACCESS_NETWORK_STATE in your manifest."

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 97
    throw v1
.end method

.method private static isConnected(Landroid/net/NetworkInfo;)Z
    .locals 1
    .param p0, "networkInfo"    # Landroid/net/NetworkInfo;

    .prologue
    .line 61
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isWan(Landroid/net/NetworkInfo;)Z
    .locals 1
    .param p0, "networkInfo"    # Landroid/net/NetworkInfo;

    .prologue
    .line 65
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 73
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 71
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static isWifi(Landroid/net/NetworkInfo;)Z
    .locals 1
    .param p0, "networkInfo"    # Landroid/net/NetworkInfo;

    .prologue
    .line 78
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 86
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 84
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static wanType(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    :try_start_0
    invoke-static {p0}, Lcom/newrelic/agent/android/util/Connectivity;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 49
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    invoke-static {v1}, Lcom/newrelic/agent/android/util/Connectivity;->isConnected(Landroid/net/NetworkInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 50
    const-string v2, "none"

    .line 56
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :goto_0
    return-object v2

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "unknown"

    goto :goto_0

    .line 51
    .end local v0    # "e":Ljava/lang/SecurityException;
    .restart local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_0
    invoke-static {v1}, Lcom/newrelic/agent/android/util/Connectivity;->isWifi(Landroid/net/NetworkInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    const-string v2, "wifi"

    goto :goto_0

    .line 53
    :cond_1
    invoke-static {v1}, Lcom/newrelic/agent/android/util/Connectivity;->isWan(Landroid/net/NetworkInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 54
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    invoke-static {v2}, Lcom/newrelic/agent/android/util/Connectivity;->connectionNameFromNetworkSubtype(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 56
    :cond_2
    const-string v2, "unknown"

    goto :goto_0
.end method
