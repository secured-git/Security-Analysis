.class Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment$6;
.super Ljava/lang/Object;
.source "BaseOrderFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;->addRestaurantDetailsFragment(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;

.field private final synthetic val$r:Lcom/yopeso/lieferando/model/restaurant/Restaurant;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment$6;->this$0:Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;

    iput-object p2, p0, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment$6;->val$r:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 186
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment$6;->this$0:Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/DeliveryAreaRequest;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment$6;->val$r:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    new-instance v3, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment$DeliveryAreaListener;

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment$6;->this$0:Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;

    invoke-direct {v3, v4}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment$DeliveryAreaListener;-><init>(Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;)V

    invoke-direct {v1, v2, v3}, Lcom/yopeso/lieferando/net/requests/DeliveryAreaRequest;-><init>(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 187
    return-void
.end method
