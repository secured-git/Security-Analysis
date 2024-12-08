.class Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$9;
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
    iput-object p1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$9;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 394
    const-string v0, ""

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$9;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-static {v1}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->access$11(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$9;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->checkMandatoryFiedls()V

    .line 397
    :cond_0
    return-void
.end method
