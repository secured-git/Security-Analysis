.class Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment$5;
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

.field private final synthetic val$cart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;Lcom/yopeso/lieferando/model/cart/ShoppingCart;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment$5;->this$0:Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;

    iput-object p2, p0, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment$5;->val$cart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 126
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment$5;->this$0:Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment$5;->val$cart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;->addRestaurantDetailsFragment(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Z)V

    .line 127
    return-void
.end method
