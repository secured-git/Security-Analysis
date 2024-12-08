.class Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment$2;
.super Ljava/lang/Object;
.source "MealItemFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->addToCartButtonPressed(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment$2;)Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 247
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->access$0(Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;)Lcom/yopeso/lieferando/model/cart/CartItem;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;

    invoke-static {v2}, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->access$1(Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;)Lcom/yopeso/lieferando/model/cart/CartItem;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->replaceItem(Lcom/yopeso/lieferando/model/cart/CartItem;Lcom/yopeso/lieferando/model/cart/CartItem;)V

    .line 248
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->access$2(Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment$2$1;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment$2$1;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 254
    return-void
.end method
