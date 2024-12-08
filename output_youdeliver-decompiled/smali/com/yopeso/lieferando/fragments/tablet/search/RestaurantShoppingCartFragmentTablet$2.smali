.class Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet$2;
.super Ljava/lang/Object;
.source "RestaurantShoppingCartFragmentTablet.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet$2;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 422
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet$2;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 423
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet$2;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->emptyShoppingCart:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 424
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-direct {v1}, Lcom/yopeso/lieferando/model/cart/CartItem;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 425
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet$2;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->access$7(Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;)Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->notifyDataSetChanged()V

    .line 426
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet$2;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->activateOrderButton(Z)V

    .line 427
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet$2;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet$2;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->access$8(Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;Landroid/view/View;)V

    .line 428
    invoke-static {}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackClearBasket()V

    .line 429
    return-void
.end method
