.class Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$5;
.super Ljava/lang/Object;
.source "AddressInputLinearLayoutPL.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$5;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v2, 0x2

    .line 275
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "^[^{}]*$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$5;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mSetLocation:Z

    .line 277
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$5;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-static {v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->access$6(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$5;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$5;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mSetLocation:Z

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$5;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    iget-object v0, v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$5;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-static {v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->access$2(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$5;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    iget-object v1, v1, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$5;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-static {v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->access$3(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$5;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    iget v0, v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCityId:I

    if-gtz v0, :cond_0

    .line 283
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 284
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$5;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->access$16(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;Ljava/lang/String;)V

    goto :goto_0

    .line 286
    :cond_2
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 287
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$5;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    iget-object v0, v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mRequestQueue:Lcom/android/volley/RequestQueue;

    const-string v1, "streetRequest"

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 288
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$5;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-static {v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->access$7(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 289
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$5;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-static {v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->access$6(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$5;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-static {v1}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->access$13(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

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
    .line 271
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

    .line 250
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$5;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    iget-object v0, v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$5;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-static {v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->access$2(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$5;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    iget-object v1, v1, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$5;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-static {v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->access$3(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 252
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$5;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    iget-object v0, v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$5;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    iget-object v0, v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getStreetName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$5;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    iget-object v0, v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

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

    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$5;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    iget v0, v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCityId:I

    if-gtz v0, :cond_3

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$5;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-static {v0, v2}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->access$10(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;Z)V

    .line 254
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$5;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-static {v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->access$11(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$5;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-static {v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->access$11(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setEnabled(Z)V

    .line 256
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$5;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-static {v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->access$12(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$5;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-static {v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->access$6(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setThreshold(I)V

    .line 258
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$5;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    iget-object v0, v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->setStreetName(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$5;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-static {v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->access$7(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 260
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$5;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-static {v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->access$6(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$5;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-static {v1}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->access$13(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 267
    :cond_2
    :goto_0
    return-void

    .line 262
    :cond_3
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$5;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-static {v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->access$6(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setThreshold(I)V

    .line 263
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$5;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-static {v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->access$6(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->dismissDropDown()V

    goto :goto_0
.end method
