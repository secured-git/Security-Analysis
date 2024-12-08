.class Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$4;
.super Ljava/lang/Object;
.source "RestaurantDetailsFragment.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->getOpeningsListener()Lcom/yopeso/lieferando/net/requests/base/VolleyListener;
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
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;

    .line 501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 511
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->access$0(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;Lcom/android/volley/VolleyError;)V

    .line 512
    return-void
.end method

.method public onResponse(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 1
    .param p1, "restaurant"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 505
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;

    iput-object p1, v0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .line 506
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->access$1(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;)V

    .line 507
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$4;->onResponse(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    return-void
.end method
