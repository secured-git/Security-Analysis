.class public Lcom/yopeso/lieferando/view/StempleElement;
.super Landroid/widget/LinearLayout;
.source "StempleElement.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private mBottomDivider:Landroid/view/View;

.field private mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mClock1:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mMsg:Landroid/widget/TextView;

.field private mMsg2:Landroid/widget/TextView;

.field private mStamp:Lcom/yopeso/lieferando/model/Stamp;

.field private mStampCard:Landroid/widget/TextView;

.field private mStampLayout:Landroid/widget/LinearLayout;

.field private mTopDivider:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 51
    iput-object p1, p0, Lcom/yopeso/lieferando/view/StempleElement;->mContext:Landroid/content/Context;

    .line 52
    invoke-direct {p0}, Lcom/yopeso/lieferando/view/StempleElement;->createView()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    iput-object p1, p0, Lcom/yopeso/lieferando/view/StempleElement;->mContext:Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Lcom/yopeso/lieferando/view/StempleElement;->createView()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    iput-object p1, p0, Lcom/yopeso/lieferando/view/StempleElement;->mContext:Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Lcom/yopeso/lieferando/view/StempleElement;->createView()V

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/view/StempleElement;)Lcom/yopeso/lieferando/model/Stamp;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yopeso/lieferando/view/StempleElement;->mStamp:Lcom/yopeso/lieferando/model/Stamp;

    return-object v0
.end method

