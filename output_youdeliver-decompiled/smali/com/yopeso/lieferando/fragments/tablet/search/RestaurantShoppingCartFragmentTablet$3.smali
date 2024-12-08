.class Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet$3;
.super Ljava/lang/Object;
.source "RestaurantShoppingCartFragmentTablet.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->deleteItemFromCart(Lcom/yopeso/lieferando/model/cart/CartItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;

.field private final synthetic val$cartItem:Lcom/yopeso/lieferando/model/cart/CartItem;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;Lcom/yopeso/lieferando/model/cart/CartItem;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet$3;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;

    iput-object p2, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet$3;->val$cartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet$3;->val$cartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/CartItem;->getMeal()Lcom/yopeso/lieferando/model/meal/Meal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/meal/Meal;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackRemoveItemFromBasket(Ljava/lang/String;)V

    .line 491
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet$3;->val$cartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 492
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet$3;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->access$7(Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;)Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet$3;->val$cartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->deleteItem(Lcom/yopeso/lieferando/model/cart/CartItem;)V

    .line 493
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet$3;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getItems()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet$3;->val$cartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 494
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet$3;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->access$7(Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;)Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->notifyDataSetChanged()V

    .line 495
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet$3;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet$3;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->access$8(Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;Landroid/view/View;)V

    .line 496
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet$3;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet$3;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->emptyShoppingCart:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 501
    :goto_0
    return-void

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet$3;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->emptyShoppingCart:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
