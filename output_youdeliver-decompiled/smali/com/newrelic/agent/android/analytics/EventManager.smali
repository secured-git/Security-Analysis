.class public interface abstract Lcom/newrelic/agent/android/analytics/EventManager;
.super Ljava/lang/Object;
.source "EventManager.java"


# virtual methods
.method public abstract addEvent(Lcom/newrelic/agent/android/analytics/AnalyticsEvent;)Z
.end method

.method public abstract empty()V
.end method

.method public abstract getEventsEjected()I
.end method

.method public abstract getEventsRecorded()I
.end method

.method public abstract getMaxEventBufferTime()I
.end method

.method public abstract getMaxEventPoolSize()I
.end method

.method public abstract getQueuedEvents()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/newrelic/agent/android/analytics/AnalyticsEvent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract initialize()V
.end method

.method public abstract isMaxEventBufferTimeExceeded()Z
.end method

.method public abstract isMaxEventPoolSizeExceeded()Z
.end method

.method public abstract isTransmitRequired()Z
.end method

.method public abstract setMaxEventBufferTime(I)V
.end method

.method public abstract setMaxEventPoolSize(I)V
.end method

.method public abstract shutdown()V
.end method

.method public abstract size()I
.end method
