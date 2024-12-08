.class Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment$1;
.super Ljava/lang/Object;
.source "FavoriteFragment.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->getListener()Lcom/yopeso/lieferando/net/requests/base/VolleyListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.method constructor <init>(Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "arg0"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->access$2(Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;)V

    .line 150
    return-void
.end method

.method public onResponse(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 2
    .param p1, "restaurant"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->mRestaurants:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->mAdapter:Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;

    iget-object v1, v1, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->mRestaurants:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;->setRestaurants(Ljava/util/ArrayList;)V

    .line 144
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->access$2(Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;)V

    .line 145
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment$1;->onResponse(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    return-void
.end method
