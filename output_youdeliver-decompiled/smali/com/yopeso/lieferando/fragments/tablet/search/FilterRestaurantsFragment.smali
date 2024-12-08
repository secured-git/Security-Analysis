.class public Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragment;
.super Landroid/support/v4/app/Fragment;
.source "FilterRestaurantsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/Fragment;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final IS_TABLET_TAG:Ljava/lang/String; = "is_tablet"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantFilterAdapter;

.field private mFiltersList:Landroid/widget/ListView;

.field private mIsTablet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragment;->TAG:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragment;->mIsTablet:Z

    .line 32
    return-void
.end method

.method public static getInstance(Z)Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragment;
    .locals 3
    .param p0, "isTablet"    # Z

    .prologue
    .line 46
    new-instance v1, Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragment;

    invoke-direct {v1}, Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragment;-><init>()V

    .line 47
    .local v1, "frag":Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 48
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "is_tablet"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 49
    invoke-virtual {v1, v0}, Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 50
    return-object v1
.end method

.method private resetKitchenTypes()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 125
    sput-boolean v0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->cuisineResetSelected:Z

    .line 126
    sput-boolean v0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->cuisineFragmentSelected:Z

    .line 127
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragment;->mAdapter:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantFilterAdapter;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantFilterAdapter;->resetFilters()V

    .line 128
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragment;->mAdapter:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantFilterAdapter;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantFilterAdapter;->notifyDataSetChanged()V

    .line 129
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/events/FilterEvent;

    invoke-direct {v1}, Lcom/yopeso/lieferando/events/FilterEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 130
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 119
    .local v0, "id":I
    sget v1, Lcom/yopeso/lieferando/R$id;->ResetFilter:I

    if-ne v0, v1, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragment;->resetKitchenTypes()V

    .line 122
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const-string v0, "FilterRestaurantsFragment"

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "FilterRestaurantsFragment#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "is_tablet"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragment;->mIsTablet:Z

    .line 57
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$array;->restaurant_filters_array:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->populateFilters([Ljava/lang/String;)V

    .line 58
    sget-object v0, Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "FilterRestaurantsFragment#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "FilterRestaurantsFragment#onCreateView"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    sget v0, Lcom/yopeso/lieferando/R$layout;->filter_fragment:I

    invoke-virtual {p1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v0

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "FilterRestaurantsFragment#onCreateView"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onEvent(Lcom/yopeso/lieferando/events/NotifyAdapterKitchen;)V
    .locals 1
    .param p1, "event"    # Lcom/yopeso/lieferando/events/NotifyAdapterKitchen;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragment;->mAdapter:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantFilterAdapter;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantFilterAdapter;->notifyDataSetChanged()V

    .line 138
    return-void
.end method

.method public onEvent(Lcom/yopeso/lieferando/events/ResetKichenTypes;)V
    .locals 0
    .param p1, "event"    # Lcom/yopeso/lieferando/events/ResetKichenTypes;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragment;->resetKitchenTypes()V

    .line 134
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "adapter":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x1

    .line 87
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getmCategoriesFilterForLocation()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;

    .line 88
    .local v0, "filter":Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;->toggle()V

    .line 89
    sput-boolean v2, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->cuisineSelected:Z

    .line 90
    sput-boolean v2, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->cuisineFragmentSelected:Z

    .line 96
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragment;->mAdapter:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantFilterAdapter;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantFilterAdapter;->notifyDataSetChanged()V

    .line 97
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v2, Lcom/yopeso/lieferando/events/FilterEvent;

    invoke-direct {v2}, Lcom/yopeso/lieferando/events/FilterEvent;-><init>()V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 98
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    .line 102
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 103
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 106
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    .line 110
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 111
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 114
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 70
    iget-boolean v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragment;->mIsTablet:Z

    if-nez v1, :cond_0

    .line 71
    sget v1, Lcom/yopeso/lieferando/R$id;->FilterTitleBtn:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 76
    :goto_0
    sget v1, Lcom/yopeso/lieferando/R$id;->FilterListView:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragment;->mFiltersList:Landroid/widget/ListView;

    .line 78
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v0

    .line 79
    .local v0, "criteria":Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;
    new-instance v1, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantFilterAdapter;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$layout;->filter_list_item:I

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getmCategoriesFilterForLocation()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantFilterAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragment;->mAdapter:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantFilterAdapter;

    .line 80
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragment;->mFiltersList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragment;->mAdapter:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantFilterAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    sget v1, Lcom/yopeso/lieferando/R$id;->ResetFilter:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragment;->mFiltersList:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 83
    return-void

    .line 73
    .end local v0    # "criteria":Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;
    :cond_0
    sget v1, Lcom/yopeso/lieferando/R$id;->FilterTitleBtn:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0
.end method
