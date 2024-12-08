.class public abstract Lcom/yopeso/lieferando/fragments/search/CSHFragment;
.super Lcom/yopeso/lieferando/custom/LRFragment;
.source "CSHFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/yopeso/lieferando/callback/LocationSuggestionCallback;
.implements Lcom/yopeso/lieferando/callback/StreetSuggestionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yopeso/lieferando/fragments/search/CSHFragment$CityListener;,
        Lcom/yopeso/lieferando/fragments/search/CSHFragment$GoogleListener;,
        Lcom/yopeso/lieferando/fragments/search/CSHFragment$StreetListener;
    }
.end annotation


# instance fields
.field protected contentRL:Landroid/widget/RelativeLayout;

.field protected delayInMillis:I

.field protected isAddress:Z

.field protected ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

.field protected mCityProvided:Z

.field protected mGoogleRequest:Lcom/yopeso/lieferando/net/requests/GoogleAPIRequest;

.field protected mGpsCity:Ljava/lang/String;

.field protected mGpsStreet:Ljava/lang/String;

.field protected final mHandler:Landroid/os/Handler;

.field protected mHouseNumber:Landroid/widget/EditText;

.field protected mHouseNumberLL:Landroid/widget/LinearLayout;

.field protected mLastRequestGPSKey:Ljava/lang/String;

.field protected mLocateView:Lcom/yopeso/lieferando/view/LocateView;

.field protected mLocationListener:Landroid/location/LocationListener;

.field protected mLocationManager:Landroid/location/LocationManager;

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

.field protected mSearchCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

.field protected mSearchRestaurantBtn:Landroid/widget/Button;

.field protected mSearchStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

.field protected mSearchStreetAdapter:Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;

.field protected mSearchSuggestionsAdapter:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapterPL;

.field protected mStreetNumberLL:Landroid/widget/LinearLayout;

.field protected mStreetProvided:Z

.field protected mStreetRequest:Lcom/yopeso/lieferando/net/requests/StreetRequestPL;

.field protected mStreetSuggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/user/Street;",
            ">;"
        }
    .end annotation
.end field

