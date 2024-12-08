.class Lcom/yopeso/lieferando/fragments/account/MainAddressFragment$3;
.super Ljava/lang/Object;
.source "MainAddressFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->tapOnNewOrderButton(Lcom/yopeso/lieferando/model/user/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;

.field private final synthetic val$cart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;Lcom/yopeso/lieferando/model/cart/ShoppingCart;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment$3;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;

    iput-object p2, p0, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment$3;->val$cart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 188
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment$3;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment$3;->val$cart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->addRestaurantDetailsFragment(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    .line 189
    return-void
.end method
