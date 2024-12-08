.class Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$3;
.super Ljava/lang/Object;
.source "OrderMainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$3;->this$0:Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$3;->this$0:Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->access$7(Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Lcom/yopeso/lieferando/R$drawable;->img_rating_thumbdown_inactive:I

    if-ne v0, v1, :cond_0

    .line 197
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$3;->this$0:Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->access$6(Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$drawable;->img_rating_thumbup_inactive:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 198
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$3;->this$0:Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->access$6(Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$drawable;->img_rating_thumbup_inactive:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 200
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$3;->this$0:Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->access$7(Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$drawable;->img_rating_thumbdown:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 201
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$3;->this$0:Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->access$7(Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$drawable;->img_rating_thumbdown:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 212
    :cond_0
    return-void
.end method
