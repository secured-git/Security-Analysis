.class Lcom/yopeso/lieferando/fragments/search/CSHFragment$4;
.super Ljava/lang/Object;
.source "CSHFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/search/CSHFragment;->setupCSH()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/search/CSHFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v2, 0x2

    .line 253
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v1, v1, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-boolean v0, v0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mStreetProvided:Z

    if-nez v0, :cond_0

    .line 255
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 256
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->performStreetRequest(Ljava/lang/String;)V

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 258
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mStreetSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 249
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 219
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v1, v1, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 221
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-boolean v0, v0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mStreetProvided:Z

    if-eqz v0, :cond_3

    .line 222
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getStreetName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

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

    if-ge v0, v1, :cond_4

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iput-boolean v3, v0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mStreetProvided:Z

    .line 224
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mHouseNumber:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setThreshold(I)V

    .line 226
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-boolean v0, v0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->isAddress:Z

    if-nez v0, :cond_2

    .line 227
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mHouseNumber:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mHouseNumberLL:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 231
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mHouseNumberLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchRestaurantBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchRestaurantBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 237
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mGpsStreet:Ljava/lang/String;

    .line 244
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->setMarginTop()V

    .line 245
    return-void

    .line 239
    :cond_4
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setThreshold(I)V

    .line 240
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->dismissDropDown()V

    goto :goto_0
.end method
