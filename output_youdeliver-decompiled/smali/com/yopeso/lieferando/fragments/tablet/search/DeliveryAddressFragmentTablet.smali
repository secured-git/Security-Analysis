.class public Lcom/yopeso/lieferando/fragments/tablet/search/DeliveryAddressFragmentTablet;
.super Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;
.source "DeliveryAddressFragmentTablet.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;-><init>()V

    .line 18
    return-void
.end method

.method public static bridge synthetic newInstance(Z)Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/DeliveryAddressFragmentTablet;->newInstance(Z)Lcom/yopeso/lieferando/fragments/tablet/search/DeliveryAddressFragmentTablet;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Z)Lcom/yopeso/lieferando/fragments/tablet/search/DeliveryAddressFragmentTablet;
    .locals 3
    .param p0, "useGPS"    # Z

    .prologue
    .line 21
    new-instance v1, Lcom/yopeso/lieferando/fragments/tablet/search/DeliveryAddressFragmentTablet;

    invoke-direct {v1}, Lcom/yopeso/lieferando/fragments/tablet/search/DeliveryAddressFragmentTablet;-><init>()V

    .line 22
    .local v1, "daf":Lcom/yopeso/lieferando/fragments/tablet/search/DeliveryAddressFragmentTablet;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 23
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "key_gps"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 24
    invoke-virtual {v1, v0}, Lcom/yopeso/lieferando/fragments/tablet/search/DeliveryAddressFragmentTablet;->setArguments(Landroid/os/Bundle;)V

    .line 25
    return-object v1
.end method


# virtual methods
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1, p2}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 31
    return-void
.end method
