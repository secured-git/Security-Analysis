.class public Lcom/newrelic/agent/android/AgentConfiguration;
.super Ljava/lang/Object;
.source "AgentConfiguration.java"


# static fields
.field private static final DEFAULT_COLLECTOR_HOST:Ljava/lang/String; = "mobile-collector.newrelic.com"

.field private static final DEFAULT_CRASH_COLLECTOR_HOST:Ljava/lang/String; = "mobile-crash.newrelic.com"


# instance fields
.field private analyticAttributeStore:Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;

.field private appName:Ljava/lang/String;

.field private applicationToken:Ljava/lang/String;

.field private collectorHost:Ljava/lang/String;

.field private crashCollectorHost:Ljava/lang/String;

.field private crashStore:Lcom/newrelic/agent/android/crashes/CrashStore;

.field private customApplicationVersion:Ljava/lang/String;

.field private customBuildId:Ljava/lang/String;

.field private enableAnalyticsEvents:Z

.field private reportCrashes:Z

.field private sessionID:Ljava/lang/String;

.field private useLocationService:Z

.field private useSsl:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "mobile-collector.newrelic.com"

    iput-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->collectorHost:Ljava/lang/String;

    .line 16
    const-string v0, "mobile-crash.newrelic.com"

    iput-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->crashCollectorHost:Ljava/lang/String;

    .line 19
    iput-boolean v1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->useSsl:Z

    .line 21
    iput-boolean v1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->reportCrashes:Z

    .line 22
    iput-boolean v1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->enableAnalyticsEvents:Z

    .line 23
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->sessionID:Ljava/lang/String;

    .line 24
    iput-object v2, p0, Lcom/newrelic/agent/android/AgentConfiguration;->customApplicationVersion:Ljava/lang/String;

    .line 25
    iput-object v2, p0, Lcom/newrelic/agent/android/AgentConfiguration;->customBuildId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAnalyticAttributeStore()Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->analyticAttributeStore:Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->applicationToken:Ljava/lang/String;

    return-object v0
.end method

.method public getCollectorHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->collectorHost:Ljava/lang/String;

    return-object v0
.end method

.method public getCrashCollectorHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->crashCollectorHost:Ljava/lang/String;

    return-object v0
.end method

.method public getCrashStore()Lcom/newrelic/agent/android/crashes/CrashStore;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->crashStore:Lcom/newrelic/agent/android/crashes/CrashStore;

    return-object v0
.end method

.method public getCustomApplicationVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->customApplicationVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomBuildIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->customBuildId:Ljava/lang/String;

    return-object v0
.end method

.method public getEnableAnalyticsEvents()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->enableAnalyticsEvents:Z

    return v0
.end method

.method public getReportCrashes()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->reportCrashes:Z

    return v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->sessionID:Ljava/lang/String;

    return-object v0
.end method

.method public setAnalyticAttributeStore(Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;)V
    .locals 0
    .param p1, "analyticAttributeStore"    # Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->analyticAttributeStore:Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;

    .line 100
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->appName:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setApplicationToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "applicationToken"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->applicationToken:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setCollectorHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "collectorHost"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->collectorHost:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setCrashCollectorHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "crashCollectorHost"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->crashCollectorHost:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setCrashStore(Lcom/newrelic/agent/android/crashes/CrashStore;)V
    .locals 0
    .param p1, "crashStore"    # Lcom/newrelic/agent/android/crashes/CrashStore;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->crashStore:Lcom/newrelic/agent/android/crashes/CrashStore;

    .line 92
    return-void
.end method

.method public setCustomApplicationVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "customApplicationVersion"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->customApplicationVersion:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setCustomBuildIdentifier(Ljava/lang/String;)V
    .locals 0
    .param p1, "customBuildId"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->customBuildId:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setEnableAnalyticsEvents(Z)V
    .locals 0
    .param p1, "enableAnalyticsEvents"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->enableAnalyticsEvents:Z

    .line 108
    return-void
.end method

.method public setReportCrashes(Z)V
    .locals 0
    .param p1, "reportCrashes"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->reportCrashes:Z

    .line 84
    return-void
.end method

.method public setSessionID(Ljava/lang/String;)V
    .locals 0
    .param p1, "sessionID"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->sessionID:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setUseLocationService(Z)V
    .locals 0
    .param p1, "useLocationService"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->useLocationService:Z

    .line 76
    return-void
.end method

.method public setUseSsl(Z)V
    .locals 0
    .param p1, "useSsl"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->useSsl:Z

    .line 68
    return-void
.end method

.method public useLocationService()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->useLocationService:Z

    return v0
.end method

.method public useSsl()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->useSsl:Z

    return v0
.end method
