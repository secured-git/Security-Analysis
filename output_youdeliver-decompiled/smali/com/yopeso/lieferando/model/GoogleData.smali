.class public Lcom/yopeso/lieferando/model/GoogleData;
.super Ljava/lang/Object;
.source "GoogleData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yopeso/lieferando/model/GoogleData$AddressComponent;,
        Lcom/yopeso/lieferando/model/GoogleData$Result;
    }
.end annotation


# instance fields
.field private mResults:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "results"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/GoogleData$Result;",
            ">;"
        }
    .end annotation
.end field

.field private mStatus:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public getResults()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/GoogleData$Result;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/yopeso/lieferando/model/GoogleData;->mResults:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/yopeso/lieferando/model/GoogleData;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getStreetResult()Lcom/yopeso/lieferando/model/GoogleData$Result;
    .locals 4

    .prologue
    .line 35
    iget-object v1, p0, Lcom/yopeso/lieferando/model/GoogleData;->mResults:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 40
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 35
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/GoogleData$Result;

    .line 36
    .local v0, "result":Lcom/yopeso/lieferando/model/GoogleData$Result;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/GoogleData$Result;->getTypes()Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "street_address"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public setResults(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/GoogleData$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/GoogleData$Result;>;"
    iput-object p1, p0, Lcom/yopeso/lieferando/model/GoogleData;->mResults:Ljava/util/ArrayList;

    .line 32
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/yopeso/lieferando/model/GoogleData;->mStatus:Ljava/lang/String;

    .line 24
    return-void
.end method
