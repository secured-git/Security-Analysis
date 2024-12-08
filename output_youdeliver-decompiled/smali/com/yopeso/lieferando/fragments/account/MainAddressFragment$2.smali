.class Lcom/yopeso/lieferando/fragments/account/MainAddressFragment$2;
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

.field private final synthetic val$location:Lcom/yopeso/lieferando/model/user/Location;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;Lcom/yopeso/lieferando/model/user/Location;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;

    iput-object p2, p0, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment$2;->val$location:Lcom/yopeso/lieferando/model/user/Location;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 181
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->clear()V

    .line 182
    new-instance v0, Lcom/yopeso/lieferando/model/LocationSuggestion;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment$2;->val$location:Lcom/yopeso/lieferando/model/user/Location;

    invoke-direct {v0, v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;-><init>(Lcom/yopeso/lieferando/model/user/Location;)V

    .line 183
    .local v0, "ls":Lcom/yopeso/lieferando/model/LocationSuggestion;
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;

    invoke-virtual {v1, v0}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->addRestaurantListFragment(Lcom/yopeso/lieferando/model/LocationSuggestion;)V

    .line 184
    return-void
.end method
