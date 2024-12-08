.class public Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment$RestaurantStampListener;
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
    name = "RestaurantStampListener"
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
    .line 188
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment$RestaurantStampListener;->this$0:Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment$RestaurantStampListener;->this$0:Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->access$4(Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;Lcom/android/volley/VolleyError;)V

    .line 198
    return-void
.end method

.method public onResponse(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 1
    .param p1, "restaurant"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment$RestaurantStampListener;->this$0:Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->access$3(Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    .line 193
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment$RestaurantStampListener;->onResponse(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    return-void
.end method
