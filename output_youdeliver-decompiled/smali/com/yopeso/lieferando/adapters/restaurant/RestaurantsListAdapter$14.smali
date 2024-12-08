.class Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$14;
.super Ljava/lang/Object;
.source "RestaurantsListAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->sortByDistance()V
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

.field private final synthetic val$loc:Landroid/location/Location;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$14;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;

    iput-object p2, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$14;->val$loc:Landroid/location/Location;

    .line 1654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)I
    .locals 8
    .param p1, "res1"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    .param p2, "res2"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    const-wide/16 v6, 0x0

    .line 1658
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 1659
    .local v0, "distanceInMetersRes1":F
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 1661
    .local v1, "distanceInMetersRes2":F
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$14;->val$loc:Landroid/location/Location;

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getLatitude()D

    move-result-wide v4

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getLongitude()D

    move-result-wide v4

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_0

    .line 1662
    new-instance v2, Landroid/location/Location;

    const-string v3, ""

    invoke-direct {v2, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 1663
    .local v2, "location":Landroid/location/Location;
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    .line 1664
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/location/Location;->setLongitude(D)V

    .line 1665
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$14;->val$loc:Landroid/location/Location;

    invoke-virtual {v3, v2}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    .line 1668
    .end local v2    # "location":Landroid/location/Location;
    :cond_0
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$14;->val$loc:Landroid/location/Location;

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getLatitude()D

    move-result-wide v4

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getLongitude()D

    move-result-wide v4

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_1

    .line 1669
    new-instance v2, Landroid/location/Location;

    const-string v3, ""

    invoke-direct {v2, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 1670
    .restart local v2    # "location":Landroid/location/Location;
    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    .line 1671
    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/location/Location;->setLongitude(D)V

    .line 1672
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$14;->val$loc:Landroid/location/Location;

    invoke-virtual {v3, v2}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v1

    .line 1676
    .end local v2    # "location":Landroid/location/Location;
    :cond_1
    cmpl-float v3, v0, v1

    if-lez v3, :cond_2

    .line 1677
    const/4 v3, 0x1

    .line 1681
    :goto_0
    return v3

    .line 1678
    :cond_2
    cmpl-float v3, v0, v1

    if-nez v3, :cond_3

    .line 1679
    const/4 v3, 0x0

    goto :goto_0

    .line 1681
    :cond_3
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    check-cast p2, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {p0, p1, p2}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$14;->compare(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)I

    move-result v0

    return v0
.end method
