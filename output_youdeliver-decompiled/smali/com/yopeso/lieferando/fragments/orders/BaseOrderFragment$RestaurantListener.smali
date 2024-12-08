.class public Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment$RestaurantListener;
.super Ljava/lang/Object;
.source "BaseOrderFragment.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;
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
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;


# direct methods
.method public constructor <init>(Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment$RestaurantListener;->this$0:Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment$RestaurantListener;->this$0:Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;->access$0(Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;Lcom/android/volley/VolleyError;)V

    .line 54
    return-void
.end method

.method public onResponse(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 3
    .param p1, "restaurant"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment$RestaurantListener;->this$0:Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/OpeningsRequest;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment$RestaurantListener;->this$0:Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;->getListener()Lcom/yopeso/lieferando/net/requests/base/VolleyListener;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/yopeso/lieferando/net/requests/OpeningsRequest;-><init>(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 49
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment$RestaurantListener;->onResponse(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    return-void
.end method
