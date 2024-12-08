.class Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment$3$1;
.super Ljava/lang/Object;
.source "MealItemFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment$3;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment$3$1;->this$1:Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment$3;

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment$3$1;->this$1:Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment$3;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment$3;->access$0(Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment$3;)Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/restaurant/MealItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 262
    return-void
.end method
