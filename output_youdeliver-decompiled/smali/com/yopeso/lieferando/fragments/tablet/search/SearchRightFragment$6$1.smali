.class Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$6$1;
.super Ljava/lang/Object;
.source "SearchRightFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$6;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$6;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$6;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$6$1;->this$1:Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$6;

    iput p2, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$6$1;->val$position:I

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 305
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$6$1;->this$1:Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$6;

    invoke-static {v2}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$6;->access$0(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$6;)Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->clear()V

    .line 306
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$6$1;->this$1:Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$6;

    invoke-static {v2}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$6;->access$0(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$6;)Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;

    move-result-object v2

    invoke-static {v2}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->access$10(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;)Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$6$1;->val$position:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/user/Location;

    .line 307
    .local v0, "address":Lcom/yopeso/lieferando/model/user/Location;
    new-instance v1, Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-direct {v1, v0}, Lcom/yopeso/lieferando/model/LocationSuggestion;-><init>(Lcom/yopeso/lieferando/model/user/Location;)V

    .line 308
    .local v1, "ls":Lcom/yopeso/lieferando/model/LocationSuggestion;
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$6$1;->this$1:Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$6;

    invoke-static {v2}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$6;->access$0(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$6;)Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/callback/ILocationSelectedCallback;

    invoke-interface {v2, v1}, Lcom/yopeso/lieferando/callback/ILocationSelectedCallback;->onLocationSelected(Lcom/yopeso/lieferando/model/LocationSuggestion;)V

    .line 309
    return-void
.end method
