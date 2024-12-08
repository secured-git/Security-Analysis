.class Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$7;
.super Ljava/lang/Object;
.source "RestaurantsListAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->sortByMinOrder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/yopeso/lieferando/model/restaurant/Restaurant;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$7;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;

    .line 1202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)I
    .locals 3
    .param p1, "object1"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    .param p2, "object2"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 1205
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getMinCost()I

    move-result v0

    .line 1206
    .local v0, "d1":I
    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getMinCost()I

    move-result v1

    .line 1207
    .local v1, "d2":I
    if-le v0, v1, :cond_0

    .line 1208
    const/4 v2, 0x1

    .line 1215
    :goto_0
    return v2

    .line 1211
    :cond_0
    if-ge v0, v1, :cond_1

    .line 1212
    const/4 v2, -0x1

    goto :goto_0

    .line 1215
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    check-cast p2, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {p0, p1, p2}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$7;->compare(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)I

    move-result v0

    return v0
.end method
