.class public Lcom/yopeso/lieferando/fragments/search/SearchMainFragmentPL;
.super Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;
.source "SearchMainFragmentPL.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;-><init>()V

    .line 41
    return-void
.end method

.method private validateLocationURL()V
    .locals 6

    .prologue
    .line 116
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/search/SearchMainFragmentPL;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getPlz()Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "plz":Ljava/lang/String;
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/search/SearchMainFragmentPL;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getLocationUrl()Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "url":Ljava/lang/String;
    const-string v3, "SearchFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "OLD url:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 121
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "newUrl":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/search/SearchMainFragmentPL;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v3, v0}, Lcom/yopeso/lieferando/model/LocationSuggestion;->setLocationUrl(Ljava/lang/String;)V

    .line 124
    const-string v3, "SearchFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "NEW url:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .end local v0    # "newUrl":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method protected goToRestaurantDetails()V
    .locals 4

    .prologue
    .line 139
    sget v0, Lcom/yopeso/lieferando/R$id;->Content:I

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->newInstance(Z)Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "RestaurantDetailsFrag"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/yopeso/lieferando/fragments/search/SearchMainFragmentPL;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    .line 140
    return-void
.end method

.method public onEvent(Lcom/yopeso/lieferando/events/AuthenticationEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/yopeso/lieferando/events/AuthenticationEvent;

    .prologue
    const/4 v2, 0x0

    .line 92
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/SearchMainFragmentPL;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->CustomerEmail:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 93
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/SearchMainFragmentPL;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->CustomerPassword:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/SearchMainFragmentPL;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->CustomerEmail:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/SearchMainFragmentPL;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->CustomerPassword:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 96
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/SearchMainFragmentPL;->displayAddressesOrLogin()V

    .line 97
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "positon"    # I
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
    .line 130
    .local p1, "adapter":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/SearchMainFragmentPL;->mUserAddresses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt p3, v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/SearchMainFragmentPL;->mUserAddresses:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/user/Location;

    .line 132
    .local v0, "address":Lcom/yopeso/lieferando/model/user/Location;
    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/fragments/search/SearchMainFragmentPL;->displayRestaurantsForAddress(Lcom/yopeso/lieferando/model/user/Location;)V

    .line 133
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Location;->getPlz()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackSelectAddress(Ljava/lang/String;)V

    .line 135
    .end local v0    # "address":Lcom/yopeso/lieferando/model/user/Location;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->onResume()V

    .line 79
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/SearchMainFragmentPL;->displayAddressesOrLogin()V

    .line 80
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->onStart()V

    .line 71
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 74
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->onStop()V

    .line 86
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 89
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1, p2}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTabletPL;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 47
    sget v0, Lcom/yopeso/lieferando/R$id;->LocateView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/view/LocateView;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/search/SearchMainFragmentPL;->mLocateView:Lcom/yopeso/lieferando/view/LocateView;

    .line 48
    sget v0, Lcom/yopeso/lieferando/R$id;->SignInNowButton:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    sget v0, Lcom/yopeso/lieferando/R$id;->SignInNowButton:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/SettingsContent;->getDynamicButtonFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 51
    sget v0, Lcom/yopeso/lieferando/R$id;->loginTV:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/SettingsContent;->getmButtonColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53
    :cond_0
    sget v0, Lcom/yopeso/lieferando/R$id;->LoginWithFbBtn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    sget v0, Lcom/yopeso/lieferando/R$id;->ForgotPasswordButton:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    sget v0, Lcom/yopeso/lieferando/R$id;->signUpButton:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    sget v0, Lcom/yopeso/lieferando/R$id;->signUpButton2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    sget v0, Lcom/yopeso/lieferando/R$id;->signUpLL:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    sget v0, Lcom/yopeso/lieferando/R$id;->SearchListView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/search/SearchMainFragmentPL;->mAddressListView:Landroid/widget/ListView;

    .line 61
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/SearchMainFragmentPL;->mAddressListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 66
    return-void
.end method

.method protected showRestaurantsForSuggestion()V
    .locals 4

    .prologue
    .line 101
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/SearchMainFragmentPL;->mHouseNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/SearchMainFragmentPL;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/LocationSuggestion;->setHouseNumber(Ljava/lang/String;)V

    .line 104
    :cond_0
    iget-boolean v1, p0, Lcom/yopeso/lieferando/fragments/search/SearchMainFragmentPL;->mCityProvided:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/yopeso/lieferando/fragments/search/SearchMainFragmentPL;->mStreetProvided:Z

    if-nez v1, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/yopeso/lieferando/fragments/search/SearchMainFragmentPL;->mCityProvided:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/SearchMainFragmentPL;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getCityId()I

    move-result v1

    if-lez v1, :cond_3

    .line 105
    :cond_2
    const-string v1, "SearchFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Selected Suggestion "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/search/SearchMainFragmentPL;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getCityId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " plz="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/search/SearchMainFragmentPL;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getPlz()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/search/SearchMainFragmentPL;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getLocationUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/search/SearchMainFragmentPL;->validateLocationURL()V

    .line 107
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/SearchMainFragmentPL;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getPlz()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/SearchMainFragmentPL;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getCityId()I

    move-result v2

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/SearchMainFragmentPL;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackPostCode(Ljava/lang/String;ILandroid/content/Context;)V

    .line 108
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/SearchMainFragmentPL;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackFBZip(Landroid/content/Context;)V

    .line 109
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/SearchMainFragmentPL;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/callback/ILocationSelectedCallback;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/SearchMainFragmentPL;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-interface {v1, v2}, Lcom/yopeso/lieferando/callback/ILocationSelectedCallback;->onLocationSelected(Lcom/yopeso/lieferando/model/LocationSuggestion;)V

    .line 110
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/SearchMainFragmentPL;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 111
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/SearchMainFragmentPL;->mHouseNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 113
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    return-void
.end method
