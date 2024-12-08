.class public Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;
.super Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;
.source "SearchMainFragmentTablet.java"

# interfaces
.implements Lcom/yopeso/lieferando/callback/LocationSuggestionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$DeliveryAreaListener;,
        Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$GoogleListener;,
        Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$LocationListener;,
        Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$OpeningsListener;,
        Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$RestaurantListener;,
        Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$RestaurantLoadedListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private logoAnimation:Landroid/view/animation/Animation;

.field private lsPREMIUM:Lcom/yopeso/lieferando/model/LocationSuggestion;

.field protected mGpsUsed:Z

.field protected mLocationSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yopeso/lieferando/model/LocationSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field private mRestaurants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/Restaurant;",
            ">;"
        }
    .end annotation
.end field

.field protected mSearchInput:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

.field protected mSearchSuggestionsAdapter:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

.field private main_BG:Landroid/widget/ImageView;

.field private searchAnimation:Landroid/view/animation/Animation;

.field private showAnim:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const-class v0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;-><init>()V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->mLocationSuggestions:Ljava/util/List;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->mGpsUsed:Z

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->mRestaurants:Ljava/util/ArrayList;

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->showAnim:Z

    .line 82
    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 567
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->showLocationSuggestions(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;Lcom/android/volley/VolleyError;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->handleNetworkError(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method static synthetic access$10(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 0

    .prologue
    .line 381
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->goToRestaurant(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    return-void
.end method

.method static synthetic access$2(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->dismissLoadingIndicator()V

    return-void
.end method

.method static synthetic access$3(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;)Lcom/yopeso/lieferando/model/LocationSuggestion;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->lsPREMIUM:Lcom/yopeso/lieferando/model/LocationSuggestion;

    return-object v0
.end method

.method static synthetic access$4(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->mRestaurants:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$5(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->mRestaurants:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;)Lcom/yopeso/lieferando/view/LocateView;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->mLocateView:Lcom/yopeso/lieferando/view/LocateView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 550
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->performRequest(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;)Landroid/location/LocationManager;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$9(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;)Landroid/location/LocationListener;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->mLocationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method private goToRestaurant(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 1
    .param p1, "restaurant"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/callback/RestaurantSelectedCallback;

    invoke-interface {v0, p1}, Lcom/yopeso/lieferando/callback/RestaurantSelectedCallback;->onRestaurantSelected(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    .line 383
    return-void
.end method

.method private performRequest(Ljava/lang/String;)V
    .locals 4
    .param p1, "plz"    # Ljava/lang/String;

    .prologue
    .line 551
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/LieferandoApplication;->getmAreas()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->showLocationSuggestions(Ljava/util/List;)V

    .line 559
    :goto_0
    return-void

    .line 557
    :cond_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/LocationRequest;

    new-instance v2, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$LocationListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$LocationListener;-><init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$LocationListener;)V

    invoke-direct {v1, p1, v2}, Lcom/yopeso/lieferando/net/requests/LocationRequest;-><init>(Ljava/lang/String;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0
.end method

.method private showLocationSuggestions(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yopeso/lieferando/model/LocationSuggestion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "suggestions":Ljava/util/List;, "Ljava/util/List<Lcom/yopeso/lieferando/model/LocationSuggestion;>;"
    const/4 v4, 0x0

    .line 568
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->mLocationSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 569
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->mLocationSuggestions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 570
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 571
    new-instance v0, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$layout;->auto_complete_item:I

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->mLocationSuggestions:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/yopeso/lieferando/callback/LocationSuggestionCallback;)V

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->mSearchSuggestionsAdapter:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    .line 572
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->mSearchSuggestionsAdapter:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;->setNotifyOnChange(Z)V

    .line 573
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->mSearchInput:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->mSearchSuggestionsAdapter:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 574
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->mSearchSuggestionsAdapter:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->mSearchInput:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->mSearchInput:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->showDropDown()V

    .line 580
    :cond_1
    iget-boolean v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->mGpsUsed:Z

    if-eqz v0, :cond_2

    .line 581
    iput-boolean v4, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->mGpsUsed:Z

    .line 582
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->mSearchSuggestionsAdapter:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->mSearchInput:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 584
    :cond_2
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 585
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->mSearchInput:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->mSearchInput:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->mLocationSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->mSearchSuggestionsAdapter:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->mSearchInput:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;->isFilteredLocationEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 586
    :cond_4
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$string;->noDelivery:I

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 589
    :cond_5
    return-void
.end method


# virtual methods
.method protected buildAlertCartNotEmpty(Lcom/yopeso/lieferando/model/LocationSuggestion;)V
    .locals 6
    .param p1, "ls"    # Lcom/yopeso/lieferando/model/LocationSuggestion;

    .prologue
    .line 478
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    .line 479
    .local v0, "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 480
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v2

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$8;

    invoke-direct {v4, p0, p1}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$8;-><init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;Lcom/yopeso/lieferando/model/LocationSuggestion;)V

    .line 486
    new-instance v5, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$9;

    invoke-direct {v5, p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$9;-><init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;)V

    .line 480
    invoke-static {v2, v3, v4, v5}, Lcom/yopeso/lieferando/dialogs/CartNotEmptyDialog;->getDialog(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v1

    .line 492
    .local v1, "cartDialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 494
    .end local v1    # "cartDialog":Landroid/app/AlertDialog;
    :cond_0
    return-void
.end method

.method protected checkPreordering(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 3
    .param p1, "r"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 366
    sget-object v1, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {p1, v1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 367
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->goToRestaurant(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    .line 380
    :goto_0
    return-void

    .line 371
    :cond_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$7;

    invoke-direct {v2, p0, p1}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$7;-><init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    invoke-static {p1, v1, v2}, Lcom/yopeso/lieferando/dialogs/PreOrderingDialog;->getDialog(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 378
    .local v0, "preorder":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method protected goToRestaurantDetails()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 497
    sget v1, Lcom/yopeso/lieferando/R$id;->LeftPane:I

    invoke-static {v5}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantDetailsFragmentTablet;->newInstance(Z)Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantDetailsFragmentTablet;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "RestaurantDetailsFrag"

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    .line 498
    sget v1, Lcom/yopeso/lieferando/R$id;->RightPane:I

    invoke-static {}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->newInstance()Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;

    move-result-object v2

    const-string v3, "RestaurantShoppingCartFragmentTablet"

    invoke-virtual {p0, v1, v2, v5, v3}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    .line 499
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$id;->RightPane:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 500
    .local v0, "frame":Landroid/widget/FrameLayout;
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 501
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 505
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 506
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->InstructionsBtn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 507
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->InstructionsBtn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 508
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v0

    if-nez v0, :cond_0

    .line 509
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->InstructionsBtn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/SettingsContent;->getDynamicButtonFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 512
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;->onCreate(Landroid/os/Bundle;)V

    .line 116
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->mLocationManager:Landroid/location/LocationManager;

    .line 117
    new-instance v0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$1;

    invoke-direct {v0, p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$1;-><init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;)V

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->mLocationListener:Landroid/location/LocationListener;

    .line 125
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 128
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$anim;->move_up_down:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->logoAnimation:Landroid/view/animation/Animation;

    .line 129
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->logoAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$2;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$2;-><init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 145
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$anim;->move_down_up:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->searchAnimation:Landroid/view/animation/Animation;

    .line 146
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->searchAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$3;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$3;-><init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 162
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 166
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->setHasOptionsMenu(Z)V

    .line 167
    sget v1, Lcom/yopeso/lieferando/R$layout;->search_fragment:I

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 168
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/yopeso/lieferando/R$id;->LocateView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/view/LocateView;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->mLocateView:Lcom/yopeso/lieferando/view/LocateView;

    .line 169
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->mLocateView:Lcom/yopeso/lieferando/view/LocateView;

    invoke-virtual {v1, p0}, Lcom/yopeso/lieferando/view/LocateView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    sget v1, Lcom/yopeso/lieferando/R$id;->SearchView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->mSearchInput:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    .line 172
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->mSearchInput:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setThreshold(I)V

    .line 173
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->mSearchInput:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    new-instance v2, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$4;

    invoke-direct {v2, p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$4;-><init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;)V

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 214
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->mSearchInput:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    new-instance v2, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$5;

    invoke-direct {v2, p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$5;-><init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;)V

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 225
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->mSearchInput:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    new-instance v2, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$6;

    invoke-direct {v2, p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$6;-><init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;)V

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 243
    sget v1, Lcom/yopeso/lieferando/R$id;->mainBG:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->main_BG:Landroid/widget/ImageView;

    .line 244
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/yopeso/lieferando/util/DeviceUtils;->isHoneycombTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 249
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 250
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->main_BG:Landroid/widget/ImageView;

    sget v2, Lcom/yopeso/lieferando/R$drawable;->bg_tablet_half:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 260
    :cond_0
    :goto_0
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->showAnim:Z

    if-eqz v1, :cond_1

    .line 261
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/yopeso/lieferando/util/DeviceUtils;->isHoneycombTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 262
    sget v1, Lcom/yopeso/lieferando/R$id;->linearLayout1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->searchAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 263
    sget v1, Lcom/yopeso/lieferando/R$id;->LogoAnim:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->logoAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 264
    iput-boolean v3, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->showAnim:Z

    .line 269
    :cond_1
    return-object v0

    .line 253
    :cond_2
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->main_BG:Landroid/widget/ImageView;

    sget v2, Lcom/yopeso/lieferando/R$drawable;->bg_tablet:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public onEvent(Lcom/yopeso/lieferando/events/AuthenticationEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/yopeso/lieferando/events/AuthenticationEvent;

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/util/DeviceUtils;->isHoneycombTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->main_BG:Landroid/widget/ImageView;

    sget v1, Lcom/yopeso/lieferando/R$drawable;->bg_tablet_half:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->main_BG:Landroid/widget/ImageView;

    sget v1, Lcom/yopeso/lieferando/R$drawable;->bg_tablet:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public onLocationSelected(Lcom/yopeso/lieferando/model/LocationSuggestion;)V
    .locals 2
    .param p1, "ls"    # Lcom/yopeso/lieferando/model/LocationSuggestion;

    .prologue
    .line 599
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->mSearchInput:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getPlz()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 600
    sget-object v0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->TAG:Ljava/lang/String;

    const-string v1, "onLocationSelected mSearchInput.setText("

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->mSearchInput:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->clearFocus()V

    .line 602
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->showRestaurantsForSuggestion(Lcom/yopeso/lieferando/model/LocationSuggestion;)V

    .line 603
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 321
    invoke-super {p0}, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;->onPause()V

    .line 322
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 323
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 274
    invoke-super {p0}, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;->onStart()V

    .line 275
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v2

    invoke-virtual {v2, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 276
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v2

    invoke-virtual {v2, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 279
    :cond_0
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v2

    if-nez v2, :cond_1

    .line 280
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$drawable;->actionbar_icon:I

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V

    .line 303
    :goto_0
    return-void

    .line 286
    :cond_1
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    .line 288
    .local v0, "backStackCount":I
    if-lez v0, :cond_3

    .line 289
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v2

    invoke-interface {v2}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, "name":Ljava/lang/String;
    const-class v2, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getSupportFragmentManager >0 name: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    if-eqz v1, :cond_2

    const-string v2, "RestaurantsFragment"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 298
    .end local v1    # "name":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/actionbarsherlock/app/ActionBar;->hide()V

    .line 299
    const-class v2, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getSupportActionBar().hide()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 296
    :cond_3
    const-class v2, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getSupportFragmentManager == 0: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 306
    invoke-super {p0}, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;->onStop()V

    .line 307
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 311
    :cond_0
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v0

    if-nez v0, :cond_1

    .line 312
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$drawable;->actionbar_icon_short:I

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V

    .line 318
    :goto_0
    return-void

    .line 315
    :cond_1
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$drawable;->ic_launcher:I

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V

    .line 316
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->show()V

    goto :goto_0
.end method

.method protected performGPSRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "lat"    # Ljava/lang/String;
    .param p2, "lng"    # Ljava/lang/String;

    .prologue
    .line 547
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/GoogleAPIRequest;

    new-instance v2, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$GoogleListener;

    invoke-direct {v2, p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$GoogleListener;-><init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;)V

    invoke-direct {v1, p1, p2, v2}, Lcom/yopeso/lieferando/net/requests/GoogleAPIRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 548
    return-void
.end method

.method public setLocationSuggestions(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/LocationSuggestion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 593
    .local p1, "mSuggestions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/LocationSuggestion;>;"
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->mLocationSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 594
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->mLocationSuggestions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 595
    return-void
.end method

.method protected showRestaurantsForSuggestion(Lcom/yopeso/lieferando/model/LocationSuggestion;)V
    .locals 6
    .param p1, "ls"    # Lcom/yopeso/lieferando/model/LocationSuggestion;

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 340
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->mSearchInput:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 342
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    .line 343
    .local v0, "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 344
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->buildAlertCartNotEmpty(Lcom/yopeso/lieferando/model/LocationSuggestion;)V

    .line 363
    :goto_0
    return-void

    .line 346
    :cond_0
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 348
    sget-object v2, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->TAG:Ljava/lang/String;

    const-string v3, "onLocationSelected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setAddressAtLocation(Lcom/yopeso/lieferando/model/LocationSuggestion;)V

    .line 350
    sget v2, Lcom/yopeso/lieferando/R$string;->pleaseWait:I

    invoke-virtual {p0, v2}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->showLoadingIndicator(I)V

    .line 352
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->lsPREMIUM:Lcom/yopeso/lieferando/model/LocationSuggestion;

    .line 353
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    new-instance v3, Lcom/yopeso/lieferando/net/requests/RestaurantRequest;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getLocationUrl()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$RestaurantListener;

    invoke-direct {v5, p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$RestaurantListener;-><init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;)V

    invoke-direct {v3, v4, v5}, Lcom/yopeso/lieferando/net/requests/RestaurantRequest;-><init>(Ljava/lang/String;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v2, v3}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0

    .line 357
    :cond_1
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getPlz()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getCityId()I

    move-result v3

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackPostCode(Ljava/lang/String;ILandroid/content/Context;)V

    .line 358
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackFBZip(Landroid/content/Context;)V

    .line 359
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/callback/ILocationSelectedCallback;

    invoke-interface {v2, p1}, Lcom/yopeso/lieferando/callback/ILocationSelectedCallback;->onLocationSelected(Lcom/yopeso/lieferando/model/LocationSuggestion;)V

    goto :goto_0
.end method
