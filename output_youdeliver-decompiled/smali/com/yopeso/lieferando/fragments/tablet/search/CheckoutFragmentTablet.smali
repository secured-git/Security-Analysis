.class public Lcom/yopeso/lieferando/fragments/tablet/search/CheckoutFragmentTablet;
.super Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;
.source "CheckoutFragmentTablet.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected goToEditAddressFragment(Z)V
    .locals 4
    .param p1, "useGPS"    # Z

    .prologue
    .line 25
    sget v0, Lcom/yopeso/lieferando/R$id;->LeftPane:I

    invoke-static {p1}, Lcom/yopeso/lieferando/fragments/tablet/search/DeliveryAddressFragmentTablet;->newInstance(Z)Lcom/yopeso/lieferando/fragments/tablet/search/DeliveryAddressFragmentTablet;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/yopeso/lieferando/fragments/tablet/search/CheckoutFragmentTablet;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    .line 26
    return-void
.end method

.method protected goToEditDeliveryTime()V
    .locals 4

    .prologue
    .line 30
    sget v0, Lcom/yopeso/lieferando/R$id;->LeftPane:I

    new-instance v1, Lcom/yopeso/lieferando/fragments/tablet/search/DeliveryTimeFragmentTablet;

    invoke-direct {v1}, Lcom/yopeso/lieferando/fragments/tablet/search/DeliveryTimeFragmentTablet;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/yopeso/lieferando/fragments/tablet/search/CheckoutFragmentTablet;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    .line 31
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-super {p0, p1, p2}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 21
    return-void
.end method
