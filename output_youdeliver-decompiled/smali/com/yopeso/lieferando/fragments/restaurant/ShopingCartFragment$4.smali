.class Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment$4;
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


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 293
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;->access$1(Lcom/yopeso/lieferando/fragments/restaurant/ShopingCartFragment;)Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->notifyDataSetChanged()V

    .line 294
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 295
    return-void
.end method
