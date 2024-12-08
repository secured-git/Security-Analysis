.class public Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$RestaurantListener;
.super Ljava/lang/Object;
.source "SearchMainFragmentTablet.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;
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
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;


# direct methods
.method public constructor <init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$RestaurantListener;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 399
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$RestaurantListener;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->access$1(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;Lcom/android/volley/VolleyError;)V

    .line 400
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$RestaurantListener;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->access$2(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;)V

    .line 401
    return-void
.end method

.method public onResponse(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 4
    .param p1, "restaurant"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 390
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$RestaurantListener;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/OpeningsRequest;

    new-instance v2, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$OpeningsListener;

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$RestaurantListener;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;

    invoke-direct {v2, v3}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$OpeningsListener;-><init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;)V

    invoke-direct {v1, p1, v2}, Lcom/yopeso/lieferando/net/requests/OpeningsRequest;-><init>(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 395
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$RestaurantListener;->onResponse(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    return-void
.end method
