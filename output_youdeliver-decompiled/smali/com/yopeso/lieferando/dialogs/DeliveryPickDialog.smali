.class public Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;
.super Landroid/support/v4/app/LRDialogFragment;
.source "DeliveryPickDialog.java"

# interfaces
.implements Lcom/yopeso/lieferando/callback/DeliveryAreaAdapterCallBack;
.implements Lcom/yopeso/lieferando/callback/LocationSuggestionCallback;
.implements Lcom/yopeso/lieferando/callback/StreetSuggestionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$CityListener;,
        Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$CreateAddressListener;,
        Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$GetAddressListener;,
        Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$StreetListener;
    }
.end annotation


# static fields
.field private static final RESTAURANT_KEY:Ljava/lang/String; = "restaurant_key"


# instance fields
.field private addressCB:Landroid/widget/CheckBox;

.field private mCallback:Lcom/yopeso/lieferando/callback/DeliveryAreaCallBack;

.field protected mCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

.field protected mCityId:I

.field private mCityProvided:Z

.field private mDeliveryAreas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;",
            ">;"
        }
    .end annotation
.end field

.field protected mHouseNr:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

.field protected mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

.field protected mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

.field protected mLocationSelectedIndex:I

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

.field private mNullAdapter:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field protected mRegexp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/yopeso/lieferando/model/user/Regexp;",
            ">;"
        }
    .end annotation
.end field

.field protected mRequestQueue:Lcom/android/volley/RequestQueue;

.field private mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

.field private mSearchStreetAdapter:Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;

.field protected mSearchSuggestionsAdapter:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

.field protected mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

.field private mStreetProvided:Z

.field private mStreetSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yopeso/lieferando/model/user/Street;",
            ">;"
        }
    .end annotation
.end field

.field private mUserDeliverAreaAdapter:Lcom/yopeso/lieferando/adapters/UserDeliveryAreaAdapter;

.field private mUserDeliveryAreaList:Landroid/widget/ListView;

.field private singleCity:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Landroid/support/v4/app/LRDialogFragment;-><init>()V

    .line 88
    iput-boolean v1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mCityProvided:Z

    .line 89
    iput-boolean v1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mStreetProvided:Z

    .line 90
    iput-boolean v1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->singleCity:Z

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mLocationSuggestions:Ljava/util/List;

    .line 96
    iput-object v2, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    .line 97
    iput v1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mLocationSelectedIndex:I

    .line 104
    iput-object v2, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mNullAdapter:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mStreetSuggestions:Ljava/util/List;

    .line 108
    iput-object v2, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    .line 116
    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;)Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mCityProvided:Z

    return v0
.end method

.method static synthetic access$1(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;)Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mStreetProvided:Z

    return v0
.end method

