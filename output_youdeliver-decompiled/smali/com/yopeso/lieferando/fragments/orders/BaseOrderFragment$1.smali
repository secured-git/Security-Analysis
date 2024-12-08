.class Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment$1;
.super Ljava/lang/Object;
.source "BaseOrderFragment.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;->getListener()Lcom/yopeso/lieferando/net/requests/base/VolleyListener;
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
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;->access$0(Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;Lcom/android/volley/VolleyError;)V

    .line 68
    return-void
.end method

.method public onResponse(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 2
    .param p1, "restaurant"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;->addRestaurantDetailsFragment(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Z)V

    .line 63
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment$1;->onResponse(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    return-void
.end method
