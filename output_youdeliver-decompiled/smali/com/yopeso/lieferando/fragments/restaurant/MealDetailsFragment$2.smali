.class Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$2;
.super Ljava/lang/Object;
.source "MealDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 256
    if-eqz p2, :cond_0

    .line 259
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mImageHeader:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 265
    :goto_0
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mImageHeader:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
