.class Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$2;
.super Ljava/lang/Object;
.source "ShoppingCartAdapter.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;

.field private final synthetic val$itemCount:Lcom/yopeso/lieferando/view/CustomEditText;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;Lcom/yopeso/lieferando/view/CustomEditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$2;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;

    iput-object p2, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$2;->val$itemCount:Lcom/yopeso/lieferando/view/CustomEditText;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 186
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 187
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 206
    .local v0, "count":I
    const/16 v1, 0x32

    if-gt v0, v1, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$2;->val$itemCount:Lcom/yopeso/lieferando/view/CustomEditText;

    const-string v2, "50"

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/view/CustomEditText;->setText(Ljava/lang/CharSequence;)V

    .line 213
    .end local v0    # "count":I
    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 181
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 162
    return-void
.end method
