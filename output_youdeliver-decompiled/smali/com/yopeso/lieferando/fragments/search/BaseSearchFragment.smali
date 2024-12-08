.class public abstract Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;
.super Lcom/yopeso/lieferando/fragments/search/CSHFragment;
.source "BaseSearchFragment.java"

# interfaces
.implements Lcom/yopeso/lieferando/callback/MainAddressesCallBack;


# instance fields
.field protected mAddressAdapter:Lcom/yopeso/lieferando/adapters/SearchAddressAdapter;

.field protected mAddressListView:Landroid/widget/ListView;

.field protected mListener:Landroid/view/View$OnClickListener;

.field protected mUserAddresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/user/Location;",
            ">;"
        }
    .end annotation
.end field

.field protected requestMade:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;->mUserAddresses:Ljava/util/ArrayList;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;->requestMade:Z

    .line 40
    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;ILandroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;->addNewFragment(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method private showDeleteDialog(IJ)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "addressId"    # J

    .prologue
    .line 187
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/yopeso/lieferando/R$string;->deleteAddress:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$string;->deleteAddressMessage:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$string;->cancel_button_text:I

    new-instance v2, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment$4;

    invoke-direct {v2, p0}, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment$4;-><init>(Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 192
    sget v1, Lcom/yopeso/lieferando/R$string;->deleteButtonText:I

    new-instance v2, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment$5;

    invoke-direct {v2, p0, p1}, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment$5;-><init>(Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 201
    return-void
.end method


# virtual methods
.method public addAsDefaultAddress(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 166
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;->mAddressAdapter:Lcom/yopeso/lieferando/adapters/SearchAddressAdapter;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/adapters/SearchAddressAdapter;->getmLocations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 169
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;->mAddressAdapter:Lcom/yopeso/lieferando/adapters/SearchAddressAdapter;

    invoke-virtual {v1, p1}, Lcom/yopeso/lieferando/adapters/SearchAddressAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/model/user/Location;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Location;->setPrimary(Z)V

    .line 170
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;->mAddressAdapter:Lcom/yopeso/lieferando/adapters/SearchAddressAdapter;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/adapters/SearchAddressAdapter;->notifyDataSetChanged()V

    .line 171
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v2

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;->mAddressAdapter:Lcom/yopeso/lieferando/adapters/SearchAddressAdapter;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/adapters/SearchAddressAdapter;->getmLocations()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Lcom/yopeso/lieferando/model/user/UserData;->setLocations(Ljava/util/ArrayList;)V

    .line 172
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->save()V

    .line 173
    return-void

    .line 166
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/user/Location;

    .line 167
    .local v0, "l":Lcom/yopeso/lieferando/model/user/Location;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/yopeso/lieferando/model/user/Location;->setPrimary(Z)V

    goto :goto_0
.end method

.method public deleteAddress(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 183
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;->mAddressAdapter:Lcom/yopeso/lieferando/adapters/SearchAddressAdapter;

    invoke-virtual {v0, p1}, Lcom/yopeso/lieferando/adapters/SearchAddressAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Location;->getId()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;->showDeleteDialog(IJ)V

    .line 184
    return-void
.end method

.method protected displayAddressesOrLogin()V
    .locals 9

    .prologue
    const/16 v2, 0x8

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 120
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;->mListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;->mListener:Landroid/view/View$OnClickListener;

    .line 123
    :cond_0
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 125
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v0

    if-nez v0, :cond_1

    .line 127
    new-instance v0, Lcom/yopeso/lieferando/model/user/UserData;

    invoke-direct {v0}, Lcom/yopeso/lieferando/model/user/UserData;-><init>()V

    invoke-static {v0}, Lcom/yopeso/lieferando/util/UserStore;->setData(Lcom/yopeso/lieferando/model/user/UserData;)V

    .line 130
    :cond_1
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v7

    .line 131
    .local v7, "userData":Lcom/yopeso/lieferando/model/user/UserData;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->login_layout_ref:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 132
    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/user/UserData;->getLocations()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 133
    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/user/UserData;->getLocations()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;->mUserAddresses:Ljava/util/ArrayList;

    .line 135
    :cond_2
    new-instance v0, Lcom/yopeso/lieferando/adapters/SearchAddressAdapter;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$layout;->address_cell:I

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;->mUserAddresses:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;->mListener:Landroid/view/View$OnClickListener;

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/yopeso/lieferando/adapters/SearchAddressAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Landroid/view/View$OnClickListener;Lcom/yopeso/lieferando/callback/MainAddressesCallBack;Z)V

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;->mAddressAdapter:Lcom/yopeso/lieferando/adapters/SearchAddressAdapter;

    .line 136
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;->mAddressListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;->mUserAddresses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    move v6, v8

    :cond_3
    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setStackFromBottom(Z)V

    .line 137
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;->mAddressListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;->mAddressAdapter:Lcom/yopeso/lieferando/adapters/SearchAddressAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 157
    .end local v7    # "userData":Lcom/yopeso/lieferando/model/user/UserData;
    :goto_0
    return-void

    .line 140
    :cond_4
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 141
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v7

    .line 142
    .restart local v7    # "userData":Lcom/yopeso/lieferando/model/user/UserData;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->login_layout_ref:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 143
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/user/UserData;->getLocations()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 144
    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/user/UserData;->getLocations()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;->mUserAddresses:Ljava/util/ArrayList;

    .line 146
    :cond_5
    new-instance v0, Lcom/yopeso/lieferando/adapters/SearchAddressAdapter;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$layout;->address_cell:I

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;->mUserAddresses:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;->mListener:Landroid/view/View$OnClickListener;

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/yopeso/lieferando/adapters/SearchAddressAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Landroid/view/View$OnClickListener;Lcom/yopeso/lieferando/callback/MainAddressesCallBack;Z)V

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;->mAddressAdapter:Lcom/yopeso/lieferando/adapters/SearchAddressAdapter;

    .line 147
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;->mAddressListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;->mUserAddresses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_6

    :goto_1
    invoke-virtual {v0, v8}, Landroid/widget/ListView;->setStackFromBottom(Z)V

    .line 148
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;->mAddressListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;->mAddressAdapter:Lcom/yopeso/lieferando/adapters/SearchAddressAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    :cond_6
    move v8, v6

    .line 147
    goto :goto_1

    .line 151
    .end local v7    # "userData":Lcom/yopeso/lieferando/model/user/UserData;
    :cond_7
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->login_layout_ref:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;->mUserAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 153
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;->mAddressListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method protected displayRestaurantsForAddress(Lcom/yopeso/lieferando/model/user/Location;)V
    .locals 7
    .param p1, "location"    # Lcom/yopeso/lieferando/model/user/Location;

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    .line 93
    .local v0, "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 94
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v3

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    new-instance v5, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment$2;

    invoke-direct {v5, p0, p1}, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment$2;-><init>(Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;Lcom/yopeso/lieferando/model/user/Location;)V

    .line 101
    new-instance v6, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment$3;

    invoke-direct {v6, p0}, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment$3;-><init>(Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;)V

    .line 94
    invoke-static {v3, v4, v5, v6}, Lcom/yopeso/lieferando/dialogs/CartNotEmptyDialog;->getDialog(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v1

    .line 107
    .local v1, "cartDialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 112
    .end local v1    # "cartDialog":Landroid/app/AlertDialog;
    :goto_0
    return-void

    .line 109
    :cond_0
    new-instance v2, Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-direct {v2, p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;-><init>(Lcom/yopeso/lieferando/model/user/Location;)V

    .line 110
    .local v2, "ls":Lcom/yopeso/lieferando/model/LocationSuggestion;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/yopeso/lieferando/callback/ILocationSelectedCallback;

    invoke-interface {v3, v2}, Lcom/yopeso/lieferando/callback/ILocationSelectedCallback;->onLocationSelected(Lcom/yopeso/lieferando/model/LocationSuggestion;)V

    goto :goto_0
.end method

.method public editAddress(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

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

    .line 178
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 179
    return-void
.end method

.method protected loadHtmlHeader(Landroid/webkit/WebView;)V
    .locals 3
    .param p1, "webView"    # Landroid/webkit/WebView;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 55
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 56
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 57
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 58
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 59
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 60
    const/high16 v0, 0x2000000

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 61
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/SettingsContent;->getDynamicStartUpHTML()Ljava/lang/String;

    move-result-object v0

    const-string v1, "text/html"

    const-string v2, "UTF-8"

    invoke-virtual {p1, v0, v1, v2}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    new-instance v0, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment$1;

    invoke-direct {v0, p0}, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment$1;-><init>(Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 71
    :cond_0
    return-void
.end method

.method public setListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;->mListener:Landroid/view/View$OnClickListener;

    .line 80
    return-void
.end method

.method public tapOnNewOrderButton(Lcom/yopeso/lieferando/model/user/Location;)V
    .locals 0
    .param p1, "location"    # Lcom/yopeso/lieferando/model/user/Location;

    .prologue
    .line 161
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;->displayRestaurantsForAddress(Lcom/yopeso/lieferando/model/user/Location;)V

    .line 162
    return-void
.end method
