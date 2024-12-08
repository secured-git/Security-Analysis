.class Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment$3;
.super Ljava/lang/Object;
.source "ShopingCartFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->deleteItemFromCart(Lcom/yopeso/lieferando/model/cart/CartItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;

.field private final synthetic val$cartItem:Lcom/yopeso/lieferando/model/cart/CartItem;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;Lcom/yopeso/lieferando/model/cart/CartItem;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment$3;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;

    iput-object p2, p0, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment$3;->val$cartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment$3;->val$cartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

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

    .line 284
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment$3;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->access$1(Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;)Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment$3;->val$cartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->deleteItem(Lcom/yopeso/lieferando/model/cart/CartItem;)V

    .line 285
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment$3;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getItems()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment$3;->val$cartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 286
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment$3;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->access$1(Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;)Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->notifyDataSetChanged()V

    .line 287
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment$3;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->access$0(Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;)V

    .line 288
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment$3;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    .line 289
    return-void
.end method
