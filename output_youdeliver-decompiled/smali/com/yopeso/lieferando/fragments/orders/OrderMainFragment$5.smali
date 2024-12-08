.class Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$5;
.super Ljava/lang/Object;
.source "OrderMainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->prepareRatingButtons(Landroid/widget/LinearLayout;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;

.field private final synthetic val$isDelivery:Z

.field private final synthetic val$localIndex:I

.field private final synthetic val$ratingButtons:[Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;ZI[Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$5;->this$0:Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;

    iput-boolean p2, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$5;->val$isDelivery:Z

    iput p3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$5;->val$localIndex:I

    iput-object p4, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$5;->val$ratingButtons:[Landroid/widget/Button;

    .line 501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 504
    iget-boolean v1, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$5;->val$isDelivery:Z

    if-eqz v1, :cond_0

    .line 505
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$5;->this$0:Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;

    iget v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$5;->val$localIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->access$10(Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;I)V

    .line 509
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$5;->val$localIndex:I

    if-le v0, v1, :cond_1

    .line 512
    iget v1, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$5;->val$localIndex:I

    add-int/lit8 v0, v1, 0x1

    :goto_2
    const/4 v1, 0x5

    if-lt v0, v1, :cond_2

    .line 515
    return-void

    .line 507
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$5;->this$0:Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;

    iget v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$5;->val$localIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->access$11(Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;I)V

    goto :goto_0

    .line 510
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$5;->val$ratingButtons:[Landroid/widget/Button;

    aget-object v1, v1, v0

    sget v2, Lcom/yopeso/lieferando/R$drawable;->rating_button_selector:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 509
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 513
    :cond_2
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$5;->val$ratingButtons:[Landroid/widget/Button;

    aget-object v1, v1, v0

    sget v2, Lcom/yopeso/lieferando/R$drawable;->rating_button_disabled_selector:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 512
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
