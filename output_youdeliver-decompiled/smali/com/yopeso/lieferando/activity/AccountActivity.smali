.class public Lcom/yopeso/lieferando/activity/AccountActivity;
.super Lcom/yopeso/lieferando/activity/BaseAccountActivity;
.source "AccountActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final ADD_ADDRESS_ACTION:Ljava/lang/String; = "add_address_action"

.field private static final PHOTO_FRAGMENT:Ljava/lang/String; = "PhotoFragment"


# instance fields
.field private bundle:Landroid/os/Bundle;

.field private fragment:Lcom/yopeso/lieferando/fragments/webview/WebViews;

.field private mapAddressFragment:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/yopeso/lieferando/activity/BaseAccountActivity;-><init>()V

    return-void
.end method

.method private addPhotoFragment()V
    .locals 3

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/AccountActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "PhotoFragment"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;

    .line 158
    .local v0, "pPF":Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;
    if-nez v0, :cond_0

    .line 159
    new-instance v0, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;

    .end local v0    # "pPF":Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;
    invoke-direct {v0}, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;-><init>()V

    .line 161
    .restart local v0    # "pPF":Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;
    :cond_0
    sget v1, Lcom/yopeso/lieferando/R$id;->Content:I

    const-string v2, "PhotoFragment"

    invoke-virtual {p0, v1, v0, v2}, Lcom/yopeso/lieferando/activity/AccountActivity;->addNewFragment(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 162
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 166
    const/4 v0, 0x1

    .line 167
    .local v0, "backStack":Z
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/AccountActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    .line 168
    .local v1, "backStackCount":I
    if-lez v1, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/AccountActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v4

    invoke-interface {v4}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_3

    sget-object v4, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 171
    iput-object v6, p0, Lcom/yopeso/lieferando/activity/AccountActivity;->mapAddressFragment:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    .line 172
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/AccountActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    .line 177
    .local v2, "fr":Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;
    invoke-virtual {v2}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->showNotSavedChangesDialog()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 179
    invoke-virtual {v2}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->onBackKeyPressed()V

    .line 180
    const/4 v0, 0x0

    .line 203
    .end local v2    # "fr":Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;
    .end local v3    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/yopeso/lieferando/activity/AccountActivity;->mapAddressFragment:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/yopeso/lieferando/activity/AccountActivity;->mapAddressFragment:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->showNotSavedChangesDialog()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 205
    iget-object v4, p0, Lcom/yopeso/lieferando/activity/AccountActivity;->mapAddressFragment:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->onBackKeyPressed()V

    .line 206
    const/4 v0, 0x0

    .line 212
    :goto_1
    if-eqz v0, :cond_1

    .line 213
    invoke-super {p0}, Lcom/yopeso/lieferando/activity/BaseAccountActivity;->onBackPressed()V

    .line 215
    :cond_1
    return-void

    .line 183
    .restart local v2    # "fr":Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;
    .restart local v3    # "name":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x1

    .line 186
    goto :goto_0

    .line 187
    .end local v2    # "fr":Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;
    :cond_3
    if-eqz v3, :cond_0

    const-string v4, "MainAccountFragment"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/AccountActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    .line 189
    .local v2, "fr":Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->isInEditMode()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 191
    invoke-virtual {v2}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->onBackKeyPressed()V

    .line 192
    const/4 v0, 0x0

    .line 193
    goto :goto_0

    .line 195
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 209
    .end local v2    # "fr":Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;
    .end local v3    # "name":Ljava/lang/String;
    :cond_5
    iput-object v6, p0, Lcom/yopeso/lieferando/activity/AccountActivity;->mapAddressFragment:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 109
    .local v0, "id":I
    sget v1, Lcom/yopeso/lieferando/R$id;->MainAccountButton:I

    if-ne v0, v1, :cond_1

    .line 112
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/AccountActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$id;->Content:I

    new-instance v3, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-direct {v3}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;-><init>()V

    const-string v4, "MainAccountFragment"

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "MainAccountFragment"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    sget v1, Lcom/yopeso/lieferando/R$id;->MainAddresse:I

    if-ne v0, v1, :cond_2

    .line 114
    sget v1, Lcom/yopeso/lieferando/R$id;->Content:I

    new-instance v2, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;

    invoke-direct {v2}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/yopeso/lieferando/activity/AccountActivity;->addNewFragment(ILandroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 115
    :cond_2
    sget v1, Lcom/yopeso/lieferando/R$id;->AddNewAddress:I

    if-ne v0, v1, :cond_3

    .line 117
    invoke-static {v2, v2}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->newInstance(ZI)Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/yopeso/lieferando/activity/AccountActivity;->mapAddressFragment:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    .line 118
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/AccountActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$id;->Content:I

    iget-object v3, p0, Lcom/yopeso/lieferando/activity/AccountActivity;->mapAddressFragment:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    sget-object v4, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 119
    :cond_3
    sget v1, Lcom/yopeso/lieferando/R$id;->MainPoints:I

    if-ne v0, v1, :cond_4

    .line 120
    sget v1, Lcom/yopeso/lieferando/R$id;->Content:I

    new-instance v2, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;

    invoke-direct {v2}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/yopeso/lieferando/activity/AccountActivity;->addNewFragment(ILandroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 121
    :cond_4
    sget v1, Lcom/yopeso/lieferando/R$id;->AccountDetailsPhoto:I

    if-ne v0, v1, :cond_5

    .line 122
    invoke-direct {p0}, Lcom/yopeso/lieferando/activity/AccountActivity;->addPhotoFragment()V

    goto :goto_0

    .line 123
    :cond_5
    sget v1, Lcom/yopeso/lieferando/R$id;->AccountPhoto:I

    if-ne v0, v1, :cond_6

    .line 124
    invoke-direct {p0}, Lcom/yopeso/lieferando/activity/AccountActivity;->addPhotoFragment()V

    goto :goto_0

    .line 125
    :cond_6
    sget v1, Lcom/yopeso/lieferando/R$id;->MainHelp:I

    if-ne v0, v1, :cond_7

    .line 126
    new-instance v1, Lcom/yopeso/lieferando/fragments/webview/WebViews;

    invoke-direct {v1}, Lcom/yopeso/lieferando/fragments/webview/WebViews;-><init>()V

    iput-object v1, p0, Lcom/yopeso/lieferando/activity/AccountActivity;->fragment:Lcom/yopeso/lieferando/fragments/webview/WebViews;

    .line 127
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/yopeso/lieferando/activity/AccountActivity;->bundle:Landroid/os/Bundle;

    .line 128
    iget-object v1, p0, Lcom/yopeso/lieferando/activity/AccountActivity;->bundle:Landroid/os/Bundle;

    const-string v2, "title"

    sget v3, Lcom/yopeso/lieferando/R$string;->help_text:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 129
    iget-object v1, p0, Lcom/yopeso/lieferando/activity/AccountActivity;->fragment:Lcom/yopeso/lieferando/fragments/webview/WebViews;

    iget-object v2, p0, Lcom/yopeso/lieferando/activity/AccountActivity;->bundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/fragments/webview/WebViews;->setArguments(Landroid/os/Bundle;)V

    .line 130
    sget v1, Lcom/yopeso/lieferando/R$id;->Content:I

    iget-object v2, p0, Lcom/yopeso/lieferando/activity/AccountActivity;->fragment:Lcom/yopeso/lieferando/fragments/webview/WebViews;

    invoke-virtual {p0, v1, v2}, Lcom/yopeso/lieferando/activity/AccountActivity;->addNewFragment(ILandroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 131
    :cond_7
    sget v1, Lcom/yopeso/lieferando/R$id;->MainHow:I

    if-ne v0, v1, :cond_8

    .line 132
    new-instance v1, Lcom/yopeso/lieferando/fragments/webview/WebViews;

    invoke-direct {v1}, Lcom/yopeso/lieferando/fragments/webview/WebViews;-><init>()V

    iput-object v1, p0, Lcom/yopeso/lieferando/activity/AccountActivity;->fragment:Lcom/yopeso/lieferando/fragments/webview/WebViews;

    .line 133
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/yopeso/lieferando/activity/AccountActivity;->bundle:Landroid/os/Bundle;

    .line 134
    iget-object v1, p0, Lcom/yopeso/lieferando/activity/AccountActivity;->bundle:Landroid/os/Bundle;

    const-string v2, "title"

    sget v3, Lcom/yopeso/lieferando/R$string;->instructions_text:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 135
    iget-object v1, p0, Lcom/yopeso/lieferando/activity/AccountActivity;->fragment:Lcom/yopeso/lieferando/fragments/webview/WebViews;

    iget-object v2, p0, Lcom/yopeso/lieferando/activity/AccountActivity;->bundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/fragments/webview/WebViews;->setArguments(Landroid/os/Bundle;)V

    .line 136
    sget v1, Lcom/yopeso/lieferando/R$id;->Content:I

    iget-object v2, p0, Lcom/yopeso/lieferando/activity/AccountActivity;->fragment:Lcom/yopeso/lieferando/fragments/webview/WebViews;

    invoke-virtual {p0, v1, v2}, Lcom/yopeso/lieferando/activity/AccountActivity;->addNewFragment(ILandroid/support/v4/app/Fragment;)V

    goto/16 :goto_0

    .line 137
    :cond_8
    sget v1, Lcom/yopeso/lieferando/R$id;->MainPropose:I

    if-ne v0, v1, :cond_9

    .line 138
    sget v1, Lcom/yopeso/lieferando/R$id;->Content:I

    new-instance v2, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;

    invoke-direct {v2}, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/yopeso/lieferando/activity/AccountActivity;->addNewFragment(ILandroid/support/v4/app/Fragment;)V

    goto/16 :goto_0

    .line 139
    :cond_9
    sget v1, Lcom/yopeso/lieferando/R$id;->MainApp:I

    if-ne v0, v1, :cond_a

    .line 140
    invoke-static {p0}, Lcom/yopeso/lieferando/dialogs/RateAppUtils;->showDialog(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 141
    :cond_a
    sget v1, Lcom/yopeso/lieferando/R$id;->MainImpressions:I

    if-ne v0, v1, :cond_b

    .line 142
    new-instance v1, Lcom/yopeso/lieferando/fragments/webview/WebViews;

    invoke-direct {v1}, Lcom/yopeso/lieferando/fragments/webview/WebViews;-><init>()V

    iput-object v1, p0, Lcom/yopeso/lieferando/activity/AccountActivity;->fragment:Lcom/yopeso/lieferando/fragments/webview/WebViews;

    .line 143
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/yopeso/lieferando/activity/AccountActivity;->bundle:Landroid/os/Bundle;

    .line 144
    iget-object v1, p0, Lcom/yopeso/lieferando/activity/AccountActivity;->bundle:Landroid/os/Bundle;

    const-string v2, "title"

    sget v3, Lcom/yopeso/lieferando/R$string;->impressions:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 145
    iget-object v1, p0, Lcom/yopeso/lieferando/activity/AccountActivity;->fragment:Lcom/yopeso/lieferando/fragments/webview/WebViews;

    iget-object v2, p0, Lcom/yopeso/lieferando/activity/AccountActivity;->bundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/fragments/webview/WebViews;->setArguments(Landroid/os/Bundle;)V

    .line 146
    sget v1, Lcom/yopeso/lieferando/R$id;->Content:I

    iget-object v2, p0, Lcom/yopeso/lieferando/activity/AccountActivity;->fragment:Lcom/yopeso/lieferando/fragments/webview/WebViews;

    invoke-virtual {p0, v1, v2}, Lcom/yopeso/lieferando/activity/AccountActivity;->addNewFragment(ILandroid/support/v4/app/Fragment;)V

    goto/16 :goto_0

    .line 147
    :cond_b
    sget v1, Lcom/yopeso/lieferando/R$id;->MainOrders:I

    if-ne v0, v1, :cond_c

    .line 148
    sget v1, Lcom/yopeso/lieferando/R$id;->Content:I

    new-instance v2, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;

    invoke-direct {v2}, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/yopeso/lieferando/activity/AccountActivity;->addNewFragment(ILandroid/support/v4/app/Fragment;)V

    goto/16 :goto_0

    .line 149
    :cond_c
    sget v1, Lcom/yopeso/lieferando/R$id;->MainFavorits:I

    if-ne v0, v1, :cond_d

    .line 150
    sget v1, Lcom/yopeso/lieferando/R$id;->Content:I

    new-instance v2, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;

    invoke-direct {v2}, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/yopeso/lieferando/activity/AccountActivity;->addNewFragment(ILandroid/support/v4/app/Fragment;)V

    goto/16 :goto_0

    .line 151
    :cond_d
    sget v1, Lcom/yopeso/lieferando/R$id;->StempList:I

    if-ne v0, v1, :cond_0

    .line 152
    sget v1, Lcom/yopeso/lieferando/R$id;->Content:I

    new-instance v2, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;

    invoke-direct {v2}, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/yopeso/lieferando/activity/AccountActivity;->addNewFragment(ILandroid/support/v4/app/Fragment;)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 45
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/activity/BaseAccountActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    sget v1, Lcom/yopeso/lieferando/R$layout;->tab_main:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/activity/AccountActivity;->setContentView(I)V

    .line 48
    sget v1, Lcom/yopeso/lieferando/R$id;->accountMainParrent:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/activity/AccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 49
    .local v0, "parent":Landroid/view/ViewGroup;
    sget v1, Lcom/yopeso/lieferando/R$id;->accountMainParrent:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/activity/AccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->requestTransparentRegion(Landroid/view/View;)V

    .line 51
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/AccountActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 52
    if-nez p1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/AccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "add_address_action"

    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/AccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    invoke-static {v3, v3}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->newInstance(ZI)Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/yopeso/lieferando/activity/AccountActivity;->mapAddressFragment:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    .line 55
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/AccountActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$id;->Content:I

    iget-object v3, p0, Lcom/yopeso/lieferando/activity/AccountActivity;->mapAddressFragment:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    sget-object v4, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/AccountActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$id;->Content:I

    new-instance v3, Lcom/yopeso/lieferando/fragments/account/AccountUserFragment;

    invoke-direct {v3}, Lcom/yopeso/lieferando/fragments/account/AccountUserFragment;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/AccountActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$menu;->account_logout_menu:I

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 65
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/activity/BaseAccountActivity;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 70
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    .line 71
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/AccountActivity;->onBackPressed()V

    .line 73
    const/4 v1, 0x1

    .line 84
    :goto_0
    return v1

    .line 80
    :cond_0
    sget v1, Lcom/yopeso/lieferando/R$id;->LogoutMenu:I

    if-ne v0, v1, :cond_1

    .line 81
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/AccountActivity;->doLogout()V

    .line 82
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/AccountActivity;->finish()V

    .line 84
    :cond_1
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/activity/BaseAccountActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 89
    invoke-super {p0}, Lcom/yopeso/lieferando/activity/BaseAccountActivity;->onResume()V

    .line 90
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/AccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 91
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    const-string v5, "go_to_order_action"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 92
    const-string v5, "order_id_key"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 93
    .local v4, "orderId":Ljava/lang/String;
    const-string v5, "msg_key"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, "msg":Ljava/lang/String;
    const-string v5, "go_to_order_action"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 95
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 96
    .local v0, "b":Landroid/os/Bundle;
    const-string v5, "order_id_key"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v5, "AccountActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onResume+ACTION_GO_TO_THE_ORDER:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "MSG:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string v5, "msg_key"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance v3, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;

    invoke-direct {v3}, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;-><init>()V

    .line 100
    .local v3, "orderFragment":Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;
    invoke-virtual {v3, v0}, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->setArguments(Landroid/os/Bundle;)V

    .line 101
    sget v5, Lcom/yopeso/lieferando/R$id;->Content:I

    invoke-virtual {p0, v5, v3}, Lcom/yopeso/lieferando/activity/AccountActivity;->addNewFragment(ILandroid/support/v4/app/Fragment;)V

    .line 104
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "orderFragment":Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;
    .end local v4    # "orderId":Ljava/lang/String;
    :cond_0
    return-void
.end method
