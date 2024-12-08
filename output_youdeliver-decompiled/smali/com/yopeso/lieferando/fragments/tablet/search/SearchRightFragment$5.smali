.class Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$5;
.super Ljava/lang/Object;
.source "SearchRightFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$5;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 246
    invoke-static {}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->access$7()Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->access$8(J)V

    .line 249
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$5;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->RightPane:I

    new-instance v2, Lcom/yopeso/lieferando/fragments/tablet/account/MainAddressFragmentTablet;

    invoke-direct {v2}, Lcom/yopeso/lieferando/fragments/tablet/account/MainAddressFragmentTablet;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 250
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$5;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->RightPane:I

    invoke-static {v3, v3}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->newInstance(ZI)Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    move-result-object v2

    sget-object v3, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget-object v1, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 253
    :cond_0
    return-void
.end method
