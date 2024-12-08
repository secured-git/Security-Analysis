.class public Lcom/yopeso/lieferando/view/CustomEditText;
.super Landroid/widget/EditText;
.source "CustomEditText.java"


# instance fields
.field private mCartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

.field private mListener:Lcom/yopeso/lieferando/callback/CustomEditTextCallBack;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method


# virtual methods
.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x4

    .line 45
    iget-object v0, p0, Lcom/yopeso/lieferando/view/CustomEditText;->mListener:Lcom/yopeso/lieferando/callback/CustomEditTextCallBack;

    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 47
    iget-object v0, p0, Lcom/yopeso/lieferando/view/CustomEditText;->mListener:Lcom/yopeso/lieferando/callback/CustomEditTextCallBack;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/CustomEditText;->mCartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-interface {v0, p0, v1}, Lcom/yopeso/lieferando/callback/CustomEditTextCallBack;->onBackPressedOnEditText(Landroid/widget/EditText;Lcom/yopeso/lieferando/model/cart/CartItem;)V

    .line 55
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 49
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 50
    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/CustomEditText;->clearFocus()V

    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/CustomEditText;->clearFocus()V

    goto :goto_0
.end method

.method public setCartItem(Lcom/yopeso/lieferando/model/cart/CartItem;)V
    .locals 0
    .param p1, "CartItem"    # Lcom/yopeso/lieferando/model/cart/CartItem;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/yopeso/lieferando/view/CustomEditText;->mCartItem:Lcom/yopeso/lieferando/model/cart/CartItem;

    .line 64
    return-void
.end method

.method public setListener(Lcom/yopeso/lieferando/callback/CustomEditTextCallBack;)V
    .locals 0
    .param p1, "Listener"    # Lcom/yopeso/lieferando/callback/CustomEditTextCallBack;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/yopeso/lieferando/view/CustomEditText;->mListener:Lcom/yopeso/lieferando/callback/CustomEditTextCallBack;

    .line 60
    return-void
.end method
