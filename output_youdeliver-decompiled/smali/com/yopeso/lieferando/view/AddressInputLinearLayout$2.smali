.class Lcom/yopeso/lieferando/view/AddressInputLinearLayout$2;
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
.field private mStreetName:Ljava/lang/String;

.field final synthetic this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/view/AddressInputLinearLayout;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$2;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    const-string v0, ""

    iput-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$2;->mStreetName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 367
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$2;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    iget-boolean v0, v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mSetLocation:Z

    if-nez v0, :cond_1

    .line 368
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "^[^{}]*$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$2;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    iput-boolean v4, v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mSetLocation:Z

    .line 370
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$2;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    invoke-static {v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->access$0(Lcom/yopeso/lieferando/view/AddressInputLinearLayout;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$2;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$2;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    iput-boolean v3, v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mSetLocation:Z

    .line 374
    :cond_0
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[^\n]{0,30}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$2;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    iput-boolean v4, v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mSetLocation:Z

    .line 376
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$2;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    invoke-static {v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->access$0(Lcom/yopeso/lieferando/view/AddressInputLinearLayout;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$2;->mStreetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 377
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$2;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    iput-boolean v3, v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mSetLocation:Z

    .line 380
    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 362
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$2;->mStreetName:Ljava/lang/String;

    .line 363
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 354
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$2;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    iget-boolean v0, v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mSetLocation:Z

    if-nez v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$2;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    iget-object v0, v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mListener:Lcom/yopeso/lieferando/callback/AddressInputLayoutCallBack;

    invoke-interface {v0}, Lcom/yopeso/lieferando/callback/AddressInputLayoutCallBack;->showSaveAndCancelButtons()V

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$2;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->checkMandatoryFiedls()V

    .line 358
    return-void
.end method
