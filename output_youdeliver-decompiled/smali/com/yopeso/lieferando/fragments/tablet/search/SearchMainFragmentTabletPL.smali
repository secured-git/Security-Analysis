.class public Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;
.super Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;
.source "SearchMainFragmentTabletPL.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private main_BG:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;)Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->mSearchCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;)Ljava/util/List;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->mLocationSuggestions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;)Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->mSearchStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->mStreetSuggestions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->mSearchRestaurantBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$5(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;)V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->buildAlertCartNotEmpty()V

    return-void
.end method

.method private buildAlertCartNotEmpty()V
    .locals 6

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    .line 238
    .local v0, "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 239
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v2

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL$4;

    invoke-direct {v4, p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL$4;-><init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;)V

    .line 245
    new-instance v5, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL$5;

    invoke-direct {v5, p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL$5;-><init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;)V

    .line 239
    invoke-static {v2, v3, v4, v5}, Lcom/yopeso/lieferando/dialogs/CartNotEmptyDialog;->getDialog(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v1

    .line 251
    .local v1, "cartDialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 253
    .end local v1    # "cartDialog":Landroid/app/AlertDialog;
    :cond_0
    return-void
.end method


# virtual methods
.method protected goToRestaurantDetails()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 256
    sget v1, Lcom/yopeso/lieferando/R$id;->LeftPane:I

    invoke-static {v5}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantDetailsFragmentTablet;->newInstance(Z)Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantDetailsFragmentTablet;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "RestaurantDetailsFrag"

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    .line 257
    sget v1, Lcom/yopeso/lieferando/R$id;->RightPane:I

    invoke-static {}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->newInstance()Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;

    move-result-object v2

    const-string v3, "RestaurantShoppingCartFragmentTablet"

    invoke-virtual {p0, v1, v2, v5, v3}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$id;->RightPane:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 259
    .local v0, "frame":Landroid/widget/FrameLayout;
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 260
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 149
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 150
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->InstructionsBtn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->InstructionsBtn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->getView()Landroid/view/View;

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

    .line 156
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 160
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;->onClick(Landroid/view/View;)V

    .line 161
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 162
    .local v1, "id":I
    sget v2, Lcom/yopeso/lieferando/R$id;->SearchRestaurantBtn:I

    if-ne v1, v2, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    .line 164
    .local v0, "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 165
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->buildAlertCartNotEmpty()V

    .line 170
    .end local v0    # "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    :cond_0
    :goto_0
    return-void

    .line 167
    .restart local v0    # "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    :cond_1
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->showRestaurantsForSuggestion()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->setHasOptionsMenu(Z)V

    .line 56
    sget v1, Lcom/yopeso/lieferando/R$layout;->search_fragment_main_pl:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/yopeso/lieferando/R$id;->SearchView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->mSearchCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    .line 58
    sget v1, Lcom/yopeso/lieferando/R$id;->SearchHouse:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->mHouseNumber:Landroid/widget/EditText;

    .line 59
    sget v1, Lcom/yopeso/lieferando/R$id;->SearchHouseLL:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->mHouseNumberLL:Landroid/widget/LinearLayout;

    .line 60
    sget v1, Lcom/yopeso/lieferando/R$id;->SearchStreetLL:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->mStreetNumberLL:Landroid/widget/LinearLayout;

    .line 61
    sget v1, Lcom/yopeso/lieferando/R$id;->SearchStreet:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->mSearchStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    .line 62
    sget v1, Lcom/yopeso/lieferando/R$id;->SearchRestaurantBtn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->mSearchRestaurantBtn:Landroid/widget/Button;

    .line 64
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->mSearchRestaurantBtn:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/SettingsContent;->getDynamicButtonFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 66
    sget v1, Lcom/yopeso/lieferando/R$id;->contentRL:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->contentRL:Landroid/widget/RelativeLayout;

    .line 67
    sget v1, Lcom/yopeso/lieferando/R$id;->SearchLayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->searchLayout:Landroid/widget/LinearLayout;

    .line 68
    sget v1, Lcom/yopeso/lieferando/R$id;->LocateView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/view/LocateView;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->mLocateView:Lcom/yopeso/lieferando/view/LocateView;

    .line 70
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->setupCSH()V

    .line 72
    sget v1, Lcom/yopeso/lieferando/R$id;->mainBG:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->main_BG:Landroid/widget/ImageView;

    .line 73
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/yopeso/lieferando/util/DeviceUtils;->isHoneycombTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->main_BG:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 75
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->main_BG:Landroid/widget/ImageView;

    sget v2, Lcom/yopeso/lieferando/R$drawable;->bg_tablet_half:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 83
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->mSearchCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    new-instance v2, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL$1;

    invoke-direct {v2, p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL$1;-><init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;)V

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 97
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->mSearchStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    new-instance v2, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL$2;

    invoke-direct {v2, p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL$2;-><init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;)V

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 111
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->mHouseNumber:Landroid/widget/EditText;

    new-instance v2, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL$3;

    invoke-direct {v2, p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL$3;-><init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 131
    return-object v0

    .line 78
    :cond_1
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->main_BG:Landroid/widget/ImageView;

    sget v2, Lcom/yopeso/lieferando/R$drawable;->bg_tablet:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public onEvent(Lcom/yopeso/lieferando/events/AuthenticationEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/yopeso/lieferando/events/AuthenticationEvent;

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/util/DeviceUtils;->isHoneycombTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->main_BG:Landroid/widget/ImageView;

    sget v1, Lcom/yopeso/lieferando/R$drawable;->bg_tablet_half:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->main_BG:Landroid/widget/ImageView;

    sget v1, Lcom/yopeso/lieferando/R$drawable;->bg_tablet:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 199
    invoke-super {p0}, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;->onResume()V

    .line 200
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    if-eqz v0, :cond_4

    .line 201
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->mSearchCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iput-boolean v3, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->mCityProvided:Z

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getStreetName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 206
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->mSearchStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getStreetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iput-boolean v3, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->mStreetProvided:Z

    .line 208
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getHouseNumber()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getCityId()I

    move-result v0

    if-eq v0, v5, :cond_2

    .line 209
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->mHouseNumber:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->mHouseNumberLL:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->mHouseNumberLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->mSearchRestaurantBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->mSearchRestaurantBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 224
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getHouseNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getHouseNumber()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getCityId()I

    move-result v0

    if-eq v0, v5, :cond_4

    .line 225
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->mHouseNumber:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getHouseNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->mHouseNumber:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->mHouseNumberLL:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    .line 228
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->mHouseNumberLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 229
    :cond_3
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->mSearchRestaurantBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->mSearchRestaurantBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 233
    :cond_4
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->setMarginTop()V

    .line 234
    return-void

    .line 216
    :cond_5
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getCityId()I

    move-result v0

    if-lez v0, :cond_2

    .line 217
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->mSearchStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v0, v4}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->mStreetNumberLL:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_6

    .line 219
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->mStreetNumberLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 220
    :cond_6
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->mSearchRestaurantBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->mSearchRestaurantBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 174
    invoke-super {p0}, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;->onStart()V

    .line 175
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 178
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 181
    invoke-super {p0}, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;->onStop()V

    .line 182
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 185
    :cond_0
    return-void
.end method

.method protected showRestaurantsForSuggestion()V
    .locals 4

    .prologue
    .line 135
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->mHouseNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/LocationSuggestion;->setHouseNumber(Ljava/lang/String;)V

    .line 138
    :cond_0
    iget-boolean v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->mCityProvided:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->mStreetProvided:Z

    if-nez v1, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->mCityProvided:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getCityId()I

    move-result v1

    if-lez v1, :cond_3

    .line 139
    :cond_2
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getPlz()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getCityId()I

    move-result v2

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackPostCode(Ljava/lang/String;ILandroid/content/Context;)V

    .line 140
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackFBZip(Landroid/content/Context;)V

    .line 141
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/callback/ILocationSelectedCallback;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-interface {v1, v2}, Lcom/yopeso/lieferando/callback/ILocationSelectedCallback;->onLocationSelected(Lcom/yopeso/lieferando/model/LocationSuggestion;)V

    .line 142
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 143
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->mSearchCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 145
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    return-void
.end method
