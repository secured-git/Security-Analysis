.class public Lcom/yopeso/lieferando/fragments/tablet/account/OrderFragmentTablet;
.super Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;
.source "OrderFragmentTablet.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/yopeso/lieferando/fragments/tablet/account/OrderFragmentTablet;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yopeso/lieferando/fragments/tablet/account/OrderFragmentTablet;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected goToOrderDetailsFragment(Lcom/yopeso/lieferando/model/user/Order;)V
    .locals 4
    .param p1, "selectedOrder"    # Lcom/yopeso/lieferando/model/user/Order;

    .prologue
    .line 28
    sget v0, Lcom/yopeso/lieferando/R$id;->RightPane:I

    invoke-static {p1}, Lcom/yopeso/lieferando/fragments/tablet/account/OrderMainFragmentTablet;->newInstance(Lcom/yopeso/lieferando/model/user/Order;)Lcom/yopeso/lieferando/fragments/tablet/account/OrderMainFragmentTablet;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/yopeso/lieferando/fragments/tablet/account/OrderFragmentTablet;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    .line 29
    return-void
.end method

.method protected goToOrderDetailsFragment(Lcom/yopeso/lieferando/model/user/Order;Ljava/lang/String;)V
    .locals 4
    .param p1, "selectedOrder"    # Lcom/yopeso/lieferando/model/user/Order;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 32
    sget v0, Lcom/yopeso/lieferando/R$id;->RightPane:I

    invoke-static {p1, p2}, Lcom/yopeso/lieferando/fragments/tablet/account/OrderMainFragmentTablet;->newInstance(Lcom/yopeso/lieferando/model/user/Order;Ljava/lang/String;)Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/yopeso/lieferando/fragments/tablet/account/OrderFragmentTablet;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    .line 33
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1, p2}, Lcom/yopeso/lieferando/fragments/orders/OrdersFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 24
    return-void
.end method
