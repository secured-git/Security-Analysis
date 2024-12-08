.class public Lcom/yopeso/lieferando/fragments/tablet/account/MainFidelityPointsFragmentTablet;
.super Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;
.source "MainFidelityPointsFragmentTablet.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/yopeso/lieferando/fragments/tablet/account/MainFidelityPointsFragmentTablet;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yopeso/lieferando/fragments/tablet/account/MainFidelityPointsFragmentTablet;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 21
    .local v0, "id":I
    sget v1, Lcom/yopeso/lieferando/R$id;->FidelityPointsCollect:I

    if-ne v0, v1, :cond_0

    .line 22
    sget v1, Lcom/yopeso/lieferando/R$id;->RightPane:I

    new-instance v2, Lcom/yopeso/lieferando/fragments/tablet/account/FidelityPointsCollectFragmentTablet;

    invoke-direct {v2}, Lcom/yopeso/lieferando/fragments/tablet/account/FidelityPointsCollectFragmentTablet;-><init>()V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/yopeso/lieferando/fragments/tablet/account/MainFidelityPointsFragmentTablet;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    .line 26
    :goto_0
    return-void

    .line 25
    :cond_0
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-super {p0, p1, p2}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 16
    return-void
.end method
