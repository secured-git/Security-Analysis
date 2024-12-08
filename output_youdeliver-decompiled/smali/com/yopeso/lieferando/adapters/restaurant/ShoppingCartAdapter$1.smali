.class Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$1;
.super Ljava/lang/Object;
.source "ShoppingCartAdapter.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

.field private final synthetic val$item:Lcom/yopeso/lieferando/model/cart/CartItem;

.field private final synthetic val$itemCount:Lcom/yopeso/lieferando/view/CustomEditText;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;Lcom/yopeso/lieferando/view/CustomEditText;Lcom/yopeso/lieferando/model/cart/CartItem;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$1;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;

    iput-object p2, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$1;->val$itemCount:Lcom/yopeso/lieferando/view/CustomEditText;

    iput-object p3, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$1;->val$item:Lcom/yopeso/lieferando/model/cart/CartItem;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 124
    const/4 v3, 0x6

    if-ne p2, v3, :cond_1

    .line 125
    const-class v3, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "onEditorAction"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$1;->val$itemCount:Lcom/yopeso/lieferando/view/CustomEditText;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/view/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$1;->val$itemCount:Lcom/yopeso/lieferando/view/CustomEditText;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/view/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    .line 127
    :cond_0
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$1;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;

    invoke-static {v3}, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->access$0(Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;)Lcom/yopeso/lieferando/callback/ShoppingCartCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$1;->val$item:Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-interface {v3, v4}, Lcom/yopeso/lieferando/callback/ShoppingCartCallback;->deleteItemFromCart(Lcom/yopeso/lieferando/model/cart/CartItem;)V

    .line 155
    :cond_1
    :goto_0
    return v8

    .line 130
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$1;->val$itemCount:Lcom/yopeso/lieferando/view/CustomEditText;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/view/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 131
    .local v0, "count":I
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$1;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;

    invoke-static {v3}, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->access$1(Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;)Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v3

    iget-object v4, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$1;->val$item:Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/cart/CartItem;->getMeal()Lcom/yopeso/lieferando/model/meal/Meal;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getProperAmount(Lcom/yopeso/lieferando/model/meal/Meal;I)I

    move-result v2

    .line 132
    .local v2, "properAmount":I
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$1;->val$item:Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/cart/CartItem;->getMeal()Lcom/yopeso/lieferando/model/meal/Meal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/meal/Meal;->getmMaxAmount()I

    move-result v3

    if-lez v3, :cond_3

    if-eq v0, v2, :cond_3

    .line 133
    const-class v3, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onEditorAction cout:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " proper Amount:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const-class v3, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "onEditorAction display toast"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$1;->val$item:Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/cart/CartItem;->getMeal()Lcom/yopeso/lieferando/model/meal/Meal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/meal/Meal;->getmMaxAmount()I

    move-result v3

    if-ne v3, v6, :cond_4

    .line 137
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$1;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;

    invoke-static {v3}, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->access$2(Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$1;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;

    invoke-static {v4}, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->access$2(Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;)Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->max_amount_once:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$1;->val$item:Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/cart/CartItem;->getMeal()Lcom/yopeso/lieferando/model/meal/Meal;

    move-result-object v7

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/meal/Meal;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 142
    :goto_1
    move v0, v2

    .line 144
    :cond_3
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$1;->val$item:Lcom/yopeso/lieferando/model/cart/CartItem;

    const/16 v4, 0x32

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/yopeso/lieferando/model/cart/CartItem;->setCount(I)V

    .line 145
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$1;->val$itemCount:Lcom/yopeso/lieferando/view/CustomEditText;

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x32

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yopeso/lieferando/view/CustomEditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v0    # "count":I
    .end local v2    # "properAmount":I
    :goto_2
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$1;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;

    invoke-static {v3}, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->access$0(Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;)Lcom/yopeso/lieferando/callback/ShoppingCartCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/callback/ShoppingCartCallback;->notifyShoppingCartListAdapter()V

    goto/16 :goto_0

    .line 140
    .restart local v0    # "count":I
    .restart local v2    # "properAmount":I
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$1;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;

    invoke-static {v3}, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->access$2(Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$1;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;

    invoke-static {v4}, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->access$2(Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;)Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->max_amount_generic:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$1;->val$item:Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/cart/CartItem;->getMeal()Lcom/yopeso/lieferando/model/meal/Meal;

    move-result-object v7

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/meal/Meal;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$1;->val$item:Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/cart/CartItem;->getMeal()Lcom/yopeso/lieferando/model/meal/Meal;

    move-result-object v7

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/meal/Meal;->getmMaxAmount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 147
    .end local v0    # "count":I
    .end local v2    # "properAmount":I
    :catch_0
    move-exception v1

    .line 148
    .local v1, "e":Ljava/lang/NumberFormatException;
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$1;->val$item:Lcom/yopeso/lieferando/model/cart/CartItem;

    iget-object v4, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$1;->val$item:Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/cart/CartItem;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/yopeso/lieferando/model/cart/CartItem;->setCount(I)V

    .line 149
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$1;->val$itemCount:Lcom/yopeso/lieferando/view/CustomEditText;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$1;->val$item:Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/cart/CartItem;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yopeso/lieferando/view/CustomEditText;->setText(Ljava/lang/CharSequence;)V

    .line 150
    const-class v3, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "NumberFormatException:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method
