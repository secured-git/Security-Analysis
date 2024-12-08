.class Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment$2;
.super Ljava/lang/Object;
.source "ShopingCartFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->showEmptyCartDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 178
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 179
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->access$0(Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;)V

    .line 180
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->activateOrderButton(Z)V

    .line 181
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->access$1(Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;)Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->notifyDataSetChanged()V

    .line 182
    invoke-static {}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackClearBasket()V

    .line 183
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    .line 184
    return-void
.end method
