.class public Lcom/yopeso/lieferando/events/RestaurantsLoaded;
.super Ljava/lang/Object;
.source "RestaurantsLoaded.java"


# instance fields
.field private mRestaurants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/Restaurant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/Restaurant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 11
    .local p1, "restaurants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Restaurant;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/yopeso/lieferando/events/RestaurantsLoaded;->mRestaurants:Ljava/util/ArrayList;

    .line 13
    return-void
.end method


# virtual methods
.method public getRestaurants()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/Restaurant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    iget-object v0, p0, Lcom/yopeso/lieferando/events/RestaurantsLoaded;->mRestaurants:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setRestaurants(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/Restaurant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, "restaurants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Restaurant;>;"
    iput-object p1, p0, Lcom/yopeso/lieferando/events/RestaurantsLoaded;->mRestaurants:Ljava/util/ArrayList;

    .line 21
    return-void
.end method
