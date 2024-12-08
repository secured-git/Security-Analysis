.class public Lcom/yopeso/lieferando/events/FavoriteRemovedEvent;
.super Ljava/lang/Object;
.source "FavoriteRemovedEvent.java"


# instance fields
.field private mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;


# direct methods
.method public constructor <init>(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 0
    .param p1, "r"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/yopeso/lieferando/events/FavoriteRemovedEvent;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .line 18
    return-void
.end method


# virtual methods
.method public getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/yopeso/lieferando/events/FavoriteRemovedEvent;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    return-object v0
.end method

.method public setRestaurant(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 0
    .param p1, "restaurant"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/yopeso/lieferando/events/FavoriteRemovedEvent;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .line 26
    return-void
.end method
