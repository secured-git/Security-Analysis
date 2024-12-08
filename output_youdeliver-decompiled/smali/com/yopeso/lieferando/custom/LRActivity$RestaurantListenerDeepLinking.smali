.class public Lcom/yopeso/lieferando/custom/LRActivity$RestaurantListenerDeepLinking;
.super Ljava/lang/Object;
.source "LRActivity.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/custom/LRActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RestaurantListenerDeepLinking"
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
.field final synthetic this$0:Lcom/yopeso/lieferando/custom/LRActivity;


# direct methods
.method public constructor <init>(Lcom/yopeso/lieferando/custom/LRActivity;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/yopeso/lieferando/custom/LRActivity$RestaurantListenerDeepLinking;->this$0:Lcom/yopeso/lieferando/custom/LRActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/yopeso/lieferando/custom/LRActivity$RestaurantListenerDeepLinking;->this$0:Lcom/yopeso/lieferando/custom/LRActivity;

    invoke-virtual {v0, p1}, Lcom/yopeso/lieferando/custom/LRActivity;->handleNetworkError(Lcom/android/volley/VolleyError;)V

    .line 199
    return-void
.end method

.method public onResponse(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 3
    .param p1, "restaurant"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    const/4 v2, 0x1

    .line 193
    iget-object v0, p0, Lcom/yopeso/lieferando/custom/LRActivity$RestaurantListenerDeepLinking;->this$0:Lcom/yopeso/lieferando/custom/LRActivity;

    iget-object v1, p0, Lcom/yopeso/lieferando/custom/LRActivity$RestaurantListenerDeepLinking;->this$0:Lcom/yopeso/lieferando/custom/LRActivity;

    invoke-static {v1, v2, p1, v2, v2}, Lcom/yopeso/lieferando/util/IntentNavUtils;->goToRestaurant(Landroid/app/Activity;ZLcom/yopeso/lieferando/model/restaurant/Restaurant;ZZ)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/custom/LRActivity;->startActivity(Landroid/content/Intent;)V

    .line 194
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/custom/LRActivity$RestaurantListenerDeepLinking;->onResponse(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    return-void
.end method
