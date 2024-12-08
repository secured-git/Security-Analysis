.class Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$7;
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
    iput-object p1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$7;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 315
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$7;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-static {v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->access$7(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$7;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-static {v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->access$3(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$7;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->access$8(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;Z)V

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    if-eqz p2, :cond_0

    .line 318
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$7;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-static {v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->access$7(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$7;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-static {v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->access$6(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$7;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-static {v1}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->access$17(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 320
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$7;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-static {v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->access$6(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->showDropDown()V

    goto :goto_0
.end method
