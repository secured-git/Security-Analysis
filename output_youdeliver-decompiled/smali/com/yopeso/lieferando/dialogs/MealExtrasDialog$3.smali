.class Lcom/yopeso/lieferando/dialogs/MealExtrasDialog$3;
.super Ljava/lang/Object;
.source "MealExtrasDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->addToCartButtonPressed(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog$3;->this$0:Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/dialogs/MealExtrasDialog$3;)Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog$3;->this$0:Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 297
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog$3;->this$0:Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog$3;->this$0:Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;

    invoke-static {v1}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->access$0(Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;)Lcom/yopeso/lieferando/model/cart/CartItem;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog$3;->this$0:Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;

    invoke-static {v2}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->access$1(Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;)Lcom/yopeso/lieferando/model/cart/CartItem;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->replaceItem(Lcom/yopeso/lieferando/model/cart/CartItem;Lcom/yopeso/lieferando/model/cart/CartItem;)V

    .line 298
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog$3;->this$0:Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;

    invoke-static {v0}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->access$2(Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog$3$1;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog$3$1;-><init>(Lcom/yopeso/lieferando/dialogs/MealExtrasDialog$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 305
    return-void
.end method
