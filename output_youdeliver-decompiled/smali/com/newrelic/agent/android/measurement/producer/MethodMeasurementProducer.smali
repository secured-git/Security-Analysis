.class public Lcom/newrelic/agent/android/measurement/producer/MethodMeasurementProducer;
.super Lcom/newrelic/agent/android/measurement/producer/BaseMeasurementProducer;
.source "MethodMeasurementProducer.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/newrelic/agent/android/measurement/MeasurementType;->Method:Lcom/newrelic/agent/android/measurement/MeasurementType;

    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/measurement/producer/BaseMeasurementProducer;-><init>(Lcom/newrelic/agent/android/measurement/MeasurementType;)V

    .line 13
    return-void
.end method


# virtual methods
.method public produceMeasurement(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 11
    .param p1, "trace"    # Lcom/newrelic/agent/android/tracing/Trace;

    .prologue
    .line 17
    new-instance v1, Lcom/newrelic/agent/android/measurement/MethodMeasurement;

    iget-object v2, p1, Lcom/newrelic/agent/android/tracing/Trace;->displayName:Ljava/lang/String;

    iget-object v3, p1, Lcom/newrelic/agent/android/tracing/Trace;->scope:Ljava/lang/String;

    iget-wide v4, p1, Lcom/newrelic/agent/android/tracing/Trace;->entryTimestamp:J

    iget-wide v6, p1, Lcom/newrelic/agent/android/tracing/Trace;->exitTimestamp:J

    iget-wide v8, p1, Lcom/newrelic/agent/android/tracing/Trace;->exclusiveTime:J

    invoke-virtual {p1}, Lcom/newrelic/agent/android/tracing/Trace;->getCategory()Lcom/newrelic/agent/android/instrumentation/MetricCategory;

    move-result-object v10

    invoke-direct/range {v1 .. v10}, Lcom/newrelic/agent/android/measurement/MethodMeasurement;-><init>(Ljava/lang/String;Ljava/lang/String;JJJLcom/newrelic/agent/android/instrumentation/MetricCategory;)V

    .line 25
    .local v1, "methodMeasurement":Lcom/newrelic/agent/android/measurement/MethodMeasurement;
    invoke-virtual {p0, v1}, Lcom/newrelic/agent/android/measurement/producer/MethodMeasurementProducer;->produceMeasurement(Lcom/newrelic/agent/android/measurement/Measurement;)V

    .line 26
    return-void
.end method
