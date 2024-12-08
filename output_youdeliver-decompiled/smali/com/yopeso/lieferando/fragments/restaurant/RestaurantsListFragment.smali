.class public Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;
.super Lcom/yopeso/lieferando/custom/LRFragment;
.source "RestaurantsListFragment.java"

# interfaces
.implements Lcom/yopeso/lieferando/callback/IRestaurantListCallback;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/yopeso/lieferando/callback/DeliveryAreaCallBack;
.implements Lcom/yopeso/lieferando/callback/LocationSuggestionCallback;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$DeliveryAreaListener;,
        Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$DiscountsListner;,
        Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$GoogleListener;,
        Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$LocationListener1;,
        Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$MyScaler;,
        Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$ProposeListener;,
        Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$RestaurantLoadedListener;,
        Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask;,
        Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$StampsListenerResume;,
        Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$StampsLoadedListener;,
        Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$StampsUserListener;
    }
.end annotation


# static fields
.field protected static final KEY_LIST_POSITION:Ljava/lang/String; = "list_position_key"

.field protected static final KEY_LOCATION:Ljava/lang/String; = "location_key"

.field private static final KEY_SHOW_REBATE_INFO_DIALOG:Ljava/lang/String; = "show_rebate_info_dialog_key"

.field public static final TAG:Ljava/lang/String; = "RestaurantsFragment"

.field public static cuisineFragmentSelected:Z

.field public static cuisineResetSelected:Z

.field public static cuisineSelected:Z

.field public static filterFragmentSelected:Z

.field public static filterSelected:Z

.field protected static mOrginalPadding:I

.field private static searchFilter:Ljava/lang/String;

.field public static sortFragmentSelected:Z


# instance fields
.field private final DISTANCE_IN_METERS:F

.field private final POSITION_FROM_THE_TOP:I

.field private animationStarted:Z

.field private closeFilterAnimation:Landroid/view/animation/Animation;

.field private closeHeaderAnimation:Landroid/view/animation/Animation;

.field private closeMapAnimation:Landroid/view/animation/Animation;

.field private closeSortAnimation:Landroid/view/animation/Animation;

.field private filterIV:Landroid/widget/ImageView;

.field private filterIV1:Landroid/widget/ImageView;

.field public filterIsUP:Z

.field private header_is_shown:Z

.field private loaded:Z

.field private mAZSort:Landroid/widget/RadioButton;

.field mActive:Z

.field private mAdapterIcons:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsDropdownIconsAdapter;

.field private mDeliveryCostSort:Landroid/widget/RadioButton;

.field private mDistSort:Landroid/widget/RadioButton;

.field private mFilterLL:Landroid/widget/LinearLayout;

.field private mFilterLL1:Landroid/widget/LinearLayout;

.field protected mFilterView:Landroid/view/ViewGroup;

.field protected mGpsCity:Ljava/lang/String;

.field protected mGpsUsed:Z

.field private mIndicator:Lcom/viewpagerindicator/TabPageIndicator;

.field private mIsLogosShow:Z

.field private mLieferserviceSort:Landroid/widget/RadioButton;

.field protected mListAdapter:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;

.field private mListFirstVisiblePos:I

.field private mLoadingIndicator:Landroid/widget/ProgressBar;

.field protected mLocateView:Lcom/yopeso/lieferando/view/LocateView;

.field protected mLocateView1:Lcom/yopeso/lieferando/view/LocateView;

.field protected mLocation:Lcom/yopeso/lieferando/model/LocationSuggestion;

.field protected mLocationListener:Landroid/location/LocationListener;

.field protected mLocationListener1:Landroid/location/LocationListener;

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

.field private mLogoAdapter:Lcom/yopeso/lieferando/adapters/restaurant/LogoRestaurantAdapter;

.field private mMap:Lcom/google/android/gms/maps/GoogleMap;

.field private mMapFragment:Lcom/google/android/gms/maps/SupportMapFragment;

.field private mMapLauout:Landroid/widget/LinearLayout;

.field private mMinOrderSort:Landroid/widget/RadioButton;

.field private mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mOuterSortingRL:Landroid/widget/RelativeLayout;

.field private mPager:Landroid/support/v4/view/ViewPager;

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

.field private mRestaurantsListView:Landroid/widget/ListView;

.field private mRestaurantsNumber:Landroid/widget/TextView;

.field private mRestaurantsNumber1:Landroid/widget/TextView;

.field private mReviewSort:Landroid/widget/RadioButton;

.field protected mSearchInput:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

.field protected mSearchInput1:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

.field protected mSearchSuggestionsAdapter:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

.field private mSearchView:Lcom/actionbarsherlock/widget/SearchView;

.field private mSerachText:Ljava/lang/String;

.field protected mSortingFilterView:Landroid/view/View;

.field private mStartPadding:I

.field private mStartY:F

.field protected mTopFilterLL:Landroid/widget/LinearLayout;

.field private mTopSortingRL:Landroid/widget/LinearLayout;

.field private mZASort:Landroid/widget/RadioButton;

.field private map_is_shown:Z

.field private mapsInfoWindowAdapter:Lcom/yopeso/lieferando/adapters/restaurant/MapsInfoWindowAdapter;

.field private myLocation:Lcom/google/android/gms/maps/model/LatLng;

.field private new_search:Z

.field private noRestaurantsTV:Landroid/widget/TextView;

.field private openFilterAnimation:Landroid/view/animation/Animation;

.field private openHeaderAnimation:Landroid/view/animation/Animation;

.field private openMapAnimation:Landroid/view/animation/Animation;

.field private openSortAnimation:Landroid/view/animation/Animation;

.field private setMarkersTask:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask;

.field private showRebateInfoDialog:Z

.field public sorting_shown:Z

