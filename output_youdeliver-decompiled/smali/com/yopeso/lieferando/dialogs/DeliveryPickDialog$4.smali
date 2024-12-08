.class Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$4;
.super Ljava/lang/Object;
.source "DeliveryPickDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    iput-object p1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$4;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v2, 0x2

    .line 341
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "^[^{}]*$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$4;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    iget-object v0, v0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$4;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$4;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    iget-object v0, v0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$4;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    iget-object v0, v0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$4;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    iget-object v1, v1, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$4;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    invoke-static {v0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->access$1(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$4;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    invoke-static {v0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->access$9(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 349
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$4;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->access$10(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;Ljava/lang/String;)V

    goto :goto_0

    .line 351
    :cond_2
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 352
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$4;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    iget-object v0, v0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mRequestQueue:Lcom/android/volley/RequestQueue;

    const-string v1, "streetRequest"

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 353
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$4;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    invoke-static {v0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->access$5(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 354
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$4;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    iget-object v0, v0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$4;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    invoke-static {v1}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->access$6(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;)Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 337
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v2, 0x0

    .line 317
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$4;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    iget-object v0, v0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$4;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    iget-object v0, v0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$4;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    iget-object v1, v1, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 318
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$4;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    invoke-static {v0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->access$1(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 319
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$4;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    iget-object v0, v0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$4;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    iget-object v0, v0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getStreetName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$4;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    iget-object v0, v0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getStreetName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_3

    .line 320
    :cond_1
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$4;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    invoke-static {v0, v2}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->access$4(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;Z)V

    .line 321
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$4;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    iget-object v0, v0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mHouseNr:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$4;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    iget-object v0, v0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mHouseNr:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v0, v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setEnabled(Z)V

    .line 323
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$4;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    iget-object v0, v0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setThreshold(I)V

    .line 324
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$4;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    iget-object v0, v0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->setStreetName(Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$4;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    invoke-static {v0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->access$5(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 326
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$4;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    iget-object v0, v0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$4;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    invoke-static {v1}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->access$6(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;)Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 333
    :cond_2
    :goto_0
    return-void

    .line 328
    :cond_3
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$4;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    iget-object v0, v0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setThreshold(I)V

    .line 329
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$4;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    iget-object v0, v0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->dismissDropDown()V

    goto :goto_0
.end method
