.class Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment$4;
.super Ljava/lang/Object;
.source "BaseOrderFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;->checkRestaurant(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;

.field private final synthetic val$restaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;

    iput-object p2, p0, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment$4;->val$restaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment$4;->val$restaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getOpenings()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment$4;->val$restaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getOpenings()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment$4;->val$restaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;->addRestaurantDetailsFragment(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Z)V

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/RestaurantRequest;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment$4;->val$restaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getServiceUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment$RestaurantListener;

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;

    invoke-direct {v3, v4}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment$RestaurantListener;-><init>(Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;)V

    invoke-direct {v1, v2, v3}, Lcom/yopeso/lieferando/net/requests/RestaurantRequest;-><init>(Ljava/lang/String;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0
.end method
