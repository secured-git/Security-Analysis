.class Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment$3;
.super Ljava/lang/Object;
.source "MealItemFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->addToCartButtonPressed(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment$3;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment$3;)Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment$3;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 258
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment$3;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->access$2(Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment$3$1;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment$3$1;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 264
    return-void
.end method
