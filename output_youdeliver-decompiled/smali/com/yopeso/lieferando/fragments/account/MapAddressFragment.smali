.class public Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;
.super Lcom/yopeso/lieferando/custom/LRFragment;
.source "MapAddressFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/yopeso/lieferando/callback/AddressInputLayoutCallBack;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$CreateAddressListener;,
        Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$DeleteAddressListener;,
        Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$GetAddressLocation;,
        Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$GoogleListener;,
        Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$LocationListener;,
        Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$LocationSuggestionListener;,
        Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$TaskGetAddress;,
        Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$UpdateLocationListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private addressScrollView:Landroid/widget/ScrollView;

.field private getAddressLocation:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$GetAddressLocation;

.field private isAddressObtained:Z

.field private mAddressGoogleMapLayout:Landroid/widget/LinearLayout;

.field private mAddressIndex:I

.field private mAddressInputLayout:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

.field private mAddressTakeButton:Landroid/widget/Button;

.field private mAddressView:Landroid/widget/TextView;

.field private mCurrentAddress:Landroid/location/Address;

.field private mCurrentMapCenter:Lcom/google/android/gms/maps/model/LatLng;

.field private mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

.field private mGoogleMapFragment:Lcom/google/android/gms/maps/SupportMapFragment;

.field protected mGoogleRequest:Lcom/yopeso/lieferando/net/requests/GoogleAPIRequest;

.field private mInEditMode:Z

.field private mIsAddress:Z

.field private mIsAddressFieldsShown:Z

.field private mIsNewAddress:Z

.field protected mLastRequestGPSKey:Ljava/lang/String;

.field private mLoadingAddressProgressBar:Landroid/widget/ProgressBar;

.field private mSaveButton:Landroid/widget/Button;

.field private mTaskGetAddress:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$TaskGetAddress;

.field private mUserData:Lcom/yopeso/lieferando/model/user/UserData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const-class v0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0}, Lcom/yopeso/lieferando/custom/LRFragment;-><init>()V

    .line 216
    iput-boolean v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mInEditMode:Z

    .line 225
    iput-boolean v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->isAddressObtained:Z

    .line 85
    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)Lcom/yopeso/lieferando/view/AddressInputLinearLayout;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mAddressInputLayout:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    return-object v0
.end method

