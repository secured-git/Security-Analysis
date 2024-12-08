.class Lcom/yopeso/lieferando/view/AddressInputLinearLayout$1;
.super Ljava/lang/Object;
.source "AddressInputLinearLayout.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/view/AddressInputLinearLayout;
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
    iput-object p1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$1;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 338
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$1;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    iget-boolean v0, v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mSetLocation:Z

    if-nez v0, :cond_0

    .line 339
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "^[^{}]*$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$1;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mSetLocation:Z

    .line 341
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$1;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->setNotValidCharsError()V

    .line 342
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$1;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mSetLocation:Z

    .line 346
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
    .line 334
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 326
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$1;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    iget-boolean v0, v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mSetLocation:Z

    if-nez v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$1;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    iget-object v0, v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mListener:Lcom/yopeso/lieferando/callback/AddressInputLayoutCallBack;

    invoke-interface {v0}, Lcom/yopeso/lieferando/callback/AddressInputLayoutCallBack;->showSaveAndCancelButtons()V

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$1;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->checkMandatoryFiedls()V

    .line 330
    return-void
.end method
