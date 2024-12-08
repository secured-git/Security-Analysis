.class Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$5;
.super Ljava/lang/Object;
.source "SearchMainFragmentTablet.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$5;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 217
    if-eqz p2, :cond_0

    .line 218
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$5;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->mSearchSuggestionsAdapter:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$5;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->mSearchInput:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$5;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;

    iget-object v1, v1, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->mSearchSuggestionsAdapter:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 220
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$5;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->mSearchInput:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->showDropDown()V

    .line 223
    :cond_0
    return-void
.end method
