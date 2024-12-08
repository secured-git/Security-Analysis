.class Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$3;
.super Ljava/lang/Object;
.source "RestaurantDetailsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->checkRestaurant(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;

.field private final synthetic val$restaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$3;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;

    iput-object p2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$3;->val$restaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 417
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$3;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/DeliveryAreaRequest;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$3;->val$restaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    new-instance v3, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$DeliveryAreaListener;

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$3;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;

    invoke-direct {v3, v4}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$DeliveryAreaListener;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;)V

    invoke-direct {v1, v2, v3}, Lcom/yopeso/lieferando/net/requests/DeliveryAreaRequest;-><init>(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 418
    return-void
.end method
