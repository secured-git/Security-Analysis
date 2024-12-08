.class Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$3;
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


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;Lcom/yopeso/lieferando/model/cart/CartItem;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$3;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;

    iput-object p2, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$3;->val$item:Lcom/yopeso/lieferando/model/cart/CartItem;

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$3;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;

    invoke-static {v0}, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->access$0(Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;)Lcom/yopeso/lieferando/callback/ShoppingCartCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$3;->val$item:Lcom/yopeso/lieferando/model/cart/CartItem;

    invoke-interface {v0, v1}, Lcom/yopeso/lieferando/callback/ShoppingCartCallback;->changeContentOfMeal(Lcom/yopeso/lieferando/model/cart/CartItem;)V

    .line 263
    return-void
.end method
