.class public Lcom/yopeso/lieferando/fragments/tablet/account/MainAddressFragmentTablet;
.super Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;
.source "MainAddressFragmentTablet.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/yopeso/lieferando/fragments/tablet/account/MainAddressFragmentTablet;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yopeso/lieferando/fragments/tablet/account/MainAddressFragmentTablet;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected addRestaurantDetailsFragment(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 2
    .param p1, "r"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/account/MainAddressFragmentTablet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v1, p1, v1, v1}, Lcom/yopeso/lieferando/util/IntentNavUtils;->goToRestaurant(Landroid/app/Activity;ZLcom/yopeso/lieferando/model/restaurant/Restaurant;ZZ)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/fragments/tablet/account/MainAddressFragmentTablet;->startActivity(Landroid/content/Intent;)V

    .line 72
    return-void
.end method

.method protected addRestaurantListFragment(Lcom/yopeso/lieferando/model/LocationSuggestion;)V
    .locals 3
    .param p1, "ls"    # Lcom/yopeso/lieferando/model/LocationSuggestion;

    .prologue
    .line 64
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getPlz()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getCityId()I

    move-result v1

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/account/MainAddressFragmentTablet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackPostCode(Ljava/lang/String;ILandroid/content/Context;)V

    .line 65
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/account/MainAddressFragmentTablet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackFBZip(Landroid/content/Context;)V

    .line 66
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/account/MainAddressFragmentTablet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/util/IntentNavUtils;->goToRestaurantList(Landroid/content/Context;Lcom/yopeso/lieferando/model/LocationSuggestion;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/fragments/tablet/account/MainAddressFragmentTablet;->startActivity(Landroid/content/Intent;)V

    .line 67
    return-void
.end method

.method public editAddress(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 76
    sget-object v0, Lcom/yopeso/lieferando/fragments/tablet/account/MainAddressFragmentTablet;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "editAddress:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/account/MainAddressFragmentTablet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->RightPane:I

    const/4 v2, 0x1

    invoke-static {v2, p1}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->newInstance(ZI)Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    move-result-object v2

    sget-object v3, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget-object v1, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 79
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/fragments/tablet/account/MainAddressFragmentTablet;->setHasOptionsMenu(Z)V

    .line 23
    sget-object v0, Lcom/yopeso/lieferando/fragments/tablet/account/MainAddressFragmentTablet;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    .line 39
    invoke-super {p0, p1, p2}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V

    .line 40
    sget v0, Lcom/yopeso/lieferando/R$menu;->add_address_menu:I

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 41
    sget-object v0, Lcom/yopeso/lieferando/fragments/tablet/account/MainAddressFragmentTablet;->TAG:Ljava/lang/String;

    const-string v1, "onCreateOptionsMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 57
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    sget-object v0, Lcom/yopeso/lieferando/fragments/tablet/account/MainAddressFragmentTablet;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onItemClick:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/account/MainAddressFragmentTablet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->RightPane:I

    const/4 v2, 0x1

    invoke-static {v2, p3}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->newInstance(ZI)Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    move-result-object v2

    sget-object v3, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget-object v1, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 60
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/4 v1, 0x0

    .line 46
    sget-object v2, Lcom/yopeso/lieferando/fragments/tablet/account/MainAddressFragmentTablet;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "onOptionsItemSelected:"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    sget v4, Lcom/yopeso/lieferando/R$id;->menu_add_address:I

    if-ne v0, v4, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Lcom/yopeso/lieferando/R$id;->menu_add_address:I

    if-ne v0, v2, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/account/MainAddressFragmentTablet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v2, Lcom/yopeso/lieferando/R$id;->RightPane:I

    invoke-static {v1, v1}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->newInstance(ZI)Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    move-result-object v1

    sget-object v3, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2, v1, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 49
    sget-object v1, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 51
    :cond_0
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0

    :cond_1
    move v0, v1

    .line 46
    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, -0x1

    const/4 v3, -0x2

    .line 28
    invoke-super {p0, p1, p2}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 29
    sget v1, Lcom/yopeso/lieferando/R$id;->AddButtonLayout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 30
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 31
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 32
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 33
    sget v1, Lcom/yopeso/lieferando/R$id;->noAddressRL:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    sget-object v1, Lcom/yopeso/lieferando/fragments/tablet/account/MainAddressFragmentTablet;->TAG:Ljava/lang/String;

    const-string v2, "onViewCreated"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void
.end method
