.class public Lcom/yopeso/lieferando/activity/tablet/SearchActivity$DeliveryAreaListener;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/activity/tablet/SearchActivity;
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
.field final synthetic this$0:Lcom/yopeso/lieferando/activity/tablet/SearchActivity;


# direct methods
.method public constructor <init>(Lcom/yopeso/lieferando/activity/tablet/SearchActivity;)V
    .locals 0

    .prologue
    .line 581
    iput-object p1, p0, Lcom/yopeso/lieferando/activity/tablet/SearchActivity$DeliveryAreaListener;->this$0:Lcom/yopeso/lieferando/activity/tablet/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 605
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/tablet/SearchActivity$DeliveryAreaListener;->this$0:Lcom/yopeso/lieferando/activity/tablet/SearchActivity;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->access$0(Lcom/yopeso/lieferando/activity/tablet/SearchActivity;Lcom/android/volley/VolleyError;)V

    .line 606
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/tablet/SearchActivity$DeliveryAreaListener;->this$0:Lcom/yopeso/lieferando/activity/tablet/SearchActivity;

    invoke-static {v0}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->access$1(Lcom/yopeso/lieferando/activity/tablet/SearchActivity;)V

    .line 607
    return-void
.end method

.method public onResponse(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 2
    .param p1, "restaurant"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 586
    iget-object v1, p0, Lcom/yopeso/lieferando/activity/tablet/SearchActivity$DeliveryAreaListener;->this$0:Lcom/yopeso/lieferando/activity/tablet/SearchActivity;

    invoke-static {v1}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->access$2(Lcom/yopeso/lieferando/activity/tablet/SearchActivity;)Lcom/yopeso/lieferando/model/LocationSuggestion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getCityId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getDeliveryAreaForCity(I)Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;

    move-result-object v0

    .line 587
    .local v0, "da":Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;
    if-eqz v0, :cond_0

    .line 588
    invoke-virtual {p1, v0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->setDeliveryArea(Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;)V

    .line 590
    iget-object v1, p0, Lcom/yopeso/lieferando/activity/tablet/SearchActivity$DeliveryAreaListener;->this$0:Lcom/yopeso/lieferando/activity/tablet/SearchActivity;

    invoke-virtual {v1, p1}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->checkPreordering(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    .line 592
    iget-object v1, p0, Lcom/yopeso/lieferando/activity/tablet/SearchActivity$DeliveryAreaListener;->this$0:Lcom/yopeso/lieferando/activity/tablet/SearchActivity;

    invoke-static {v1}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->access$1(Lcom/yopeso/lieferando/activity/tablet/SearchActivity;)V

    .line 601
    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity$DeliveryAreaListener;->onResponse(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    return-void
.end method