.method static synthetic access$1(Lcom/yopeso/lieferando/view/StempleElement;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private createView()V
    .locals 3

    .prologue
    .line 56
    iget-object v1, p0, Lcom/yopeso/lieferando/view/StempleElement;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 57
    .local v0, "li":Landroid/view/LayoutInflater;
    sget v1, Lcom/yopeso/lieferando/R$layout;->stempel_list_element:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 59
    sget v1, Lcom/yopeso/lieferando/R$id;->checkbox_stamp:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/view/StempleElement;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCheckBox:Landroid/widget/CheckBox;

    .line 61
    sget v1, Lcom/yopeso/lieferando/R$id;->msg:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/view/StempleElement;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/yopeso/lieferando/view/StempleElement;->mMsg:Landroid/widget/TextView;

    .line 62
    sget v1, Lcom/yopeso/lieferando/R$id;->msg2:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/view/StempleElement;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/yopeso/lieferando/view/StempleElement;->mMsg2:Landroid/widget/TextView;

    .line 63
    sget v1, Lcom/yopeso/lieferando/R$id;->StampCard:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/view/StempleElement;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/yopeso/lieferando/view/StempleElement;->mStampCard:Landroid/widget/TextView;

    .line 64
    sget v1, Lcom/yopeso/lieferando/R$id;->stamp_layout:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/view/StempleElement;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/yopeso/lieferando/view/StempleElement;->mStampLayout:Landroid/widget/LinearLayout;

    .line 65
    sget v1, Lcom/yopeso/lieferando/R$id;->dividerTop:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/view/StempleElement;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/yopeso/lieferando/view/StempleElement;->mTopDivider:Landroid/view/View;

    .line 66
    sget v1, Lcom/yopeso/lieferando/R$id;->dividerBottom:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/view/StempleElement;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/yopeso/lieferando/view/StempleElement;->mBottomDivider:Landroid/view/View;

    .line 67
    sget v1, Lcom/yopeso/lieferando/R$id;->clockIcon1:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/view/StempleElement;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/yopeso/lieferando/view/StempleElement;->mClock1:Landroid/widget/ImageView;

    .line 68
    return-void
.end method

.method private setDiscounts(Lcom/yopeso/lieferando/callback/StempelSelectedCallback;)V
    .locals 14
    .param p1, "callBack"    # Lcom/yopeso/lieferando/callback/StempelSelectedCallback;

    .prologue
    .line 139
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mStamp:Lcom/yopeso/lieferando/model/Stamp;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/Stamp;->getFirstDiscount()Lcom/yopeso/lieferando/model/Discount;

    move-result-object v2

    .line 140
    .local v2, "discount":Lcom/yopeso/lieferando/model/Discount;
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mMsg2:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Discount;->ismNewCustomer()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 143
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-direct {v4, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 144
    .local v4, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v6, 0x6

    iget-object v7, p0, Lcom/yopeso/lieferando/view/StempleElement;->mContext:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/yopeso/lieferando/util/DensityUtils;->convertDpToPixel(ILandroid/content/Context;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 146
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mStampLayout:Landroid/widget/LinearLayout;

    sget v7, Lcom/yopeso/lieferando/R$drawable;->dotted_blue:I

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 148
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mStampCard:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/StempleElement;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/yopeso/lieferando/R$color;->stamp_text_blue:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    if-eqz p1, :cond_0

    .line 150
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v7, Lcom/yopeso/lieferando/view/StempleElement$2;

    invoke-direct {v7, p0, p1}, Lcom/yopeso/lieferando/view/StempleElement$2;-><init>(Lcom/yopeso/lieferando/view/StempleElement;Lcom/yopeso/lieferando/callback/StempelSelectedCallback;)V

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    :cond_0
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v6

    invoke-interface {v6}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getPaymentType()Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    move-result-object v6

    sget-object v7, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->payu:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    if-eq v6, v7, :cond_2

    :cond_1
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getPaymentType()Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    move-result-object v6

    sget-object v7, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->credit:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    if-ne v6, v7, :cond_4

    .line 159
    :cond_2
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 160
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mMsg:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/StempleElement;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/yopeso/lieferando/R$string;->rebate_only_online_payment:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mMsg2:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Discount;->getmKind()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 164
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mStampCard:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/yopeso/lieferando/view/StempleElement;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/yopeso/lieferando/R$string;->discount_price:I

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v11

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Discount;->getmRabatt()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x42c80000    # 100.0f

    div-float/2addr v12, v13

    float-to-double v12, v12

    invoke-virtual {v11, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    :goto_0
    return-void

    .line 168
    :cond_3
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mStampCard:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Discount;->getmRabatt()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " %"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 172
    :cond_4
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Discount;->getmKind()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_9

    .line 174
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mStampCard:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/yopeso/lieferando/view/StempleElement;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/yopeso/lieferando/R$string;->discount_price:I

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v11

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Discount;->getmRabatt()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x42c80000    # 100.0f

    div-float/2addr v12, v13

    float-to-double v12, v12

    invoke-virtual {v11, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v6

    if-nez v6, :cond_6

    .line 176
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isDeliverNow()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 177
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mMsg:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/yopeso/lieferando/view/StempleElement;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/yopeso/lieferando/R$string;->login_to_use_newcustomer_rebate:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    :goto_1
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_0

    .line 180
    :cond_5
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mMsg:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/yopeso/lieferando/view/StempleElement;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/yopeso/lieferando/R$string;->preorder_rebate_forbidden:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 185
    :cond_6
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getOrderCostReached()I

    move-result v6

    iget-object v7, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getMinCost()I

    move-result v7

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Discount;->getmRabatt()I

    move-result v8

    add-int/2addr v7, v8

    if-ge v6, v7, :cond_7

    .line 187
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getMinCost()I

    move-result v6

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Discount;->getmRabatt()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getOrderCostReached()I

    move-result v7

    sub-int v5, v6, v7

    .line 188
    .local v5, "value":I
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mMsg:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/yopeso/lieferando/view/StempleElement;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/yopeso/lieferando/R$string;->newcustomer_rebate_min_not_reached:I

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v11

    int-to-float v12, v5

    const/high16 v13, 0x42c80000    # 100.0f

    div-float/2addr v12, v13

    float-to-double v12, v12

    invoke-virtual {v11, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto/16 :goto_0

    .line 191
    .end local v5    # "value":I
    :cond_7
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getOrderCostReached()I

    move-result v6

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Discount;->getmRabatt()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Discount;->getmMinAmount()I

    move-result v7

    if-ge v6, v7, :cond_8

    .line 193
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Discount;->getmMinAmount()I

    move-result v6

    iget-object v7, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getOrderCostReached()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Discount;->getmRabatt()I

    move-result v7

    sub-int v5, v6, v7

    .line 194
    .restart local v5    # "value":I
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mMsg:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/yopeso/lieferando/view/StempleElement;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/yopeso/lieferando/R$string;->newcustomer_rebate_min_not_reached:I

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v11

    int-to-float v12, v5

    const/high16 v13, 0x42c80000    # 100.0f

    div-float/2addr v12, v13

    float-to-double v12, v12

    invoke-virtual {v11, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto/16 :goto_0

    .line 200
    .end local v5    # "value":I
    :cond_8
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mMsg:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/yopeso/lieferando/view/StempleElement;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/yopeso/lieferando/R$string;->newcustomer_rebate_dialog:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mMsg2:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mMsg2:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/yopeso/lieferando/view/StempleElement;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/yopeso/lieferando/R$string;->saving:I

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v11

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Discount;->getmRabatt()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x42c80000    # 100.0f

    div-float/2addr v12, v13

    float-to-double v12, v12

    invoke-virtual {v11, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto/16 :goto_0

    .line 213
    :cond_9
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mStampCard:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Discount;->getmRabatt()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " %"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v6

    if-nez v6, :cond_b

    .line 215
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isDeliverNow()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 216
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mMsg:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/yopeso/lieferando/view/StempleElement;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/yopeso/lieferando/R$string;->login_to_use_newcustomer_rebate:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    :goto_2
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto/16 :goto_0

    .line 219
    :cond_a
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mMsg:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/yopeso/lieferando/view/StempleElement;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/yopeso/lieferando/R$string;->preorder_rebate_forbidden:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 224
    :cond_b
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getOrderCostReached()I

    move-result v6

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Discount;->getmRabatt()I

    move-result v7

    mul-int/2addr v6, v7

    div-int/lit8 v0, v6, 0x64

    .line 225
    .local v0, "calculated_value":I
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getMinCost()I

    move-result v6

    mul-int/lit8 v7, v6, 0x64

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Discount;->getmRabatt()I

    move-result v6

    rsub-int/lit8 v6, v6, 0x64

    if-nez v6, :cond_c

    const/4 v6, 0x1

    :goto_3
    div-int v3, v7, v6

    .line 226
    .local v3, "newMinCost":I
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getOrderCostReached()I

    move-result v6

    if-ge v6, v3, :cond_d

    .line 228
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getOrderCostReached()I

    move-result v6

    sub-int v5, v3, v6

    .line 229
    .restart local v5    # "value":I
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mMsg:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/yopeso/lieferando/view/StempleElement;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/yopeso/lieferando/R$string;->newcustomer_rebate_min_not_reached:I

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v11

    int-to-float v12, v5

    const/high16 v13, 0x42c80000    # 100.0f

    div-float/2addr v12, v13

    float-to-double v12, v12

    invoke-virtual {v11, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto/16 :goto_0

    .line 225
    .end local v3    # "newMinCost":I
    .end local v5    # "value":I
    :cond_c
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Discount;->getmRabatt()I

    move-result v6

    rsub-int/lit8 v6, v6, 0x64

    goto :goto_3

    .line 232
    .restart local v3    # "newMinCost":I
    :cond_d
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getOrderCostReached()I

    move-result v6

    sub-int/2addr v6, v0

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Discount;->getmMinAmount()I

    move-result v7

    if-ge v6, v7, :cond_e

    .line 234
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Discount;->getmMinAmount()I

    move-result v6

    iget-object v7, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getOrderCostReached()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int v5, v6, v0

    .line 235
    .restart local v5    # "value":I
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mMsg:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/yopeso/lieferando/view/StempleElement;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/yopeso/lieferando/R$string;->newcustomer_rebate_min_not_reached:I

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v11

    int-to-float v12, v5

    const/high16 v13, 0x42c80000    # 100.0f

    div-float/2addr v12, v13

    float-to-double v12, v12

    invoke-virtual {v11, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto/16 :goto_0

    .line 241
    .end local v5    # "value":I
    :cond_e
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getCostWithoutVoucher()I

    move-result v6

    iget-object v7, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getShippingCost()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Discount;->getmRabatt()I

    move-result v7

    mul-int/2addr v6, v7

    div-int/lit8 v1, v6, 0x64

    .line 242
    .local v1, "calculated_value2":I
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mMsg:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/yopeso/lieferando/view/StempleElement;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/yopeso/lieferando/R$string;->newcustomer_rebate:I

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Discount;->getmRabatt()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, " %"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mMsg2:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mMsg2:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/yopeso/lieferando/view/StempleElement;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/yopeso/lieferando/R$string;->saving:I

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v11

    int-to-float v12, v1

    const/high16 v13, 0x42c80000    # 100.0f

    div-float/2addr v12, v13

    float-to-double v12, v12

    invoke-virtual {v11, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto/16 :goto_0

    .line 259
    .end local v0    # "calculated_value":I
    .end local v1    # "calculated_value2":I
    .end local v3    # "newMinCost":I
    .end local v4    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_f
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-direct {v4, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 260
    .restart local v4    # "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v6, 0x6

    iget-object v7, p0, Lcom/yopeso/lieferando/view/StempleElement;->mContext:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/yopeso/lieferando/util/DensityUtils;->convertDpToPixel(ILandroid/content/Context;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 262
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mStampLayout:Landroid/widget/LinearLayout;

    sget v7, Lcom/yopeso/lieferando/R$drawable;->dotted_red:I

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 264
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mStampCard:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/StempleElement;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/yopeso/lieferando/R$color;->stamp_text_red:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 265
    if-eqz p1, :cond_10

    .line 266
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v7, Lcom/yopeso/lieferando/view/StempleElement$3;

    invoke-direct {v7, p0, p1}, Lcom/yopeso/lieferando/view/StempleElement$3;-><init>(Lcom/yopeso/lieferando/view/StempleElement;Lcom/yopeso/lieferando/callback/StempelSelectedCallback;)V

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    :cond_10
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Discount;->getmKind()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_14

    .line 275
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mStampCard:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/yopeso/lieferando/view/StempleElement;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/yopeso/lieferando/R$string;->discount_price:I

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v11

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Discount;->getmRabatt()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x42c80000    # 100.0f

    div-float/2addr v12, v13

    float-to-double v12, v12

    invoke-virtual {v11, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getOrderCostReached()I

    move-result v6

    iget-object v7, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getMinCost()I

    move-result v7

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Discount;->getmRabatt()I

    move-result v8

    add-int/2addr v7, v8

    if-ge v6, v7, :cond_11

    .line 278
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getMinCost()I

    move-result v6

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Discount;->getmRabatt()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getOrderCostReached()I

    move-result v7

    sub-int v5, v6, v7

    .line 279
    .restart local v5    # "value":I
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mMsg:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/yopeso/lieferando/view/StempleElement;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/yopeso/lieferando/R$string;->rebate_min_not_reached:I

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v11

    int-to-float v12, v5

    const/high16 v13, 0x42c80000    # 100.0f

    div-float/2addr v12, v13

    float-to-double v12, v12

    invoke-virtual {v11, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto/16 :goto_0

    .line 282
    .end local v5    # "value":I
    :cond_11
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getOrderCostReached()I

    move-result v6

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Discount;->getmRabatt()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Discount;->getmMinAmount()I

    move-result v7

    if-ge v6, v7, :cond_12

    .line 284
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Discount;->getmMinAmount()I

    move-result v6

    iget-object v7, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getOrderCostReached()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Discount;->getmRabatt()I

    move-result v7

    sub-int v5, v6, v7

    .line 285
    .restart local v5    # "value":I
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mMsg:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/yopeso/lieferando/view/StempleElement;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/yopeso/lieferando/R$string;->rebate_min_not_reached:I

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v11

    int-to-float v12, v5

    const/high16 v13, 0x42c80000    # 100.0f

    div-float/2addr v12, v13

    float-to-double v12, v12

    invoke-virtual {v11, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto/16 :goto_0

    .line 292
    .end local v5    # "value":I
    :cond_12
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isDeliverNow()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 293
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mMsg:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/yopeso/lieferando/view/StempleElement;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/yopeso/lieferando/R$string;->saving:I

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v11

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Discount;->getmRabatt()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x42c80000    # 100.0f

    div-float/2addr v12, v13

    float-to-double v12, v12

    invoke-virtual {v11, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto/16 :goto_0

    .line 297
    :cond_13
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mMsg:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/yopeso/lieferando/view/StempleElement;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/yopeso/lieferando/R$string;->preorder_rebate_forbidden:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto/16 :goto_0

    .line 308
    :cond_14
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mStampCard:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Discount;->getmRabatt()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " %"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getOrderCostReached()I

    move-result v6

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Discount;->getmRabatt()I

    move-result v7

    mul-int/2addr v6, v7

    div-int/lit8 v0, v6, 0x64

    .line 310
    .restart local v0    # "calculated_value":I
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getMinCost()I

    move-result v6

    mul-int/lit8 v7, v6, 0x64

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Discount;->getmRabatt()I

    move-result v6

    rsub-int/lit8 v6, v6, 0x64

    if-nez v6, :cond_15

    const/4 v6, 0x1

    :goto_4
    div-int v3, v7, v6

    .line 311
    .restart local v3    # "newMinCost":I
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getOrderCostReached()I

    move-result v6

    if-ge v6, v3, :cond_16

    .line 313
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getOrderCostReached()I

    move-result v6

    sub-int v5, v3, v6

    .line 314
    .restart local v5    # "value":I
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mMsg:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/yopeso/lieferando/view/StempleElement;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/yopeso/lieferando/R$string;->rebate_min_not_reached:I

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v11

    int-to-float v12, v5

    const/high16 v13, 0x42c80000    # 100.0f

    div-float/2addr v12, v13

    float-to-double v12, v12

    invoke-virtual {v11, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto/16 :goto_0

    .line 310
    .end local v3    # "newMinCost":I
    .end local v5    # "value":I
    :cond_15
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Discount;->getmRabatt()I

    move-result v6

    rsub-int/lit8 v6, v6, 0x64

    goto :goto_4

    .line 317
    .restart local v3    # "newMinCost":I
    :cond_16
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getOrderCostReached()I

    move-result v6

    sub-int/2addr v6, v0

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Discount;->getmMinAmount()I

    move-result v7

    if-ge v6, v7, :cond_17

    .line 319
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Discount;->getmMinAmount()I

    move-result v6

    iget-object v7, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getOrderCostReached()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int v5, v6, v0

    .line 320
    .restart local v5    # "value":I
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mMsg:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/yopeso/lieferando/view/StempleElement;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/yopeso/lieferando/R$string;->rebate_min_not_reached:I

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v11

    int-to-float v12, v5

    const/high16 v13, 0x42c80000    # 100.0f

    div-float/2addr v12, v13

    float-to-double v12, v12

    invoke-virtual {v11, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto/16 :goto_0

    .line 326
    .end local v5    # "value":I
    :cond_17
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getCostWithoutVoucher()I

    move-result v6

    iget-object v7, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getShippingCost()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Discount;->getmRabatt()I

    move-result v7

    mul-int/2addr v6, v7

    div-int/lit8 v1, v6, 0x64

    .line 329
    .restart local v1    # "calculated_value2":I
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isDeliverNow()Z

    move-result v6

    if-eqz v6, :cond_18

    .line 330
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mMsg:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/yopeso/lieferando/view/StempleElement;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/yopeso/lieferando/R$string;->saving:I

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v11

    int-to-float v12, v1

    const/high16 v13, 0x42c80000    # 100.0f

    div-float/2addr v12, v13

    float-to-double v12, v12

    invoke-virtual {v11, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto/16 :goto_0

    .line 334
    :cond_18
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mMsg:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/yopeso/lieferando/view/StempleElement;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/yopeso/lieferando/R$string;->preorder_rebate_forbidden:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public enableStemple()V
    .locals 10

    .prologue
    const/high16 v7, 0x42c80000    # 100.0f

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 348
    iget-object v1, p0, Lcom/yopeso/lieferando/view/StempleElement;->mStamp:Lcom/yopeso/lieferando/model/Stamp;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/Stamp;->isDiscount()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/yopeso/lieferando/view/StempleElement;->setDiscounts(Lcom/yopeso/lieferando/callback/StempelSelectedCallback;)V

    .line 385
    :goto_0
    return-void

    .line 353
    :cond_0
    iget-object v1, p0, Lcom/yopeso/lieferando/view/StempleElement;->mStampCard:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/StempleElement;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$color;->stamp_text_orange:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 354
    iget-object v1, p0, Lcom/yopeso/lieferando/view/StempleElement;->mStamp:Lcom/yopeso/lieferando/model/Stamp;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/Stamp;->isReadyForUse()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 355
    iget-object v1, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 356
    iget-object v1, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getOrderCostReached()I

    move-result v1

    iget-object v2, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getMinCost()I

    move-result v2

    iget-object v3, p0, Lcom/yopeso/lieferando/view/StempleElement;->mStamp:Lcom/yopeso/lieferando/model/Stamp;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/Stamp;->getDiscountValue()I

    move-result v3

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_1

    .line 357
    iget-object v1, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getMinCost()I

    move-result v1

    iget-object v2, p0, Lcom/yopeso/lieferando/view/StempleElement;->mStamp:Lcom/yopeso/lieferando/model/Stamp;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Stamp;->getDiscountValue()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getOrderCostReached()I

    move-result v2

    sub-int v0, v1, v2

    .line 358
    .local v0, "value":I
    iget-object v1, p0, Lcom/yopeso/lieferando/view/StempleElement;->mMsg:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/StempleElement;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->stempel_min_not_reached:I

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v5

    int-to-float v6, v0

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v1, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_0

    .line 362
    .end local v0    # "value":I
    :cond_1
    iget-object v1, p0, Lcom/yopeso/lieferando/view/StempleElement;->mMsg:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/StempleElement;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->stempel_use:I

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v5

    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleElement;->mStamp:Lcom/yopeso/lieferando/model/Stamp;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/Stamp;->getDiscountValue()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    iget-object v1, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto/16 :goto_0

    .line 367
    :cond_2
    iget-object v1, p0, Lcom/yopeso/lieferando/view/StempleElement;->mStamp:Lcom/yopeso/lieferando/model/Stamp;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/Stamp;->isFull()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 368
    iget-object v1, p0, Lcom/yopeso/lieferando/view/StempleElement;->mMsg:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/StempleElement;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->stempel_pending:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    :goto_1
    iget-object v1, p0, Lcom/yopeso/lieferando/view/StempleElement;->mStamp:Lcom/yopeso/lieferando/model/Stamp;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/Stamp;->getUserStamps()I

    move-result v1

    iget-object v2, p0, Lcom/yopeso/lieferando/view/StempleElement;->mStamp:Lcom/yopeso/lieferando/model/Stamp;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v2

    if-le v1, v2, :cond_3

    .line 378
    iget-object v1, p0, Lcom/yopeso/lieferando/view/StempleElement;->mMsg:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/StempleElement;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->stemp_can_not_be_used_now:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    iget-object v1, p0, Lcom/yopeso/lieferando/view/StempleElement;->mMsg:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/StempleElement;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$color;->text_grey:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 381
    :cond_3
    iget-object v1, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_0

    .line 369
    :cond_4
    iget-object v1, p0, Lcom/yopeso/lieferando/view/StempleElement;->mStamp:Lcom/yopeso/lieferando/model/Stamp;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/Stamp;->getUserStamps()I

    move-result v1

    if-nez v1, :cond_5

    .line 370
    iget-object v1, p0, Lcom/yopeso/lieferando/view/StempleElement;->mMsg:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/StempleElement;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->stempel_no_card:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    iget-object v1, p0, Lcom/yopeso/lieferando/view/StempleElement;->mMsg:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/StempleElement;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$color;->black:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 373
    :cond_5
    iget-object v1, p0, Lcom/yopeso/lieferando/view/StempleElement;->mMsg:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/StempleElement;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->stempel_open:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v1, p0, Lcom/yopeso/lieferando/view/StempleElement;->mMsg:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/StempleElement;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$color;->black:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method public getStamp()Lcom/yopeso/lieferando/model/Stamp;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/yopeso/lieferando/view/StempleElement;->mStamp:Lcom/yopeso/lieferando/model/Stamp;

    return-object v0
.end method

.method public removeBottomDivider()V
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/yopeso/lieferando/view/StempleElement;->mBottomDivider:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 423
    return-void
.end method

.method public removeTopDivider()V
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/yopeso/lieferando/view/StempleElement;->mTopDivider:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 419
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 402
    iget-object v0, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 403
    return-void
.end method

.method public setEnableCheckbox(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    const/4 v3, 0x0

    .line 388
    if-eqz p1, :cond_1

    .line 389
    iget-object v0, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getOrderCostReached()I

    move-result v0

    iget-object v1, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getMinCost()I

    move-result v1

    iget-object v2, p0, Lcom/yopeso/lieferando/view/StempleElement;->mStamp:Lcom/yopeso/lieferando/model/Stamp;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Stamp;->getDiscountValue()I

    move-result v2

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 390
    iget-object v0, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 398
    :goto_0
    iget-object v0, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 399
    return-void

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_0

    .line 395
    :cond_1
    iget-object v0, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setStamp(Lcom/yopeso/lieferando/model/Stamp;Lcom/yopeso/lieferando/callback/StempelSelectedCallback;Lcom/yopeso/lieferando/model/cart/ShoppingCart;)V
    .locals 10
    .param p1, "stamp"    # Lcom/yopeso/lieferando/model/Stamp;
    .param p2, "callBack"    # Lcom/yopeso/lieferando/callback/StempelSelectedCallback;
    .param p3, "cart"    # Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    .prologue
    .line 71
    iput-object p3, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    .line 72
    iput-object p1, p0, Lcom/yopeso/lieferando/view/StempleElement;->mStamp:Lcom/yopeso/lieferando/model/Stamp;

    .line 73
    iget-object v2, p0, Lcom/yopeso/lieferando/view/StempleElement;->mStamp:Lcom/yopeso/lieferando/model/Stamp;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Stamp;->isDiscount()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    invoke-direct {p0, p2}, Lcom/yopeso/lieferando/view/StempleElement;->setDiscounts(Lcom/yopeso/lieferando/callback/StempelSelectedCallback;)V

    .line 131
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v2, p0, Lcom/yopeso/lieferando/view/StempleElement;->mStamp:Lcom/yopeso/lieferando/model/Stamp;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Stamp;->isReadyForUse()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 80
    iget-object v2, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 81
    iget-object v2, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getOrderCostReached()I

    move-result v2

    iget-object v3, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getMinCost()I

    move-result v3

    iget-object v4, p0, Lcom/yopeso/lieferando/view/StempleElement;->mStamp:Lcom/yopeso/lieferando/model/Stamp;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/Stamp;->getDiscountValue()I

    move-result v4

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_1

    .line 82
    iget-object v2, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getMinCost()I

    move-result v2

    iget-object v3, p0, Lcom/yopeso/lieferando/view/StempleElement;->mStamp:Lcom/yopeso/lieferando/model/Stamp;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/Stamp;->getDiscountValue()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getOrderCostReached()I

    move-result v3

    sub-int v1, v2, v3

    .line 83
    .local v1, "value":I
    iget-object v2, p0, Lcom/yopeso/lieferando/view/StempleElement;->mMsg:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/yopeso/lieferando/view/StempleElement;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$string;->stempel_min_not_reached:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v7

    int-to-float v8, v1

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v8, v9

    float-to-double v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v2, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 91
    .end local v1    # "value":I
    :goto_1
    iget-object v2, p0, Lcom/yopeso/lieferando/view/StempleElement;->mStampCard:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v4

    iget-object v5, p0, Lcom/yopeso/lieferando/view/StempleElement;->mStamp:Lcom/yopeso/lieferando/model/Stamp;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/Stamp;->getDiscountValue()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    float-to-double v6, v5

    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/StempleElement;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->currency:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 93
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/yopeso/lieferando/view/StempleElement;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/yopeso/lieferando/util/DensityUtils;->convertDpToPixel(ILandroid/content/Context;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 96
    iget-object v2, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v3, Lcom/yopeso/lieferando/view/StempleElement$1;

    invoke-direct {v3, p0, p2}, Lcom/yopeso/lieferando/view/StempleElement$1;-><init>(Lcom/yopeso/lieferando/view/StempleElement;Lcom/yopeso/lieferando/callback/StempelSelectedCallback;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 87
    .end local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iget-object v2, p0, Lcom/yopeso/lieferando/view/StempleElement;->mMsg:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/yopeso/lieferando/view/StempleElement;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$string;->stempel_use:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v7

    iget-object v8, p0, Lcom/yopeso/lieferando/view/StempleElement;->mStamp:Lcom/yopeso/lieferando/model/Stamp;

    invoke-virtual {v8}, Lcom/yopeso/lieferando/model/Stamp;->getDiscountValue()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v8, v9

    float-to-double v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v2, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto/16 :goto_1

    .line 104
    :cond_2
    iget-object v2, p0, Lcom/yopeso/lieferando/view/StempleElement;->mStamp:Lcom/yopeso/lieferando/model/Stamp;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Stamp;->isPending()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 105
    iget-object v2, p0, Lcom/yopeso/lieferando/view/StempleElement;->mClock1:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    :cond_3
    iget-object v2, p0, Lcom/yopeso/lieferando/view/StempleElement;->mStamp:Lcom/yopeso/lieferando/model/Stamp;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Stamp;->isFull()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 108
    iget-object v2, p0, Lcom/yopeso/lieferando/view/StempleElement;->mMsg:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/yopeso/lieferando/view/StempleElement;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$string;->stempel_pending:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :goto_2
    iget-object v2, p0, Lcom/yopeso/lieferando/view/StempleElement;->mStamp:Lcom/yopeso/lieferando/model/Stamp;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Stamp;->getUserStamps()I

    move-result v2

    iget-object v3, p0, Lcom/yopeso/lieferando/view/StempleElement;->mStamp:Lcom/yopeso/lieferando/model/Stamp;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v3

    if-le v2, v3, :cond_6

    .line 118
    iget-object v2, p0, Lcom/yopeso/lieferando/view/StempleElement;->mMsg:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/yopeso/lieferando/view/StempleElement;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$string;->stemp_can_not_be_used_now:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v2, p0, Lcom/yopeso/lieferando/view/StempleElement;->mMsg:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/StempleElement;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$color;->text_grey:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    iget-object v2, p0, Lcom/yopeso/lieferando/view/StempleElement;->mStampCard:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/yopeso/lieferando/view/StempleElement;->mStamp:Lcom/yopeso/lieferando/model/Stamp;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/yopeso/lieferando/view/StempleElement;->mStamp:Lcom/yopeso/lieferando/model/Stamp;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :goto_3
    iget-object v2, p0, Lcom/yopeso/lieferando/view/StempleElement;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 126
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 127
    .restart local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x2c

    iget-object v3, p0, Lcom/yopeso/lieferando/view/StempleElement;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/yopeso/lieferando/util/DensityUtils;->convertDpToPixel(ILandroid/content/Context;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_0

    .line 109
    .end local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    iget-object v2, p0, Lcom/yopeso/lieferando/view/StempleElement;->mStamp:Lcom/yopeso/lieferando/model/Stamp;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Stamp;->getUserStamps()I

    move-result v2

    if-nez v2, :cond_5

    .line 110
    iget-object v2, p0, Lcom/yopeso/lieferando/view/StempleElement;->mMsg:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/yopeso/lieferando/view/StempleElement;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$string;->stempel_no_card:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v2, p0, Lcom/yopeso/lieferando/view/StempleElement;->mMsg:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/StempleElement;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$color;->black:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 113
    :cond_5
    iget-object v2, p0, Lcom/yopeso/lieferando/view/StempleElement;->mMsg:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/yopeso/lieferando/view/StempleElement;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$string;->stempel_open:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v2, p0, Lcom/yopeso/lieferando/view/StempleElement;->mMsg:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/StempleElement;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$color;->black:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 122
    :cond_6
    iget-object v2, p0, Lcom/yopeso/lieferando/view/StempleElement;->mStampCard:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/yopeso/lieferando/view/StempleElement;->mStamp:Lcom/yopeso/lieferando/model/Stamp;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/Stamp;->getUserStamps()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/yopeso/lieferando/view/StempleElement;->mStamp:Lcom/yopeso/lieferando/model/Stamp;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method

.method public varargs setText([Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 412
    iget-object v0, p0, Lcom/yopeso/lieferando/view/StempleElement;->mMsg:Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    array-length v0, p1

    if-le v0, v2, :cond_0

    .line 414
    iget-object v0, p0, Lcom/yopeso/lieferando/view/StempleElement;->mMsg2:Landroid/widget/TextView;

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    :cond_0
    return-void
.end method

.method public varargs setTextColor([I)V
    .locals 3
    .param p1, "color"    # [I

    .prologue
    const/4 v2, 0x1

    .line 406
    iget-object v0, p0, Lcom/yopeso/lieferando/view/StempleElement;->mMsg:Landroid/widget/TextView;

    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 407
    array-length v0, p1

    if-le v0, v2, :cond_0

    .line 408
    iget-object v0, p0, Lcom/yopeso/lieferando/view/StempleElement;->mMsg2:Landroid/widget/TextView;

    aget v1, p1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 409
    :cond_0
    return-void
.end method
