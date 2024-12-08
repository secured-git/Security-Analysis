.class Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$7;
.super Ljava/lang/Object;
.source "MapAddressFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->onBackKeyPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$7;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    .line 726
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x0

    .line 729
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$7;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$2(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;Z)V

    .line 730
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$7;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$23(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;Z)V

    .line 731
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 732
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$7;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 733
    return-void
.end method
