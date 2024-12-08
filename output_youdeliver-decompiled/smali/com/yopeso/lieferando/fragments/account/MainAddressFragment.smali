.class public Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;
.super Lcom/yopeso/lieferando/custom/LRFragment;
.source "MainAddressFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/yopeso/lieferando/callback/MainAddressesCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yopeso/lieferando/fragments/account/MainAddressFragment$DeleteAddressListener;,
        Lcom/yopeso/lieferando/fragments/account/MainAddressFragment$UpdateLocationListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yopeso/lieferando/custom/LRFragment;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/yopeso/lieferando/callback/MainAddressesCallBack;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAddressAdapter:Lcom/yopeso/lieferando/adapters/MainAddressAdapter;

.field private mPrimaryLocation:Lcom/yopeso/lieferando/model/user/Location;

.field private mUserData:Lcom/yopeso/lieferando/model/user/UserData;

.field private noAddressesView:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/yopeso/lieferando/custom/LRFragment;-><init>()V

    .line 80
    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->dismissLoadingIndicator()V

    return-void
.end method

.method static synthetic access$1(Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;)V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->changeThePrimaryLocation()V

    return-void
.end method

.method static synthetic access$2(Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;Lcom/android/volley/VolleyError;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->handleNetworkError(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method static synthetic access$3(Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;)Lcom/yopeso/lieferando/model/user/UserData;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    return-object v0
.end method

.method static synthetic access$4(Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;I)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->showLoadingIndicator(I)V

    return-void
.end method

.method static synthetic access$5(Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;)Lcom/yopeso/lieferando/adapters/MainAddressAdapter;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->mAddressAdapter:Lcom/yopeso/lieferando/adapters/MainAddressAdapter;

    return-object v0
.end method

.method static synthetic access$6(Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;)V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->showNoAddressesView()V

    return-void
.end method

.method private changeThePrimaryLocation()V
    .locals 4

    .prologue
    .line 222
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/UserData;->getLocations()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 232
    return-void

    .line 223
    :cond_0
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/UserData;->getLocations()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/model/user/Location;

    .line 224
    .local v1, "location":Lcom/yopeso/lieferando/model/user/Location;
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/Location;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->mPrimaryLocation:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/Location;->getId()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 225
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Location;->setPrimary(Z)V

    .line 229
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->mAddressAdapter:Lcom/yopeso/lieferando/adapters/MainAddressAdapter;

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/UserData;->getLocations()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/adapters/MainAddressAdapter;->setmAddresses(Ljava/util/List;)V

    .line 230
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->mAddressAdapter:Lcom/yopeso/lieferando/adapters/MainAddressAdapter;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/adapters/MainAddressAdapter;->notifyDataSetChanged()V

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    :cond_2
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/Location;->isPrimary()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 227
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Location;->setPrimary(Z)V

    goto :goto_1
.end method

.method private showDeleteDialog(IJ)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "addressId"    # J

    .prologue
    .line 266
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/yopeso/lieferando/R$string;->deleteAddress:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$string;->deleteAddressMessage:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$string;->cancel_button_text:I

    new-instance v2, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment$4;

    invoke-direct {v2, p0}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment$4;-><init>(Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 271
    sget v1, Lcom/yopeso/lieferando/R$string;->deleteButtonText:I

    new-instance v2, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment$5;

    invoke-direct {v2, p0, p2, p3, p1}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment$5;-><init>(Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;JI)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 281
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 282
    return-void
.end method

.method private showNoAddressesView()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/UserData;->getLocations()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/UserData;->getLocations()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->noAddressesView:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 158
    :cond_1
    return-void
.end method


# virtual methods
.method public addAsDefaultAddress(I)V
    .locals 8
    .param p1, "position"    # I

    .prologue
    .line 210
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->mAddressAdapter:Lcom/yopeso/lieferando/adapters/MainAddressAdapter;

    invoke-virtual {v2, p1}, Lcom/yopeso/lieferando/adapters/MainAddressAdapter;->getItem(I)Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v2

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->mPrimaryLocation:Lcom/yopeso/lieferando/model/user/Location;

    .line 212
    :try_start_0
    sget v2, Lcom/yopeso/lieferando/R$string;->pleaseWait:I

    invoke-virtual {p0, v2}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->showLoadingIndicator(I)V

    .line 213
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->mPrimaryLocation:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Location;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 214
    .local v1, "location":Lorg/json/JSONObject;
    const-string v2, "primary"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 215
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    new-instance v3, Lcom/yopeso/lieferando/net/requests/UpdateAddressRequest;

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->mPrimaryLocation:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/Location;->getId()I

    move-result v4

    int-to-long v4, v4

    new-instance v6, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment$UpdateLocationListener;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment$UpdateLocationListener;-><init>(Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;Lcom/yopeso/lieferando/fragments/account/MainAddressFragment$UpdateLocationListener;)V

    invoke-direct {v3, v4, v5, v1, v6}, Lcom/yopeso/lieferando/net/requests/UpdateAddressRequest;-><init>(JLorg/json/JSONObject;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v3}, Lcom/yopeso/lieferando/net/requests/UpdateAddressRequest;->withAuth()Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .end local v1    # "location":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method protected addRestaurantDetailsFragment(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 2
    .param p1, "r"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    const/4 v1, 0x0

    .line 205
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v1, p1, v1, v1}, Lcom/yopeso/lieferando/util/IntentNavUtils;->goToRestaurant(Landroid/app/Activity;ZLcom/yopeso/lieferando/model/restaurant/Restaurant;ZZ)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->startActivity(Landroid/content/Intent;)V

    .line 206
    return-void
.end method

.method protected addRestaurantListFragment(Lcom/yopeso/lieferando/model/LocationSuggestion;)V
    .locals 3
    .param p1, "ls"    # Lcom/yopeso/lieferando/model/LocationSuggestion;

    .prologue
    .line 199
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getPlz()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getCityId()I

    move-result v1

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackPostCode(Ljava/lang/String;ILandroid/content/Context;)V

    .line 200
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackFBZip(Landroid/content/Context;)V

    .line 201
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/util/IntentNavUtils;->goToRestaurantList(Landroid/content/Context;Lcom/yopeso/lieferando/model/LocationSuggestion;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->startActivity(Landroid/content/Intent;)V

    .line 202
    return-void
.end method

.method public deleteAddress(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 242
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->mAddressAdapter:Lcom/yopeso/lieferando/adapters/MainAddressAdapter;

    invoke-virtual {v0, p1}, Lcom/yopeso/lieferando/adapters/MainAddressAdapter;->getItem(I)Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Location;->getId()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->showDeleteDialog(IJ)V

    .line 243
    return-void
.end method

.method public editAddress(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->Content:I

    const/4 v2, 0x1

    invoke-static {v2, p1}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->newInstance(ZI)Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    move-result-object v2

    sget-object v3, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget-object v1, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 237
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 238
    return-void
.end method

.method protected getTitle()I
    .locals 1

    .prologue
    .line 89
    sget v0, Lcom/yopeso/lieferando/R$string;->main_address:I

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/LRFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 95
    new-instance v5, Lcom/yopeso/lieferando/adapters/MainAddressAdapter;

    invoke-direct {v5}, Lcom/yopeso/lieferando/adapters/MainAddressAdapter;-><init>()V

    iput-object v5, p0, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->mAddressAdapter:Lcom/yopeso/lieferando/adapters/MainAddressAdapter;

    .line 96
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->mAddressAdapter:Lcom/yopeso/lieferando/adapters/MainAddressAdapter;

    invoke-virtual {v5, p0}, Lcom/yopeso/lieferando/adapters/MainAddressAdapter;->setListener(Lcom/yopeso/lieferando/callback/MainAddressesCallBack;)V

    .line 98
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->getView()Landroid/view/View;

    move-result-object v5

    sget v6, Lcom/yopeso/lieferando/R$id;->AddNewAddress:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 99
    .local v3, "newAddress":Landroid/widget/Button;
    new-instance v5, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment$1;

    invoke-direct {v5, p0}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment$1;-><init>(Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v5

    invoke-interface {v5}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v5

    if-nez v5, :cond_0

    .line 107
    invoke-virtual {v3}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/SettingsContent;->getDynamicButtonFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->getView()Landroid/view/View;

    move-result-object v5

    sget v6, Lcom/yopeso/lieferando/R$id;->AddressesListView:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 110
    .local v0, "addressList":Landroid/widget/ListView;
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->mAddressAdapter:Lcom/yopeso/lieferando/adapters/MainAddressAdapter;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 113
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 115
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->getView()Landroid/view/View;

    move-result-object v5

    sget v6, Lcom/yopeso/lieferando/R$id;->noAddressRL:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->noAddressesView:Landroid/widget/RelativeLayout;

    .line 117
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 118
    .local v4, "padding":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->density:F

    .line 119
    .local v2, "mDensity":F
    const/high16 v5, 0x425c0000    # 55.0f

    mul-float/2addr v5, v2

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v1, v5

    .line 120
    .local v1, "height":I
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setHeight(I)V

    .line 121
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 123
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 84
    sget v0, Lcom/yopeso/lieferando/R$layout;->main_address_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onEvent(Lcom/yopeso/lieferando/events/AuthenticationEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/yopeso/lieferando/events/AuthenticationEvent;

    .prologue
    .line 285
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 289
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
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
    .line 162
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->mAddressAdapter:Lcom/yopeso/lieferando/adapters/MainAddressAdapter;

    invoke-virtual {v0, p3}, Lcom/yopeso/lieferando/adapters/MainAddressAdapter;->getItem(I)Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->tapOnNewOrderButton(Lcom/yopeso/lieferando/model/user/Location;)V

    .line 172
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 145
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onPause()V

    .line 146
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 149
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 127
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onResume()V

    .line 128
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 138
    :goto_0
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 141
    :cond_0
    return-void

    .line 133
    :cond_1
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    .line 134
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->mAddressAdapter:Lcom/yopeso/lieferando/adapters/MainAddressAdapter;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/UserData;->getLocations()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/adapters/MainAddressAdapter;->setmAddresses(Ljava/util/List;)V

    .line 135
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->mAddressAdapter:Lcom/yopeso/lieferando/adapters/MainAddressAdapter;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/adapters/MainAddressAdapter;->notifyDataSetChanged()V

    .line 136
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->showNoAddressesView()V

    goto :goto_0
.end method

.method public tapOnNewOrderButton(Lcom/yopeso/lieferando/model/user/Location;)V
    .locals 7
    .param p1, "location"    # Lcom/yopeso/lieferando/model/user/Location;

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    .line 177
    .local v0, "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 178
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v3

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    new-instance v5, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment$2;

    invoke-direct {v5, p0, p1}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment$2;-><init>(Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;Lcom/yopeso/lieferando/model/user/Location;)V

    .line 185
    new-instance v6, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment$3;

    invoke-direct {v6, p0, v0}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment$3;-><init>(Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;Lcom/yopeso/lieferando/model/cart/ShoppingCart;)V

    .line 178
    invoke-static {v3, v4, v5, v6}, Lcom/yopeso/lieferando/dialogs/CartNotEmptyDialog;->getDialog(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v1

    .line 191
    .local v1, "cartDialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 196
    .end local v1    # "cartDialog":Landroid/app/AlertDialog;
    :goto_0
    return-void

    .line 193
    :cond_0
    new-instance v2, Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-direct {v2, p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;-><init>(Lcom/yopeso/lieferando/model/user/Location;)V

    .line 194
    .local v2, "ls":Lcom/yopeso/lieferando/model/LocationSuggestion;
    invoke-virtual {p0, v2}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->addRestaurantListFragment(Lcom/yopeso/lieferando/model/LocationSuggestion;)V

    goto :goto_0
.end method
