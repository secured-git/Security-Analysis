.class public Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsFilterFragment;
.super Lcom/yopeso/lieferando/custom/LRFragment;
.source "RestaurantsFilterFragment.java"


# instance fields
.field private mFiltersGroup:Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;

.field mRestaurants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/Restaurant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/yopeso/lieferando/custom/LRFragment;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsFilterFragment;->mRestaurants:Ljava/util/ArrayList;

    .line 19
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    sget v1, Lcom/yopeso/lieferando/R$layout;->restaurant_filters_page:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 50
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/yopeso/lieferando/R$id;->FiltersWidgetGroup:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;

    iput-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsFilterFragment;->mFiltersGroup:Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;

    .line 51
    return-object v0
.end method

.method public onEvent(Lcom/yopeso/lieferando/events/AuthenticationEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/yopeso/lieferando/events/AuthenticationEvent;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsFilterFragment;->mFiltersGroup:Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->showHideMyStamps()V

    .line 61
    return-void
.end method

.method public onEvent(Lcom/yopeso/lieferando/events/RestaurantsLoadedEvent;)V
    .locals 2
    .param p1, "r"    # Lcom/yopeso/lieferando/events/RestaurantsLoadedEvent;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsFilterFragment;->mFiltersGroup:Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/events/RestaurantsLoadedEvent;->getRestaurants()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->setMaximumValues(Ljava/util/ArrayList;)V

    .line 57
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onPause()V

    .line 37
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 26
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onStart()V

    .line 27
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 31
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onStop()V

    .line 42
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 45
    :cond_0
    return-void
.end method
