.class Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$3;
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
    iput-object p1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$3;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 301
    const-class v0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setOnFocusChangeListener:"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$3;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    iget-object v0, v0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mLocationSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$3;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    invoke-static {v0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->access$0(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$3;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->access$8(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;Z)V

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    if-eqz p2, :cond_0

    .line 305
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$3;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    iget-object v0, v0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mSearchSuggestionsAdapter:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$3;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    iget-object v0, v0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$3;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    iget-object v1, v1, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mSearchSuggestionsAdapter:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 307
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$3;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    iget-object v0, v0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->showDropDown()V

    goto :goto_0
.end method