.method static synthetic access$10(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 652
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->performStreetRequest(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;Z)V
    .locals 0

    .prologue
    .line 628
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->streetSetUp(Z)V

    return-void
.end method

.method static synthetic access$12(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;)Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mSearchStreetAdapter:Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;

    return-object v0
.end method

.method static synthetic access$13(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;)Z
    .locals 1

    .prologue
    .line 565
    invoke-direct {p0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->validateArea()Z

    move-result v0

    return v0
.end method

.method static synthetic access$14(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->addressCB:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$15(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;)Ljava/util/List;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mDeliveryAreas:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 664
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->showStreetSuggestions(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$3(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;Z)V
    .locals 0

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mCityProvided:Z

    return-void
.end method

.method static synthetic access$4(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;Z)V
    .locals 0

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mStreetProvided:Z

    return-void
.end method

.method static synthetic access$5(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;)Ljava/util/List;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mStreetSuggestions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;)Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mNullAdapter:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    return-object v0
.end method

.method static synthetic access$7(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 648
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->performCityRequest(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;Z)V
    .locals 0

    .prologue
    .line 611
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->citySetUp(Z)V

    return-void
.end method

.method static synthetic access$9(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;)Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->singleCity:Z

    return v0
.end method

.method private citySetUp(Z)V
    .locals 5
    .param p1, "lostFocus"    # Z

    .prologue
    const/4 v4, 0x1

    .line 612
    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mLocationSuggestions:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/LocationSuggestion;

    .line 613
    .local v0, "lss":Lcom/yopeso/lieferando/model/LocationSuggestion;
    const-class v1, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "citySetUp:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iput-boolean v4, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mCityProvided:Z

    .line 615
    iput-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    .line 616
    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iget-object v2, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 617
    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getCityId()I

    move-result v1

    if-lez v1, :cond_0

    .line 618
    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getCityId()I

    move-result v1

    iput v1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mCityId:I

    .line 619
    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mHouseNr:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v1, v4}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setEnabled(Z)V

    .line 621
    :cond_0
    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v1, v4}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setEnabled(Z)V

    .line 622
    if-nez p1, :cond_1

    .line 623
    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->requestFocus()Z

    .line 624
    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->showDropDown()V

    .line 626
    :cond_1
    return-void
.end method

.method public static newInstance(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;
    .locals 3
    .param p0, "restaurant"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 119
    new-instance v1, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    invoke-direct {v1}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;-><init>()V

    .line 120
    .local v1, "dialog":Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 121
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "restaurant_key"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 122
    invoke-virtual {v1, v0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->setArguments(Landroid/os/Bundle;)V

    .line 123
    return-object v1
.end method

.method private performCityRequest(Ljava/lang/String;)V
    .locals 4
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    .line 649
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mRequestQueue:Lcom/android/volley/RequestQueue;

    new-instance v1, Lcom/yopeso/lieferando/net/requests/CityRequestPL;

    new-instance v2, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$CityListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$CityListener;-><init>(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$CityListener;)V

    invoke-direct {v1, p1, v2}, Lcom/yopeso/lieferando/net/requests/CityRequestPL;-><init>(Ljava/lang/String;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    const-string v2, "cityRequest"

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/net/requests/CityRequestPL;->withTag(Ljava/lang/Object;)Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 650
    return-void
.end method

.method private performStreetRequest(Ljava/lang/String;)V
    .locals 4
    .param p1, "street"    # Ljava/lang/String;

    .prologue
    .line 653
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mRequestQueue:Lcom/android/volley/RequestQueue;

    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    new-instance v2, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$StreetListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$StreetListener;-><init>(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$StreetListener;)V

    invoke-static {p1, v1, v2}, Lcom/yopeso/lieferando/net/requests/StreetRequestPL;->build(Ljava/lang/String;Lcom/yopeso/lieferando/model/LocationSuggestion;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)Lcom/yopeso/lieferando/net/requests/StreetRequestPL;

    move-result-object v1

    const-string v2, "streetRequest"

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/net/requests/StreetRequestPL;->withTag(Ljava/lang/Object;)Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 654
    return-void
.end method

.method private showStreetSuggestions(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yopeso/lieferando/model/user/Street;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 665
    .local p1, "suggestions":Ljava/util/List;, "Ljava/util/List<Lcom/yopeso/lieferando/model/user/Street;>;"
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mStreetSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 666
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mStreetSuggestions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 667
    new-instance v0, Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$layout;->auto_complete_item:I

    iget-object v3, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mStreetSuggestions:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/yopeso/lieferando/callback/StreetSuggestionCallback;)V

    iput-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mSearchStreetAdapter:Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;

    .line 668
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mSearchStreetAdapter:Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 669
    return-void
.end method

.method private sortByPlz()V
    .locals 2

    .prologue
    .line 734
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mDeliveryAreas:Ljava/util/List;

    new-instance v1, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$11;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$11;-><init>(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 740
    return-void
.end method

.method private streetSetUp(Z)V
    .locals 3
    .param p1, "lostFocus"    # Z

    .prologue
    .line 629
    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mStreetSuggestions:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/user/Street;

    .line 630
    .local v0, "street":Lcom/yopeso/lieferando/model/user/Street;
    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Street;->getStreet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/LocationSuggestion;->setStreetName(Ljava/lang/String;)V

    .line 631
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Street;->getCityId()I

    move-result v1

    iput v1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mCityId:I

    .line 633
    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Street;->getRegExp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/LocationSuggestion;->setRegExp(Ljava/lang/String;)V

    .line 634
    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getReqExp()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 635
    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Street;->getPlz()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/LocationSuggestion;->setPlz(Ljava/lang/String;)V

    .line 637
    :cond_0
    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iget-object v2, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getStreetName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 638
    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mHouseNr:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setEnabled(Z)V

    .line 639
    if-nez p1, :cond_1

    .line 640
    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mHouseNr:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->requestFocus()Z

    .line 641
    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->showDropDown()V

    .line 643
    :cond_1
    return-void
.end method

.method private validateArea()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 566
    iget-object v2, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mDeliveryAreas:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 567
    iget-object v2, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mDeliveryAreas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 574
    :cond_1
    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->deliveryAreaNotSupported:I

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 575
    :goto_0
    return v1

    .line 567
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;

    .line 568
    .local v0, "da":Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;->getCityId()I

    move-result v3

    iget v4, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mCityId:I

    if-ne v3, v4, :cond_0

    .line 569
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public createJsonWithFieldsValue(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/yopeso/lieferando/model/user/Regexp;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .local p1, "regexp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/yopeso/lieferando/model/user/Regexp;>;"
    const/4 v7, 0x0

    .line 767
    const/4 v5, 0x1

    .line 769
    .local v5, "returnObject":Z
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 770
    .local v2, "locationObject":Lorg/json/JSONObject;
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getFirstName()Ljava/lang/String;

    move-result-object v4

    .line 771
    .local v4, "mName":Ljava/lang/String;
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getLastName()Ljava/lang/String;

    move-result-object v3

    .line 773
    .local v3, "mLastName":Ljava/lang/String;
    iget-object v6, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 774
    iget-object v6, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 775
    iget-object v6, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    sget v9, Lcom/yopeso/lieferando/R$string;->add_address_mandatory_field_text:I

    invoke-virtual {v8, v9}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 776
    const/4 v5, 0x0

    .line 792
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mHouseNr:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 793
    iget-object v6, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mHouseNr:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 794
    iget-object v6, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mHouseNr:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    sget v9, Lcom/yopeso/lieferando/R$string;->add_address_mandatory_field_text:I

    invoke-virtual {v8, v9}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 795
    const/4 v5, 0x0

    .line 812
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 813
    iget-object v6, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/yopeso/lieferando/R$string;->add_address_mandatory_field_text:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 814
    const/4 v5, 0x0

    .line 824
    :goto_2
    iget-object v6, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getPlz()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_d

    .line 825
    :cond_2
    const/4 v5, 0x0

    .line 830
    :goto_3
    const-string v6, "cityId"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mCityId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 831
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 832
    const-string v6, "tel"

    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yopeso/lieferando/model/user/UserData;->getTelephone()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 834
    :cond_3
    const-string v6, "companyName"

    const-string v8, ""

    invoke-virtual {v2, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 835
    const-string v6, "level"

    const-string v8, ""

    invoke-virtual {v2, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 836
    const-string v6, "comment"

    const-string v8, ""

    invoke-virtual {v2, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 837
    const-string v6, "primary"

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 838
    const-string v6, "customerPrename"

    invoke-virtual {v2, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 839
    const-string v6, "customerName"

    invoke-virtual {v2, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 840
    if-eqz v5, :cond_7

    .line 841
    const-class v6, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    instance-of v6, v2, Lorg/json/JSONObject;

    if-nez v6, :cond_e

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_4
    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    .end local v2    # "locationObject":Lorg/json/JSONObject;
    .end local v3    # "mLastName":Ljava/lang/String;
    .end local v4    # "mName":Ljava/lang/String;
    :goto_5
    return-object v2

    .line 777
    .restart local v2    # "locationObject":Lorg/json/JSONObject;
    .restart local v3    # "mLastName":Ljava/lang/String;
    .restart local v4    # "mName":Ljava/lang/String;
    :cond_4
    const-string v6, "street"

    invoke-interface {p1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v6, "street"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/user/Regexp;->getFormat()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 778
    iget-object v8, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    const-string v6, "street"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/user/Regexp;->getMsg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 779
    const/4 v5, 0x0

    .line 780
    goto/16 :goto_0

    .line 781
    :cond_5
    iget-object v6, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "^[^{}]*$"

    invoke-virtual {v6, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 782
    iget-object v6, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 783
    const/4 v5, 0x0

    .line 784
    goto/16 :goto_0

    .line 786
    :cond_6
    iget-object v6, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 787
    const-string v6, "street"

    iget-object v8, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v8}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 844
    .end local v2    # "locationObject":Lorg/json/JSONObject;
    .end local v3    # "mLastName":Ljava/lang/String;
    .end local v4    # "mName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 845
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .end local v1    # "e":Lorg/json/JSONException;
    :cond_7
    move-object v2, v7

    .line 847
    goto :goto_5

    .line 796
    .restart local v2    # "locationObject":Lorg/json/JSONObject;
    .restart local v3    # "mLastName":Ljava/lang/String;
    .restart local v4    # "mName":Ljava/lang/String;
    :cond_8
    :try_start_1
    const-string v6, "house"

    invoke-interface {p1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mHouseNr:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v6, "house"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/user/Regexp;->getFormat()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 797
    iget-object v8, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mHouseNr:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    const-string v6, "house"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/user/Regexp;->getMsg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 798
    const/4 v5, 0x0

    .line 799
    goto/16 :goto_1

    .line 800
    :cond_9
    iget-object v6, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mHouseNr:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "^[^{}]*$"

    invoke-virtual {v6, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 801
    iget-object v6, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mHouseNr:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 802
    const/4 v5, 0x0

    .line 803
    goto/16 :goto_1

    .line 805
    :cond_a
    iget-object v6, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mHouseNr:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 806
    const-string v6, "number"

    iget-object v8, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mHouseNr:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v8}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 816
    :cond_b
    iget-object v6, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "^[^{}]*$"

    invoke-virtual {v6, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 817
    iget-object v6, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 818
    const/4 v5, 0x0

    .line 819
    goto/16 :goto_2

    .line 821
    :cond_c
    iget-object v6, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 828
    :cond_d
    const-string v6, "plz"

    iget-object v8, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v8}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getPlz()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_3

    .line 841
    :cond_e
    move-object v0, v2

    check-cast v0, Lorg/json/JSONObject;

    move-object v6, v0

    invoke-static {v6}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto/16 :goto_4
.end method

.method protected dismissLoadingIndicator()V
    .locals 1

    .prologue
    .line 858
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 861
    :cond_0
    return-void
.end method

.method protected handleNetworkError(Lcom/android/volley/VolleyError;)V
    .locals 11
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    const/4 v6, 0x0

    .line 901
    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->dismissLoadingIndicator()V

    .line 902
    const-class v4, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "handleNetworkError:"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    iget-object v4, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-nez v4, :cond_1

    .line 905
    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->no_internet:I

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 925
    :cond_0
    :goto_0
    return-void

    .line 906
    :cond_1
    instance-of v4, p1, Lcom/yopeso/lieferando/net/requests/base/ApiError;

    if-eqz v4, :cond_5

    move-object v0, p1

    .line 907
    check-cast v0, Lcom/yopeso/lieferando/net/requests/base/ApiError;

    .line 908
    .local v0, "apiError":Lcom/yopeso/lieferando/net/requests/base/ApiError;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/SettingsContent;->getErrorCodes()Ljava/util/Map;

    move-result-object v3

    .line 910
    .local v3, "errors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/yopeso/lieferando/net/requests/base/ApiError;->getErrorCodes()[I

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Lcom/yopeso/lieferando/net/requests/base/ApiError;->getErrorCodes()[I

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_4

    .line 911
    const-string v2, ""

    .line 912
    .local v2, "errorMsg":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/net/requests/base/ApiError;->getErrorCodes()[I

    move-result-object v7

    array-length v8, v7

    move v5, v6

    :goto_1
    if-lt v5, v8, :cond_2

    .line 918
    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 912
    :cond_2
    aget v1, v7, v5

    .line 913
    .local v1, "code":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 914
    new-instance v9, Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " \n"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 912
    :cond_3
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_1

    .line 919
    .end local v1    # "code":I
    .end local v2    # "errorMsg":Ljava/lang/String;
    :cond_4
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/net/requests/base/ApiError;->getErrorCodes()[I

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/net/requests/base/ApiError;->getErrorCodes()[I

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_0

    iget-object v4, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget v4, v4, Lcom/android/volley/NetworkResponse;->statusCode:I

    const/16 v5, 0x196

    if-ne v4, v5, :cond_0

    .line 920
    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->invalid_input:I

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 923
    .end local v0    # "apiError":Lcom/yopeso/lieferando/net/requests/base/ApiError;
    .end local v3    # "errors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->serverError:I

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/support/v4/app/LRDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 129
    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "restaurant_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    iput-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .line 130
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getDeliverAreas()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mDeliveryAreas:Ljava/util/List;

    .line 132
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x2

    .line 184
    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    sget v9, Lcom/yopeso/lieferando/R$layout;->delivery_area_dialog:I

    invoke-virtual {v8, v9, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 186
    .local v7, "view":Landroid/view/View;
    sget v8, Lcom/yopeso/lieferando/R$id;->UserDeliveryArea:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ListView;

    iput-object v8, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mUserDeliveryAreaList:Landroid/widget/ListView;

    .line 188
    const/4 v6, 0x0

    .line 189
    .local v6, "user":Lcom/yopeso/lieferando/model/user/UserData;
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 190
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v6

    .line 193
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v5, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/user/Location;>;"
    if-eqz v6, :cond_2

    iget-object v8, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mDeliveryAreas:Ljava/util/List;

    if-eqz v8, :cond_2

    .line 199
    iget-object v8, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mDeliveryAreas:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_5

    .line 207
    :cond_2
    iget-object v8, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mDeliveryAreas:Ljava/util/List;

    if-eqz v8, :cond_3

    .line 208
    invoke-direct {p0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->sortByPlz()V

    .line 211
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .local v0, "areas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 213
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v8

    invoke-interface {v8}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mDeliveryAreas:Ljava/util/List;

    if-eqz v8, :cond_4

    .line 214
    iget-object v8, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mDeliveryAreas:Ljava/util/List;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 217
    :cond_4
    new-instance v8, Lcom/yopeso/lieferando/adapters/UserDeliveryAreaAdapter;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-direct {v8, v9, v0, p0}, Lcom/yopeso/lieferando/adapters/UserDeliveryAreaAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/yopeso/lieferando/callback/DeliveryAreaAdapterCallBack;)V

    iput-object v8, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mUserDeliverAreaAdapter:Lcom/yopeso/lieferando/adapters/UserDeliveryAreaAdapter;

    .line 218
    iget-object v8, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mUserDeliveryAreaList:Landroid/widget/ListView;

    iget-object v9, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mUserDeliverAreaAdapter:Lcom/yopeso/lieferando/adapters/UserDeliveryAreaAdapter;

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 220
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v8

    invoke-interface {v8}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 222
    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v8

    invoke-static {v8}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v8

    iput-object v8, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 223
    sget v8, Lcom/yopeso/lieferando/R$id;->AddressCity:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iput-object v8, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    .line 224
    sget v8, Lcom/yopeso/lieferando/R$id;->AddressStreet:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iput-object v8, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    .line 225
    sget v8, Lcom/yopeso/lieferando/R$id;->AddressHauseNr:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iput-object v8, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mHouseNr:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    .line 227
    iget-object v8, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v8, v12}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setThreshold(I)V

    .line 228
    iget-object v8, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v8, v12}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setThreshold(I)V

    .line 232
    iget-object v8, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    new-instance v9, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$1;

    invoke-direct {v9, p0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$1;-><init>(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;)V

    invoke-virtual {v8, v9}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 286
    iget-object v8, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    new-instance v9, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$2;

    invoke-direct {v9, p0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$2;-><init>(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;)V

    invoke-virtual {v8, v9}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 298
    iget-object v8, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    new-instance v9, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$3;

    invoke-direct {v9, p0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$3;-><init>(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;)V

    invoke-virtual {v8, v9}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 314
    iget-object v8, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    new-instance v9, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$4;

    invoke-direct {v9, p0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$4;-><init>(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;)V

    invoke-virtual {v8, v9}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 364
    iget-object v8, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    new-instance v9, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$5;

    invoke-direct {v9, p0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$5;-><init>(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;)V

    invoke-virtual {v8, v9}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 375
    iget-object v8, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    new-instance v9, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$6;

    invoke-direct {v9, p0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$6;-><init>(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;)V

    invoke-virtual {v8, v9}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 390
    iget-object v8, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mHouseNr:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    new-instance v9, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$7;

    invoke-direct {v9, p0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$7;-><init>(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;)V

    invoke-virtual {v8, v9}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 458
    iget-object v8, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mHouseNr:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    new-instance v9, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$8;

    invoke-direct {v9, p0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$8;-><init>(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;)V

    invoke-virtual {v8, v9}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 469
    sget v8, Lcom/yopeso/lieferando/R$id;->addNewAddressRB:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->addressCB:Landroid/widget/CheckBox;

    .line 497
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 498
    sget v9, Lcom/yopeso/lieferando/R$string;->delivery_areas:I

    invoke-virtual {p0, v9}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 499
    invoke-virtual {v8, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 500
    sget v9, Lcom/yopeso/lieferando/R$string;->cancel_button_text:I

    new-instance v10, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$9;

    invoke-direct {v10, p0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$9;-><init>(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 505
    sget v9, Lcom/yopeso/lieferando/R$string;->ok_button_text:I

    invoke-virtual {v8, v9, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 506
    .local v1, "d":Landroid/app/AlertDialog;
    new-instance v8, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;

    invoke-direct {v8, p0, v1}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;-><init>(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    move-object v2, v1

    .line 560
    .end local v1    # "d":Landroid/app/AlertDialog;
    .local v2, "d":Landroid/app/AlertDialog;
    :goto_0
    return-object v2

    .line 199
    .end local v0    # "areas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v2    # "d":Landroid/app/AlertDialog;
    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;

    .line 200
    .local v3, "da":Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;
    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/user/UserData;->getLocations()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_6
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yopeso/lieferando/model/user/Location;

    .line 201
    .local v4, "loc":Lcom/yopeso/lieferando/model/user/Location;
    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;->getCityId()I

    move-result v10

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/Location;->getCityId()I

    move-result v11

    if-ne v10, v11, :cond_6

    .line 202
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 556
    .end local v3    # "da":Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;
    .end local v4    # "loc":Lcom/yopeso/lieferando/model/user/Location;
    .restart local v0    # "areas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_7
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 557
    sget v9, Lcom/yopeso/lieferando/R$string;->delivery_areas:I

    invoke-virtual {p0, v9}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 558
    invoke-virtual {v8, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 559
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .restart local v1    # "d":Landroid/app/AlertDialog;
    move-object v2, v1

    .line 560
    .end local v1    # "d":Landroid/app/AlertDialog;
    .restart local v2    # "d":Landroid/app/AlertDialog;
    goto :goto_0
.end method

.method public onDeliveryAreaSelected(Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;)V
    .locals 2
    .param p1, "da"    # Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;

    .prologue
    .line 711
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v0, p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->setDeliveryArea(Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;)V

    .line 712
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mCallback:Lcom/yopeso/lieferando/callback/DeliveryAreaCallBack;

    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-interface {v0, v1, p1}, Lcom/yopeso/lieferando/callback/DeliveryAreaCallBack;->onDeliveryAreaSelected(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;)V

    .line 713
    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->dismiss()V

    .line 714
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 703
    invoke-super {p0, p1}, Landroid/support/v4/app/LRDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 704
    return-void
.end method

.method public onLocationSelected(Lcom/yopeso/lieferando/model/LocationSuggestion;)V
    .locals 4
    .param p1, "ls"    # Lcom/yopeso/lieferando/model/LocationSuggestion;

    .prologue
    const/4 v3, 0x1

    .line 744
    const-class v0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onLocationSelected:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    iput-boolean v3, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mCityProvided:Z

    .line 746
    iput-object p1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    .line 747
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 748
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getCityId()I

    move-result v0

    if-lez v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getCityId()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mCityId:I

    .line 751
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v0, v3}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setEnabled(Z)V

    .line 752
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mHouseNr:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v0, v3}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setEnabled(Z)V

    .line 753
    iput-boolean v3, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->singleCity:Z

    .line 754
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->requestFocus()Z

    .line 761
    :goto_0
    return-void

    .line 757
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mHouseNr:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setEnabled(Z)V

    .line 758
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->requestFocus()Z

    .line 759
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v0, v3}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onLocationSelected(Lcom/yopeso/lieferando/model/user/Location;)V
    .locals 4
    .param p1, "loc"    # Lcom/yopeso/lieferando/model/user/Location;

    .prologue
    .line 721
    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mDeliveryAreas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 728
    return-void

    .line 721
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;

    .line 722
    .local v0, "da":Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;->getCityId()I

    move-result v2

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/Location;->getCityId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 723
    iget-object v2, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v2, v0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->setDeliveryArea(Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;)V

    .line 724
    iget-object v2, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mCallback:Lcom/yopeso/lieferando/callback/DeliveryAreaCallBack;

    iget-object v3, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-interface {v2, v3, p1}, Lcom/yopeso/lieferando/callback/DeliveryAreaCallBack;->onLocationSelected(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Lcom/yopeso/lieferando/model/user/Location;)V

    .line 725
    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->dismiss()V

    goto :goto_0
.end method

.method public onStreetSelected(Lcom/yopeso/lieferando/model/user/Street;)V
    .locals 3
    .param p1, "street"    # Lcom/yopeso/lieferando/model/user/Street;

    .prologue
    const/4 v2, 0x1

    .line 687
    iput-boolean v2, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mStreetProvided:Z

    .line 688
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/Street;->getStreet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->setStreetName(Ljava/lang/String;)V

    .line 689
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/Street;->getCityId()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mCityId:I

    .line 690
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/Street;->getRegExp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->setRegExp(Ljava/lang/String;)V

    .line 691
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getReqExp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/Street;->getPlz()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->setPlz(Ljava/lang/String;)V

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getStreetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 695
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mHouseNr:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v0, v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setEnabled(Z)V

    .line 696
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mHouseNr:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->requestFocus()Z

    .line 698
    return-void
.end method

.method public setCallback(Lcom/yopeso/lieferando/callback/DeliveryAreaCallBack;)V
    .locals 0
    .param p1, "callback"    # Lcom/yopeso/lieferando/callback/DeliveryAreaCallBack;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mCallback:Lcom/yopeso/lieferando/callback/DeliveryAreaCallBack;

    .line 136
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
    .line 673
    .local p1, "mSuggestions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/LocationSuggestion;>;"
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mLocationSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 674
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mLocationSuggestions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 675
    return-void
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
    .line 679
    .local p1, "mSuggestions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/user/Street;>;"
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mStreetSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 680
    if-eqz p1, :cond_0

    .line 681
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mStreetSuggestions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 683
    :cond_0
    return-void
.end method

.method protected showLoadingIndicator(I)V
    .locals 3
    .param p1, "res"    # I

    .prologue
    .line 851
    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 852
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 853
    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 854
    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 855
    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 856
    return-void
.end method

.method public showLocationSuggestions(Ljava/util/List;)V
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
    .line 657
    .local p1, "suggestions":Ljava/util/List;, "Ljava/util/List<Lcom/yopeso/lieferando/model/LocationSuggestion;>;"
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mLocationSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 658
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mLocationSuggestions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 659
    new-instance v0, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapterPL;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$layout;->auto_complete_item:I

    iget-object v3, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mLocationSuggestions:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapterPL;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/yopeso/lieferando/callback/LocationSuggestionCallback;)V

    iput-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mSearchSuggestionsAdapter:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    .line 660
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mSearchSuggestionsAdapter:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;->setNotifyOnChange(Z)V

    .line 661
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mSearchSuggestionsAdapter:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 662
    return-void
.end method
