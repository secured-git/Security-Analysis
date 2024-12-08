.class Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$2;
.super Ljava/lang/Object;
.source "DeliveryAddressFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v3, 0x0

    .line 257
    if-eqz p2, :cond_0

    .line 258
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->access$6(Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 259
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->access$6(Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 267
    :goto_0
    return-void

    .line 262
    :cond_0
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yopeso/lieferando/util/DensityUtils;->convertDpToPixel(ILandroid/content/Context;)I

    move-result v0

    .line 263
    .local v0, "padding":I
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->access$6(Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;)Landroid/widget/RelativeLayout;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$drawable;->background_red_rounded:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 264
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->access$6(Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 265
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$string;->agb_not_set:I

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