.field protected searchLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Lcom/yopeso/lieferando/custom/LRFragment;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mLocationSuggestions:Ljava/util/List;

    .line 65
    iput-boolean v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mCityProvided:Z

    .line 66
    iput-boolean v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mStreetProvided:Z

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mHandler:Landroid/os/Handler;

    .line 69
    const/16 v0, 0x5dc

    iput v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->delayInMillis:I

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mStreetSuggestions:Ljava/util/ArrayList;

    .line 92
    iput-boolean v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->isAddress:Z

    .line 57
    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/fragments/search/CSHFragment;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 699
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->showLocationSuggestions(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1(Lcom/yopeso/lieferando/fragments/search/CSHFragment;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 709
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->showStreetSuggestions(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2(Lcom/yopeso/lieferando/fragments/search/CSHFragment;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 586
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->getProperStreetname(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/yopeso/lieferando/fragments/search/CSHFragment;Z)V
    .locals 0

    .prologue
    .line 452
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->citySetUp(Z)V

    return-void
.end method

.method static synthetic access$4(Lcom/yopeso/lieferando/fragments/search/CSHFragment;Z)V
    .locals 0

    .prologue
    .line 491
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->streetSetUp(Z)V

    return-void
.end method

.method private citySetUp(Z)V
    .locals 8
    .param p1, "lostFocus"    # Z

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 453
    const-class v2, Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "citySetUp"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchSuggestionsAdapter:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapterPL;

    invoke-virtual {v2, v5}, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapterPL;->getElementById(I)Lcom/yopeso/lieferando/model/LocationSuggestion;

    move-result-object v1

    .line 455
    .local v1, "lss":Lcom/yopeso/lieferando/model/LocationSuggestion;
    const-class v2, Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "citySetUp: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getCityId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " plz="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getPlz()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getLocationUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iput-boolean v6, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mCityProvided:Z

    .line 457
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mGpsCity:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 458
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mGpsCity:Ljava/lang/String;

    .line 461
    new-instance v2, Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-direct {v2, v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;-><init>(Lcom/yopeso/lieferando/model/LocationSuggestion;)V

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    .line 463
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getCityId()I

    move-result v2

    if-lez v2, :cond_4

    .line 464
    iget-boolean v2, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->isAddress:Z

    if-nez v2, :cond_2

    .line 465
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v2, v7}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setVisibility(I)V

    .line 466
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mStreetNumberLL:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    .line 467
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mStreetNumberLL:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 468
    :cond_1
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchRestaurantBtn:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 469
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->setMarginTop()V

    .line 471
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchRestaurantBtn:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setClickable(Z)V

    .line 472
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->showRestaurants()V

    .line 474
    :cond_2
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 475
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 477
    if-nez p1, :cond_3

    .line 478
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchRestaurantBtn:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 479
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchRestaurantBtn:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->requestFocus()Z

    .line 489
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    :goto_0
    return-void

    .line 482
    :cond_4
    if-nez p1, :cond_3

    .line 483
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->requestFocus()Z

    .line 484
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mGpsStreet:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 485
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mGpsStreet:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->performStreetRequest(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getFirstStreetname()Ljava/lang/String;
    .locals 3

    .prologue
    .line 605
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mGpsStreet:Ljava/lang/String;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 606
    .local v0, "str":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 607
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 610
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mGpsStreet:Ljava/lang/String;

    goto :goto_0
.end method

.method private getProperStreetname(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/user/Street;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 587
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/user/Street;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 588
    .local v2, "permutations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mGpsStreet:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mGpsStreet:Ljava/lang/String;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 590
    .local v3, "str":[Ljava/lang/String;
    const-string v1, ""

    .line 591
    .local v1, "nStr":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v3

    if-lt v0, v5, :cond_1

    .line 594
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 595
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 596
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 601
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->getFirstStreetname()Ljava/lang/String;

    move-result-object v5

    :goto_1
    return-object v5

    .line 592
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    aget-object v6, v3, v0

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 591
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 596
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yopeso/lieferando/model/user/Street;

    .line 597
    .local v4, "street":Lcom/yopeso/lieferando/model/user/Street;
    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/Street;->getStreet()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 598
    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/Street;->getStreet()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method private showLocationSuggestions(Ljava/util/List;)V
    .locals 4
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
    .line 700
    .local p1, "suggestions":Ljava/util/List;, "Ljava/util/List<Lcom/yopeso/lieferando/model/LocationSuggestion;>;"
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mLocationSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 701
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mLocationSuggestions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 702
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 703
    new-instance v0, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapterPL;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$layout;->auto_complete_item:I

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mLocationSuggestions:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapterPL;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/yopeso/lieferando/callback/LocationSuggestionCallback;)V

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchSuggestionsAdapter:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapterPL;

    .line 704
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchSuggestionsAdapter:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapterPL;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapterPL;->setNotifyOnChange(Z)V

    .line 705
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchSuggestionsAdapter:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapterPL;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 707
    :cond_0
    return-void
.end method

.method private showStreetSuggestions(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/user/Street;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 710
    .local p1, "suggestions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/user/Street;>;"
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mStreetSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 711
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mStreetSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 712
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 713
    new-instance v0, Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$layout;->auto_complete_item:I

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mStreetSuggestions:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/yopeso/lieferando/callback/StreetSuggestionCallback;)V

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchStreetAdapter:Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;

    .line 714
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchStreetAdapter:Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 716
    :cond_0
    return-void
.end method

.method private streetSetUp(Z)V
    .locals 7
    .param p1, "lostFocus"    # Z

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 492
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchStreetAdapter:Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;

    invoke-virtual {v2, v4}, Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;->getElementById(I)Lcom/yopeso/lieferando/model/user/Street;

    move-result-object v1

    .line 493
    .local v1, "street":Lcom/yopeso/lieferando/model/user/Street;
    iput-boolean v5, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mStreetProvided:Z

    .line 494
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/Street;->getStreet()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mGpsStreet:Ljava/lang/String;

    .line 498
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/Street;->getStreet()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/model/LocationSuggestion;->setStreetName(Ljava/lang/String;)V

    .line 499
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/Street;->getCityId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/model/LocationSuggestion;->setCityId(I)V

    .line 500
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/Street;->getRegExp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/model/LocationSuggestion;->setRegExp(Ljava/lang/String;)V

    .line 502
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/Street;->getRegExp()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 503
    iget-boolean v2, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->isAddress:Z

    if-nez v2, :cond_1

    .line 504
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mHouseNumber:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 506
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mHouseNumberLL:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    .line 507
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mHouseNumberLL:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 508
    :cond_0
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchRestaurantBtn:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 509
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchRestaurantBtn:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 511
    :cond_1
    if-nez p1, :cond_2

    .line 512
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mHouseNumber:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 534
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->setMarginTop()V

    .line 535
    return-void

    .line 515
    :cond_3
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/Street;->getPlz()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/model/LocationSuggestion;->setPlz(Ljava/lang/String;)V

    .line 516
    iget-boolean v2, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->isAddress:Z

    if-nez v2, :cond_5

    .line 517
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mHouseNumber:Landroid/widget/EditText;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 519
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mHouseNumberLL:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_4

    .line 520
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mHouseNumberLL:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 521
    :cond_4
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchRestaurantBtn:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 523
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchRestaurantBtn:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setClickable(Z)V

    .line 524
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->showRestaurants()V

    .line 527
    :cond_5
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 528
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mHouseNumber:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 529
    if-nez p1, :cond_2

    .line 530
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchRestaurantBtn:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 531
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchRestaurantBtn:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 733
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    .line 734
    .local v8, "id":I
    sget v0, Lcom/yopeso/lieferando/R$id;->SignInNowButton:I

    if-ne v8, v0, :cond_3

    .line 735
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->CustomerEmail:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    .line 736
    .local v7, "email":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->CustomerPassword:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    .line 737
    .local v10, "pass":Ljava/lang/String;
    const/4 v6, 0x1

    .line 738
    .local v6, "done":Z
    const-string v0, ""

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 739
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->CustomerEmail:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sget v1, Lcom/yopeso/lieferando/R$string;->mandatory_field_error_message:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 740
    const/4 v6, 0x0

    .line 742
    :cond_0
    const-string v0, ""

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 743
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->CustomerPassword:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sget v1, Lcom/yopeso/lieferando/R$string;->mandatory_field_error_message:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 744
    const/4 v6, 0x0

    .line 746
    :cond_1
    if-eqz v6, :cond_2

    .line 747
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    invoke-virtual {v0, v7, v10}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->doLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodManager;

    .line 749
    .local v9, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v9, v0, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 779
    .end local v6    # "done":Z
    .end local v7    # "email":Ljava/lang/String;
    .end local v9    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v10    # "pass":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 751
    :cond_3
    sget v0, Lcom/yopeso/lieferando/R$id;->ForgotPasswordButton:I

    if-ne v8, v0, :cond_4

    .line 752
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->showForgotPasswordDialog()V

    goto :goto_0

    .line 753
    :cond_4
    sget v0, Lcom/yopeso/lieferando/R$id;->LoginWithFbBtn:I

    if-ne v8, v0, :cond_5

    .line 754
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->requireFBLogin()V

    goto :goto_0

    .line 755
    :cond_5
    sget v0, Lcom/yopeso/lieferando/R$id;->LocateView:I

    if-ne v8, v0, :cond_9

    .line 756
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 757
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->buildAlertMessageNoGps()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 759
    :cond_6
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/util/DeviceUtils;->isHoneycombTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 760
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mLocateView:Lcom/yopeso/lieferando/view/LocateView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/LocateView;->startAnimation(Z)V

    .line 765
    :goto_1
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mLocateView:Lcom/yopeso/lieferando/view/LocateView;

    invoke-virtual {v0, v5}, Lcom/yopeso/lieferando/view/LocateView;->setEnabled(Z)V

    .line 767
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 768
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 771
    :cond_7
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    const-string v1, "gps"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 772
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_0

    .line 762
    :cond_8
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mLocateView:Lcom/yopeso/lieferando/view/LocateView;

    invoke-virtual {v0, v5}, Lcom/yopeso/lieferando/view/LocateView;->startAnimation(Z)V

    goto :goto_1

    .line 775
    :cond_9
    sget v0, Lcom/yopeso/lieferando/R$id;->signUpButton:I

    if-eq v8, v0, :cond_a

    sget v0, Lcom/yopeso/lieferando/R$id;->signUpLL:I

    if-eq v8, v0, :cond_a

    sget v0, Lcom/yopeso/lieferando/R$id;->signUpButton2:I

    if-ne v8, v0, :cond_2

    .line 777
    :cond_a
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    const-class v3, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x4d2

    invoke-virtual {v0, v2, v1}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/LRFragment;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mLocationManager:Landroid/location/LocationManager;

    .line 99
    new-instance v0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$1;

    invoke-direct {v0, p0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment$1;-><init>(Lcom/yopeso/lieferando/fragments/search/CSHFragment;)V

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mLocationListener:Landroid/location/LocationListener;

    .line 117
    return-void
.end method

.method public onLocationSelected(Lcom/yopeso/lieferando/model/LocationSuggestion;)V
    .locals 6
    .param p1, "lss"    # Lcom/yopeso/lieferando/model/LocationSuggestion;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 799
    iput-boolean v3, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mCityProvided:Z

    .line 800
    new-instance v1, Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-direct {v1, p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;-><init>(Lcom/yopeso/lieferando/model/LocationSuggestion;)V

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    .line 802
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 803
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchSuggestionsAdapter:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapterPL;

    if-eqz v1, :cond_0

    .line 804
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchSuggestionsAdapter:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapterPL;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapterPL;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 806
    :cond_0
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getCityId()I

    move-result v1

    if-lez v1, :cond_3

    .line 807
    iget-boolean v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->isAddress:Z

    if-nez v1, :cond_2

    .line 808
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v1, v5}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setVisibility(I)V

    .line 809
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mStreetNumberLL:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 810
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mStreetNumberLL:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 812
    :cond_1
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchRestaurantBtn:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 813
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->setMarginTop()V

    .line 815
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchRestaurantBtn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 816
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->showRestaurants()V

    .line 819
    :cond_2
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 820
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 822
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchRestaurantBtn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 823
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchRestaurantBtn:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->requestFocus()Z

    .line 827
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return-void

    .line 825
    :cond_3
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->requestFocus()Z

    goto :goto_0
.end method

.method public onStreetSelected(Lcom/yopeso/lieferando/model/user/Street;)V
    .locals 6
    .param p1, "street"    # Lcom/yopeso/lieferando/model/user/Street;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 844
    iput-boolean v4, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mStreetProvided:Z

    .line 845
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 846
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/Street;->getStreet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/LocationSuggestion;->setStreetName(Ljava/lang/String;)V

    .line 847
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/Street;->getCityId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/LocationSuggestion;->setCityId(I)V

    .line 848
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/Street;->getRegExp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/LocationSuggestion;->setRegExp(Ljava/lang/String;)V

    .line 849
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getStreetName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 851
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/Street;->getRegExp()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 852
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mHouseNumber:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 854
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mHouseNumberLL:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 855
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mHouseNumberLL:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 856
    :cond_0
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mHouseNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 857
    iget-boolean v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->isAddress:Z

    if-nez v1, :cond_1

    .line 858
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchRestaurantBtn:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 862
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchRestaurantBtn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 883
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->setMarginTop()V

    .line 885
    return-void

    .line 865
    :cond_2
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/Street;->getPlz()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/LocationSuggestion;->setPlz(Ljava/lang/String;)V

    .line 866
    iget-boolean v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->isAddress:Z

    if-nez v1, :cond_4

    .line 867
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mHouseNumber:Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 869
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mHouseNumberLL:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    .line 870
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mHouseNumberLL:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 871
    :cond_3
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchRestaurantBtn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 873
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchRestaurantBtn:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 874
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->showRestaurants()V

    .line 877
    :cond_4
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 878
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mHouseNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 879
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchRestaurantBtn:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 880
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchRestaurantBtn:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_0
.end method

.method protected performCityRequest(Ljava/lang/String;)V
    .locals 4
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    .line 538
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/CityRequestPL;

    invoke-static {p1}, Lcom/yopeso/lieferando/util/StringUtils;->removePlLetters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/yopeso/lieferando/fragments/search/CSHFragment$CityListener;

    invoke-direct {v3, p0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment$CityListener;-><init>(Lcom/yopeso/lieferando/fragments/search/CSHFragment;)V

    invoke-direct {v1, v2, v3}, Lcom/yopeso/lieferando/net/requests/CityRequestPL;-><init>(Ljava/lang/String;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 539
    return-void
.end method

.method protected performGPSRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "lat"    # Ljava/lang/String;
    .param p2, "lng"    # Ljava/lang/String;

    .prologue
    .line 546
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/GoogleAPIRequest;

    new-instance v2, Lcom/yopeso/lieferando/fragments/search/CSHFragment$GoogleListener;

    invoke-direct {v2, p0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment$GoogleListener;-><init>(Lcom/yopeso/lieferando/fragments/search/CSHFragment;)V

    invoke-direct {v1, p1, p2, v2}, Lcom/yopeso/lieferando/net/requests/GoogleAPIRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 547
    return-void
.end method

.method protected performStreetRequest(Ljava/lang/String;)V
    .locals 3
    .param p1, "street"    # Ljava/lang/String;

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    new-instance v2, Lcom/yopeso/lieferando/fragments/search/CSHFragment$StreetListener;

    invoke-direct {v2, p0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment$StreetListener;-><init>(Lcom/yopeso/lieferando/fragments/search/CSHFragment;)V

    invoke-static {p1, v1, v2}, Lcom/yopeso/lieferando/net/requests/StreetRequestPL;->build(Ljava/lang/String;Lcom/yopeso/lieferando/model/LocationSuggestion;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)Lcom/yopeso/lieferando/net/requests/StreetRequestPL;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 543
    return-void
.end method

.method public setLocationSuggestions(Ljava/util/ArrayList;)V
    .locals 2
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
    .local p1, "mSuggestions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/LocationSuggestion;>;"
    const/4 v1, 0x0

    .line 720
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mLocationSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 721
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mLocationSuggestions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 723
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mGpsCity:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mLocationSuggestions:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mLocationSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 724
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->citySetUp(Z)V

    .line 729
    :goto_0
    return-void

    .line 726
    :cond_0
    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mGpsCity:Ljava/lang/String;

    .line 727
    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mGpsStreet:Ljava/lang/String;

    goto :goto_0
.end method

.method protected setMarginTop()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 380
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->searchLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/yopeso/lieferando/util/DeviceUtils;->isHoneycombTablet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 381
    const/4 v1, 0x0

    .line 382
    .local v1, "margin":I
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    .line 383
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mHouseNumber:Landroid/widget/EditText;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mHouseNumber:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 385
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchRestaurantBtn:Landroid/widget/Button;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchRestaurantBtn:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 387
    const-class v3, Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "street + house + button: top_margin_search_long"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchRestaurantBtn:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 390
    .local v0, "linearParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 391
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchRestaurantBtn:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 394
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$dimen;->top_margin_search_long:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 435
    .end local v0    # "linearParams":Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    const-class v3, Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "MARGIN:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->searchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 438
    .local v2, "relativeParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v6, v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 439
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->searchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 441
    .end local v1    # "margin":I
    .end local v2    # "relativeParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void

    .line 398
    .restart local v1    # "margin":I
    :cond_1
    const-class v3, Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "street + house + no button: top_margin_search_long"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$dimen;->top_margin_search_long:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 402
    goto :goto_0

    .line 405
    :cond_2
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchRestaurantBtn:Landroid/widget/Button;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchRestaurantBtn:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    .line 407
    const-class v3, Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "street + no house + button: top_margin_search_short"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchRestaurantBtn:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 411
    .restart local v0    # "linearParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$dimen;->top_margin_button_full:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v6, v3, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 412
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchRestaurantBtn:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 414
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$dimen;->top_margin_search_long:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 415
    goto :goto_0

    .line 418
    .end local v0    # "linearParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    const-class v3, Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "street + no house + no button: top_margin_search_initial"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$dimen;->top_margin_search_initial:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 423
    goto/16 :goto_0

    .line 426
    :cond_4
    const-class v3, Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "no street + no house + button: top_margin_search_initial"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchRestaurantBtn:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 430
    .restart local v0    # "linearParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$dimen;->top_margin_button_full:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v6, v3, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 431
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchRestaurantBtn:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 433
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$dimen;->top_margin_search_initial:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto/16 :goto_0
.end method

.method public setStreetSuggestions(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/user/Street;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 783
    .local p1, "mSuggestions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/user/Street;>;"
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchStreetAdapter:Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;

    if-eqz v0, :cond_1

    .line 784
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mStreetSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 785
    if-eqz p1, :cond_0

    .line 786
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mStreetSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 789
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mGpsStreet:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mStreetSuggestions:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mStreetSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 790
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->streetSetUp(Z)V

    .line 795
    :cond_1
    :goto_0
    return-void

    .line 792
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mGpsStreet:Ljava/lang/String;

    goto :goto_0
.end method

.method public setupCSH()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 121
    iget-boolean v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->isAddress:Z

    if-eqz v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mStreetNumberLL:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mStreetNumberLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mHouseNumber:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mHouseNumberLL:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mHouseNumberLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchRestaurantBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mLocateView:Lcom/yopeso/lieferando/view/LocateView;

    invoke-virtual {v0, v3}, Lcom/yopeso/lieferando/view/LocateView;->setVisibility(I)V

    .line 134
    :cond_2
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->setMarginTop()V

    .line 135
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v0, v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setThreshold(I)V

    .line 136
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v0, v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setThreshold(I)V

    .line 137
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchRestaurantBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mLocateView:Lcom/yopeso/lieferando/view/LocateView;

    invoke-virtual {v0, p0}, Lcom/yopeso/lieferando/view/LocateView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    new-instance v1, Lcom/yopeso/lieferando/fragments/search/CSHFragment$2;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment$2;-><init>(Lcom/yopeso/lieferando/fragments/search/CSHFragment;)V

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 199
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    new-instance v1, Lcom/yopeso/lieferando/fragments/search/CSHFragment$3;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment$3;-><init>(Lcom/yopeso/lieferando/fragments/search/CSHFragment;)V

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 216
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    new-instance v1, Lcom/yopeso/lieferando/fragments/search/CSHFragment$4;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment$4;-><init>(Lcom/yopeso/lieferando/fragments/search/CSHFragment;)V

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 266
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    new-instance v1, Lcom/yopeso/lieferando/fragments/search/CSHFragment$5;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment$5;-><init>(Lcom/yopeso/lieferando/fragments/search/CSHFragment;)V

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 283
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mHouseNumber:Landroid/widget/EditText;

    new-instance v1, Lcom/yopeso/lieferando/fragments/search/CSHFragment$6;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment$6;-><init>(Lcom/yopeso/lieferando/fragments/search/CSHFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 361
    return-void
.end method

.method protected showRestaurants()V
    .locals 4

    .prologue
    .line 830
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mHouseNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 831
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/LocationSuggestion;->setHouseNumber(Ljava/lang/String;)V

    .line 833
    :cond_0
    iget-boolean v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mCityProvided:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mStreetProvided:Z

    if-nez v1, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mCityProvided:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getCityId()I

    move-result v1

    if-lez v1, :cond_3

    .line 834
    :cond_2
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getPlz()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getCityId()I

    move-result v2

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackPostCode(Ljava/lang/String;ILandroid/content/Context;)V

    .line 835
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackFBZip(Landroid/content/Context;)V

    .line 836
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/callback/ILocationSelectedCallback;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-interface {v1, v2}, Lcom/yopeso/lieferando/callback/ILocationSelectedCallback;->onLocationSelected(Lcom/yopeso/lieferando/model/LocationSuggestion;)V

    .line 837
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 838
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 840
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    return-void
.end method
