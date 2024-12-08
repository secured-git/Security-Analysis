.class Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$9;
.super Ljava/lang/Object;
.source "SearchRightFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->dialogFilter(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;

.field private final synthetic val$cart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;Lcom/yopeso/lieferando/model/cart/ShoppingCart;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$9;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;

    iput-object p2, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$9;->val$cart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    .line 509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x0

    .line 512
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$9;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->access$11(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;)Lcom/yopeso/lieferando/callback/RestaurantDetailsCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$9;->val$cart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v1

    invoke-interface {v0, v1, v2, v2}, Lcom/yopeso/lieferando/callback/RestaurantDetailsCallback;->onAddRestaurantDetailsFragment(Lcom/yopeso/lieferando/model/restaurant/Restaurant;ZZ)V

    .line 513
    return-void
.end method
