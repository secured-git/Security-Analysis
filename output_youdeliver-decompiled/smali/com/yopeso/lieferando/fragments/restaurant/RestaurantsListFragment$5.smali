.class Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$5;
.super Ljava/lang/Object;
.source "RestaurantsListFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


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
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$5;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    .line 757
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 787
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 783
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    const/4 v0, 0x1

    .line 761
    packed-switch p1, :pswitch_data_0

    .line 779
    :goto_0
    return-void

    .line 764
    :pswitch_0
    sput-boolean v0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->filterFragmentSelected:Z

    goto :goto_0

    .line 768
    :pswitch_1
    sput-boolean v0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->cuisineFragmentSelected:Z

    .line 769
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/events/NotifyAdapterKitchen;

    invoke-direct {v1}, Lcom/yopeso/lieferando/events/NotifyAdapterKitchen;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 773
    :pswitch_2
    sput-boolean v0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->sortFragmentSelected:Z

    goto :goto_0

    .line 761
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
