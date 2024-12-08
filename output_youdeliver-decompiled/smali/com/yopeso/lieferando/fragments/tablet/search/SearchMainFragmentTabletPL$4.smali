.class Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL$4;
.super Ljava/lang/Object;
.source "SearchMainFragmentTabletPL.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->buildAlertCartNotEmpty()V
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
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL$4;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 242
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL$4;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->clear()V

    .line 243
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL$4;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->showRestaurantsForSuggestion()V

    .line 244
    return-void
.end method
