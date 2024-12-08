.class public Lcom/yopeso/lieferando/events/RestaurantsLoadedEvent;
.super Ljava/lang/Object;
.source "RestaurantsLoadedEvent.java"


# instance fields
.field private mRestaurant:Ljava/util/ArrayList;
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
    .line 10
    .local p1, "r":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Restaurant;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/yopeso/lieferando/events/RestaurantsLoadedEvent;->mRestaurant:Ljava/util/ArrayList;

    .line 12
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
    .line 15
    iget-object v0, p0, Lcom/yopeso/lieferando/events/RestaurantsLoadedEvent;->mRestaurant:Ljava/util/ArrayList;

    return-object v0
.end method
