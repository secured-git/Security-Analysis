.class Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$4;
.super Ljava/lang/Object;
.source "AddressInputLinearLayoutPL.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    iput-object p1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$4;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 234
    const-class v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setOnFocusChangeListener:"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$4;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    iget-object v0, v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLocationSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$4;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-static {v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->access$0(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$4;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->access$15(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;Z)V

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    if-eqz p2, :cond_0

    .line 238
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$4;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    iget-object v0, v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mSearchSuggestionsAdapter:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$4;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-static {v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->access$2(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$4;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    iget-object v1, v1, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mSearchSuggestionsAdapter:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 240
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$4;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-static {v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->access$2(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->showDropDown()V

    goto :goto_0
.end method
