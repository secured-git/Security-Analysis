.class public Lcom/yopeso/lieferando/fragments/tablet/account/OrderMainFragmentTablet;
.super Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;
.source "OrderMainFragmentTablet.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;-><init>()V

    return-void
.end method

.method public static bridge synthetic newInstance(Lcom/yopeso/lieferando/model/user/Order;)Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/yopeso/lieferando/fragments/tablet/account/OrderMainFragmentTablet;->newInstance(Lcom/yopeso/lieferando/model/user/Order;)Lcom/yopeso/lieferando/fragments/tablet/account/OrderMainFragmentTablet;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Lcom/yopeso/lieferando/model/user/Order;)Lcom/yopeso/lieferando/fragments/tablet/account/OrderMainFragmentTablet;
    .locals 3
    .param p0, "order"    # Lcom/yopeso/lieferando/model/user/Order;

    .prologue
    .line 23
    new-instance v1, Lcom/yopeso/lieferando/fragments/tablet/account/OrderMainFragmentTablet;

    invoke-direct {v1}, Lcom/yopeso/lieferando/fragments/tablet/account/OrderMainFragmentTablet;-><init>()V

    .line 24
    .local v1, "frag":Lcom/yopeso/lieferando/fragments/tablet/account/OrderMainFragmentTablet;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 25
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "key_order"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 26
    invoke-virtual {v1, v0}, Lcom/yopeso/lieferando/fragments/tablet/account/OrderMainFragmentTablet;->setArguments(Landroid/os/Bundle;)V

    .line 27
    return-object v1
.end method


# virtual methods
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1, p2}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 20
    return-void
.end method
