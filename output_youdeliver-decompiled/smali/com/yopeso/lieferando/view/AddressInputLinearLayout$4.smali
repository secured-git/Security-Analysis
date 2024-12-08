.class Lcom/yopeso/lieferando/view/AddressInputLinearLayout$4;
.super Ljava/lang/Object;
.source "AddressInputLinearLayout.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    iput-object p1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$4;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 272
    if-eqz p2, :cond_1

    .line 273
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$4;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    iget-object v0, v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mSearchSuggestionsAdapter:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$4;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    invoke-static {v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->access$3(Lcom/yopeso/lieferando/view/AddressInputLinearLayout;)Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$4;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    iget-object v1, v1, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mSearchSuggestionsAdapter:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 275
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$4;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    invoke-static {v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->access$3(Lcom/yopeso/lieferando/view/AddressInputLinearLayout;)Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->showDropDown()V

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$4;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    iget-object v0, v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$4;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    invoke-static {v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->access$3(Lcom/yopeso/lieferando/view/AddressInputLinearLayout;)Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$4;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    iget-object v1, v1, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getPlz()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$4;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    invoke-static {v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->access$1(Lcom/yopeso/lieferando/view/AddressInputLinearLayout;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$4;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    iget-object v1, v1, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$4;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$4;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    iget-object v1, v1, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getCityId()I

    move-result v1

    iput v1, v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mCityId:I

    goto :goto_0
.end method
