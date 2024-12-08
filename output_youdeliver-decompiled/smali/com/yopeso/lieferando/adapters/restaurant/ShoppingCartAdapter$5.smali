.class Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$5;
.super Ljava/lang/Object;
.source "ShoppingCartAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
.method constructor <init>(Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;Lcom/yopeso/lieferando/model/cart/CartItem;Lcom/yopeso/lieferando/view/CustomEditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$5;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;

    iput-object p2, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$5;->val$item:Lcom/yopeso/lieferando/model/cart/CartItem;

    iput-object p3, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$5;->val$itemCount:Lcom/yopeso/lieferando/view/CustomEditText;

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 290
    const-class v1, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "increaseButton clicked: maxAmountReached "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$5;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;

    invoke-static {v3}, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->access$1(Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;)Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v3

    iget-object v4, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$5;->val$item:Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-virtual {v3, v4}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->maxAmountReached(Lcom/yopeso/lieferando/model/cart/CartItem;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$5;->val$item:Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/CartItem;->getMeal()Lcom/yopeso/lieferando/model/meal/Meal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/meal/Meal;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackIncreaseItems(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 294
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 297
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$5;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;

    invoke-static {v1}, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->access$1(Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;)Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$5;->val$item:Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->maxAmountReached(Lcom/yopeso/lieferando/model/cart/CartItem;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 299
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$5;->val$item:Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/CartItem;->getMeal()Lcom/yopeso/lieferando/model/meal/Meal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/meal/Meal;->getmMaxAmount()I

    move-result v1

    if-ne v1, v6, :cond_1

    .line 300
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$5;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;

    invoke-static {v1}, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->access$2(Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$5;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;

    invoke-static {v2}, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->access$2(Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->max_amount_once:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$5;->val$item:Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/cart/CartItem;->getMeal()Lcom/yopeso/lieferando/model/meal/Meal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/meal/Meal;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$5;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;

    invoke-static {v1}, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->access$2(Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$5;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;

    invoke-static {v2}, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->access$2(Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->max_amount_generic:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$5;->val$item:Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/cart/CartItem;->getMeal()Lcom/yopeso/lieferando/model/meal/Meal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/meal/Meal;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$5;->val$item:Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/cart/CartItem;->getMeal()Lcom/yopeso/lieferando/model/meal/Meal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/meal/Meal;->getmMaxAmount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 307
    :cond_2
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$5;->val$item:Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/CartItem;->getCount()I

    move-result v1

    const/16 v2, 0x32

    if-ge v1, v2, :cond_0

    .line 308
    const-class v1, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "increaseButton clicked normal +:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$5;->val$item:Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/cart/CartItem;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$5;->val$item:Lcom/yopeso/lieferando/model/cart/CartItem;

    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$5;->val$item:Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/CartItem;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/cart/CartItem;->setCount(I)V

    .line 310
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$5;->val$itemCount:Lcom/yopeso/lieferando/view/CustomEditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$5;->val$item:Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/cart/CartItem;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/view/CustomEditText;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$5;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;

    invoke-static {v1}, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->access$0(Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;)Lcom/yopeso/lieferando/callback/ShoppingCartCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/callback/ShoppingCartCallback;->notifyShoppingCartListAdapter()V

    goto/16 :goto_0
.end method
