.class public Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$DeliveryAreaListener;
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
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;


# direct methods
.method public constructor <init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;)V
    .locals 0

    .prologue
    .line 417
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$DeliveryAreaListener;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 440
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$DeliveryAreaListener;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->access$1(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;Lcom/android/volley/VolleyError;)V

    .line 441
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$DeliveryAreaListener;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->access$2(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;)V

    .line 442
    return-void
.end method

.method public onResponse(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 2
    .param p1, "restaurant"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 422
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$DeliveryAreaListener;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->access$3(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;)Lcom/yopeso/lieferando/model/LocationSuggestion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getCityId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getDeliveryAreaForCity(I)Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;

    move-result-object v0

    .line 423
    .local v0, "da":Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;
    if-eqz v0, :cond_0

    .line 424
    invoke-virtual {p1, v0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->setDeliveryArea(Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;)V

    .line 426
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$DeliveryAreaListener;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;

    invoke-virtual {v1, p1}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->checkPreordering(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    .line 427
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$DeliveryAreaListener;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->access$2(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;)V

    .line 436
    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$DeliveryAreaListener;->onResponse(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    return-void
.end method
