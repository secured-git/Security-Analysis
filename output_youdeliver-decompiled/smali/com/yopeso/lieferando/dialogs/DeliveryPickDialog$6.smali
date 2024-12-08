.class Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$6;
.super Ljava/lang/Object;
.source "DeliveryPickDialog.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$6;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 378
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$6;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    invoke-static {v0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->access$5(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$6;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    invoke-static {v0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->access$1(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 379
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$6;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->access$11(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;Z)V

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    if-eqz p2, :cond_0

    .line 381
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$6;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    invoke-static {v0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->access$5(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$6;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    iget-object v0, v0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$6;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    invoke-static {v1}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->access$12(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;)Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 383
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$6;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    iget-object v0, v0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->showDropDown()V

    goto :goto_0
.end method
