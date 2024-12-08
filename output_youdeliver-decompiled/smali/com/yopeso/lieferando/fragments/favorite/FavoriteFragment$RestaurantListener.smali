.class public Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment$RestaurantListener;
.super Ljava/lang/Object;
.source "FavoriteFragment.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RestaurantListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
        "<",
        "Lcom/yopeso/lieferando/model/restaurant/Restaurant;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;


# direct methods
.method public constructor <init>(Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment$RestaurantListener;->this$0:Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "arg0"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment$RestaurantListener;->this$0:Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->access$0(Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->access$1(Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;I)V

    .line 131
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment$RestaurantListener;->this$0:Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->access$2(Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;)V

    .line 132
    return-void
.end method

.method public onResponse(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 3
    .param p1, "restaurant"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment$RestaurantListener;->this$0:Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/OpeningsRequest;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment$RestaurantListener;->this$0:Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->getListener()Lcom/yopeso/lieferando/net/requests/base/VolleyListener;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/yopeso/lieferando/net/requests/OpeningsRequest;-><init>(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 125
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment$RestaurantListener;->this$0:Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->access$0(Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->access$1(Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;I)V

    .line 126
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment$RestaurantListener;->onResponse(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    return-void
.end method
