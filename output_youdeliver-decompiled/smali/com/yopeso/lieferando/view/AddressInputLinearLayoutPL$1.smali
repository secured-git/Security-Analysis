.class Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$1;
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
    iput-object p1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$1;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$1;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    iget-boolean v0, v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mSetLocation:Z

    if-nez v0, :cond_0

    .line 109
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "^[^{}]*$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$1;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mSetLocation:Z

    .line 111
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$1;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->setNotValidCharsError()V

    .line 112
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$1;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mSetLocation:Z

    .line 115
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 104
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$1;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    iget-boolean v0, v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mSetLocation:Z

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$1;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    iget-object v0, v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mListener:Lcom/yopeso/lieferando/callback/AddressInputLayoutCallBack;

    invoke-interface {v0}, Lcom/yopeso/lieferando/callback/AddressInputLayoutCallBack;->showSaveAndCancelButtons()V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$1;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->checkMandatoryFiedls()V

    .line 100
    return-void
.end method
