.class final Lcom/newrelic/agent/android/analytics/AnalyticAttribute$1;
.super Ljava/util/HashSet;
.source "AnalyticAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 70
    const-string v0, "install"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute$1;->add(Ljava/lang/Object;)Z

    .line 71
    const-string v0, "upgradeFrom"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute$1;->add(Ljava/lang/Object;)Z

    .line 72
    const-string v0, "sessionDuration"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute$1;->add(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method
