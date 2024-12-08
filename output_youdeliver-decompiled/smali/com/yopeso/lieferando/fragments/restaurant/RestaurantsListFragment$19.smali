.class Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$19;
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
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$19;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    .line 1174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$19;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$29(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;Z)V

    .line 1190
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$19;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$30(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;Z)V

    .line 1191
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1185
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$19;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$25(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1180
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$19;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$29(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;Z)V

    .line 1181
    return-void
.end method
