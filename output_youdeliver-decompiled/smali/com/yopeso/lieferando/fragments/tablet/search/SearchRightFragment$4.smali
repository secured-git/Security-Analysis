.class Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$4;
.super Ljava/lang/Object;
.source "SearchRightFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$4;)Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;

    return-object v0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "myView"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "mylng"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 209
    .local p1, "myAdapter":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-static {}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->access$7()Z

    move-result v4

    if-nez v4, :cond_0

    .line 210
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->access$8(J)V

    .line 211
    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;

    invoke-static {v4}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->access$10(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt p3, v4, :cond_0

    .line 212
    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v1

    .line 213
    .local v1, "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 215
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v4

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    new-instance v6, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$4$1;

    invoke-direct {v6, p0, p3}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$4$1;-><init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$4;I)V

    .line 223
    new-instance v7, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$4$2;

    invoke-direct {v7, p0, v1}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$4$2;-><init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$4;Lcom/yopeso/lieferando/model/cart/ShoppingCart;)V

    .line 215
    invoke-static {v4, v5, v6, v7}, Lcom/yopeso/lieferando/dialogs/CartNotEmptyDialog;->getDialog(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v2

    .line 231
    .local v2, "cartDialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 239
    .end local v1    # "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    .end local v2    # "cartDialog":Landroid/app/AlertDialog;
    :cond_0
    :goto_0
    return-void

    .line 233
    .restart local v1    # "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    :cond_1
    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;

    invoke-static {v4}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->access$10(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/user/Location;

    .line 234
    .local v0, "address":Lcom/yopeso/lieferando/model/user/Location;
    new-instance v3, Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-direct {v3, v0}, Lcom/yopeso/lieferando/model/LocationSuggestion;-><init>(Lcom/yopeso/lieferando/model/user/Location;)V

    .line 235
    .local v3, "ls":Lcom/yopeso/lieferando/model/LocationSuggestion;
    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Lcom/yopeso/lieferando/callback/ILocationSelectedCallback;

    invoke-interface {v4, v3}, Lcom/yopeso/lieferando/callback/ILocationSelectedCallback;->onLocationSelected(Lcom/yopeso/lieferando/model/LocationSuggestion;)V

    goto :goto_0
.end method
