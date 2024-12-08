.class Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$4;
.super Ljava/lang/Object;
.source "RegistrationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 297
    new-instance v0, Lcom/yopeso/lieferando/dialogs/TakePictureDialog;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;

    invoke-direct {v0, v1}, Lcom/yopeso/lieferando/dialogs/TakePictureDialog;-><init>(Lcom/yopeso/lieferando/callback/TakePictureCallback;)V

    .line 298
    .local v0, "dialog":Lcom/yopeso/lieferando/dialogs/TakePictureDialog;
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/dialogs/TakePictureDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yopeso/lieferando/dialogs/TakePictureDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 299
    return-void
.end method
