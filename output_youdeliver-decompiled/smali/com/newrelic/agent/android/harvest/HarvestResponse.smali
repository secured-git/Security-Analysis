.class public Lcom/newrelic/agent/android/harvest/HarvestResponse;
.super Ljava/lang/Object;
.source "HarvestResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newrelic/agent/android/harvest/HarvestResponse$Code;
    }
.end annotation


# static fields
.field private static final DISABLE_STRING:Ljava/lang/String; = "DISABLE_NEW_RELIC"


# instance fields
.field private responseBody:Ljava/lang/String;

.field private responseTime:J

.field private statusCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public getResponseBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestResponse;->responseBody:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()Lcom/newrelic/agent/android/harvest/HarvestResponse$Code;
    .locals 6

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/HarvestResponse;->isOK()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 51
    sget-object v1, Lcom/newrelic/agent/android/harvest/HarvestResponse$Code;->OK:Lcom/newrelic/agent/android/harvest/HarvestResponse$Code;

    .line 58
    :cond_0
    :goto_0
    return-object v1

    .line 53
    :cond_1
    invoke-static {}, Lcom/newrelic/agent/android/harvest/HarvestResponse$Code;->values()[Lcom/newrelic/agent/android/harvest/HarvestResponse$Code;

    move-result-object v0

    .local v0, "arr$":[Lcom/newrelic/agent/android/harvest/HarvestResponse$Code;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 54
    .local v1, "code":Lcom/newrelic/agent/android/harvest/HarvestResponse$Code;
    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/HarvestResponse$Code;->getStatusCode()I

    move-result v4

    iget v5, p0, Lcom/newrelic/agent/android/harvest/HarvestResponse;->statusCode:I

    if-eq v4, v5, :cond_0

    .line 53
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 58
    .end local v1    # "code":Lcom/newrelic/agent/android/harvest/HarvestResponse$Code;
    :cond_2
    sget-object v1, Lcom/newrelic/agent/android/harvest/HarvestResponse$Code;->UNKNOWN:Lcom/newrelic/agent/android/harvest/HarvestResponse$Code;

    goto :goto_0
.end method

.method public getResponseTime()J
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/newrelic/agent/android/harvest/HarvestResponse;->responseTime:J

    return-wide v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/newrelic/agent/android/harvest/HarvestResponse;->statusCode:I

    return v0
.end method

.method public isDisableCommand()Z
    .locals 2

    .prologue
    .line 68
    sget-object v0, Lcom/newrelic/agent/android/harvest/HarvestResponse$Code;->FORBIDDEN:Lcom/newrelic/agent/android/harvest/HarvestResponse$Code;

    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/HarvestResponse;->getResponseCode()Lcom/newrelic/agent/android/harvest/HarvestResponse$Code;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const-string v0, "DISABLE_NEW_RELIC"

    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/HarvestResponse;->getResponseBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isError()Z
    .locals 2

    .prologue
    .line 77
    iget v0, p0, Lcom/newrelic/agent/android/harvest/HarvestResponse;->statusCode:I

    const/16 v1, 0x190

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOK()Z
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/HarvestResponse;->isError()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnknown()Z
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/HarvestResponse;->getResponseCode()Lcom/newrelic/agent/android/harvest/HarvestResponse$Code;

    move-result-object v0

    sget-object v1, Lcom/newrelic/agent/android/harvest/HarvestResponse$Code;->UNKNOWN:Lcom/newrelic/agent/android/harvest/HarvestResponse$Code;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setResponseBody(Ljava/lang/String;)V
    .locals 0
    .param p1, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/HarvestResponse;->responseBody:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setResponseTime(J)V
    .locals 1
    .param p1, "responseTime"    # J

    .prologue
    .line 114
    iput-wide p1, p0, Lcom/newrelic/agent/android/harvest/HarvestResponse;->responseTime:J

    .line 115
    return-void
.end method

.method public setStatusCode(I)V
    .locals 0
    .param p1, "statusCode"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/newrelic/agent/android/harvest/HarvestResponse;->statusCode:I

    .line 99
    return-void
.end method
