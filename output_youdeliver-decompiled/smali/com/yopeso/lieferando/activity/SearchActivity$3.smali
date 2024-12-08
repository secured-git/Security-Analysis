.class Lcom/yopeso/lieferando/activity/SearchActivity$3;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/activity/SearchActivity;->onRestaurantSelected(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/activity/SearchActivity;

.field private final synthetic val$cart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

.field private final synthetic val$r:Lcom/yopeso/lieferando/model/restaurant/Restaurant;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/activity/SearchActivity;Lcom/yopeso/lieferando/model/cart/ShoppingCart;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/activity/SearchActivity$3;->this$0:Lcom/yopeso/lieferando/activity/SearchActivity;

    iput-object p2, p0, Lcom/yopeso/lieferando/activity/SearchActivity$3;->val$cart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    iput-object p3, p0, Lcom/yopeso/lieferando/activity/SearchActivity$3;->val$r:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 597
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/SearchActivity$3;->val$cart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yopeso/lieferando/activity/SearchActivity$3;->val$cart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/yopeso/lieferando/activity/SearchActivity$3;->val$r:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 598
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/SearchActivity$3;->val$cart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->clear()V

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/SearchActivity$3;->val$cart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    iget-object v1, p0, Lcom/yopeso/lieferando/activity/SearchActivity$3;->val$r:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setRestaurant(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    .line 601
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/SearchActivity$3;->this$0:Lcom/yopeso/lieferando/activity/SearchActivity;

    iget-object v1, p0, Lcom/yopeso/lieferando/activity/SearchActivity$3;->val$r:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/yopeso/lieferando/activity/SearchActivity;->onAddRestaurantDetailsFragment(Lcom/yopeso/lieferando/model/restaurant/Restaurant;ZZ)V

    .line 603
    return-void
.end method
