.class public Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;
.super Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;
.source "StemplesFragment.java"

# interfaces
.implements Lcom/yopeso/lieferando/callback/StempelRestaurantCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment$ExpiredStampsListener;,
        Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment$RestaurantListener;,
        Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment$StampsListener;,
        Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment$UsedStampsListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field protected mAdapter:Lcom/yopeso/lieferando/adapters/StempleListAdapter;

.field protected mAllStamps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/Stamp;",
            ">;"
        }
    .end annotation
.end field

.field private mHeader:Landroid/widget/TextView;

.field protected mStamps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/Stamp;",
            ">;"
        }
    .end annotation
.end field

.field private mStepmsList:Landroid/widget/ListView;

.field private noStampsRL:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->mStamps:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->mAllStamps:Ljava/util/ArrayList;

    .line 57
    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->mHeader:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;)V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->sortByStamps()V

    return-void
.end method

.method static synthetic access$2(Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->dismissLoadingIndicator()V

    return-void
.end method

.method static synthetic access$3(Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;Lcom/android/volley/VolleyError;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->handleNetworkError(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method static synthetic access$4(Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->checkRestaurant(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    return-void
.end method

.method private showNoStamsLaout()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->mAllStamps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->noStampsRL:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->mStepmsList:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 243
    :cond_0
    return-void
.end method

.method private sortByStamps()V
    .locals 5

    .prologue
    .line 138
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->mStamps:Ljava/util/ArrayList;

    new-instance v1, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment$1;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment$1;-><init>(Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 149
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/StampCustomerRequest;

    const-string v2, "/customer/stamps/used"

    new-instance v3, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment$UsedStampsListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment$UsedStampsListener;-><init>(Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment$UsedStampsListener;)V

    invoke-direct {v1, v2, v3}, Lcom/yopeso/lieferando/net/requests/StampCustomerRequest;-><init>(Ljava/lang/String;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 150
    return-void
.end method


# virtual methods
.method public getListener()Lcom/yopeso/lieferando/net/requests/base/VolleyListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/Restaurant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    new-instance v0, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment$2;

    invoke-direct {v0, p0}, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment$2;-><init>(Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;)V

    return-object v0
.end method

.method protected getTitle()I
    .locals 1

    .prologue
    .line 61
    sget v0, Lcom/yopeso/lieferando/R$string;->stempel_cards:I

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->setHasOptionsMenu(Z)V

    .line 68
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    sget v0, Lcom/yopeso/lieferando/R$layout;->stemps_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 74
    .local v6, "view":Landroid/view/View;
    sget v0, Lcom/yopeso/lieferando/R$id;->StempsListView:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->mStepmsList:Landroid/widget/ListView;

    .line 75
    new-instance v0, Lcom/yopeso/lieferando/adapters/StempleListAdapter;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$layout;->stemp_list_element:I

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->mAllStamps:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v5

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/yopeso/lieferando/adapters/StempleListAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Lcom/yopeso/lieferando/callback/StempelRestaurantCallback;Lcom/android/volley/RequestQueue;)V

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->mAdapter:Lcom/yopeso/lieferando/adapters/StempleListAdapter;

    .line 76
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->mStepmsList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->mAdapter:Lcom/yopeso/lieferando/adapters/StempleListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 78
    sget v0, Lcom/yopeso/lieferando/R$id;->header:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->mHeader:Landroid/widget/TextView;

    .line 82
    sget v0, Lcom/yopeso/lieferando/R$id;->noStampsRL:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->noStampsRL:Landroid/widget/RelativeLayout;

    .line 87
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    sget v0, Lcom/yopeso/lieferando/R$id;->header:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/SettingsContent;->getmButtonColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 92
    :cond_0
    return-object v6
.end method

.method public onEvent(Lcom/yopeso/lieferando/events/AuthenticationEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/yopeso/lieferando/events/AuthenticationEvent;

    .prologue
    .line 295
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 299
    :cond_0
    return-void
.end method

.method public onEvent(Lcom/yopeso/lieferando/events/FavoriteRemovedEvent;)V
    .locals 1
    .param p1, "r"    # Lcom/yopeso/lieferando/events/FavoriteRemovedEvent;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->mAdapter:Lcom/yopeso/lieferando/adapters/StempleListAdapter;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/adapters/StempleListAdapter;->notifyDataSetChanged()V

    .line 288
    return-void
.end method

.method public onEvent(Lcom/yopeso/lieferando/events/FavouriteAddEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/yopeso/lieferando/events/FavouriteAddEvent;

    .prologue
    .line 291
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->mAdapter:Lcom/yopeso/lieferando/adapters/StempleListAdapter;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/adapters/StempleListAdapter;->notifyDataSetChanged()V

    .line 292
    return-void
.end method

.method public onStampElementSelected(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 4
    .param p1, "r"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 247
    invoke-static {}, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->deleySelection()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->mLastClickTime:J

    .line 249
    sget v0, Lcom/yopeso/lieferando/R$string;->pleaseWait:I

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->showLoadingIndicator(I)V

    .line 250
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/RestaurantRequest;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getServiceUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment$RestaurantListener;

    invoke-direct {v3, p0}, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment$RestaurantListener;-><init>(Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;)V

    invoke-direct {v1, v2, v3}, Lcom/yopeso/lieferando/net/requests/RestaurantRequest;-><init>(Ljava/lang/String;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 252
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 97
    invoke-super {p0}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;->onStart()V

    .line 98
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->mAllStamps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 102
    sget v0, Lcom/yopeso/lieferando/R$string;->pleaseWait:I

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->showLoadingIndicator(I)V

    .line 103
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/StampCustomerRequest;

    const-string v2, "/customer/stamps/current"

    new-instance v3, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment$StampsListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment$StampsListener;-><init>(Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment$StampsListener;)V

    invoke-direct {v1, v2, v3}, Lcom/yopeso/lieferando/net/requests/StampCustomerRequest;-><init>(Ljava/lang/String;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 105
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;->onStop()V

    .line 110
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 113
    :cond_0
    return-void
.end method

.method public setHeaders()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 184
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->mStamps:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->mStamps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->mStamps:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 185
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->mStamps:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yopeso/lieferando/model/Stamp;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/Stamp;->getUserStamps()I

    move-result v4

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->mStamps:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yopeso/lieferando/model/Stamp;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v3

    if-le v4, v3, :cond_0

    .line 186
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->mStamps:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yopeso/lieferando/model/Stamp;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    new-array v0, v3, [Z

    .line 193
    .local v0, "mViewState":[Z
    :goto_0
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([ZZ)V

    .line 195
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->mStamps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 230
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->mAllStamps:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->mStamps:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 231
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->mAdapter:Lcom/yopeso/lieferando/adapters/StempleListAdapter;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/adapters/StempleListAdapter;->notifyDataSetChanged()V

    .line 233
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->showNoStamsLaout()V

    .line 235
    return-void

    .line 188
    .end local v0    # "mViewState":[Z
    :cond_0
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->mStamps:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yopeso/lieferando/model/Stamp;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/Stamp;->getUserStamps()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    new-array v0, v3, [Z

    .line 190
    .restart local v0    # "mViewState":[Z
    goto :goto_0

    .line 191
    .end local v0    # "mViewState":[Z
    :cond_1
    const/16 v3, 0x8

    new-array v0, v3, [Z

    .restart local v0    # "mViewState":[Z
    goto :goto_0

    .line 195
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/model/Stamp;

    .line 196
    .local v2, "stamp":Lcom/yopeso/lieferando/model/Stamp;
    const-string v1, ""

    .line 199
    .local v1, "seperatorText":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Stamp;->getUserStamps()I

    move-result v4

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v5

    if-le v4, v5, :cond_3

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    aget-boolean v4, v0, v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Stamp;->isUsed()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Stamp;->isExpired()Z

    move-result v4

    if-nez v4, :cond_3

    .line 200
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    aput-boolean v8, v0, v4

    .line 201
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->stempel_full_seperator:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 228
    :goto_2
    invoke-virtual {v2, v1}, Lcom/yopeso/lieferando/model/Stamp;->setHeaderText(Ljava/lang/String;)V

    goto :goto_1

    .line 203
    :cond_3
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Stamp;->getUserStamps()I

    move-result v5

    if-le v4, v5, :cond_6

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Stamp;->getUserStamps()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    aget-boolean v4, v0, v4

    if-eqz v4, :cond_6

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Stamp;->isUsed()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Stamp;->isExpired()Z

    move-result v4

    if-nez v4, :cond_6

    .line 204
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Stamp;->getUserStamps()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    aput-boolean v8, v0, v4

    .line 205
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Stamp;->isFull()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 206
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->stempel_full_seperator:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 207
    goto :goto_2

    .line 208
    :cond_4
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Stamp;->getUserStamps()I

    move-result v4

    if-le v4, v9, :cond_5

    .line 210
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->stempel_not_full_seperator_plural:I

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Stamp;->getUserStamps()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 211
    goto :goto_2

    .line 214
    :cond_5
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->stempel_not_full_seperator:I

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Stamp;->getUserStamps()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 218
    goto :goto_2

    :cond_6
    aget-boolean v4, v0, v8

    if-eqz v4, :cond_7

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Stamp;->isUsed()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 219
    aput-boolean v8, v0, v8

    .line 220
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->stempel_used_seperator:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 221
    goto/16 :goto_2

    :cond_7
    aget-boolean v4, v0, v9

    if-eqz v4, :cond_8

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Stamp;->isExpired()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 222
    aput-boolean v8, v0, v9

    .line 223
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->stempel_expired_seperator:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 224
    goto/16 :goto_2

    .line 225
    :cond_8
    const-string v1, ""

    goto/16 :goto_2
.end method
