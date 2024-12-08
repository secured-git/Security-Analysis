.class Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$2;
.super Ljava/lang/Object;
.source "CheckoutFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private currentText:Ljava/lang/String;

.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    .line 776
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 777
    const-string v0, ""

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$2;->currentText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 791
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\s+"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 793
    .local v0, "result":Ljava/lang/String;
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 794
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$id;->VoucherCodeEditText:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 795
    if-eqz v0, :cond_0

    .line 796
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$id;->VoucherCodeEditText:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 798
    :cond_0
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    iget-object v1, v1, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isVoucherUsed()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$2;->currentText:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 800
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    iget-object v1, v1, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1, v4}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setVoucherUsed(Z)V

    .line 801
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    iget-object v1, v1, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1, v5}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setVoucher(Lcom/yopeso/lieferando/model/user/Voucher;)V

    .line 802
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v2, Lcom/yopeso/lieferando/events/CartChangedEvent;

    invoke-direct {v2}, Lcom/yopeso/lieferando/events/CartChangedEvent;-><init>()V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 803
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->access$10(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)V

    .line 806
    :cond_1
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->access$11(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 807
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->access$12(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)Lcom/yopeso/lieferando/view/VoucherView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/VoucherView;->resetVoucher()V

    .line 808
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    iget-object v1, v1, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1, v5}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setVoucher(Lcom/yopeso/lieferando/model/user/Voucher;)V

    .line 809
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    iget-object v1, v1, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1, v4}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setVoucherUsed(Z)V

    .line 810
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-static {v1, v4}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->access$13(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;Z)V

    .line 812
    :cond_2
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 786
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->VoucherCodeEditText:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$2;->currentText:Ljava/lang/String;

    .line 787
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 782
    return-void
.end method
