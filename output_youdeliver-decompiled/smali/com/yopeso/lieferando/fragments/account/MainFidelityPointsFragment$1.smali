.class Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment$1;
.super Ljava/lang/Object;
.source "MainFidelityPointsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 160
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->getBonusShopUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 161
    .local v0, "browserIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;

    invoke-virtual {v1, v0}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->startActivity(Landroid/content/Intent;)V

    .line 162
    return-void
.end method
