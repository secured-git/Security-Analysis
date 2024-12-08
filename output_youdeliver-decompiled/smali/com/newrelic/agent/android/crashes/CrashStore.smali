.class public interface abstract Lcom/newrelic/agent/android/crashes/CrashStore;
.super Ljava/lang/Object;
.source "CrashStore.java"


# virtual methods
.method public abstract clear()V
.end method

.method public abstract count()I
.end method

.method public abstract delete(Lcom/newrelic/agent/android/harvest/crash/Crash;)V
.end method

.method public abstract fetchAll()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/newrelic/agent/android/harvest/crash/Crash;",
            ">;"
        }
    .end annotation
.end method

.method public abstract store(Lcom/newrelic/agent/android/harvest/crash/Crash;)V
.end method
