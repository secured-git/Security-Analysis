.class public Lcom/yopeso/lieferando/activity/tablet/AccountActivity;
.super Lcom/yopeso/lieferando/activity/BaseAccountActivity;
.source "AccountActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# static fields
.field public static final ADD_ADDRESS_ACTION:Ljava/lang/String; = "add_address_action"


# instance fields
.field private bundle:Landroid/os/Bundle;

.field private fragment:Lcom/yopeso/lieferando/fragments/webview/WebViews;

.field private mainAccountFragmentTablet:Lcom/yopeso/lieferando/fragments/tablet/account/MainAccountFragmentTablet;

.field private mapAddressFragment:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/yopeso/lieferando/activity/BaseAccountActivity;-><init>()V

    return-void
.end method

.method private removeBackStack()V
    .locals 3

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    .line 211
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 212
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 216
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 213
    .restart local v1    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 212
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
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
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    .line 168
    .local v1, "backStackCount":I
    if-lez v1, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v4

    invoke-interface {v4}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_0

    sget-object v4, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    .line 172
    .local v2, "fr":Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;
    iput-object v6, p0, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->mapAddressFragment:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    .line 173
    invoke-virtual {v2}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->showNotSavedChangesDialog()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 175
    invoke-virtual {v2}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->onBackKeyPressed()V

    .line 176
    const/4 v0, 0x0

    .line 188
    .end local v2    # "fr":Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;
    .end local v3    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->mapAddressFragment:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->mapAddressFragment:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->showNotSavedChangesDialog()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 190
    iget-object v4, p0, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->mapAddressFragment:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->onBackKeyPressed()V

    .line 191
    const/4 v0, 0x0

    .line 196
    :goto_1
    iget-object v4, p0, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->mainAccountFragmentTablet:Lcom/yopeso/lieferando/fragments/tablet/account/MainAccountFragmentTablet;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->mainAccountFragmentTablet:Lcom/yopeso/lieferando/fragments/tablet/account/MainAccountFragmentTablet;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/fragments/tablet/account/MainAccountFragmentTablet;->isInEditMode()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 198
    iget-object v4, p0, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->mainAccountFragmentTablet:Lcom/yopeso/lieferando/fragments/tablet/account/MainAccountFragmentTablet;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/fragments/tablet/account/MainAccountFragmentTablet;->onBackKeyPressed()V

    .line 199
    const/4 v0, 0x0

    .line 204
    :goto_2
    if-eqz v0, :cond_1

    .line 205
    invoke-super {p0}, Lcom/yopeso/lieferando/activity/BaseAccountActivity;->onBackPressed()V

    .line 207
    :cond_1
    return-void

    .line 179
    .restart local v2    # "fr":Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;
    .restart local v3    # "name":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 194
    .end local v2    # "fr":Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;
    .end local v3    # "name":Ljava/lang/String;
    :cond_3
    iput-object v6, p0, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->mapAddressFragment:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    goto :goto_1

    .line 202
    :cond_4
    iput-object v6, p0, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->mainAccountFragmentTablet:Lcom/yopeso/lieferando/fragments/tablet/account/MainAccountFragmentTablet;

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 78
    .local v0, "id":I
    sget v1, Lcom/yopeso/lieferando/R$id;->MainAccountButton:I

    if-ne v0, v1, :cond_1

    .line 80
    invoke-direct {p0}, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->removeBackStack()V

    .line 81
    new-instance v1, Lcom/yopeso/lieferando/fragments/tablet/account/MainAccountFragmentTablet;

    invoke-direct {v1}, Lcom/yopeso/lieferando/fragments/tablet/account/MainAccountFragmentTablet;-><init>()V

    iput-object v1, p0, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->mainAccountFragmentTablet:Lcom/yopeso/lieferando/fragments/tablet/account/MainAccountFragmentTablet;

    .line 82
    sget v1, Lcom/yopeso/lieferando/R$id;->RightPane:I

    iget-object v2, p0, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->mainAccountFragmentTablet:Lcom/yopeso/lieferando/fragments/tablet/account/MainAccountFragmentTablet;

    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    sget v1, Lcom/yopeso/lieferando/R$id;->MainAddresse:I

    if-ne v0, v1, :cond_2

    .line 84
    invoke-direct {p0}, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->removeBackStack()V

    .line 85
    sget v1, Lcom/yopeso/lieferando/R$id;->RightPane:I

    new-instance v2, Lcom/yopeso/lieferando/fragments/tablet/account/MainAddressFragmentTablet;

    invoke-direct {v2}, Lcom/yopeso/lieferando/fragments/tablet/account/MainAddressFragmentTablet;-><init>()V

    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_2
    sget v1, Lcom/yopeso/lieferando/R$id;->AddNewAddress:I

    if-ne v0, v1, :cond_3

    .line 87
    invoke-direct {p0}, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->removeBackStack()V

    .line 88
    invoke-static {v4, v4}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->newInstance(ZI)Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->mapAddressFragment:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    .line 89
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$id;->RightPane:I

    iget-object v3, p0, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->mapAddressFragment:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    sget-object v4, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 90
    :cond_3
    sget v1, Lcom/yopeso/lieferando/R$id;->MainPoints:I

    if-ne v0, v1, :cond_4

    .line 91
    invoke-direct {p0}, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->removeBackStack()V

    .line 92
    sget v1, Lcom/yopeso/lieferando/R$id;->RightPane:I

    new-instance v2, Lcom/yopeso/lieferando/fragments/tablet/account/MainFidelityPointsFragmentTablet;

    invoke-direct {v2}, Lcom/yopeso/lieferando/fragments/tablet/account/MainFidelityPointsFragmentTablet;-><init>()V

    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_4
    sget v1, Lcom/yopeso/lieferando/R$id;->MainHelp:I

    if-ne v0, v1, :cond_5

    .line 94
    invoke-direct {p0}, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->removeBackStack()V

    .line 95
    new-instance v1, Lcom/yopeso/lieferando/fragments/webview/WebViews;

    invoke-direct {v1}, Lcom/yopeso/lieferando/fragments/webview/WebViews;-><init>()V

    iput-object v1, p0, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->fragment:Lcom/yopeso/lieferando/fragments/webview/WebViews;

    .line 96
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->bundle:Landroid/os/Bundle;

    .line 97
    iget-object v1, p0, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->bundle:Landroid/os/Bundle;

    const-string v2, "title"

    sget v3, Lcom/yopeso/lieferando/R$string;->help_text:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 98
    iget-object v1, p0, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->fragment:Lcom/yopeso/lieferando/fragments/webview/WebViews;

    iget-object v2, p0, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->bundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/fragments/webview/WebViews;->setArguments(Landroid/os/Bundle;)V

    .line 99
    sget v1, Lcom/yopeso/lieferando/R$id;->RightPane:I

    iget-object v2, p0, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->fragment:Lcom/yopeso/lieferando/fragments/webview/WebViews;

    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_5
    sget v1, Lcom/yopeso/lieferando/R$id;->MainHow:I

    if-ne v0, v1, :cond_6

    .line 101
    new-instance v1, Lcom/yopeso/lieferando/fragments/webview/WebViews;

    invoke-direct {v1}, Lcom/yopeso/lieferando/fragments/webview/WebViews;-><init>()V

    iput-object v1, p0, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->fragment:Lcom/yopeso/lieferando/fragments/webview/WebViews;

    .line 102
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->bundle:Landroid/os/Bundle;

    .line 103
    iget-object v1, p0, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->bundle:Landroid/os/Bundle;

    const-string v2, "title"

    sget v3, Lcom/yopeso/lieferando/R$string;->instructions_text:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 104
    iget-object v1, p0, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->fragment:Lcom/yopeso/lieferando/fragments/webview/WebViews;

    iget-object v2, p0, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->bundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/fragments/webview/WebViews;->setArguments(Landroid/os/Bundle;)V

    .line 105
    invoke-direct {p0}, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->removeBackStack()V

    .line 106
    sget v1, Lcom/yopeso/lieferando/R$id;->RightPane:I

    iget-object v2, p0, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->fragment:Lcom/yopeso/lieferando/fragments/webview/WebViews;

    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 107
    :cond_6
    sget v1, Lcom/yopeso/lieferando/R$id;->MainPropose:I

    if-ne v0, v1, :cond_7

    .line 108
    invoke-direct {p0}, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->removeBackStack()V

    .line 109
    sget v1, Lcom/yopeso/lieferando/R$id;->RightPane:I

    new-instance v2, Lcom/yopeso/lieferando/fragments/tablet/ProposeFragmentTablet;

    invoke-direct {v2}, Lcom/yopeso/lieferando/fragments/tablet/ProposeFragmentTablet;-><init>()V

    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 110
    :cond_7
    sget v1, Lcom/yopeso/lieferando/R$id;->MainApp:I

    if-ne v0, v1, :cond_8

    .line 111
    invoke-static {p0}, Lcom/yopeso/lieferando/dialogs/RateAppUtils;->showDialog(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 112
    :cond_8
    sget v1, Lcom/yopeso/lieferando/R$id;->MainOrders:I

    if-ne v0, v1, :cond_9

    .line 113
    invoke-direct {p0}, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->removeBackStack()V

    .line 114
    sget v1, Lcom/yopeso/lieferando/R$id;->RightPane:I

    new-instance v2, Lcom/yopeso/lieferando/fragments/tablet/account/OrderFragmentTablet;

    invoke-direct {v2}, Lcom/yopeso/lieferando/fragments/tablet/account/OrderFragmentTablet;-><init>()V

    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 115
    :cond_9
    sget v1, Lcom/yopeso/lieferando/R$id;->MainImpressions:I

    if-ne v0, v1, :cond_a

    .line 116
    new-instance v1, Lcom/yopeso/lieferando/fragments/webview/WebViews;

    invoke-direct {v1}, Lcom/yopeso/lieferando/fragments/webview/WebViews;-><init>()V

    iput-object v1, p0, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->fragment:Lcom/yopeso/lieferando/fragments/webview/WebViews;

    .line 117
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->bundle:Landroid/os/Bundle;

    .line 118
    iget-object v1, p0, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->bundle:Landroid/os/Bundle;

    const-string v2, "title"

    sget v3, Lcom/yopeso/lieferando/R$string;->impressions:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 119
    iget-object v1, p0, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->fragment:Lcom/yopeso/lieferando/fragments/webview/WebViews;

    iget-object v2, p0, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->bundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/fragments/webview/WebViews;->setArguments(Landroid/os/Bundle;)V

    .line 120
    invoke-direct {p0}, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->removeBackStack()V

    .line 121
    sget v1, Lcom/yopeso/lieferando/R$id;->RightPane:I

    iget-object v2, p0, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->fragment:Lcom/yopeso/lieferando/fragments/webview/WebViews;

    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 122
    :cond_a
    sget v1, Lcom/yopeso/lieferando/R$id;->MainFavorits:I

    if-ne v0, v1, :cond_b

    .line 123
    invoke-direct {p0}, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->removeBackStack()V

    .line 124
    sget v1, Lcom/yopeso/lieferando/R$id;->RightPane:I

    new-instance v2, Lcom/yopeso/lieferando/fragments/tablet/account/FavoriteFragmentTablet;

    invoke-direct {v2}, Lcom/yopeso/lieferando/fragments/tablet/account/FavoriteFragmentTablet;-><init>()V

    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 125
    :cond_b
    sget v1, Lcom/yopeso/lieferando/R$id;->AccountDetailsPhoto:I

    if-ne v0, v1, :cond_c

    .line 126
    invoke-direct {p0}, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->removeBackStack()V

    .line 127
    sget v1, Lcom/yopeso/lieferando/R$id;->RightPane:I

    new-instance v2, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;

    invoke-direct {v2}, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;-><init>()V

    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 128
    :cond_c
    sget v1, Lcom/yopeso/lieferando/R$id;->AccountPhoto:I

    if-ne v0, v1, :cond_d

    .line 129
    invoke-direct {p0}, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->removeBackStack()V

    .line 130
    sget v1, Lcom/yopeso/lieferando/R$id;->RightPane:I

    new-instance v2, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;

    invoke-direct {v2}, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;-><init>()V

    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 131
    :cond_d
    sget v1, Lcom/yopeso/lieferando/R$id;->StempList:I

    if-ne v0, v1, :cond_0

    .line 132
    invoke-direct {p0}, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->removeBackStack()V

    .line 133
    sget v1, Lcom/yopeso/lieferando/R$id;->RightPane:I

    new-instance v2, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;

    invoke-direct {v2}, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;-><init>()V

    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 50
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/activity/BaseAccountActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    sget v2, Lcom/yopeso/lieferando/R$layout;->two_pane_account:I

    invoke-virtual {p0, v2}, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->setContentView(I)V

    .line 53
    sget v2, Lcom/yopeso/lieferando/R$id;->accountMainParrent:I

    invoke-virtual {p0, v2}, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 54
    .local v1, "parent":Landroid/view/ViewGroup;
    sget v2, Lcom/yopeso/lieferando/R$id;->accountMainParrent:I

    invoke-virtual {p0, v2}, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->requestTransparentRegion(Landroid/view/View;)V

    .line 55
    if-nez p1, :cond_0

    .line 56
    new-instance v0, Lcom/yopeso/lieferando/fragments/tablet/account/AccountUserFragmentTablet;

    invoke-direct {v0}, Lcom/yopeso/lieferando/fragments/tablet/account/AccountUserFragmentTablet;-><init>()V

    .line 57
    .local v0, "frag":Lcom/yopeso/lieferando/fragments/account/AccountUserFragment;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "add_address_action"

    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    invoke-static {v4, v4}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->newInstance(ZI)Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->mapAddressFragment:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    .line 59
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->LeftPane:I

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->RightPane:I

    new-instance v4, Lcom/yopeso/lieferando/fragments/tablet/account/MainAddressFragmentTablet;

    invoke-direct {v4}, Lcom/yopeso/lieferando/fragments/tablet/account/MainAddressFragmentTablet;-><init>()V

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 60
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->RightPane:I

    iget-object v4, p0, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->mapAddressFragment:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    sget-object v5, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    sget-object v3, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 61
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 67
    .end local v0    # "frag":Lcom/yopeso/lieferando/fragments/account/AccountUserFragment;
    :cond_0
    :goto_0
    return-void

    .line 63
    .restart local v0    # "frag":Lcom/yopeso/lieferando/fragments/account/AccountUserFragment;
    :cond_1
    new-instance v2, Lcom/yopeso/lieferando/fragments/tablet/account/MainAccountFragmentTablet;

    invoke-direct {v2}, Lcom/yopeso/lieferando/fragments/tablet/account/MainAccountFragmentTablet;-><init>()V

    iput-object v2, p0, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->mainAccountFragmentTablet:Lcom/yopeso/lieferando/fragments/tablet/account/MainAccountFragmentTablet;

    .line 64
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->LeftPane:I

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->RightPane:I

    iget-object v4, p0, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->mainAccountFragmentTablet:Lcom/yopeso/lieferando/fragments/tablet/account/MainAccountFragmentTablet;

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$menu;->account_logout_menu:I

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 72
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/activity/BaseAccountActivity;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 139
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    .line 140
    .local v0, "itemId":I
    const v2, 0x102002c

    if-ne v0, v2, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->onBackPressed()V

    .line 161
    :goto_0
    return v1

    .line 156
    :cond_0
    sget v2, Lcom/yopeso/lieferando/R$id;->LogoutMenu:I

    if-ne v0, v2, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->doLogout()V

    .line 158
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->finish()V

    goto :goto_0

    .line 161
    :cond_1
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/activity/BaseAccountActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 220
    const-string v5, "AccountActivityTABLET"

    const-string v6, "onResume"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 222
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    const-string v5, "go_to_order_action"

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 223
    const-string v5, "order_id_key"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 224
    .local v4, "orderId":Ljava/lang/String;
    const-string v5, "msg_key"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, "msg":Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 226
    .local v0, "b":Landroid/os/Bundle;
    const-string v5, "go_to_order_action"

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 227
    const-string v5, "order_id_key"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v5, "msg_key"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v5, "AccountActivityTABLET"

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

    .line 230
    new-instance v3, Lcom/yopeso/lieferando/fragments/tablet/account/OrderFragmentTablet;

    invoke-direct {v3}, Lcom/yopeso/lieferando/fragments/tablet/account/OrderFragmentTablet;-><init>()V

    .line 231
    .local v3, "orderFragment":Lcom/yopeso/lieferando/fragments/tablet/account/OrderFragmentTablet;
    invoke-virtual {v3, v0}, Lcom/yopeso/lieferando/fragments/tablet/account/OrderFragmentTablet;->setArguments(Landroid/os/Bundle;)V

    .line 232
    invoke-direct {p0}, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->removeBackStack()V

    .line 233
    sget v5, Lcom/yopeso/lieferando/R$id;->RightPane:I

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v3, v8, v6}, Lcom/yopeso/lieferando/activity/tablet/AccountActivity;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    .line 235
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "orderFragment":Lcom/yopeso/lieferando/fragments/tablet/account/OrderFragmentTablet;
    .end local v4    # "orderId":Ljava/lang/String;
    :cond_0
    invoke-super {p0}, Lcom/yopeso/lieferando/activity/BaseAccountActivity;->onResume()V

    .line 236
    return-void
.end method
