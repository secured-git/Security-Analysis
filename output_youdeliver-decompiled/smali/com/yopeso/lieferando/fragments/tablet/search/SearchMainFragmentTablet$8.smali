.class Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$8;
.super Ljava/lang/Object;
.source "SearchMainFragmentTablet.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->buildAlertCartNotEmpty(Lcom/yopeso/lieferando/model/LocationSuggestion;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;

.field private final synthetic val$ls:Lcom/yopeso/lieferando/model/LocationSuggestion;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;Lcom/yopeso/lieferando/model/LocationSuggestion;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$8;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;

    iput-object p2, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$8;->val$ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 483
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$8;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->clear()V

    .line 484
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$8;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$8;->val$ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->showRestaurantsForSuggestion(Lcom/yopeso/lieferando/model/LocationSuggestion;)V

    .line 485
    return-void
.end method