.field private topHeaderRL:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 258
    const/4 v0, 0x0

    sput-object v0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->searchFilter:Ljava/lang/String;

    .line 260
    sput-boolean v1, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->sortFragmentSelected:Z

    .line 262
    sput-boolean v1, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->cuisineFragmentSelected:Z

    .line 264
    sput-boolean v1, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->cuisineResetSelected:Z

    .line 266
    sput-boolean v1, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->cuisineSelected:Z

    .line 268
    sput-boolean v1, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->filterFragmentSelected:Z

    .line 270
    const/4 v0, 0x1

    sput-boolean v0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->filterSelected:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 395
    invoke-direct {p0}, Lcom/yopeso/lieferando/custom/LRFragment;-><init>()V

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mRestaurants:Ljava/util/ArrayList;

    .line 158
    iput v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mListFirstVisiblePos:I

    .line 179
    const/16 v0, 0x1e

    iput v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->POSITION_FROM_THE_TOP:I

    .line 185
    iput-boolean v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->filterIsUP:Z

    .line 186
    iput-boolean v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->sorting_shown:Z

    .line 194
    iput-boolean v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mIsLogosShow:Z

    .line 195
    iput-boolean v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mActive:Z

    .line 196
    const/4 v0, 0x0

    iput v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mStartY:F

    .line 197
    iput v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mStartPadding:I

    .line 200
    iput-boolean v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->loaded:Z

    .line 227
    iput-boolean v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->animationStarted:Z

    .line 228
    iput-boolean v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->header_is_shown:Z

    .line 241
    iput-boolean v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mGpsUsed:Z

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLocationSuggestions:Ljava/util/List;

    .line 249
    iput-boolean v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->new_search:Z

    .line 250
    iput-boolean v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->map_is_shown:Z

    .line 251
    iput-boolean v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->showRebateInfoDialog:Z

    .line 255
    const v0, 0x466a6000    # 15000.0f

    iput v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->DISTANCE_IN_METERS:F

    .line 1512
    new-instance v0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;

    invoke-direct {v0, p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)V

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 396
    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLieferserviceSort:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$1(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mAZSort:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$10(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1880
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->setMarkers(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$11(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)V
    .locals 0

    .prologue
    .line 1868
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->filterRestaurantsByCriteria()V

    return-void
.end method

.method static synthetic access$12(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mRestaurantsListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$13(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mListFirstVisiblePos:I

    return v0
.end method

.method static synthetic access$14(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->dismissLoadingIndicator()V

    return-void
.end method

.method static synthetic access$15(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;Lcom/android/volley/VolleyError;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->handleNetworkError(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method static synthetic access$16(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$17(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;I)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->showLoadingIndicator(I)V

    return-void
.end method

.method static synthetic access$18(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)V
    .locals 0

    .prologue
    .line 1365
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->loadDiscountsFailedDialog()V

    return-void
.end method

.method static synthetic access$19(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1493
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->showLocationSuggestions(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$2(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mZASort:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$20(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1476
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->performRequest(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$21(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object v0
.end method

.method static synthetic access$22(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->myLocation:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method static synthetic access$23(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mMapLauout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$24(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Lcom/yopeso/lieferando/adapters/restaurant/LogoRestaurantAdapter;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLogoAdapter:Lcom/yopeso/lieferando/adapters/restaurant/LogoRestaurantAdapter;

    return-object v0
.end method

.method static synthetic access$25(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->topHeaderRL:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$26(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->myLocation:Lcom/google/android/gms/maps/model/LatLng;

    return-void
.end method

.method static synthetic access$27(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Z
    .locals 1

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->header_is_shown:Z

    return v0
.end method

.method static synthetic access$28(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->openHeaderAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$29(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;Z)V
    .locals 0

    .prologue
    .line 227
    iput-boolean p1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->animationStarted:Z

    return-void
.end method

.method static synthetic access$3(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mReviewSort:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$30(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;Z)V
    .locals 0

    .prologue
    .line 228
    iput-boolean p1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->header_is_shown:Z

    return-void
.end method

.method static synthetic access$31(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)V
    .locals 0

    .prologue
    .line 656
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->trackSort()V

    return-void
.end method

.method static synthetic access$32(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)V
    .locals 0

    .prologue
    .line 635
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->trackCuisine()V

    return-void
.end method

.method static synthetic access$33(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)V
    .locals 0

    .prologue
    .line 611
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->trackFilter()V

    return-void
.end method

.method static synthetic access$34()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    sget-object v0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->searchFilter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$35(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Z
    .locals 1

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->animationStarted:Z

    return v0
.end method

.method static synthetic access$36(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->closeHeaderAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$4(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mDeliveryCostSort:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$5(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mMinOrderSort:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$6(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mDistSort:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$7(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;Z)V
    .locals 0

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->loaded:Z

    return-void
.end method

.method static synthetic access$8(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;Z)V
    .locals 0

    .prologue
    .line 249
    iput-boolean p1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->new_search:Z

    return-void
.end method

.method static synthetic access$9(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->new_search:Z

    return v0
.end method

.method private filterRestaurantsByCriteria()V
    .locals 2

    .prologue
    .line 1869
    const-string v0, "RestaurantsFragment"

    const-string v1, "filterRestaurantsByCriteria -> started "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mListAdapter:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;

    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->performFiltering(Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;)V

    .line 1872
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->onRestaurantsLoaded()V

    .line 1873
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mListAdapter:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->restaurantsMarkerChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1874
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mListAdapter:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->getFilteredRestaurants()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->setMarkers(Ljava/util/ArrayList;)V

    .line 1877
    :cond_0
    return-void
.end method

.method private getCityFromLocation(Lcom/yopeso/lieferando/model/LocationSuggestion;)Ljava/lang/String;
    .locals 4
    .param p1, "l"    # Lcom/yopeso/lieferando/model/LocationSuggestion;

    .prologue
    .line 1311
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1312
    .local v0, "city":Ljava/lang/String;
    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1313
    .local v1, "index":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1314
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1317
    :goto_0
    return-object v2

    .line 1316
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1317
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private loadDiscountsFailedDialog()V
    .locals 4

    .prologue
    .line 1366
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1367
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1368
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v1, Lcom/yopeso/lieferando/R$string;->discount_load_fail:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1369
    sget v2, Lcom/yopeso/lieferando/R$string;->ok_button_text:I

    new-instance v3, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$24;

    invoke-direct {v3, p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$24;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1375
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1377
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method

.method public static newInstance(Lcom/yopeso/lieferando/model/LocationSuggestion;)Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;
    .locals 3
    .param p0, "location"    # Lcom/yopeso/lieferando/model/LocationSuggestion;

    .prologue
    .line 399
    new-instance v1, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-direct {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;-><init>()V

    .line 400
    .local v1, "frag":Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 401
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "location_key"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 402
    invoke-virtual {v1, v0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 403
    return-object v1
.end method

.method private performRequest(Ljava/lang/String;)V
    .locals 5
    .param p1, "plz"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1477
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1479
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/LocationRequestPremium;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/SettingsContent;->getmRestaurantIdsString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$LocationListener1;

    invoke-direct {v3, p0, v4}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$LocationListener1;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$LocationListener1;)V

    invoke-direct {v1, p1, v2, v3}, Lcom/yopeso/lieferando/net/requests/LocationRequestPremium;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 1485
    :goto_0
    return-void

    .line 1482
    :cond_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/LocationRequest;

    new-instance v2, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$LocationListener1;

    invoke-direct {v2, p0, v4}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$LocationListener1;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$LocationListener1;)V

    invoke-direct {v1, p1, v2}, Lcom/yopeso/lieferando/net/requests/LocationRequest;-><init>(Ljava/lang/String;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0
.end method

.method private setMarkers(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/Restaurant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "mRestaurants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Restaurant;>;"
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1882
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->setMarkersTask:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask;

    if-eqz v0, :cond_0

    .line 1883
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->setMarkersTask:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask;

    invoke-virtual {v0, v2}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask;->cancel(Z)Z

    .line 1884
    iput-object v3, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->setMarkersTask:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask;

    .line 1887
    :cond_0
    const-string v0, "RestaurantsFragment"

    const-string v1, "setMarkers -> started "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mapsInfoWindowAdapter:Lcom/yopeso/lieferando/adapters/restaurant/MapsInfoWindowAdapter;

    if-eqz v0, :cond_1

    .line 1889
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mapsInfoWindowAdapter:Lcom/yopeso/lieferando/adapters/restaurant/MapsInfoWindowAdapter;

    invoke-virtual {v0, p1}, Lcom/yopeso/lieferando/adapters/restaurant/MapsInfoWindowAdapter;->setRestaurants(Ljava/util/ArrayList;)V

    .line 1892
    new-instance v0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask;

    invoke-direct {v0, p0, v3}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask;)V

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->setMarkersTask:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask;

    .line 1893
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->setMarkersTask:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask;

    new-array v1, v2, [Ljava/util/ArrayList;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    instance-of v2, v0, Landroid/os/AsyncTask;

    if-nez v2, :cond_2

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1897
    :cond_1
    :goto_0
    return-void

    .line 1893
    :cond_2
    check-cast v0, Landroid/os/AsyncTask;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
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
    .line 1494
    .local p1, "suggestions":Ljava/util/List;, "Ljava/util/List<Lcom/yopeso/lieferando/model/LocationSuggestion;>;"
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLocationSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1495
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLocationSuggestions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1496
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1497
    new-instance v0, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$layout;->auto_complete_item:I

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLocationSuggestions:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/yopeso/lieferando/callback/LocationSuggestionCallback;)V

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mSearchSuggestionsAdapter:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    .line 1498
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mSearchSuggestionsAdapter:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;->setNotifyOnChange(Z)V

    .line 1499
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mSearchInput:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mSearchSuggestionsAdapter:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1500
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mSearchInput:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->showDropDown()V

    .line 1503
    :cond_0
    iget-boolean v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mGpsUsed:Z

    if-eqz v0, :cond_1

    .line 1504
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mGpsUsed:Z

    .line 1505
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mSearchSuggestionsAdapter:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mSearchInput:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 1507
    :cond_1
    return-void
.end method

.method private showRebateInfoDialog()V
    .locals 7

    .prologue
    .line 2285
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$layout;->rebates_info_dialog:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 2287
    .local v2, "dialogView":Landroid/view/View;
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v4

    invoke-interface {v4}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2288
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/SettingsContent;->isStampcardActive()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2290
    sget v4, Lcom/yopeso/lieferando/R$id;->StamCardsDialogView:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2293
    :cond_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/yopeso/lieferando/util/DeviceUtils;->isHoneycombTablet(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2294
    sget v4, Lcom/yopeso/lieferando/R$id;->rabates_SV:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x106000d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2300
    :goto_0
    sget v4, Lcom/yopeso/lieferando/R$id;->dontShowAgainCHB:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 2301
    .local v1, "checkbox":Landroid/widget/CheckBox;
    new-instance v4, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$34;

    invoke-direct {v4, p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$34;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)V

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2310
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2311
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->rebates_and_stempel_cards:I

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    new-instance v6, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$35;

    invoke-direct {v6, p0, v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$35;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2317
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 2318
    .local v3, "infoDialog":Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 2319
    return-void

    .line 2297
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "checkbox":Landroid/widget/CheckBox;
    .end local v3    # "infoDialog":Landroid/app/AlertDialog;
    :cond_1
    sget v4, Lcom/yopeso/lieferando/R$id;->rabates_SV:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x106000b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private trackCuisine()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 636
    sget-boolean v0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->cuisineFragmentSelected:Z

    if-eqz v0, :cond_2

    .line 637
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->isCategoryFilterEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 638
    sget-boolean v0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->cuisineResetSelected:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->cuisineSelected:Z

    if-eqz v0, :cond_3

    .line 639
    :cond_0
    const-string v0, "showAll"

    invoke-static {v0}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackCousine(Ljava/lang/String;)V

    .line 640
    sput-boolean v1, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->cuisineResetSelected:Z

    .line 652
    :cond_1
    :goto_0
    sput-boolean v1, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->cuisineFragmentSelected:Z

    .line 653
    sput-boolean v1, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->cuisineSelected:Z

    .line 655
    :cond_2
    return-void

    .line 643
    :cond_3
    const-string v0, "none"

    invoke-static {v0}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackCousine(Ljava/lang/String;)V

    goto :goto_0

    .line 647
    :cond_4
    sget-boolean v0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->cuisineSelected:Z

    if-eqz v0, :cond_1

    .line 649
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCathegoriesForTracking()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackCousine(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private trackFilter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 612
    sget-boolean v1, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->filterFragmentSelected:Z

    if-eqz v1, :cond_2

    .line 613
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getFilterForTracking()Ljava/lang/String;

    move-result-object v0

    .line 614
    .local v0, "filter":Ljava/lang/String;
    invoke-static {v0}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 615
    sget-boolean v1, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->cuisineResetSelected:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->filterSelected:Z

    if-eqz v1, :cond_3

    .line 616
    :cond_0
    const-string v1, "showAll"

    invoke-static {v1}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackFilter(Ljava/lang/String;)V

    .line 617
    sput-boolean v2, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->cuisineResetSelected:Z

    .line 629
    :cond_1
    :goto_0
    sput-boolean v2, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->filterFragmentSelected:Z

    .line 630
    sput-boolean v2, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->filterSelected:Z

    .line 632
    .end local v0    # "filter":Ljava/lang/String;
    :cond_2
    return-void

    .line 620
    .restart local v0    # "filter":Ljava/lang/String;
    :cond_3
    const-string v1, "none"

    invoke-static {v1}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackFilter(Ljava/lang/String;)V

    goto :goto_0

    .line 625
    :cond_4
    sget-boolean v1, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->filterSelected:Z

    if-eqz v1, :cond_1

    .line 626
    invoke-static {v0}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackFilter(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private trackSort()V
    .locals 2

    .prologue
    .line 658
    sget-boolean v0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->sortFragmentSelected:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v0

    sget-object v1, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->NONE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 659
    const-string v0, "none"

    invoke-static {v0}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackSorting(Ljava/lang/String;)V

    .line 660
    const/4 v0, 0x0

    sput-boolean v0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->sortFragmentSelected:Z

    .line 662
    :cond_0
    return-void
.end method

.method private validateLocationURL(Lcom/yopeso/lieferando/model/LocationSuggestion;)V
    .locals 6
    .param p1, "ls"    # Lcom/yopeso/lieferando/model/LocationSuggestion;

    .prologue
    .line 446
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getPlz()Ljava/lang/String;

    move-result-object v1

    .line 447
    .local v1, "plz":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getLocationUrl()Ljava/lang/String;

    move-result-object v2

    .line 448
    .local v2, "url":Ljava/lang/String;
    const-string v3, "RestaurantsFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "OLD url:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 451
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 452
    .local v0, "newUrl":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 453
    invoke-virtual {p1, v0}, Lcom/yopeso/lieferando/model/LocationSuggestion;->setLocationUrl(Ljava/lang/String;)V

    .line 454
    const-string v3, "RestaurantsFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "NEW url:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    .end local v0    # "newUrl":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method protected addRestaurantDetailsFragment()V
    .locals 3

    .prologue
    .line 2096
    sget v0, Lcom/yopeso/lieferando/R$id;->Content:I

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->newInstance(Z)Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;

    move-result-object v1

    const-string v2, "RestaurantDetailsFrag"

    invoke-virtual {p0, v0, v1, v2}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->addNewFragment(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 2097
    return-void
.end method

.method protected buildAlertCartNotEmpty(Lcom/yopeso/lieferando/model/LocationSuggestion;)V
    .locals 6
    .param p1, "ls"    # Lcom/yopeso/lieferando/model/LocationSuggestion;

    .prologue
    .line 1347
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    .line 1348
    .local v0, "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1349
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v2

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$22;

    invoke-direct {v4, p0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$22;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;Lcom/yopeso/lieferando/model/LocationSuggestion;)V

    .line 1355
    new-instance v5, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$23;

    invoke-direct {v5, p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$23;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)V

    .line 1349
    invoke-static {v2, v3, v4, v5}, Lcom/yopeso/lieferando/dialogs/CartNotEmptyDialog;->getDialog(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v1

    .line 1361
    .local v1, "cartDialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1363
    .end local v1    # "cartDialog":Landroid/app/AlertDialog;
    :cond_0
    return-void
.end method

.method protected checkDeliveryArea(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 3
    .param p1, "r"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 2017
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/DeliveryAreaRequest;

    new-instance v2, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$DeliveryAreaListener;

    invoke-direct {v2, p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$DeliveryAreaListener;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)V

    invoke-direct {v1, p1, v2}, Lcom/yopeso/lieferando/net/requests/DeliveryAreaRequest;-><init>(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 2018
    return-void
.end method

.method protected checkPreordering(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 6
    .param p1, "r"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    const/4 v5, 0x1

    .line 2033
    const-string v2, "RestaurantsFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checkPreordering started:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getmName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2035
    sget-object v2, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {p1, v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2036
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->goToRestaurant(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    .line 2083
    :goto_0
    return-void

    .line 2040
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2041
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v2, Lcom/yopeso/lieferando/R$string;->restaurant_closed_goto_menu:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 2042
    sget v3, Lcom/yopeso/lieferando/R$string;->yes:I

    new-instance v4, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$31;

    invoke-direct {v4, p0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$31;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 2049
    sget v3, Lcom/yopeso/lieferando/R$string;->no:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2050
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 2061
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_1
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getPreorderOffset()I

    move-result v2

    const/16 v3, 0x1c20

    if-lt v2, v3, :cond_2

    .line 2063
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$32;

    invoke-direct {v3, p0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$32;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    invoke-static {p1, v2, v5, v3}, Lcom/yopeso/lieferando/dialogs/PreOrderingDialog;->getDialog(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Landroid/content/Context;ZLandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v1

    .line 2069
    .local v1, "preorder":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 2070
    .end local v1    # "preorder":Landroid/app/AlertDialog;
    :cond_2
    sget-object v2, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {p1, v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2071
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->goToRestaurant(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    goto :goto_0

    .line 2074
    :cond_3
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$33;

    invoke-direct {v3, p0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$33;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    invoke-static {p1, v2, v3}, Lcom/yopeso/lieferando/dialogs/PreOrderingDialog;->getDialog(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v1

    .line 2080
    .restart local v1    # "preorder":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public closeFilter()V
    .locals 3

    .prologue
    .line 665
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mFilterView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$anim;->fade_out_menu:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 666
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mTopFilterLL:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->closeFilterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 668
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->trackSort()V

    .line 670
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->trackCuisine()V

    .line 672
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->trackFilter()V

    .line 674
    invoke-static {}, Lcom/yopeso/lieferando/util/TrackingUtils;->resetFilters()V

    .line 676
    return-void
.end method

.method public closeMap()V
    .locals 2

    .prologue
    .line 595
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->map_is_shown:Z

    .line 596
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mMapLauout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->closeMapAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 597
    return-void
.end method

.method public closeSorting()V
    .locals 3

    .prologue
    .line 690
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mOuterSortingRL:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$anim;->fade_out_menu:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 691
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mTopSortingRL:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->closeSortAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 693
    return-void
.end method

.method protected filterRestaurants(Ljava/lang/String;)V
    .locals 4
    .param p1, "filter"    # Ljava/lang/String;

    .prologue
    .line 2226
    const-string v1, "RestaurantsFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Filter restaurant : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2229
    :try_start_0
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mRestaurantsListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    instance-of v1, v1, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mIsLogosShow:Z

    if-nez v1, :cond_1

    .line 2230
    :cond_0
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mListAdapter:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;

    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->setMatching(Ljava/lang/String;)Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->performFiltering(Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;)V

    .line 2232
    :cond_1
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mRestaurantsListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    instance-of v1, v1, Lcom/yopeso/lieferando/adapters/restaurant/LogoRestaurantAdapter;

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mIsLogosShow:Z

    if-eqz v1, :cond_3

    .line 2233
    :cond_2
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLogoAdapter:Lcom/yopeso/lieferando/adapters/restaurant/LogoRestaurantAdapter;

    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->setMatching(Ljava/lang/String;)Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/adapters/restaurant/LogoRestaurantAdapter;->performFiltering(Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;)V

    .line 2236
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_4

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mListAdapter:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 2237
    sput-object p1, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->searchFilter:Ljava/lang/String;

    .line 2239
    :cond_4
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->onRestaurantsLoaded()V

    .line 2240
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mListAdapter:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->restaurantsMarkerChanged()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2241
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mListAdapter:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->getFilteredRestaurants()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->setMarkers(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2248
    :cond_5
    :goto_0
    return-void

    .line 2245
    :catch_0
    move-exception v0

    .line 2246
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method protected getWSPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2184
    const-string v0, "/get_service"

    return-object v0
.end method

.method protected goToRestaurant(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 3
    .param p1, "r"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 2086
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    .line 2087
    .local v0, "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v1

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 2088
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->clear()V

    .line 2090
    :cond_0
    invoke-virtual {v0, p1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setRestaurant(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    .line 2091
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->addRestaurantDetailsFragment()V

    .line 2092
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->showHideLogoActionbar(Z)V

    .line 2093
    return-void
.end method

.method public isFilterUp()Z
    .locals 1

    .prologue
    .line 684
    iget-boolean v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->filterIsUP:Z

    return v0
.end method

.method public isMapShown()Z
    .locals 1

    .prologue
    .line 609
    iget-boolean v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->map_is_shown:Z

    return v0
.end method

.method public isSortingShown()Z
    .locals 1

    .prologue
    .line 687
    iget-boolean v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->sorting_shown:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1322
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/yopeso/lieferando/R$id;->LocateView:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/yopeso/lieferando/R$id;->LocateView1:I

    if-ne v0, v1, :cond_1

    .line 1323
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1324
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->buildAlertMessageNoGps()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1343
    :cond_1
    :goto_0
    return-void

    .line 1326
    :cond_2
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/util/DeviceUtils;->isHoneycombTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1327
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLocateView:Lcom/yopeso/lieferando/view/LocateView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/LocateView;->startAnimation(Z)V

    .line 1332
    :goto_1
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLocateView:Lcom/yopeso/lieferando/view/LocateView;

    invoke-virtual {v0, v5}, Lcom/yopeso/lieferando/view/LocateView;->setEnabled(Z)V

    .line 1334
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1335
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLocationListener1:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 1338
    :cond_3
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    const-string v1, "gps"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1339
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLocationListener1:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_0

    .line 1329
    :cond_4
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLocateView:Lcom/yopeso/lieferando/view/LocateView;

    invoke-virtual {v0, v5}, Lcom/yopeso/lieferando/view/LocateView;->startAnimation(Z)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 416
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/LRFragment;->onCreate(Landroid/os/Bundle;)V

    .line 417
    const-string v0, "restaurantList"

    invoke-static {v0}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackView(Ljava/lang/String;)V

    .line 418
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->setHasOptionsMenu(Z)V

    .line 419
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "location_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/LocationSuggestion;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLocation:Lcom/yopeso/lieferando/model/LocationSuggestion;

    .line 420
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLocation:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-direct {p0, v0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->validateLocationURL(Lcom/yopeso/lieferando/model/LocationSuggestion;)V

    .line 423
    :cond_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLocationManager:Landroid/location/LocationManager;

    .line 424
    new-instance v0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$2;

    invoke-direct {v0, p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$2;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)V

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLocationListener:Landroid/location/LocationListener;

    .line 439
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 461
    invoke-super {p0, p1, p2}, Lcom/yopeso/lieferando/custom/LRFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V

    .line 462
    sget v2, Lcom/yopeso/lieferando/R$menu;->rest_list_menu:I

    invoke-virtual {p2, v2, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 463
    sget v2, Lcom/yopeso/lieferando/R$id;->menu_search:I

    invoke-interface {p1, v2}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 464
    sget v2, Lcom/yopeso/lieferando/R$id;->menu_search:I

    invoke-interface {p1, v2}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/actionbarsherlock/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/actionbarsherlock/widget/SearchView;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mSearchView:Lcom/actionbarsherlock/widget/SearchView;

    .line 465
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mSearchView:Lcom/actionbarsherlock/widget/SearchView;

    new-instance v3, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$3;

    invoke-direct {v3, p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$3;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)V

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/widget/SearchView;->setOnQueryTextListener(Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;)V

    .line 505
    sget v2, Lcom/yopeso/lieferando/R$id;->menu_search:I

    invoke-interface {p1, v2}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    new-instance v3, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$4;

    invoke-direct {v3, p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$4;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)V

    invoke-interface {v2, v3}, Lcom/actionbarsherlock/view/MenuItem;->setOnActionExpandListener(Lcom/actionbarsherlock/view/MenuItem$OnActionExpandListener;)Lcom/actionbarsherlock/view/MenuItem;

    .line 524
    :cond_0
    sget v2, Lcom/yopeso/lieferando/R$id;->menu_search:I

    invoke-interface {p1, v2}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/actionbarsherlock/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/widget/SearchView;

    .line 525
    .local v1, "searchView":Lcom/actionbarsherlock/widget/SearchView;
    sget v2, Lcom/yopeso/lieferando/R$id;->abs__search_plate:I

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 526
    .local v0, "searchPlate":Landroid/view/View;
    sget v2, Lcom/yopeso/lieferando/R$drawable;->search_menu_line_bg:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 528
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 14
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 715
    sget v1, Lcom/yopeso/lieferando/R$layout;->restaurants_list_fragment:I

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {p1, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    .line 717
    .local v13, "view":Landroid/view/View;
    if-eqz p3, :cond_0

    .line 718
    const-string v1, "list_position_key"

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mListFirstVisiblePos:I

    .line 720
    :cond_0
    sget v1, Lcom/yopeso/lieferando/R$id;->RestaurantsListView:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mRestaurantsListView:Landroid/widget/ListView;

    .line 721
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mRestaurantsListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 724
    new-instance v11, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v11, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 725
    .local v11, "padding":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v9, v1, Landroid/util/DisplayMetrics;->density:F

    .line 726
    .local v9, "mDensity":F
    const/high16 v1, 0x421c0000    # 39.0f

    mul-float/2addr v1, v9

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v8, v1

    .line 727
    .local v8, "height":I
    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setHeight(I)V

    .line 728
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mRestaurantsListView:Landroid/widget/ListView;

    invoke-virtual {v1, v11}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 742
    sget v1, Lcom/yopeso/lieferando/R$id;->pager:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mPager:Landroid/support/v4/view/ViewPager;

    .line 743
    new-instance v1, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsDropdownIconsAdapter;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsDropdownIconsAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mAdapterIcons:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsDropdownIconsAdapter;

    .line 744
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mAdapterIcons:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsDropdownIconsAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 755
    sget v1, Lcom/yopeso/lieferando/R$id;->indicator:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/viewpagerindicator/TabPageIndicator;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mIndicator:Lcom/viewpagerindicator/TabPageIndicator;

    .line 756
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mIndicator:Lcom/viewpagerindicator/TabPageIndicator;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2}, Lcom/viewpagerindicator/TabPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 757
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mIndicator:Lcom/viewpagerindicator/TabPageIndicator;

    new-instance v2, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$5;

    invoke-direct {v2, p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$5;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)V

    invoke-virtual {v1, v2}, Lcom/viewpagerindicator/TabPageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 789
    sget v1, Lcom/yopeso/lieferando/R$id;->LoadingRestaurantsProgress:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    .line 790
    new-instance v1, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$layout;->restaurant_list_item:I

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mRestaurants:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v6

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Lcom/yopeso/lieferando/callback/IRestaurantListCallback;Lcom/android/volley/RequestQueue;)V

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mListAdapter:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;

    .line 791
    new-instance v1, Lcom/yopeso/lieferando/adapters/restaurant/LogoRestaurantAdapter;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$layout;->restaurant_list_item:I

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mRestaurants:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v6

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lcom/yopeso/lieferando/adapters/restaurant/LogoRestaurantAdapter;-><init>(Landroid/app/Activity;ILjava/util/ArrayList;Lcom/yopeso/lieferando/callback/IRestaurantListCallback;Lcom/android/volley/RequestQueue;)V

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLogoAdapter:Lcom/yopeso/lieferando/adapters/restaurant/LogoRestaurantAdapter;

    .line 792
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mRestaurantsListView:Landroid/widget/ListView;

    iget-boolean v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mIsLogosShow:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLogoAdapter:Lcom/yopeso/lieferando/adapters/restaurant/LogoRestaurantAdapter;

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 794
    sget v1, Lcom/yopeso/lieferando/R$id;->FilterHeader:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->topHeaderRL:Landroid/widget/RelativeLayout;

    .line 795
    sget v1, Lcom/yopeso/lieferando/R$id;->ListDescription:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mRestaurantsNumber:Landroid/widget/TextView;

    .line 796
    sget v1, Lcom/yopeso/lieferando/R$id;->ListDescription1:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mRestaurantsNumber1:Landroid/widget/TextView;

    .line 798
    sget v1, Lcom/yopeso/lieferando/R$id;->RestaurantListIndicator:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mFilterView:Landroid/view/ViewGroup;

    .line 799
    sget v1, Lcom/yopeso/lieferando/R$id;->topFilterLL:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mTopFilterLL:Landroid/widget/LinearLayout;

    .line 802
    sget v1, Lcom/yopeso/lieferando/R$id;->FilterLL:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mFilterLL:Landroid/widget/LinearLayout;

    .line 803
    sget v1, Lcom/yopeso/lieferando/R$id;->FilterLL1:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mFilterLL1:Landroid/widget/LinearLayout;

    .line 806
    new-instance v10, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$6;

    invoke-direct {v10, p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$6;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)V

    .line 829
    .local v10, "onClickListenerFilter":Landroid/view/View$OnClickListener;
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mFilterLL:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 830
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mFilterLL1:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 856
    sget v1, Lcom/yopeso/lieferando/R$id;->SortingMenuLayout:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mSortingFilterView:Landroid/view/View;

    .line 857
    sget v1, Lcom/yopeso/lieferando/R$id;->lieferservice_sorting:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLieferserviceSort:Landroid/widget/RadioButton;

    .line 858
    sget v1, Lcom/yopeso/lieferando/R$id;->az_sorting:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mAZSort:Landroid/widget/RadioButton;

    .line 859
    sget v1, Lcom/yopeso/lieferando/R$id;->za_sorting:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mZASort:Landroid/widget/RadioButton;

    .line 860
    sget v1, Lcom/yopeso/lieferando/R$id;->reviews:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mReviewSort:Landroid/widget/RadioButton;

    .line 861
    sget v1, Lcom/yopeso/lieferando/R$id;->delivery_sort:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mDeliveryCostSort:Landroid/widget/RadioButton;

    .line 862
    sget v1, Lcom/yopeso/lieferando/R$id;->minorder_sort:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mMinOrderSort:Landroid/widget/RadioButton;

    .line 863
    sget v1, Lcom/yopeso/lieferando/R$id;->distance:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mDistSort:Landroid/widget/RadioButton;

    .line 864
    sget v1, Lcom/yopeso/lieferando/R$id;->outerSortingRL:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mOuterSortingRL:Landroid/widget/RelativeLayout;

    .line 865
    sget v1, Lcom/yopeso/lieferando/R$id;->InnerSortingRL:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mTopSortingRL:Landroid/widget/LinearLayout;

    .line 867
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLieferserviceSort:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 868
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mAZSort:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 869
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mZASort:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 870
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mReviewSort:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 871
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mDeliveryCostSort:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 872
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mMinOrderSort:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 873
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mDistSort:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 875
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$anim;->view_push_up:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->closeFilterAnimation:Landroid/view/animation/Animation;

    .line 876
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->closeFilterAnimation:Landroid/view/animation/Animation;

    new-instance v2, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$7;

    invoke-direct {v2, p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$7;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 894
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$anim;->view_push_down:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->openFilterAnimation:Landroid/view/animation/Animation;

    .line 895
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->openFilterAnimation:Landroid/view/animation/Animation;

    new-instance v2, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$8;

    invoke-direct {v2, p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$8;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 911
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$anim;->view_push_up:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->closeSortAnimation:Landroid/view/animation/Animation;

    .line 912
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->closeSortAnimation:Landroid/view/animation/Animation;

    new-instance v2, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$9;

    invoke-direct {v2, p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$9;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 928
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$anim;->view_push_down:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->openSortAnimation:Landroid/view/animation/Animation;

    .line 929
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->openSortAnimation:Landroid/view/animation/Animation;

    new-instance v2, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$10;

    invoke-direct {v2, p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$10;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 951
    sget v1, Lcom/yopeso/lieferando/R$id;->NoRestaurantsTV:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->noRestaurantsTV:Landroid/widget/TextView;

    .line 952
    new-instance v1, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$11;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$11;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)V

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLocationListener1:Landroid/location/LocationListener;

    .line 974
    sget v1, Lcom/yopeso/lieferando/R$id;->filterIV:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->filterIV:Landroid/widget/ImageView;

    .line 975
    sget v1, Lcom/yopeso/lieferando/R$id;->filterIV1:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->filterIV1:Landroid/widget/ImageView;

    .line 976
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->filterIV:Landroid/widget/ImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 977
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->filterIV1:Landroid/widget/ImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1001
    sget v1, Lcom/yopeso/lieferando/R$id;->SearchView:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mSearchInput:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    .line 1002
    sget v1, Lcom/yopeso/lieferando/R$id;->SearchView1:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mSearchInput1:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    .line 1003
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mSearchInput:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLocation:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getPlz()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLocation:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-direct {p0, v3}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getCityFromLocation(Lcom/yopeso/lieferando/model/LocationSuggestion;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1004
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mSearchInput1:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLocation:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getPlz()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLocation:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-direct {p0, v3}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getCityFromLocation(Lcom/yopeso/lieferando/model/LocationSuggestion;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1006
    sget v1, Lcom/yopeso/lieferando/R$id;->LocateView:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/view/LocateView;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLocateView:Lcom/yopeso/lieferando/view/LocateView;

    .line 1007
    sget v1, Lcom/yopeso/lieferando/R$id;->LocateView1:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/view/LocateView;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLocateView1:Lcom/yopeso/lieferando/view/LocateView;

    .line 1008
    sget v1, Lcom/yopeso/lieferando/R$id;->mapLayout:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mMapLauout:Landroid/widget/LinearLayout;

    .line 1010
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$id;->map:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/SupportMapFragment;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mMapFragment:Lcom/google/android/gms/maps/SupportMapFragment;

    .line 1011
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mMapFragment:Lcom/google/android/gms/maps/SupportMapFragment;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/SupportMapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 1012
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v1, :cond_1

    .line 1013
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 1014
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v2, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$12;

    invoke-direct {v2, p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$12;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->setOnMyLocationChangeListener(Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;)V

    .line 1030
    new-instance v1, Lcom/yopeso/lieferando/adapters/restaurant/MapsInfoWindowAdapter;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mRestaurants:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3}, Lcom/yopeso/lieferando/adapters/restaurant/MapsInfoWindowAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mapsInfoWindowAdapter:Lcom/yopeso/lieferando/adapters/restaurant/MapsInfoWindowAdapter;

    .line 1031
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mapsInfoWindowAdapter:Lcom/yopeso/lieferando/adapters/restaurant/MapsInfoWindowAdapter;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->setInfoWindowAdapter(Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;)V

    .line 1032
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v2, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$13;

    invoke-direct {v2, p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$13;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->setOnInfoWindowClickListener(Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;)V

    .line 1049
    :cond_1
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/yopeso/lieferando/util/DeviceUtils;->isHoneycombTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1050
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLocateView:Lcom/yopeso/lieferando/view/LocateView;

    sget v2, Lcom/yopeso/lieferando/R$drawable;->location_found:I

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/view/LocateView;->setImageResource(I)V

    .line 1051
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLocateView1:Lcom/yopeso/lieferando/view/LocateView;

    sget v2, Lcom/yopeso/lieferando/R$drawable;->location_found:I

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/view/LocateView;->setImageResource(I)V

    .line 1053
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->filterIV:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1056
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mSearchInput:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setEms(I)V

    .line 1057
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mSearchInput1:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setEms(I)V

    .line 1060
    :cond_2
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLocateView:Lcom/yopeso/lieferando/view/LocateView;

    invoke-virtual {v1, p0}, Lcom/yopeso/lieferando/view/LocateView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1063
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mSearchInput:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setThreshold(I)V

    .line 1065
    new-instance v12, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$14;

    invoke-direct {v12, p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$14;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)V

    .line 1093
    .local v12, "tw":Landroid/text/TextWatcher;
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mSearchInput:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v1, v12}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1096
    new-instance v7, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$15;

    invoke-direct {v7, p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$15;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)V

    .line 1107
    .local v7, "focusListner":Landroid/view/View$OnFocusChangeListener;
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mSearchInput:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v1, v7}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1109
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mSearchInput:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    new-instance v2, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$16;

    invoke-direct {v2, p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$16;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)V

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1126
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$anim;->flip_in:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->openMapAnimation:Landroid/view/animation/Animation;

    .line 1127
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->openMapAnimation:Landroid/view/animation/Animation;

    new-instance v2, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$17;

    invoke-direct {v2, p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$17;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1150
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$anim;->flip_in:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->closeMapAnimation:Landroid/view/animation/Animation;

    .line 1151
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->closeMapAnimation:Landroid/view/animation/Animation;

    new-instance v2, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$18;

    invoke-direct {v2, p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$18;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1173
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$anim;->view_push_down:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->openHeaderAnimation:Landroid/view/animation/Animation;

    .line 1174
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->openHeaderAnimation:Landroid/view/animation/Animation;

    new-instance v2, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$19;

    invoke-direct {v2, p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$19;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1194
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$anim;->view_push_up:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->closeHeaderAnimation:Landroid/view/animation/Animation;

    .line 1195
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->closeHeaderAnimation:Landroid/view/animation/Animation;

    new-instance v2, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$20;

    invoke-direct {v2, p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$20;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1216
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mRestaurantsListView:Landroid/widget/ListView;

    new-instance v2, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$21;

    invoke-direct {v2, p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$21;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1265
    return-object v13

    .line 792
    .end local v7    # "focusListner":Landroid/view/View$OnFocusChangeListener;
    .end local v10    # "onClickListenerFilter":Landroid/view/View$OnClickListener;
    .end local v12    # "tw":Landroid/text/TextWatcher;
    :cond_3
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mListAdapter:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;

    goto/16 :goto_0
.end method

.method public onDeliveryAreaSelected(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;)V
    .locals 1
    .param p1, "r"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    .param p2, "da"    # Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;

    .prologue
    .line 2022
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setDeliveryArea(Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;)V

    .line 2023
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->checkPreordering(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    .line 2024
    return-void
.end method

.method public onDestroyView()V
    .locals 4

    .prologue
    .line 702
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onDestroyView()V

    .line 703
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->map:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 705
    .local v1, "fr":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_0

    .line 706
    :try_start_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 711
    :cond_0
    :goto_0
    return-void

    .line 708
    :catch_0
    move-exception v0

    .line 709
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onEvent(Lcom/yopeso/lieferando/events/AuthenticationEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/yopeso/lieferando/events/AuthenticationEvent;

    .prologue
    .line 1859
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mListAdapter:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->notifyDataSetChanged()V

    .line 1860
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLogoAdapter:Lcom/yopeso/lieferando/adapters/restaurant/LogoRestaurantAdapter;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/adapters/restaurant/LogoRestaurantAdapter;->notifyDataSetChanged()V

    .line 1861
    return-void
.end method

.method public onEvent(Lcom/yopeso/lieferando/events/FilterEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/yopeso/lieferando/events/FilterEvent;

    .prologue
    .line 1864
    const-string v0, "RestaurantsFragment"

    const-string v1, "onEvent -> filterRestaurantsByCriteria started "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->filterRestaurantsByCriteria()V

    .line 1866
    return-void
.end method

.method public onLocationSelected(Lcom/yopeso/lieferando/model/LocationSuggestion;)V
    .locals 3
    .param p1, "ls"    # Lcom/yopeso/lieferando/model/LocationSuggestion;

    .prologue
    .line 1388
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mRestaurants:Ljava/util/ArrayList;

    .line 1389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mRestaurants:Ljava/util/ArrayList;

    .line 1390
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mListAdapter:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mRestaurants:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->setRestaurants(Ljava/util/ArrayList;)V

    .line 1392
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mListAdapter:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->notifyDataSetChanged()V

    .line 1395
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mSearchInput:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getPlz()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getCityFromLocation(Lcom/yopeso/lieferando/model/LocationSuggestion;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1396
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mSearchInput:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->clearFocus()V

    .line 1397
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mSearchInput1:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getPlz()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getCityFromLocation(Lcom/yopeso/lieferando/model/LocationSuggestion;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1398
    const-string v0, "RestaurantsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onLocationSelected:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getPlz()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getCityFromLocation(Lcom/yopeso/lieferando/model/LocationSuggestion;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->showRestaurantsForSuggestion(Lcom/yopeso/lieferando/model/LocationSuggestion;)V

    .line 1401
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getPlz()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getCityId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackDynamiczipcode(Ljava/lang/String;I)V

    .line 1402
    return-void
.end method

.method public onLocationSelected(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Lcom/yopeso/lieferando/model/user/Location;)V
    .locals 1
    .param p1, "r"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    .param p2, "loc"    # Lcom/yopeso/lieferando/model/user/Location;

    .prologue
    .line 2028
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setDeliveryAddress(Lcom/yopeso/lieferando/model/user/Location;)V

    .line 2029
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->checkPreordering(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    .line 2030
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 532
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    .line 535
    .local v0, "itemId":I
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 537
    sget v1, Lcom/yopeso/lieferando/R$id;->display_category:I

    if-ne v0, v1, :cond_0

    .line 539
    iget-boolean v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->sorting_shown:Z

    if-eqz v1, :cond_1

    .line 540
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->closeSorting()V

    .line 589
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 543
    :cond_1
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->openSorting()V

    .line 544
    iget-boolean v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->filterIsUP:Z

    if-nez v1, :cond_0

    .line 546
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->closeFilter()V

    goto :goto_0

    .line 552
    :cond_2
    sget v1, Lcom/yopeso/lieferando/R$id;->display_category:I

    if-ne v0, v1, :cond_0

    .line 553
    iget-boolean v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->map_is_shown:Z

    if-nez v1, :cond_3

    .line 555
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->openMap()V

    goto :goto_0

    .line 560
    :cond_3
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->closeMap()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1768
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onPause()V

    .line 1769
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mRestaurantsListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mListFirstVisiblePos:I

    .line 1770
    return-void
.end method

.method public onProposeClick()V
    .locals 2

    .prologue
    .line 1762
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->showHideLogoActionbar(Z)V

    .line 1763
    sget v0, Lcom/yopeso/lieferando/R$id;->Content:I

    new-instance v1, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;

    invoke-direct {v1}, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->addNewFragment(ILandroid/support/v4/app/Fragment;)V

    .line 1764
    return-void
.end method

.method public onProposeClickNew(Ljava/lang/String;)V
    .locals 4
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 2446
    sget v0, Lcom/yopeso/lieferando/R$string;->pleaseWait:I

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->showLoadingIndicator(I)V

    .line 2447
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/ProposeRestaurantRequest;

    new-instance v2, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$ProposeListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$ProposeListener;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$ProposeListener;)V

    invoke-direct {v1, p1, v2}, Lcom/yopeso/lieferando/net/requests/ProposeRestaurantRequest;-><init>(Ljava/lang/String;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 2448
    return-void
.end method

.method public onRestaurantRatingClick(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 3
    .param p1, "r"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 1901
    const-string v0, "RestaurantsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Show rating for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    return-void
.end method

.method public onRestaurantSelected(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 9
    .param p1, "r"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    const/4 v8, 0x0

    .line 1907
    sget-object v4, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->searchFilter:Ljava/lang/String;

    invoke-static {v4}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackSearchRestaurant(Ljava/lang/String;)V

    .line 1909
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->trackSort()V

    .line 1911
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->trackCuisine()V

    .line 1913
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->trackFilter()V

    .line 1929
    invoke-static {}, Lcom/yopeso/lieferando/util/TrackingUtils;->resetFilters()V

    .line 1932
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/yopeso/lieferando/util/TrackingUtils;->restaurantSelectedKahuna(Ljava/lang/String;Ljava/lang/String;)V

    .line 1933
    invoke-static {}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->deleySelection()Z

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->filterIsUP:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->sorting_shown:Z

    if-nez v4, :cond_0

    .line 1934
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sput-wide v4, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLastClickTime:J

    .line 1936
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v4

    invoke-interface {v4}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1938
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v4

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v5

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1941
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->printer_offline_msg:I

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1942
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1943
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v4, Lcom/yopeso/lieferando/R$string;->restaurant_closed_goto_menu:I

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 1944
    sget v5, Lcom/yopeso/lieferando/R$string;->yes:I

    new-instance v6, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$26;

    invoke-direct {v6, p0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$26;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 1951
    sget v5, Lcom/yopeso/lieferando/R$string;->no:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1952
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 2004
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->filterIsUP:Z

    if-nez v4, :cond_1

    .line 2006
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->closeFilter()V

    .line 2008
    :cond_1
    iget-boolean v4, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->sorting_shown:Z

    if-eqz v4, :cond_2

    .line 2010
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->closeSorting()V

    .line 2012
    :cond_2
    iput-boolean v8, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->map_is_shown:Z

    .line 2014
    return-void

    .line 1959
    :cond_3
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v1

    .line 1960
    .local v1, "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v4

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v5

    if-eq v4, v5, :cond_4

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1961
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v4

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    new-instance v6, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$27;

    invoke-direct {v6, p0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$27;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    .line 1967
    new-instance v7, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$28;

    invoke-direct {v7, p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$28;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)V

    .line 1961
    invoke-static {v4, v5, v6, v7}, Lcom/yopeso/lieferando/dialogs/CartNotEmptyDialog;->getDialog(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v2

    .line 1973
    .local v2, "cartDialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 1975
    .end local v2    # "cartDialog":Landroid/app/AlertDialog;
    :cond_4
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->checkDeliveryArea(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    goto :goto_0

    .line 1979
    .end local v1    # "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    :cond_5
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v4

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v5

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1980
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->printer_offline_msg:I

    invoke-static {v4, v5}, Lcom/yopeso/lieferando/dialogs/SingleOptionInfoDialog;->getDialog(Landroid/content/Context;I)Landroid/app/AlertDialog;

    move-result-object v3

    .line 1981
    .local v3, "offline":Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 1983
    .end local v3    # "offline":Landroid/app/AlertDialog;
    :cond_6
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v1

    .line 1984
    .restart local v1    # "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v4

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v5

    if-eq v4, v5, :cond_7

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1985
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v4

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    new-instance v6, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$29;

    invoke-direct {v6, p0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$29;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    .line 1991
    new-instance v7, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$30;

    invoke-direct {v7, p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$30;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)V

    .line 1985
    invoke-static {v4, v5, v6, v7}, Lcom/yopeso/lieferando/dialogs/CartNotEmptyDialog;->getDialog(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v2

    .line 1997
    .restart local v2    # "cartDialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1999
    .end local v2    # "cartDialog":Landroid/app/AlertDialog;
    :cond_7
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->checkDeliveryArea(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    goto/16 :goto_0
.end method

.method protected onRestaurantsLoaded()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2101
    const-string v5, "RestaurantsFragment"

    const-string v6, "onRestaurantsLoaded started "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2102
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v5

    invoke-interface {v5}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2103
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mRestaurants:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2104
    .local v2, "size":I
    rem-int/lit8 v3, v2, 0xa

    .line 2106
    .local v3, "sizeLastDigit":I
    if-ne v2, v10, :cond_2

    .line 2107
    sget v4, Lcom/yopeso/lieferando/R$string;->restaurant_list_count:I

    .line 2122
    .end local v2    # "size":I
    .end local v3    # "sizeLastDigit":I
    .local v4, "stringId":I
    :goto_0
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLocation:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mRestaurants:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 2123
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mRestaurants:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getZipCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mRestaurants:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getCity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2128
    .local v1, "locationName":Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mListAdapter:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2129
    .local v0, "count":I
    iget-boolean v5, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->loaded:Z

    if-eqz v5, :cond_0

    .line 2130
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mRestaurantsNumber:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    aput-object v1, v7, v10

    invoke-virtual {v6, v4, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2131
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mRestaurantsNumber1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    aput-object v1, v7, v10

    invoke-virtual {v6, v4, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2140
    :cond_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "show_rebate_info_dialog_key"

    invoke-interface {v5, v6, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->showRebateInfoDialog:Z

    if-eqz v5, :cond_1

    .line 2141
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->showRebateInfoDialog()V

    .line 2142
    iput-boolean v9, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->showRebateInfoDialog:Z

    .line 2145
    :cond_1
    if-nez v0, :cond_7

    .line 2146
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->noRestaurantsTV:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2152
    :goto_2
    return-void

    .line 2108
    .end local v0    # "count":I
    .end local v1    # "locationName":Ljava/lang/String;
    .end local v4    # "stringId":I
    .restart local v2    # "size":I
    .restart local v3    # "sizeLastDigit":I
    :cond_2
    if-lt v3, v11, :cond_3

    const/4 v5, 0x4

    if-gt v3, v5, :cond_3

    .line 2109
    sget v4, Lcom/yopeso/lieferando/R$string;->restaurants_list_count:I

    .line 2110
    .restart local v4    # "stringId":I
    goto/16 :goto_0

    .line 2111
    .end local v4    # "stringId":I
    :cond_3
    sget v4, Lcom/yopeso/lieferando/R$string;->restaurants_list_count2:I

    .line 2113
    .restart local v4    # "stringId":I
    goto/16 :goto_0

    .line 2114
    .end local v2    # "size":I
    .end local v3    # "sizeLastDigit":I
    .end local v4    # "stringId":I
    :cond_4
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mRestaurants:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v10, :cond_5

    .line 2115
    sget v4, Lcom/yopeso/lieferando/R$string;->restaurant_list_count:I

    .line 2116
    .restart local v4    # "stringId":I
    goto/16 :goto_0

    .line 2117
    .end local v4    # "stringId":I
    :cond_5
    sget v4, Lcom/yopeso/lieferando/R$string;->restaurants_list_count:I

    .restart local v4    # "stringId":I
    goto/16 :goto_0

    .line 2125
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLocation:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLocation:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getPlz()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "locationName":Ljava/lang/String;
    goto/16 :goto_1

    .line 2149
    .restart local v0    # "count":I
    :cond_7
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->noRestaurantsTV:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2474
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onResume()V

    .line 2475
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2478
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/StampCustomerRequest;

    const-string v2, "/customer/stamps/current"

    new-instance v3, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$StampsListenerResume;

    invoke-direct {v3, p0, v4}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$StampsListenerResume;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$StampsListenerResume;)V

    invoke-direct {v1, v2, v3}, Lcom/yopeso/lieferando/net/requests/StampCustomerRequest;-><init>(Ljava/lang/String;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v1}, Lcom/yopeso/lieferando/net/requests/StampCustomerRequest;->withAuth()Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 2479
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/GetUserDiscountsRequest;

    new-instance v2, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$DiscountsListner;

    invoke-direct {v2, p0, v4}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$DiscountsListner;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$DiscountsListner;)V

    invoke-direct {v1, v2}, Lcom/yopeso/lieferando/net/requests/GetUserDiscountsRequest;-><init>(Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v1}, Lcom/yopeso/lieferando/net/requests/GetUserDiscountsRequest;->withAuth()Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 2482
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 408
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/LRFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 409
    const-string v0, "location_key"

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLocation:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 410
    const-string v0, "list_position_key"

    iget v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mListFirstVisiblePos:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 411
    return-void
.end method

.method public onStart()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1774
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onStart()V

    .line 1775
    sget v1, Lcom/yopeso/lieferando/R$string;->pleaseWait:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->showLoadingIndicator(I)V

    .line 1776
    const-string v1, "RestaurantsFragment"

    const-string v2, "onStart"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1779
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 1782
    :cond_0
    new-instance v0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$25;

    invoke-direct {v0, p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$25;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)V

    .line 1801
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    .line 1804
    iget v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mListFirstVisiblePos:I

    if-lez v1, :cond_2

    iget v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mListFirstVisiblePos:I

    :goto_0
    iput v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mListFirstVisiblePos:I

    .line 1806
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1810
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    new-instance v2, Lcom/yopeso/lieferando/net/requests/StampCustomerRequest;

    const-string v3, "/customer/stamps/current"

    new-instance v4, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$StampsUserListener;

    invoke-direct {v4, p0, v5}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$StampsUserListener;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$StampsUserListener;)V

    invoke-direct {v2, v3, v4}, Lcom/yopeso/lieferando/net/requests/StampCustomerRequest;-><init>(Ljava/lang/String;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v2}, Lcom/yopeso/lieferando/net/requests/StampCustomerRequest;->withAuth()Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 1824
    :goto_1
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mListAdapter:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->getFilteredRestaurants()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1825
    const-string v1, "RestaurantsFragment"

    const-string v2, "onStart -> setMarkers"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mListAdapter:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->getFilteredRestaurants()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->setMarkers(Ljava/util/ArrayList;)V

    .line 1829
    :cond_1
    return-void

    .line 1804
    :cond_2
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mRestaurantsListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    goto :goto_0

    .line 1812
    :cond_3
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mRestaurants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 1813
    const-string v1, "RestaurantsFragment"

    const-string v2, "onStart -> mRestaurants.size() > 0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->filterRestaurantsByCriteria()V

    .line 1815
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mRestaurantsListView:Landroid/widget/ListView;

    iget v3, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mListFirstVisiblePos:I

    iget v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mListFirstVisiblePos:I

    if-nez v1, :cond_4

    const/16 v1, 0x1e

    :goto_2
    invoke-virtual {v2, v3, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    .line 1820
    :cond_5
    const-string v1, "RestaurantsFragment"

    const-string v2, "onStart -> StampsLoadedListener mRestaurants.size() < 0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    new-instance v2, Lcom/yopeso/lieferando/net/requests/StampRestaurantsRequest;

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLocation:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getLocationUrl()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$StampsLoadedListener;

    invoke-direct {v4, p0, v5}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$StampsLoadedListener;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$StampsLoadedListener;)V

    invoke-direct {v2, v3, v4}, Lcom/yopeso/lieferando/net/requests/StampRestaurantsRequest;-><init>(Ljava/lang/String;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v1, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_1
.end method

.method public onStop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1833
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onStop()V

    .line 1835
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 1836
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLocationListener1:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 1838
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1839
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 1842
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mSearchView:Lcom/actionbarsherlock/widget/SearchView;

    if-eqz v0, :cond_1

    .line 1843
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mSearchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v0, v3}, Lcom/actionbarsherlock/widget/SearchView;->setOnQueryTextListener(Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;)V

    .line 1844
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mSearchView:Lcom/actionbarsherlock/widget/SearchView;

    const-string v1, ""

    invoke-virtual {v0, v1, v2}, Lcom/actionbarsherlock/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 1845
    iput-object v3, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mSearchView:Lcom/actionbarsherlock/widget/SearchView;

    .line 1847
    :cond_1
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->setMarkersTask:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask;

    if-eqz v0, :cond_2

    .line 1848
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->setMarkersTask:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask;

    invoke-virtual {v0, v2}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask;->cancel(Z)Z

    .line 1849
    iput-object v3, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->setMarkersTask:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$SetMarkersTask;

    .line 1851
    :cond_2
    invoke-virtual {p0, v2}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->showHideLogoActionbar(Z)V

    .line 1853
    iput-boolean v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->new_search:Z

    .line 1855
    sget-object v0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->searchFilter:Ljava/lang/String;

    invoke-static {v0}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackSearchRestaurant(Ljava/lang/String;)V

    .line 1856
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v7, 0x12c

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2253
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v6, :cond_2

    .line 2254
    const/4 v0, 0x0

    .line 2255
    .local v0, "animation":Lcom/yopeso/lieferando/view/FilterView;
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sget v4, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mOrginalPadding:I

    div-int/lit8 v4, v4, 0x2

    if-ge v3, v4, :cond_1

    .line 2256
    new-instance v0, Lcom/yopeso/lieferando/view/FilterView;

    .end local v0    # "animation":Lcom/yopeso/lieferando/view/FilterView;
    sget v3, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mOrginalPadding:I

    invoke-direct {v0, p1, v7, v3}, Lcom/yopeso/lieferando/view/FilterView;-><init>(Landroid/view/View;II)V

    .line 2260
    .restart local v0    # "animation":Lcom/yopeso/lieferando/view/FilterView;
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2277
    .end local v0    # "animation":Lcom/yopeso/lieferando/view/FilterView;
    :cond_0
    :goto_1
    return v6

    .line 2258
    .restart local v0    # "animation":Lcom/yopeso/lieferando/view/FilterView;
    :cond_1
    new-instance v0, Lcom/yopeso/lieferando/view/FilterView;

    .end local v0    # "animation":Lcom/yopeso/lieferando/view/FilterView;
    invoke-direct {v0, p1, v7, v5}, Lcom/yopeso/lieferando/view/FilterView;-><init>(Landroid/view/View;II)V

    .restart local v0    # "animation":Lcom/yopeso/lieferando/view/FilterView;
    goto :goto_0

    .line 2261
    .end local v0    # "animation":Lcom/yopeso/lieferando/view/FilterView;
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    .line 2262
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mStartY:F

    .line 2263
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iput v3, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mStartPadding:I

    goto :goto_1

    .line 2264
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 2265
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 2266
    .local v2, "y":F
    iget v3, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mStartY:F

    sub-float v3, v2, v3

    float-to-int v3, v3

    iget v4, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mStartPadding:I

    add-int v1, v3, v4

    .line 2268
    .local v1, "top":I
    if-lez v1, :cond_5

    .line 2269
    const/4 v1, 0x0

    .line 2274
    :cond_4
    :goto_2
    invoke-virtual {p1, v5, v1, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 2275
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    goto :goto_1

    .line 2270
    :cond_5
    sget v3, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mOrginalPadding:I

    if-ge v1, v3, :cond_4

    .line 2271
    sget v1, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mOrginalPadding:I

    goto :goto_2
.end method

.method public openFilter()V
    .locals 3

    .prologue
    .line 678
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->topHeaderRL:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 679
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mFilterView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 680
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mFilterView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$anim;->fade_in_menu:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 681
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mTopFilterLL:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->openFilterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 682
    return-void
.end method

.method public openMap()V
    .locals 2

    .prologue
    .line 600
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->map_is_shown:Z

    .line 601
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mRestaurantsListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->openMapAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 602
    invoke-static {}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackMap()V

    .line 607
    return-void
.end method

.method public openSorting()V
    .locals 3

    .prologue
    .line 695
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mSortingFilterView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 696
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mOuterSortingRL:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$anim;->fade_in_menu:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 697
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mTopSortingRL:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->openSortAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 698
    return-void
.end method

.method protected performGPSRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "lat"    # Ljava/lang/String;
    .param p2, "lng"    # Ljava/lang/String;

    .prologue
    .line 1473
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/GoogleAPIRequest;

    new-instance v2, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$GoogleListener;

    invoke-direct {v2, p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$GoogleListener;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)V

    invoke-direct {v1, p1, p2, v2}, Lcom/yopeso/lieferando/net/requests/GoogleAPIRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 1474
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
    .line 1382
    .local p1, "mSuggestions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/LocationSuggestion;>;"
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLocationSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1383
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLocationSuggestions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1384
    return-void
.end method

.method public setRestaurants(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/Restaurant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2176
    .local p1, "newRestaurants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Restaurant;>;"
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mRestaurants:Ljava/util/ArrayList;

    .line 2177
    return-void
.end method

.method protected shouldShowNoRestaurantsDialog()Z
    .locals 1

    .prologue
    .line 2194
    const/4 v0, 0x1

    return v0
.end method

.method protected showList()V
    .locals 3

    .prologue
    .line 2212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mIsLogosShow:Z

    .line 2213
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mRestaurantsListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mListAdapter:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2214
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mSerachText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2215
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mListAdapter:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;

    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mSerachText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->setMatching(Ljava/lang/String;)Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->performFiltering(Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;)V

    .line 2217
    :cond_0
    return-void
.end method

.method protected showLogos()V
    .locals 3

    .prologue
    .line 2201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mIsLogosShow:Z

    .line 2202
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mRestaurantsListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLogoAdapter:Lcom/yopeso/lieferando/adapters/restaurant/LogoRestaurantAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2203
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mSerachText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2204
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLogoAdapter:Lcom/yopeso/lieferando/adapters/restaurant/LogoRestaurantAdapter;

    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mSerachText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->setMatching(Ljava/lang/String;)Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/adapters/restaurant/LogoRestaurantAdapter;->performFiltering(Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;)V

    .line 2206
    :cond_0
    return-void
.end method

.method protected showRestaurantsForSuggestion(Lcom/yopeso/lieferando/model/LocationSuggestion;)V
    .locals 5
    .param p1, "ls"    # Lcom/yopeso/lieferando/model/LocationSuggestion;

    .prologue
    .line 1405
    const-string v2, "RestaurantsFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Selected Suggestion "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getCityId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " plz="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getPlz()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 1407
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mSearchInput:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1409
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    .line 1410
    .local v0, "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1412
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->buildAlertCartNotEmpty(Lcom/yopeso/lieferando/model/LocationSuggestion;)V

    .line 1421
    :goto_0
    return-void

    .line 1414
    :cond_0
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getPlz()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getCityId()I

    move-result v3

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackPostCode(Ljava/lang/String;ILandroid/content/Context;)V

    .line 1415
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackFBZip(Landroid/content/Context;)V

    .line 1417
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLocation:Lcom/yopeso/lieferando/model/LocationSuggestion;

    .line 1418
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->onStart()V

    goto :goto_0
.end method
