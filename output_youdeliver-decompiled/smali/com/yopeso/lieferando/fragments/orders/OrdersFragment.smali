.class public Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;
.super Lcom/yopeso/lieferando/custom/LRFragment;
.source "OrdersFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$GetCustomerOrdersListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yopeso/lieferando/custom/LRFragment;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/yopeso/lieferando/adapters/OrdersAdapter;

.field mCurrentPage:I

.field private mListDetails:Landroid/widget/TextView;

.field private mLoadingIndicator:Landroid/view/View;

.field protected mOrders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yopeso/lieferando/model/user/Order;",
            ">;"
        }
    .end annotation
.end field

.field private mOrdersList:Landroid/widget/ListView;

.field private msg:Ljava/lang/String;

.field private orderID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    const-class v0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-direct {p0}, Lcom/yopeso/lieferando/custom/LRFragment;-><init>()V

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->mOrders:Ljava/util/List;

    .line 105
    const/4 v0, 0x1

    iput v0, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->mCurrentPage:I

    .line 106
    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->orderID:Ljava/lang/String;

    .line 107
    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->msg:Ljava/lang/String;

    .line 110
    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->mLoadingIndicator:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1(Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;)Lcom/yopeso/lieferando/adapters/OrdersAdapter;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->mAdapter:Lcom/yopeso/lieferando/adapters/OrdersAdapter;

    return-object v0
.end method

.method static synthetic access$2(Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->orderID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->msg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->orderID:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;Lcom/android/volley/VolleyError;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->handleNetworkError(Lcom/android/volley/VolleyError;)V

    return-void
.end method


# virtual methods
.method protected getTitle()I
    .locals 1

    .prologue
    .line 120
    sget v0, Lcom/yopeso/lieferando/R$string;->main_orders:I

    return v0
.end method

.method protected goToOrderDetailsFragment(Lcom/yopeso/lieferando/model/user/Order;)V
    .locals 2
    .param p1, "selectedOrder"    # Lcom/yopeso/lieferando/model/user/Order;

    .prologue
    .line 203
    sget v0, Lcom/yopeso/lieferando/R$id;->Content:I

    invoke-static {p1}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->newInstance(Lcom/yopeso/lieferando/model/user/Order;)Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->addNewFragment(ILandroid/support/v4/app/Fragment;)V

    .line 204
    return-void
.end method

.method protected goToOrderDetailsFragment(Lcom/yopeso/lieferando/model/user/Order;Ljava/lang/String;)V
    .locals 2
    .param p1, "selectedOrder"    # Lcom/yopeso/lieferando/model/user/Order;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 207
    sget v0, Lcom/yopeso/lieferando/R$id;->Content:I

    invoke-static {p1, p2}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->newInstance(Lcom/yopeso/lieferando/model/user/Order;Ljava/lang/String;)Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->addNewFragment(ILandroid/support/v4/app/Fragment;)V

    .line 208
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 212
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 213
    .local v0, "id":I
    sget v1, Lcom/yopeso/lieferando/R$id;->AddNewAddress:I

    if-ne v0, v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->mLoadingIndicator:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 215
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->mAdapter:Lcom/yopeso/lieferando/adapters/OrdersAdapter;

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/adapters/OrdersAdapter;->setEnableLoadMoreButton(Z)V

    .line 216
    iget v1, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->mCurrentPage:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->mCurrentPage:I

    .line 217
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    new-instance v2, Lcom/yopeso/lieferando/net/requests/CustomerOrdersRequest;

    iget v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->mCurrentPage:I

    new-instance v4, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$GetCustomerOrdersListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$GetCustomerOrdersListener;-><init>(Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$GetCustomerOrdersListener;)V

    invoke-direct {v2, v3, v4}, Lcom/yopeso/lieferando/net/requests/CustomerOrdersRequest;-><init>(ILcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v2}, Lcom/yopeso/lieferando/net/requests/CustomerOrdersRequest;->withAuth()Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 219
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/LRFragment;->onCreate(Landroid/os/Bundle;)V

    .line 115
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->setHasOptionsMenu(Z)V

    .line 116
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 125
    sget v2, Lcom/yopeso/lieferando/R$layout;->orders_fragment:I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 127
    .local v1, "view":Landroid/view/View;
    sget v2, Lcom/yopeso/lieferando/R$id;->LoadingIndicator:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->mLoadingIndicator:Landroid/view/View;

    .line 128
    sget v2, Lcom/yopeso/lieferando/R$id;->ListDescription:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->mListDetails:Landroid/widget/TextView;

    .line 129
    sget v2, Lcom/yopeso/lieferando/R$id;->OrdersListView:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->mOrdersList:Landroid/widget/ListView;

    .line 130
    new-instance v2, Lcom/yopeso/lieferando/adapters/OrdersAdapter;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$layout;->order_list_item:I

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->mOrders:Ljava/util/List;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/yopeso/lieferando/adapters/OrdersAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/android/volley/RequestQueue;)V

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->mAdapter:Lcom/yopeso/lieferando/adapters/OrdersAdapter;

    .line 131
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->mAdapter:Lcom/yopeso/lieferando/adapters/OrdersAdapter;

    invoke-virtual {v2, p0}, Lcom/yopeso/lieferando/adapters/OrdersAdapter;->setListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->mOrders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/lit8 v2, v2, 0xa

    if-nez v2, :cond_3

    .line 134
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->mAdapter:Lcom/yopeso/lieferando/adapters/OrdersAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/adapters/OrdersAdapter;->setLoadMoreButtonIsShown(Z)V

    .line 139
    :goto_0
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->mOrdersList:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 140
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->mOrdersList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->mAdapter:Lcom/yopeso/lieferando/adapters/OrdersAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 142
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->mListDetails:Landroid/widget/TextView;

    sget v3, Lcom/yopeso/lieferando/R$string;->orders:I

    invoke-virtual {p0, v3}, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 145
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v2, "order_id_key"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 146
    const-string v2, "order_id_key"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->orderID:Ljava/lang/String;

    .line 148
    :cond_0
    if-eqz v0, :cond_1

    const-string v2, "msg_key"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 149
    const-string v2, "msg_key"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->msg:Ljava/lang/String;

    .line 153
    :cond_1
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v2

    if-nez v2, :cond_2

    .line 154
    sget v2, Lcom/yopeso/lieferando/R$id;->ordersRL:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/SettingsContent;->getmButtonColor()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 157
    :cond_2
    return-object v1

    .line 136
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_3
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->mAdapter:Lcom/yopeso/lieferando/adapters/OrdersAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/adapters/OrdersAdapter;->setLoadMoreButtonIsShown(Z)V

    goto :goto_0
