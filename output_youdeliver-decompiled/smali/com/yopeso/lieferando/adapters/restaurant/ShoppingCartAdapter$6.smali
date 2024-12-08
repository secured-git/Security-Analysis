.class Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$6;
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
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$6;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;

    iput-object p2, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$6;->val$item:Lcom/yopeso/lieferando/model/cart/CartItem;

    iput-object p3, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$6;->val$itemCount:Lcom/yopeso/lieferando/view/CustomEditText;

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 379
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 380
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 381
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$6;->val$item:Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/CartItem;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 382
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$6;->val$item:Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/CartItem;->getMeal()Lcom/yopeso/lieferando/model/meal/Meal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/meal/Meal;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackDecreaseItems(Ljava/lang/String;)V

    .line 383
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$6;->val$item:Lcom/yopeso/lieferando/model/cart/CartItem;

    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$6;->val$item:Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/CartItem;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/cart/CartItem;->setCount(I)V

    .line 384
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$6;->val$itemCount:Lcom/yopeso/lieferando/view/CustomEditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$6;->val$item:Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/cart/CartItem;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/view/CustomEditText;->setText(Ljava/lang/CharSequence;)V

    .line 385
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$6;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;

    invoke-static {v1}, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->access$0(Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;)Lcom/yopeso/lieferando/callback/ShoppingCartCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/callback/ShoppingCartCallback;->notifyShoppingCartListAdapter()V

    .line 389
    :goto_0
    return-void

    .line 387
    :cond_0
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$6;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;

    invoke-static {v1}, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->access$0(Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;)Lcom/yopeso/lieferando/callback/ShoppingCartCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$6;->val$item:Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-interface {v1, v2}, Lcom/yopeso/lieferando/callback/ShoppingCartCallback;->deleteItemFromCart(Lcom/yopeso/lieferando/model/cart/CartItem;)V

    goto :goto_0
.end method
