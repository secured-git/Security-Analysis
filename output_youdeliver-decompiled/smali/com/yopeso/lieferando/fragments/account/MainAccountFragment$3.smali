.class Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$3;
.super Ljava/lang/Object;
.source "MainAccountFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->onBackKeyPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$3;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 217
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$3;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->access$21(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;Z)V

    .line 218
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 219
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$3;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 220
    return-void
.end method
