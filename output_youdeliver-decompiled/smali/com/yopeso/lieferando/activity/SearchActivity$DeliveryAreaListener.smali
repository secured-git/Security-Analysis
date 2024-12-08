.class public Lcom/yopeso/lieferando/activity/SearchActivity$DeliveryAreaListener;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/activity/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeliveryAreaListener"
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
.field final synthetic this$0:Lcom/yopeso/lieferando/activity/SearchActivity;


# direct methods
.method public constructor <init>(Lcom/yopeso/lieferando/activity/SearchActivity;)V
    .locals 0

    .prologue
    .line 503
    iput-object p1, p0, Lcom/yopeso/lieferando/activity/SearchActivity$DeliveryAreaListener;->this$0:Lcom/yopeso/lieferando/activity/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 529
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/SearchActivity$DeliveryAreaListener;->this$0:Lcom/yopeso/lieferando/activity/SearchActivity;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/activity/SearchActivity;->access$0(Lcom/yopeso/lieferando/activity/SearchActivity;Lcom/android/volley/VolleyError;)V

    .line 530
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/SearchActivity$DeliveryAreaListener;->this$0:Lcom/yopeso/lieferando/activity/SearchActivity;

    invoke-static {v0}, Lcom/yopeso/lieferando/activity/SearchActivity;->access$1(Lcom/yopeso/lieferando/activity/SearchActivity;)V

    .line 531
    return-void
.end method

.method public onResponse(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 2
    .param p1, "restaurant"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 508
    iget-object v1, p0, Lcom/yopeso/lieferando/activity/SearchActivity$DeliveryAreaListener;->this$0:Lcom/yopeso/lieferando/activity/SearchActivity;

    invoke-static {v1}, Lcom/yopeso/lieferando/activity/SearchActivity;->access$2(Lcom/yopeso/lieferando/activity/SearchActivity;)Lcom/yopeso/lieferando/model/LocationSuggestion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getCityId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getDeliveryAreaForCity(I)Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;

    move-result-object v0

    .line 509
    .local v0, "da":Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;
    if-eqz v0, :cond_0

    .line 510
    invoke-virtual {p1, v0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->setDeliveryArea(Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;)V

    .line 512
    iget-object v1, p0, Lcom/yopeso/lieferando/activity/SearchActivity$DeliveryAreaListener;->this$0:Lcom/yopeso/lieferando/activity/SearchActivity;

    invoke-virtual {v1, p1}, Lcom/yopeso/lieferando/activity/SearchActivity;->checkPreordering(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    .line 514
    iget-object v1, p0, Lcom/yopeso/lieferando/activity/SearchActivity$DeliveryAreaListener;->this$0:Lcom/yopeso/lieferando/activity/SearchActivity;

    invoke-static {v1}, Lcom/yopeso/lieferando/activity/SearchActivity;->access$1(Lcom/yopeso/lieferando/activity/SearchActivity;)V

    .line 523
    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/activity/SearchActivity$DeliveryAreaListener;->onResponse(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    return-void
.end method
