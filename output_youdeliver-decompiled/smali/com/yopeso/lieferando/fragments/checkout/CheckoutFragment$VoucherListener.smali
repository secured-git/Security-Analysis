.class Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$VoucherListener;
.super Ljava/lang/Object;
.source "CheckoutFragment.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoucherListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
        "<",
        "Lcom/yopeso/lieferando/model/user/Voucher;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)V
    .locals 0

    .prologue
    .line 2175
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$VoucherListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$VoucherListener;)V
    .locals 0

    .prologue
    .line 2175
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$VoucherListener;-><init>(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)V

    return-void
.end method

.method private trackVoucher(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "voucher"    # Ljava/lang/String;
    .param p2, "success"    # Z

    .prologue
    .line 2232
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$VoucherListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/SettingsContent;->getmVouchers()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$VoucherListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/SettingsContent;->getmVouchers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2233
    invoke-static {p1, p2}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackVoucherRedemptionKahuna(Ljava/lang/String;Z)V

    .line 2235
    :cond_0
    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 2239
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$VoucherListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->access$15(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;Lcom/android/volley/VolleyError;)V

    .line 2241
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$VoucherListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->access$12(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)Lcom/yopeso/lieferando/view/VoucherView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/VoucherView;->getVoucherText()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$VoucherListener;->trackVoucher(Ljava/lang/String;Z)V

    .line 2242
    return-void
.end method

.method public onResponse(Lcom/yopeso/lieferando/model/user/Voucher;)V
    .locals 11
    .param p1, "v"    # Lcom/yopeso/lieferando/model/user/Voucher;

    .prologue
    const v4, 0xf41e8

    const/high16 v9, 0x42c80000    # 100.0f

    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 2179
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$VoucherListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->access$16(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)V

    .line 2180
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/Voucher;->getStatus()Ljava/lang/String;

    move-result-object v1

    const-string v2, "valid"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2182
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$VoucherListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->access$12(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)Lcom/yopeso/lieferando/view/VoucherView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/VoucherView;->getVoucherText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v8}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$VoucherListener;->trackVoucher(Ljava/lang/String;Z)V

    .line 2183
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$VoucherListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    iget-object v1, v1, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {p1, v1}, Lcom/yopeso/lieferando/model/user/Voucher;->canBeApplied(Lcom/yopeso/lieferando/model/cart/ShoppingCart;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2184
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$VoucherListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$VoucherListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    sget v3, Lcom/yopeso/lieferando/R$string;->voucher_min_amount_not_reached:I

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v5

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/Voucher;->getMinAmount()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v9

    float-to-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-virtual {v2, v3, v4}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2185
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$VoucherListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$id;->TotalPrice:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2186
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$VoucherListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->price:I

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v5

    iget-object v6, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$VoucherListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    iget-object v6, v6, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getCostWithShipping()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v9

    float-to-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2229
    :cond_0
    :goto_0
    return-void

    .line 2188
    :cond_1
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$VoucherListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    iget-object v1, v1, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1, v8}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setVoucherUsed(Z)V

    .line 2189
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$VoucherListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->access$12(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)Lcom/yopeso/lieferando/view/VoucherView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/VoucherView;->getVoucherText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/yopeso/lieferando/model/user/Voucher;->setCode(Ljava/lang/String;)V

    .line 2190
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$VoucherListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$string;->voucher_valid_msg:I

    invoke-static {v1, v2, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2191
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$VoucherListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    iget-object v1, v1, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1, p1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setVoucher(Lcom/yopeso/lieferando/model/user/Voucher;)V

    .line 2192
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$VoucherListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-static {v1, v10}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->access$13(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;Z)V

    .line 2193
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v2, Lcom/yopeso/lieferando/events/CartChangedEvent;

    invoke-direct {v2}, Lcom/yopeso/lieferando/events/CartChangedEvent;-><init>()V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 2195
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$VoucherListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->access$19(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)Landroid/widget/ToggleButton;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 2196
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$VoucherListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->access$12(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)Lcom/yopeso/lieferando/view/VoucherView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v3

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$VoucherListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    iget-object v5, v5, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getCostWithoutVoucher()I

    move-result v5

    iget-object v6, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$VoucherListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    iget-object v6, v6, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getShippingCost()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p1, v5}, Lcom/yopeso/lieferando/model/user/Voucher;->getVoucherDiscount(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v9

    float-to-double v6, v5

    invoke-virtual {v3, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v8}, Lcom/yopeso/lieferando/view/VoucherView;->setTextForResult(Ljava/lang/String;Z)V

    .line 2198
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$VoucherListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->access$10(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)V

    .line 2200
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/Voucher;->getInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2201
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$VoucherListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/Voucher;->getInfo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yopeso/lieferando/dialogs/VoucherRedeemDialog;->showDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 2202
    new-instance v1, Lcom/yopeso/lieferando/model/PushMessage;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/Voucher;->getInfo()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-string v8, "show_doalog_action"

    invoke-direct/range {v1 .. v8}, Lcom/yopeso/lieferando/model/PushMessage;-><init>(JILjava/lang/String;JLjava/lang/String;)V

    invoke-static {v1}, Lcom/yopeso/lieferando/util/UserStore;->addPushMessage(Lcom/yopeso/lieferando/model/PushMessage;)V

    goto/16 :goto_0

    .line 2210
    :cond_2
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$VoucherListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->access$12(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)Lcom/yopeso/lieferando/view/VoucherView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/VoucherView;->getVoucherText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v10}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$VoucherListener;->trackVoucher(Ljava/lang/String;Z)V

    .line 2212
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$VoucherListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    iget-object v1, v1, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1, v10}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setVoucherUsed(Z)V

    .line 2213
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$VoucherListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-static {v1, v8}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->access$13(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;Z)V

    .line 2214
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$VoucherListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$id;->TotalPrice:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$VoucherListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->price:I

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v6

    iget-object v7, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$VoucherListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    iget-object v7, v7, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getCostWithShipping()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v9

    float-to-double v8, v7

    invoke-virtual {v6, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {v2, v3, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2215
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$VoucherListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/SettingsContent;->getErrorCodes()Ljava/util/Map;

    move-result-object v0

    .line 2216
    .local v0, "errors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/Voucher;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2218
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$VoucherListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->access$12(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)Lcom/yopeso/lieferando/view/VoucherView;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/Voucher;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1, v10}, Lcom/yopeso/lieferando/view/VoucherView;->setTextForResult(Ljava/lang/String;Z)V

    .line 2224
    :goto_1
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/Voucher;->getInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2225
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$VoucherListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/Voucher;->getInfo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yopeso/lieferando/dialogs/VoucherRedeemDialog;->showDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 2226
    new-instance v1, Lcom/yopeso/lieferando/model/PushMessage;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/Voucher;->getInfo()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-string v8, "show_doalog_action"

    invoke-direct/range {v1 .. v8}, Lcom/yopeso/lieferando/model/PushMessage;-><init>(JILjava/lang/String;JLjava/lang/String;)V

    invoke-static {v1}, Lcom/yopeso/lieferando/util/UserStore;->addPushMessage(Lcom/yopeso/lieferando/model/PushMessage;)V

    goto/16 :goto_0

    .line 2221
    :cond_3
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$VoucherListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->access$12(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)Lcom/yopeso/lieferando/view/VoucherView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2, v10}, Lcom/yopeso/lieferando/view/VoucherView;->setTextForResult(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/user/Voucher;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$VoucherListener;->onResponse(Lcom/yopeso/lieferando/model/user/Voucher;)V

    return-void
.end method