.method static synthetic access$1(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;Lcom/android/volley/VolleyError;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->handleNetworkError(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method static synthetic access$10(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)Z
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->isAddressObtained:Z

    return v0
.end method

.method static synthetic access$11(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mAddressTakeButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$12(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mAddressView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$13(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)V
    .locals 0

    .prologue
    .line 914
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->setAddressText()V

    return-void
.end method

.method static synthetic access$14(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mLoadingAddressProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$15(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;Z)V
    .locals 0

    .prologue
    .line 225
    iput-boolean p1, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->isAddressObtained:Z

    return-void
.end method

.method static synthetic access$16(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)Z
    .locals 1

    .prologue
    .line 436
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->isCorrectLocationCountry()Z

    move-result v0

    return v0
.end method

.method static synthetic access$17(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mIsAddress:Z

    return v0
.end method

.method static synthetic access$18(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mCurrentMapCenter:Lcom/google/android/gms/maps/model/LatLng;

    return-void
.end method

.method static synthetic access$19(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$TaskGetAddress;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mTaskGetAddress:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$TaskGetAddress;

    return-object v0
.end method

.method static synthetic access$2(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;Z)V
    .locals 0

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mInEditMode:Z

    return-void
.end method

.method static synthetic access$20(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$TaskGetAddress;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mTaskGetAddress:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$TaskGetAddress;

    return-void
.end method

.method static synthetic access$21(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;I)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->showLoadingIndicator(I)V

    return-void
.end method

.method static synthetic access$22(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)V
    .locals 0

    .prologue
    .line 859
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->saveButtonPressed()V

    return-void
.end method

.method static synthetic access$23(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;Z)V
    .locals 0

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mIsNewAddress:Z

    return-void
.end method

.method static synthetic access$3(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->dismissLoadingIndicator()V

    return-void
.end method

.method static synthetic access$4(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)Lcom/yopeso/lieferando/model/user/UserData;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    return-object v0
.end method

.method static synthetic access$5(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mAddressIndex:I

    return v0
.end method

.method static synthetic access$6(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object v0
.end method

.method static synthetic access$7(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mCurrentMapCenter:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method static synthetic access$8(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;Landroid/location/Address;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mCurrentAddress:Landroid/location/Address;

    return-void
.end method

.method static synthetic access$9(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)Landroid/location/Address;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mCurrentAddress:Landroid/location/Address;

    return-object v0
.end method

.method private doCancelChanges()V
    .locals 3

    .prologue
    .line 612
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mAddressInputLayout:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->setIsSetLocation(Z)V

    .line 614
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mAddressInputLayout:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->setLocationField()V

    .line 616
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getLRActivity()Lcom/yopeso/lieferando/custom/LRActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/custom/LRActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 617
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getLRActivity()Lcom/yopeso/lieferando/custom/LRActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/custom/LRActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 618
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getLRActivity()Lcom/yopeso/lieferando/custom/LRActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/custom/LRActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 620
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method private isCorrectLocationCountry()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 437
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 438
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mCurrentAddress:Landroid/location/Address;

    if-eqz v1, :cond_2

    const-string v1, "DE"

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mCurrentAddress:Landroid/location/Address;

    invoke-virtual {v2}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 458
    :cond_0
    :goto_0
    return v0

    .line 443
    :cond_1
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 445
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mCurrentAddress:Landroid/location/Address;

    if-eqz v1, :cond_2

    const-string v1, "PL"

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mCurrentAddress:Landroid/location/Address;

    invoke-virtual {v2}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 458
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 452
    :cond_3
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mCurrentAddress:Landroid/location/Address;

    if-eqz v1, :cond_2

    const-string v1, "DE"

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mCurrentAddress:Landroid/location/Address;

    invoke-virtual {v2}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0
.end method

.method public static newInstance(ZI)Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;
    .locals 3
    .param p0, "isAddress"    # Z
    .param p1, "addressIndex"    # I

    .prologue
    .line 228
    new-instance v1, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-direct {v1}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;-><init>()V

    .line 229
    .local v1, "frg":Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 230
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "isNewOrEdit"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 231
    const-string v2, "indexOfAddress"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 232
    invoke-virtual {v1, v0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->setArguments(Landroid/os/Bundle;)V

    .line 233
    return-object v1
.end method

.method private saveButtonPressed()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 860
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mAddressInputLayout:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->validate()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 862
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 864
    iget-boolean v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mIsAddress:Z

    if-eqz v2, :cond_0

    .line 866
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/UserData;->getLocations()Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mAddressIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 868
    :cond_0
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mAddressInputLayout:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->saveLocationFromFields()V

    .line 869
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->save()V

    .line 870
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getLRActivity()Lcom/yopeso/lieferando/custom/LRActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/custom/LRActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 891
    :cond_1
    :goto_0
    return-void

    .line 873
    :cond_2
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mAddressInputLayout:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/SettingsContent;->getRegexp()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->createJsonWithFieldsValue(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    .line 874
    .local v1, "object":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mAddressInputLayout:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->getCityId()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mAddressInputLayout:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->getCityId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 875
    if-eqz v1, :cond_1

    .line 876
    iget-boolean v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mIsNewAddress:Z

    if-nez v2, :cond_3

    .line 878
    :try_start_0
    sget v2, Lcom/yopeso/lieferando/R$string;->pleaseWait:I

    invoke-virtual {p0, v2}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->showLoadingIndicator(I)V

    .line 879
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    new-instance v3, Lcom/yopeso/lieferando/net/requests/UpdateAddressRequest;

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mAddressInputLayout:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->getLocationSelected()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/Location;->getId()I

    move-result v4

    int-to-long v4, v4

    new-instance v6, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$UpdateLocationListener;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$UpdateLocationListener;-><init>(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$UpdateLocationListener;)V

    invoke-direct {v3, v4, v5, v1, v6}, Lcom/yopeso/lieferando/net/requests/UpdateAddressRequest;-><init>(JLorg/json/JSONObject;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v3}, Lcom/yopeso/lieferando/net/requests/UpdateAddressRequest;->withAuth()Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 880
    :catch_0
    move-exception v0

    .line 881
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 884
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_3
    sget v2, Lcom/yopeso/lieferando/R$string;->pleaseWait:I

    invoke-virtual {p0, v2}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->showLoadingIndicator(I)V

    .line 885
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    new-instance v3, Lcom/yopeso/lieferando/net/requests/CreateAddressRequest;

    new-instance v4, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$CreateAddressListener;

    invoke-direct {v4, p0, v5}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$CreateAddressListener;-><init>(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$CreateAddressListener;)V

    invoke-direct {v3, v1, v4}, Lcom/yopeso/lieferando/net/requests/CreateAddressRequest;-><init>(Lorg/json/JSONObject;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v3}, Lcom/yopeso/lieferando/net/requests/CreateAddressRequest;->withAuth()Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0
.end method

.method private setAddressText()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 915
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mAddressView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mCurrentAddress:Landroid/location/Address;

    invoke-virtual {v4}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mCurrentAddress:Landroid/location/Address;

    invoke-virtual {v4, v5}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 916
    const-class v2, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Set text: COUNTRY:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mCurrentAddress:Landroid/location/Address;

    invoke-virtual {v4}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mCurrentAddress:Landroid/location/Address;

    invoke-virtual {v4}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mCurrentAddress:Landroid/location/Address;

    invoke-virtual {v4, v5}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 919
    sget v2, Lcom/yopeso/lieferando/R$string;->pleaseWait:I

    invoke-virtual {p0, v2}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->showLoadingIndicator(I)V

    .line 921
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/LieferandoApplication;->getmAreas()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/LieferandoApplication;->getmAreas()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 924
    :cond_0
    const-class v2, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "no suggestions -> display message"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mAddressView:Landroid/widget/TextView;

    sget v3, Lcom/yopeso/lieferando/R$string;->noDelivery:I

    invoke-virtual {p0, v3}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 926
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mAddressTakeButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 927
    iput-object v6, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mCurrentAddress:Landroid/location/Address;

    .line 953
    :goto_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->dismissLoadingIndicator()V

    .line 978
    :cond_1
    :goto_1
    return-void

    .line 930
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 931
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/LocationSuggestion;>;"
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/LieferandoApplication;->getmAreas()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 937
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 939
    const-class v2, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "show suggestions"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mLoadingAddressProgressBar:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 931
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/model/LocationSuggestion;

    .line 933
    .local v1, "suggestion":Lcom/yopeso/lieferando/model/LocationSuggestion;
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getPlz()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mCurrentAddress:Landroid/location/Address;

    invoke-virtual {v4}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 934
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 946
    .end local v1    # "suggestion":Lcom/yopeso/lieferando/model/LocationSuggestion;
    :cond_5
    const-class v2, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "no suggestions -> display message"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mAddressView:Landroid/widget/TextView;

    sget v3, Lcom/yopeso/lieferando/R$string;->noDelivery:I

    invoke-virtual {p0, v3}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 948
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mAddressTakeButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 949
    iput-object v6, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mCurrentAddress:Landroid/location/Address;

    goto :goto_0

    .line 957
    .end local v0    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/LocationSuggestion;>;"
    :cond_6
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 959
    const-string v2, "PL"

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mCurrentAddress:Landroid/location/Address;

    invoke-virtual {v3}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 960
    sget-object v2, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->TAG:Ljava/lang/String;

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mCurrentAddress:Landroid/location/Address;

    invoke-virtual {v3}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mAddressView:Landroid/widget/TextView;

    sget v3, Lcom/yopeso/lieferando/R$string;->only_local_address:I

    invoke-virtual {p0, v3}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 962
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mAddressTakeButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 963
    iput-object v6, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mCurrentAddress:Landroid/location/Address;

    goto/16 :goto_1

    .line 969
    :cond_7
    const-string v2, "DE"

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mCurrentAddress:Landroid/location/Address;

    invoke-virtual {v3}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 971
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mAddressView:Landroid/widget/TextView;

    sget v3, Lcom/yopeso/lieferando/R$string;->only_local_address:I

    invoke-virtual {p0, v3}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 972
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mAddressTakeButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 973
    iput-object v6, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mCurrentAddress:Landroid/location/Address;

    goto/16 :goto_1
.end method

.method private setFieldsFromAddress(Z)V
    .locals 7
    .param p1, "setAdresss"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 784
    iput-boolean v6, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mInEditMode:Z

    .line 785
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mAddressInputLayout:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->clearAllFields()V

    .line 786
    if-eqz p1, :cond_0

    .line 787
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mAddressInputLayout:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mCurrentAddress:Landroid/location/Address;

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->setFieldsFromAddress(Landroid/location/Address;)V

    .line 789
    :cond_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->showSaveAndCancelButtons()V

    .line 791
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mAddressGoogleMapLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 792
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mAddressInputLayout:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    invoke-virtual {v2, v4}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->setVisibility(I)V

    .line 793
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mSaveButton:Landroid/widget/Button;

    sget v3, Lcom/yopeso/lieferando/R$string;->saveAddress:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 794
    iput-boolean v6, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mIsAddressFieldsShown:Z

    .line 795
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mAddressInputLayout:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    invoke-virtual {v2, v4}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->setIsSetLocation(Z)V

    .line 798
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->addressScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 799
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mGoogleMapFragment:Lcom/google/android/gms/maps/SupportMapFragment;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/SupportMapFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 800
    .local v0, "paramsG":Landroid/view/ViewGroup$LayoutParams;
    const/16 v2, 0x276

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 801
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2, v4, v4, v4, v4}, Lcom/google/android/gms/maps/GoogleMap;->setPadding(IIII)V

    .line 802
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mGoogleMapFragment:Lcom/google/android/gms/maps/SupportMapFragment;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/SupportMapFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 803
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/gms/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 804
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/gms/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 805
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->setOnMyLocationChangeListener(Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;)V

    .line 807
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mCurrentAddress:Landroid/location/Address;

    if-eqz v2, :cond_1

    .line 808
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mCurrentAddress:Landroid/location/Address;

    invoke-virtual {v2}, Landroid/location/Address;->getLatitude()D

    move-result-wide v2

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mCurrentAddress:Landroid/location/Address;

    invoke-virtual {v4}, Landroid/location/Address;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 809
    .local v1, "position":Lcom/google/android/gms/maps/model/LatLng;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_1

    .line 810
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    .line 811
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v3, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v3}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v3, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$drawable;->location_icon:I

    invoke-static {v4}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    .line 816
    .end local v1    # "position":Lcom/google/android/gms/maps/model/LatLng;
    :cond_1
    return-void
.end method

.method private showDeleteDialog()V
    .locals 3

    .prologue
    .line 702
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/yopeso/lieferando/R$string;->deleteAddress:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$string;->deleteAddressMessage:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$string;->cancel_button_text:I

    new-instance v2, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$4;

    invoke-direct {v2, p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$4;-><init>(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 707
    sget v1, Lcom/yopeso/lieferando/R$string;->deleteButtonText:I

    new-instance v2, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$5;

    invoke-direct {v2, p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$5;-><init>(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 715
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 716
    return-void
.end method


# virtual methods
.method public isInEditMode()Z
    .locals 1

    .prologue
    .line 762
    iget-boolean v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mInEditMode:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, -0x2

    const/4 v7, 0x1

    const/16 v4, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 259
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/LRFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 260
    sget-object v2, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->TAG:Ljava/lang/String;

    const-string v3, "onActivityCreated:"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->addressInputLayout:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mAddressInputLayout:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    .line 262
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->addressScrollView:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->addressScrollView:Landroid/widget/ScrollView;

    .line 265
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mAddressInputLayout:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    invoke-virtual {v2, p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->setListener(Lcom/yopeso/lieferando/callback/AddressInputLayoutCallBack;)V

    .line 267
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mAddressInputLayout:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->setUserData(Lcom/yopeso/lieferando/model/user/UserData;)V

    .line 268
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mAddressInputLayout:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/SettingsContent;->getRegexp()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->setRegEx(Ljava/util/Map;)V

    .line 269
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mAddressInputLayout:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->setActivity(Landroid/app/Activity;)V

    .line 270
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->addressSelectGoogleMapLayout:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mAddressGoogleMapLayout:Landroid/widget/LinearLayout;

    .line 271
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->map1:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/SupportMapFragment;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/SupportMapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v2

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 272
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->map1:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/SupportMapFragment;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mGoogleMapFragment:Lcom/google/android/gms/maps/SupportMapFragment;

    .line 273
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v2, :cond_0

    .line 274
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2, v7}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 275
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v3, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$1;

    invoke-direct {v3, p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$1;-><init>(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->setOnMyLocationChangeListener(Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;)V

    .line 307
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v3, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$2;

    invoke-direct {v3, p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$2;-><init>(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->setOnCameraChangeListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;)V

    .line 324
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    const/16 v3, 0x8c

    invoke-virtual {v2, v5, v5, v5, v3}, Lcom/google/android/gms/maps/GoogleMap;->setPadding(IIII)V

    .line 328
    :cond_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->saveAddressButton:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mSaveButton:Landroid/widget/Button;

    .line 329
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v2

    if-nez v2, :cond_1

    .line 330
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/SettingsContent;->getDynamicButtonFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 332
    :cond_1
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->addressTakeButton:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mAddressTakeButton:Landroid/widget/Button;

    .line 333
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->addressNavButton:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->loadingAddressProgressBar:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mLoadingAddressProgressBar:Landroid/widget/ProgressBar;

    .line 338
    iget-boolean v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mIsAddress:Z

    if-nez v2, :cond_4

    .line 340
    iput-boolean v7, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mInEditMode:Z

    .line 341
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v2, :cond_2

    .line 342
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mAddressInputLayout:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    invoke-virtual {v2, v4}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->setVisibility(I)V

    .line 343
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->addressScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 344
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mAddressGoogleMapLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 345
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mAddressTakeButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    iput-boolean v5, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mIsAddressFieldsShown:Z

    .line 347
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->addressText:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mAddressView:Landroid/widget/TextView;

    .line 354
    :goto_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->deleteAddressButton:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 355
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mSaveButton:Landroid/widget/Button;

    sget v3, Lcom/yopeso/lieferando/R$string;->newAddress:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 356
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 358
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$drawable;->icon_add:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3, v6, v6, v6}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 359
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 360
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 361
    const/16 v2, 0xaa

    const/16 v3, 0xaa

    invoke-virtual {v0, v2, v5, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 391
    .end local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :goto_1
    iput-boolean v7, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mIsNewAddress:Z

    .line 432
    :goto_2
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getLRActivity()Lcom/yopeso/lieferando/custom/LRActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/custom/LRActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 433
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getLRActivity()Lcom/yopeso/lieferando/custom/LRActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/custom/LRActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->address_title:I

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 434
    return-void

    .line 349
    :cond_2
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mAddressInputLayout:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    invoke-virtual {v2, v5}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->setVisibility(I)V

    .line 350
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mAddressGoogleMapLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 351
    iput-boolean v7, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mIsAddressFieldsShown:Z

    .line 352
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mAddressInputLayout:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    invoke-virtual {v2, v5}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->setIsSetLocation(Z)V

    goto :goto_0

    .line 373
    :cond_3
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->addressScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    goto :goto_1

    .line 393
    :cond_4
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->deleteAddressButton:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mAddressGoogleMapLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 395
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mAddressInputLayout:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    invoke-virtual {v2, v5}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->setVisibility(I)V

    .line 396
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mSaveButton:Landroid/widget/Button;

    sget v3, Lcom/yopeso/lieferando/R$string;->saveAddress:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 397
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 398
    iput-boolean v7, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mIsAddressFieldsShown:Z

    .line 399
    iput-boolean v5, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mIsNewAddress:Z

    .line 401
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mAddressInputLayout:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    iget v3, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mAddressIndex:I

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->setLocationSelectedIndex(I)V

    .line 402
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mAddressInputLayout:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->setLocationField()V

    .line 406
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->deleteAddressButton:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 408
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 409
    .restart local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 410
    const/16 v2, 0x21

    const/16 v3, 0x21

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 413
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mGoogleMapFragment:Lcom/google/android/gms/maps/SupportMapFragment;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/SupportMapFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 414
    .local v1, "paramsG":Landroid/view/ViewGroup$LayoutParams;
    const/16 v2, 0x276

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 416
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mGoogleMapFragment:Lcom/google/android/gms/maps/SupportMapFragment;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/SupportMapFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 417
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v2, :cond_5

    .line 418
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/google/android/gms/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 419
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/google/android/gms/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 422
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/maps/GoogleMap;->setOnMyLocationChangeListener(Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;)V

    .line 423
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2, v5, v5, v5, v5}, Lcom/google/android/gms/maps/GoogleMap;->setPadding(IIII)V

    .line 425
    :cond_5
    new-instance v2, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$GetAddressLocation;

    invoke-direct {v2, p0, v6}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$GetAddressLocation;-><init>(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$GetAddressLocation;)V

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getAddressLocation:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$GetAddressLocation;

    .line 426
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getAddressLocation:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$GetAddressLocation;

    new-array v3, v5, [Ljava/lang/Void;

    instance-of v4, v2, Landroid/os/AsyncTask;

    if-nez v4, :cond_6

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$GetAddressLocation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_2

    :cond_6
    check-cast v2, Landroid/os/AsyncTask;

    invoke-static {v2, v3}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_2
.end method

.method public onBackKeyPressed()V
    .locals 5

    .prologue
    .line 719
    iget-boolean v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mInEditMode:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 720
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 721
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v2, Lcom/yopeso/lieferando/R$string;->data_not_saved:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->yes:I

    new-instance v4, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$6;

    invoke-direct {v4, p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$6;-><init>(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 726
    sget v3, Lcom/yopeso/lieferando/R$string;->no:I

    new-instance v4, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$7;

    invoke-direct {v4, p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$7;-><init>(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 734
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 735
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 736
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 738
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 624
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/yopeso/lieferando/R$id;->addressTakeButton:I

    if-ne v0, v1, :cond_1

    .line 625
    invoke-direct {p0, v2}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->setFieldsFromAddress(Z)V

    .line 699
    :cond_0
    :goto_0
    return-void

    .line 626
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/yopeso/lieferando/R$id;->saveAddressButton:I

    if-ne v0, v1, :cond_3

    .line 630
    iget-boolean v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mIsAddressFieldsShown:Z

    if-eqz v0, :cond_2

    .line 631
    sget-object v0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saveAddressButton:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mIsAddressFieldsShown:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->saveButtonPressed()V

    goto :goto_0

    .line 634
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->setFieldsFromAddress(Z)V

    .line 635
    iput-boolean v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mIsAddressFieldsShown:Z

    .line 636
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mAddressInputLayout:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->clearAllFields()V

    .line 637
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->clear()V

    .line 638
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 639
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$3;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$3;-><init>(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMyLocationChangeListener(Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;)V

    goto :goto_0

    .line 696
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/yopeso/lieferando/R$id;->deleteAddressButton:I

    if-ne v0, v1, :cond_0

    .line 697
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->showDeleteDialog()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 238
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/LRFragment;->onCreate(Landroid/os/Bundle;)V

    .line 239
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "isNewOrEdit"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mIsAddress:Z

    .line 240
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "indexOfAddress"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mAddressIndex:I

    .line 241
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/util/DeviceUtils;->isHoneycombTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    .line 246
    :goto_0
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    .line 247
    sget-object v0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCreate:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return-void

    .line 244
    :cond_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    .line 523
    invoke-super {p0, p1, p2}, Lcom/yopeso/lieferando/custom/LRFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V

    .line 524
    iget-boolean v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mInEditMode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mIsNewAddress:Z

    if-nez v0, :cond_0

    .line 525
    sget v0, Lcom/yopeso/lieferando/R$menu;->user_edit_menu:I

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 527
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 252
    sget-object v0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCreateView:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    sget v0, Lcom/yopeso/lieferando/R$layout;->new_or_edit_address_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 4

    .prologue
    .line 507
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onDestroyView()V

    .line 508
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getAddressLocation:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$GetAddressLocation;

    if-eqz v2, :cond_0

    .line 509
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getAddressLocation:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$GetAddressLocation;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$GetAddressLocation;->cancel(Z)Z

    .line 510
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getAddressLocation:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$GetAddressLocation;

    .line 512
    :cond_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->map1:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 514
    .local v1, "fr":Landroid/support/v4/app/Fragment;
    :try_start_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

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

    .line 518
    :goto_0
    return-void

    .line 515
    :catch_0
    move-exception v0

    .line 516
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onEvent(Lcom/yopeso/lieferando/events/AuthenticationEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/yopeso/lieferando/events/AuthenticationEvent;

    .prologue
    .line 1009
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1011
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 1013
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 531
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lcom/yopeso/lieferando/R$id;->save_user:I

    if-ne v1, v2, :cond_1

    .line 532
    iput-boolean v3, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mInEditMode:Z

    .line 533
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->saveButtonPressed()V

    .line 558
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/LRFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v1

    return v1

    .line 534
    :cond_1
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lcom/yopeso/lieferando/R$id;->cancel_edit:I

    if-ne v1, v2, :cond_5

    .line 535
    iget-boolean v1, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mIsAddress:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mIsAddressFieldsShown:Z

    if-eqz v1, :cond_3

    .line 536
    iput-boolean v3, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mInEditMode:Z

    .line 537
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->doCancelChanges()V

    .line 553
    :cond_2
    :goto_1
    iput-boolean v3, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mInEditMode:Z

    .line 554
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getLRActivity()Lcom/yopeso/lieferando/custom/LRActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/custom/LRActivity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 538
    :cond_3
    iget-boolean v1, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mIsAddressFieldsShown:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v1, :cond_4

    .line 539
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mAddressGoogleMapLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 540
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mAddressInputLayout:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    invoke-virtual {v1, v4}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->setVisibility(I)V

    .line 541
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->addressScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 542
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mSaveButton:Landroid/widget/Button;

    sget v2, Lcom/yopeso/lieferando/R$string;->newAddress:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 543
    iput-boolean v3, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mIsAddressFieldsShown:Z

    .line 544
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mAddressInputLayout:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->setIsSetLocation(Z)V

    .line 546
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getLRActivity()Lcom/yopeso/lieferando/custom/LRActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/custom/LRActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 547
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getLRActivity()Lcom/yopeso/lieferando/custom/LRActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/custom/LRActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 548
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getLRActivity()Lcom/yopeso/lieferando/custom/LRActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/custom/LRActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_1

    .line 550
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_4
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v1, :cond_2

    .line 551
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getLRActivity()Lcom/yopeso/lieferando/custom/LRActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/custom/LRActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    goto :goto_1

    .line 555
    :cond_5
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    .line 556
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getLRActivity()Lcom/yopeso/lieferando/custom/LRActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/custom/LRActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1024
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onPause()V

    .line 1025
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1026
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 1028
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1016
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onResume()V

    .line 1017
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1018
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 1020
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 499
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onStop()V

    .line 500
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mTaskGetAddress:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$TaskGetAddress;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mTaskGetAddress:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$TaskGetAddress;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$TaskGetAddress;->cancel(Z)Z

    .line 503
    :cond_0
    return-void
.end method

.method protected performGPSRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "lat"    # Ljava/lang/String;
    .param p2, "lng"    # Ljava/lang/String;

    .prologue
    .line 1005
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/GoogleAPIRequest;

    new-instance v2, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$GoogleListener;

    invoke-direct {v2, p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$GoogleListener;-><init>(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)V

    invoke-direct {v1, p1, p2, v2}, Lcom/yopeso/lieferando/net/requests/GoogleAPIRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 1006
    return-void
.end method

.method public performSuggestionRequest(Ljava/lang/String;)V
    .locals 6
    .param p1, "plz"    # Ljava/lang/String;

    .prologue
    .line 572
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 574
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/LieferandoApplication;->getmAreas()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/LieferandoApplication;->getmAreas()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 576
    :cond_0
    sget-object v2, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->TAG:Ljava/lang/String;

    const-string v3, "saveAddressButton: no suggestions -> display message"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mAddressInputLayout:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->getmZipCode()Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->noDelivery:I

    invoke-virtual {p0, v3}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 578
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mAddressInputLayout:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->getmSearchSuggestionsAdapter()Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;->clearSuggestons()V

    .line 606
    :goto_0
    return-void

    .line 581
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 582
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/LocationSuggestion;>;"
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/LieferandoApplication;->getmAreas()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 588
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 590
    sget-object v2, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->TAG:Ljava/lang/String;

    const-string v3, "saveAddressButton: show suggestions"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mAddressInputLayout:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    invoke-virtual {v2, v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->showLocationSuggestions(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 582
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/model/LocationSuggestion;

    .line 584
    .local v1, "suggestion":Lcom/yopeso/lieferando/model/LocationSuggestion;
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getPlz()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 585
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 595
    .end local v1    # "suggestion":Lcom/yopeso/lieferando/model/LocationSuggestion;
    :cond_4
    sget-object v2, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->TAG:Ljava/lang/String;

    const-string v3, "saveAddressButton: no suggestions -> display message"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mAddressInputLayout:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->getmZipCode()Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->noDelivery:I

    invoke-virtual {p0, v3}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 597
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mAddressInputLayout:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->getmSearchSuggestionsAdapter()Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;->clearSuggestons()V

    goto :goto_0

    .line 603
    .end local v0    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/LocationSuggestion;>;"
    :cond_5
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    new-instance v3, Lcom/yopeso/lieferando/net/requests/LocationRequest;

    new-instance v4, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$LocationSuggestionListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$LocationSuggestionListener;-><init>(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$LocationSuggestionListener;)V

    invoke-direct {v3, p1, v4}, Lcom/yopeso/lieferando/net/requests/LocationRequest;-><init>(Ljava/lang/String;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v2, v3}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0
.end method

.method public showNotSavedChangesDialog()Z
    .locals 2

    .prologue
    .line 769
    iget-boolean v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mIsNewAddress:Z

    if-eqz v0, :cond_1

    .line 770
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mAddressGoogleMapLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 772
    iget-boolean v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mInEditMode:Z

    .line 779
    :goto_0
    return v0

    .line 775
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 779
    :cond_1
    iget-boolean v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mInEditMode:Z

    goto :goto_0
.end method

.method public showSaveAndCancelButtons()V
    .locals 1

    .prologue
    .line 566
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->mInEditMode:Z

    .line 567
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getLRActivity()Lcom/yopeso/lieferando/custom/LRActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/custom/LRActivity;->invalidateOptionsMenu()V

    .line 568
    return-void
.end method
