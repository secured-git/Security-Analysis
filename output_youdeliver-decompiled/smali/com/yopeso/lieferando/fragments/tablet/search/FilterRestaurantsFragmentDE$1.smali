.class Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragmentDE$1;
.super Ljava/lang/Object;
.source "FilterRestaurantsFragmentDE.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragmentDE;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragmentDE;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragmentDE;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragmentDE$1;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragmentDE;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 91
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 87
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    const/4 v0, 0x1

    .line 65
    packed-switch p1, :pswitch_data_0

    .line 83
    :goto_0
    return-void

    .line 68
    :pswitch_0
    sput-boolean v0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->filterFragmentSelected:Z

    goto :goto_0

    .line 72
    :pswitch_1
    sput-boolean v0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->cuisineFragmentSelected:Z

    .line 73
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/events/NotifyAdapterKitchen;

    invoke-direct {v1}, Lcom/yopeso/lieferando/events/NotifyAdapterKitchen;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 77
    :pswitch_2
    sput-boolean v0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->sortFragmentSelected:Z

    goto :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
