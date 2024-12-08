.class Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment$4;
.super Ljava/lang/Object;
.source "MealItemFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 275
    return-void
.end method
