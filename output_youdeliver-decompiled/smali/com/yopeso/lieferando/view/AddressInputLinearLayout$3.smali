.class Lcom/yopeso/lieferando/view/AddressInputLinearLayout$3;
.super Ljava/lang/Object;
.source "AddressInputLinearLayout.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/view/AddressInputLinearLayout;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$3;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v2, 0x6

    const/4 v3, 0x2

    .line 225
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$3;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    iget-boolean v0, v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mSetLocation:Z

    if-nez v0, :cond_1

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/util/StringUtils;->containsOnlyDigits(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$3;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    invoke-static {v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->access$1(Lcom/yopeso/lieferando/view/AddressInputLinearLayout;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 230
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_4

    .line 232
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$3;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    iget-object v0, v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mSearchSuggestionsAdapter:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;->isListEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$3;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    iget-object v0, v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mSearchSuggestionsAdapter:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;->clearSuggestons()V

    .line 234
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$3;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->access$2(Lcom/yopeso/lieferando/view/AddressInputLinearLayout;Ljava/lang/String;)V

    .line 236
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$3;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    .line 244
    :cond_1
    :goto_0
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 245
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_5

    .line 246
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$3;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    iget-object v0, v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mSearchSuggestionsAdapter:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;->isListEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$3;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    iget-object v0, v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$3;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    invoke-static {v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->access$3(Lcom/yopeso/lieferando/view/AddressInputLinearLayout;)Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$3;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    iget-object v1, v1, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mContext:Landroid/content/Context;

    sget v2, Lcom/yopeso/lieferando/R$string;->noDelivery:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 266
    :cond_3
    :goto_1
    return-void

    .line 240
    :cond_4
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_1

    .line 241
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$3;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    invoke-static {v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->access$3(Lcom/yopeso/lieferando/view/AddressInputLinearLayout;)Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$3;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    iget-object v1, v1, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mContext:Landroid/content/Context;

    sget v2, Lcom/yopeso/lieferando/R$string;->plz_not_exist:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 253
    :cond_5
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$3;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    iget-object v0, v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    if-nez v0, :cond_3

    .line 255
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$3;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    iget-object v0, v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mSearchSuggestionsAdapter:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;->isListEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$3;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    iget-object v0, v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$3;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    iget-object v0, v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mSearchSuggestionsAdapter:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;->isFilteredLocationEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 257
    :cond_6
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$3;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    invoke-static {v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->access$3(Lcom/yopeso/lieferando/view/AddressInputLinearLayout;)Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$3;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    iget-object v1, v1, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mContext:Landroid/content/Context;

    sget v2, Lcom/yopeso/lieferando/R$string;->noDelivery:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 221
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 217
    return-void
.end method
