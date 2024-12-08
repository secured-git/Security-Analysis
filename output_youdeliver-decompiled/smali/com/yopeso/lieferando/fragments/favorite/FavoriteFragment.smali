.class public Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;
.super Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;
.source "FavoriteFragment.java"

# interfaces
.implements Lcom/yopeso/lieferando/callback/IRestaurantListCallback;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment$RestaurantListener;,
        Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment$RestaurantStampListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field protected mAdapter:Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;

.field private mCurrentOffset:I

.field private mCurrentlyRequested:I

.field private mFavoriteList:Landroid/widget/ListView;

.field private mListDetails:Landroid/widget/TextView;

.field protected mRestaurants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/Restaurant;",
            ">;"
        }
    .end annotation
.end field

.field private mUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private noStampsRL:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;-><init>()V

    .line 48
    iput v0, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->mCurrentlyRequested:I

    .line 49
    iput v0, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->mCurrentOffset:I

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->mRestaurants:Ljava/util/ArrayList;

    .line 56
    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;)I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->mCurrentlyRequested:I

    return v0
.end method

.method static synthetic access$1(Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;I)V
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->mCurrentlyRequested:I

    return-void
.end method

.method static synthetic access$2(Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;)V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->showLoadMoreCheck()V

    return-void
.end method

.method static synthetic access$3(Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->checkRestaurant(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    return-void
.end method

.method static synthetic access$4(Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;Lcom/android/volley/VolleyError;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->handleNetworkError(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method private performRequest()V
    .locals 5

    .prologue
    .line 155
    iget v1, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->mCurrentOffset:I

    add-int/lit8 v1, v1, 0x5

    iput v1, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->mCurrentOffset:I

    .line 156
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->mAdapter:Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;->setIsBottomViewShown(Z)V

    .line 157
    iget v0, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->mCurrentlyRequested:I

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->mUrls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->mCurrentOffset:I

    if-lt v0, v1, :cond_1

    .line 160
    :cond_0
    return-void

    .line 158
    :cond_1
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    new-instance v3, Lcom/yopeso/lieferando/net/requests/RestaurantRequest;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->mUrls:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v4, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment$RestaurantListener;

    invoke-direct {v4, p0}, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment$RestaurantListener;-><init>(Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;)V

    invoke-direct {v3, v1, v4}, Lcom/yopeso/lieferando/net/requests/RestaurantRequest;-><init>(Ljava/lang/String;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v2, v3}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private showLoadMoreCheck()V
    .locals 2

    .prologue
    .line 163
    iget v0, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->mCurrentlyRequested:I

    iget v1, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->mCurrentOffset:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->mUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->mCurrentlyRequested:I

    if-le v0, v1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->mAdapter:Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;->setIsBottomViewShown(Z)V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->mAdapter:Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;->notifyDataSetChanged()V

    .line 167
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
    .line 137
    new-instance v0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment$1;

    invoke-direct {v0, p0}, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment$1;-><init>(Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;)V

    return-object v0
.end method

.method protected getTitle()I
    .locals 1

    .prologue
    .line 60
    sget v0, Lcom/yopeso/lieferando/R$string;->main_favorits:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 203
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 204
    .local v0, "id":I
    sget v1, Lcom/yopeso/lieferando/R$id;->AddNewAddress:I

    if-ne v0, v1, :cond_0

    .line 205
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->performRequest()V

    .line 207
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->setHasOptionsMenu(Z)V

    .line 67
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 71
    sget v0, Lcom/yopeso/lieferando/R$layout;->favorite_orders_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 72
    .local v6, "view":Landroid/view/View;
    sget v0, Lcom/yopeso/lieferando/R$id;->FavouriteRestaurantListView:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->mFavoriteList:Landroid/widget/ListView;

    .line 73
    sget v0, Lcom/yopeso/lieferando/R$id;->ListDescription:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->mListDetails:Landroid/widget/TextView;

    .line 74
    sget v0, Lcom/yopeso/lieferando/R$id;->noFavoritesRL:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->noStampsRL:Landroid/widget/RelativeLayout;

    .line 75
    new-instance v0, Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$layout;->restaurant_list_item:I

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->mRestaurants:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v5

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;-><init>(Landroid/app/Activity;ILjava/util/ArrayList;Lcom/yopeso/lieferando/callback/IRestaurantListCallback;Lcom/android/volley/RequestQueue;)V

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->mAdapter:Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;

    .line 76
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->mAdapter:Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;

    invoke-virtual {v0, v7}, Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;->setIsBottomViewShown(Z)V

    .line 77
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->mAdapter:Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;

    invoke-virtual {v0, p0}, Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;->setListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->mFavoriteList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->mAdapter:Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 80
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->mUrls:Ljava/util/ArrayList;

    .line 81
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->mUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 82
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->mListDetails:Landroid/widget/TextView;

    sget v1, Lcom/yopeso/lieferando/R$string;->favorite_details:I

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->mUrls:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {p0, v1, v2}, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->noStampsRL:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->mFavoriteList:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 93
    :goto_1
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    sget v0, Lcom/yopeso/lieferando/R$id;->headerRL:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/SettingsContent;->getmButtonColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 97
    :cond_0
    return-object v6

    .line 80
    :cond_1
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/UserData;->getFavouriteRestaurantUrls()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->mListDetails:Landroid/widget/TextView;

    sget v1, Lcom/yopeso/lieferando/R$string;->favorites_details:I

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->mUrls:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {p0, v1, v2}, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onEvent(Lcom/yopeso/lieferando/events/AuthenticationEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/yopeso/lieferando/events/AuthenticationEvent;

    .prologue
    .line 227
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 231
    :cond_0
    return-void
.end method

.method public onEvent(Lcom/yopeso/lieferando/events/FavoriteRemovedEvent;)V
    .locals 5
    .param p1, "r"    # Lcom/yopeso/lieferando/events/FavoriteRemovedEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 210
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->mAdapter:Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/events/FavoriteRemovedEvent;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;->remove(Ljava/lang/Object;)V

    .line 211
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->mAdapter:Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;->notifyDataSetChanged()V

    .line 212
    sget-object v0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->TAG:Ljava/lang/String;

    const-string v1, " onEvent(FavoriteRemovedEvent r)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->mUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 214
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->mListDetails:Landroid/widget/TextView;

    sget v1, Lcom/yopeso/lieferando/R$string;->favorite_details:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->mUrls:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    :goto_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->mUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 220
    sget-object v0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->TAG:Ljava/lang/String;

    const-string v1, "mUrls.size() == 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->noStampsRL:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->mFavoriteList:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 224
    :cond_0
    return-void

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->mListDetails:Landroid/widget/TextView;

    sget v1, Lcom/yopeso/lieferando/R$string;->favorites_details:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->mUrls:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 244
    invoke-super {p0}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;->onPause()V

    .line 248
    return-void
.end method

.method public onProposeClick()V
    .locals 0

    .prologue
    .line 172
    return-void
.end method

.method public onProposeClickNew(Ljava/lang/String;)V
    .locals 0
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 254
    return-void
.end method

.method public onRestaurantRatingClick(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 0
    .param p1, "r"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 177
    return-void
.end method

.method public onRestaurantSelected(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 3
    .param p1, "r"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 181
    invoke-static {}, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->deleySelection()Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->mLastClickTime:J

    .line 183
    sget-object v0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->TAG:Ljava/lang/String;

    const-string v1, "STAMPS: onRestaurantSelected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/StampRestaurantRequest;

    new-instance v2, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment$RestaurantStampListener;

    invoke-direct {v2, p0}, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment$RestaurantStampListener;-><init>(Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;)V

    invoke-direct {v1, p1, v2}, Lcom/yopeso/lieferando/net/requests/StampRestaurantRequest;-><init>(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 186
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 238
    invoke-super {p0}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;->onResume()V

    .line 239
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;->onStart()V

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
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->mRestaurants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 107
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->performRequest()V

    .line 109
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 113
    invoke-super {p0}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;->onStop()V

    .line 114
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 117
    :cond_0
    return-void
.end method
