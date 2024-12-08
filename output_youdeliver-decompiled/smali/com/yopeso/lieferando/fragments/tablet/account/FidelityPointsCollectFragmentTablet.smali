.class public Lcom/yopeso/lieferando/fragments/tablet/account/FidelityPointsCollectFragmentTablet;
.super Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;
.source "FidelityPointsCollectFragmentTablet.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected addFacebookConnect()V
    .locals 4

    .prologue
    .line 32
    sget v0, Lcom/yopeso/lieferando/R$id;->RightPane:I

    new-instance v1, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-direct {v1}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/yopeso/lieferando/fragments/tablet/account/FidelityPointsCollectFragmentTablet;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    .line 33
    return-void
.end method

.method protected addOrderRateFragment(Lcom/yopeso/lieferando/model/user/Order;)V
    .locals 4
    .param p1, "order"    # Lcom/yopeso/lieferando/model/user/Order;

    .prologue
    .line 27
    sget v0, Lcom/yopeso/lieferando/R$id;->RightPane:I

    invoke-static {p1}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->newInstance(Lcom/yopeso/lieferando/model/user/Order;)Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/yopeso/lieferando/fragments/tablet/account/FidelityPointsCollectFragmentTablet;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    .line 28
    return-void
.end method

.method protected addPhotoFragment()V
    .locals 4

    .prologue
    .line 22
    sget v0, Lcom/yopeso/lieferando/R$id;->RightPane:I

    new-instance v1, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;

    invoke-direct {v1}, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/yopeso/lieferando/fragments/tablet/account/FidelityPointsCollectFragmentTablet;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    .line 23
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super {p0, p1, p2}, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 18
    return-void
.end method
