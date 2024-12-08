.class Lcom/yopeso/lieferando/dialogs/MealExtrasDialog$4;
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
    iput-object p1, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog$4;->this$0:Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/dialogs/MealExtrasDialog$4;)Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog$4;->this$0:Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 309
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog$4;->this$0:Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;

    invoke-static {v0}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->access$2(Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog$4$1;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog$4$1;-><init>(Lcom/yopeso/lieferando/dialogs/MealExtrasDialog$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 316
    return-void
.end method
