.class Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$2;
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
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 237
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->access$8(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;)V

    .line 238
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->access$9(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;

    invoke-static {v2}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->access$10(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;)I

    move-result v2

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;

    invoke-static {v3}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->access$11(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/yopeso/lieferando/dialogs/DatePickerDialog;->newInstance(III)Lcom/yopeso/lieferando/dialogs/DatePickerDialog;

    move-result-object v0

    .line 239
    .local v0, "dialog":Lcom/yopeso/lieferando/dialogs/DatePickerDialog;
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/dialogs/DatePickerDialog;->setListener(Lcom/yopeso/lieferando/callback/DatePickerCallBack;)V

    .line 240
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yopeso/lieferando/dialogs/DatePickerDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 241
    return-void
.end method
