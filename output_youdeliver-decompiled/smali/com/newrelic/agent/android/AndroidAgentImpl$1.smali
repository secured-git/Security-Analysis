.class final Lcom/newrelic/agent/android/AndroidAgentImpl$1;
.super Ljava/lang/Object;
.source "AndroidAgentImpl.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newrelic/agent/android/AndroidAgentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/newrelic/agent/android/api/common/TransactionData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/newrelic/agent/android/api/common/TransactionData;Lcom/newrelic/agent/android/api/common/TransactionData;)I
    .locals 4
    .param p1, "lhs"    # Lcom/newrelic/agent/android/api/common/TransactionData;
    .param p2, "rhs"    # Lcom/newrelic/agent/android/api/common/TransactionData;

    .prologue
    .line 583
    invoke-virtual {p1}, Lcom/newrelic/agent/android/api/common/TransactionData;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/newrelic/agent/android/api/common/TransactionData;->getTimestamp()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 584
    const/4 v0, -0x1

    .line 588
    :goto_0
    return v0

    .line 585
    :cond_0
    invoke-virtual {p1}, Lcom/newrelic/agent/android/api/common/TransactionData;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/newrelic/agent/android/api/common/TransactionData;->getTimestamp()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 586
    const/4 v0, 0x1

    goto :goto_0

    .line 588
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 580
    check-cast p1, Lcom/newrelic/agent/android/api/common/TransactionData;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/newrelic/agent/android/api/common/TransactionData;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/newrelic/agent/android/AndroidAgentImpl$1;->compare(Lcom/newrelic/agent/android/api/common/TransactionData;Lcom/newrelic/agent/android/api/common/TransactionData;)I

    move-result v0

    return v0
.end method