.end method

.method public onEvent(Lcom/yopeso/lieferando/events/AuthenticationEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/yopeso/lieferando/events/AuthenticationEvent;

    .prologue
    .line 222
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 226
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 183
    .local p1, "adapter":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->mOrders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->mOrders:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/user/Order;

    .line 186
    .local v0, "selectedOrder":Lcom/yopeso/lieferando/model/user/Order;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    new-instance v2, Lcom/yopeso/lieferando/net/requests/RestaurantRequest;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Order;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getServiceUrl()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$1;

    invoke-direct {v4, p0, v0}, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$1;-><init>(Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;Lcom/yopeso/lieferando/model/user/Order;)V

    invoke-direct {v2, v3, v4}, Lcom/yopeso/lieferando/net/requests/RestaurantRequest;-><init>(Ljava/lang/String;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v1, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 200
    .end local v0    # "selectedOrder":Lcom/yopeso/lieferando/model/user/Order;
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 230
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onPause()V

    .line 231
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 234
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 171
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onResume()V

    .line 172
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 176
    :cond_0
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 177
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 179
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 162
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onStart()V

    .line 163
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->mOrders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->mLoadingIndicator:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 165
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/CustomerOrdersRequest;

    iget v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->mCurrentPage:I

    new-instance v3, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$GetCustomerOrdersListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$GetCustomerOrdersListener;-><init>(Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;Lcom/yopeso/lieferando/fragments/orders/OrdersFragment$GetCustomerOrdersListener;)V

    invoke-direct {v1, v2, v3}, Lcom/yopeso/lieferando/net/requests/CustomerOrdersRequest;-><init>(ILcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v1}, Lcom/yopeso/lieferando/net/requests/CustomerOrdersRequest;->withAuth()Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 167
    :cond_0
    return-void
.end method
