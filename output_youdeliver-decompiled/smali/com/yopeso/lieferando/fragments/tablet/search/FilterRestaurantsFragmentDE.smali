.class public Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragmentDE;
.super Landroid/support/v4/app/Fragment;
.source "FilterRestaurantsFragmentDE.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field private static final IS_TABLET_TAG:Ljava/lang/String; = "is_tablet"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsDropdownIconsAdapter;

.field private mIndicator:Lcom/viewpagerindicator/TabPageIndicator;

.field private mPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragmentDE;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragmentDE;->TAG:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static getInstance(Z)Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragmentDE;
    .locals 3
    .param p0, "isTablet"    # Z

    .prologue
    .line 34
    new-instance v1, Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragmentDE;

    invoke-direct {v1}, Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragmentDE;-><init>()V

    .line 35
    .local v1, "frag":Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragmentDE;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 36
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "is_tablet"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 37
    invoke-virtual {v1, v0}, Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragmentDE;->setArguments(Landroid/os/Bundle;)V

    .line 38
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const-string v0, "FilterRestaurantsFragmentDE"

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragmentDE;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "FilterRestaurantsFragmentDE#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    sget-object v0, Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragmentDE;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "FilterRestaurantsFragmentDE#onCreate"

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
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragmentDE;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "FilterRestaurantsFragmentDE#onCreateView"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    sget v0, Lcom/yopeso/lieferando/R$layout;->filter_fragment_tabpage_fragment:I

    invoke-virtual {p1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v0

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "FilterRestaurantsFragmentDE#onCreateView"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 55
    sget v0, Lcom/yopeso/lieferando/R$id;->pager:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragmentDE;->mPager:Landroid/support/v4/view/ViewPager;

    .line 56
    new-instance v0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsDropdownIconsAdapter;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragmentDE;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragmentDE;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsDropdownIconsAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragmentDE;->mAdapter:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsDropdownIconsAdapter;

    .line 57
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragmentDE;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragmentDE;->mAdapter:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsDropdownIconsAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 58
    sget v0, Lcom/yopeso/lieferando/R$id;->indicator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/TabPageIndicator;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragmentDE;->mIndicator:Lcom/viewpagerindicator/TabPageIndicator;

    .line 59
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragmentDE;->mIndicator:Lcom/viewpagerindicator/TabPageIndicator;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragmentDE;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TabPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 61
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragmentDE;->mIndicator:Lcom/viewpagerindicator/TabPageIndicator;

    new-instance v1, Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragmentDE$1;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragmentDE$1;-><init>(Lcom/yopeso/lieferando/fragments/tablet/search/FilterRestaurantsFragmentDE;)V

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TabPageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 94
    return-void
.end method
