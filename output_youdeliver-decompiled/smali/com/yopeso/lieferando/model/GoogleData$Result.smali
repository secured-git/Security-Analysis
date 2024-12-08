.class public Lcom/yopeso/lieferando/model/GoogleData$Result;
.super Ljava/lang/Object;
.source "GoogleData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/model/GoogleData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Result"
.end annotation


# instance fields
.field private mAddressComponents:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "address_components"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/GoogleData$AddressComponent;",
            ">;"
        }
    .end annotation
.end field

.field private mTypes:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "types"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/yopeso/lieferando/model/GoogleData;


# direct methods
.method public constructor <init>(Lcom/yopeso/lieferando/model/GoogleData;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/yopeso/lieferando/model/GoogleData$Result;->this$0:Lcom/yopeso/lieferando/model/GoogleData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddressComponents()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/GoogleData$AddressComponent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/yopeso/lieferando/model/GoogleData$Result;->mAddressComponents:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCityAddress()Lcom/yopeso/lieferando/model/GoogleData$AddressComponent;
    .locals 5

    .prologue
    .line 66
    const/4 v1, 0x0

    .line 67
    .local v1, "addressComponent":Lcom/yopeso/lieferando/model/GoogleData$AddressComponent;
    iget-object v2, p0, Lcom/yopeso/lieferando/model/GoogleData$Result;->mAddressComponents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 80
    :goto_0
    return-object v1

    .line 67
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/GoogleData$AddressComponent;

    .line 68
    .local v0, "address":Lcom/yopeso/lieferando/model/GoogleData$AddressComponent;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/GoogleData$AddressComponent;->getTypes()Ljava/util/ArrayList;

    move-result-object v3

    const-string v4, "administrative_area_level_3"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 69
    move-object v1, v0

    .line 70
    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/GoogleData$AddressComponent;->getTypes()Ljava/util/ArrayList;

    move-result-object v3

    const-string v4, "administrative_area_level_2"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 72
    move-object v1, v0

    .line 73
    goto :goto_0

    .line 74
    :cond_3
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/GoogleData$AddressComponent;->getTypes()Ljava/util/ArrayList;

    move-result-object v3

    const-string v4, "administrative_area_level_1"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 75
    move-object v1, v0

    .line 76
    goto :goto_0
.end method

.method public getCountry()Lcom/yopeso/lieferando/model/GoogleData$AddressComponent;
    .locals 4

    .prologue
    .line 102
    iget-object v1, p0, Lcom/yopeso/lieferando/model/GoogleData$Result;->mAddressComponents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 107
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 102
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/GoogleData$AddressComponent;

    .line 103
    .local v0, "address":Lcom/yopeso/lieferando/model/GoogleData$AddressComponent;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/GoogleData$AddressComponent;->getTypes()Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "country"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public getPlz()Lcom/yopeso/lieferando/model/GoogleData$AddressComponent;
    .locals 4

    .prologue
    .line 93
    iget-object v1, p0, Lcom/yopeso/lieferando/model/GoogleData$Result;->mAddressComponents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 98
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 93
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/GoogleData$AddressComponent;

    .line 94
    .local v0, "address":Lcom/yopeso/lieferando/model/GoogleData$AddressComponent;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/GoogleData$AddressComponent;->getTypes()Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "postal_code"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public getStreetAddress()Lcom/yopeso/lieferando/model/GoogleData$AddressComponent;
    .locals 4

    .prologue
    .line 84
    iget-object v1, p0, Lcom/yopeso/lieferando/model/GoogleData$Result;->mAddressComponents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 89
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 84
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/GoogleData$AddressComponent;

    .line 85
    .local v0, "address":Lcom/yopeso/lieferando/model/GoogleData$AddressComponent;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/GoogleData$AddressComponent;->getTypes()Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "route"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public getTypes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/yopeso/lieferando/model/GoogleData$Result;->mTypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setAddressComponents(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/GoogleData$AddressComponent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "address_components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/GoogleData$AddressComponent;>;"
    iput-object p1, p0, Lcom/yopeso/lieferando/model/GoogleData$Result;->mAddressComponents:Ljava/util/ArrayList;

    .line 63
    return-void
.end method

.method public setTypes(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "types":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/yopeso/lieferando/model/GoogleData$Result;->mTypes:Ljava/util/ArrayList;

    .line 55
    return-void
.end method
