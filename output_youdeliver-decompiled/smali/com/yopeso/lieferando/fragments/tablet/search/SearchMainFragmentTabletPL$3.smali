.class Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL$3;
.super Ljava/lang/Object;
.source "SearchMainFragmentTabletPL.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL$3;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 115
    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    const/4 v1, 0x6

    if-ne p2, v1, :cond_2

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL$3;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->access$4(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 117
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL$3;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    .line 118
    .local v0, "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 119
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL$3;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->access$5(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;)V

    .line 123
    :goto_0
    const/4 v1, 0x1

    .line 126
    .end local v0    # "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    :goto_1
    return v1

    .line 121
    .restart local v0    # "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    :cond_1
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL$3;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->showRestaurantsForSuggestion()V

    goto :goto_0

    .line 126
    .end local v0    # "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
