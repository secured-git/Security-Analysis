.class Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$10;
.super Ljava/lang/Object;
.source "RestaurantsListFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$10;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    .line 929
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 941
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$10;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->sorting_shown:Z

    .line 943
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 936
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 933
    return-void
.end method
