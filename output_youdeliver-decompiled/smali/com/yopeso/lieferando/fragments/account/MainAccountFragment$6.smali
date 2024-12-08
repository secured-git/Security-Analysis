.class Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$6;
.super Ljava/lang/Object;
.source "MainAccountFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->onActivityCreated(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$6;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 383
    new-instance v0, Lcom/yopeso/lieferando/dialogs/TakePictureDialog;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$6;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-direct {v0, v1}, Lcom/yopeso/lieferando/dialogs/TakePictureDialog;-><init>(Lcom/yopeso/lieferando/callback/TakePictureCallback;)V

    .line 384
    .local v0, "dialog":Lcom/yopeso/lieferando/dialogs/TakePictureDialog;
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$6;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/dialogs/TakePictureDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yopeso/lieferando/dialogs/TakePictureDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 385
    return-void
.end method
