.class Lcom/yopeso/lieferando/fragments/search/CSHFragment$5;
.super Ljava/lang/Object;
.source "CSHFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$5;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 269
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$5;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mStreetSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$5;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-boolean v0, v0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mStreetProvided:Z

    if-nez v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$5;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->access$4(Lcom/yopeso/lieferando/fragments/search/CSHFragment;Z)V

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    if-eqz p2, :cond_0

    .line 272
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$5;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mStreetSuggestions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$5;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$5;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v1, v1, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchStreetAdapter:Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 274
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$5;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->showDropDown()V

    goto :goto_0
.end method
