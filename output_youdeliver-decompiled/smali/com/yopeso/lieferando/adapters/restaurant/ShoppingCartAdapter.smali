.class public Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;
.super Landroid/widget/BaseAdapter;
.source "ShoppingCartAdapter.java"

# interfaces
.implements Lcom/yopeso/lieferando/callback/CustomEditTextCallBack;


# static fields
.field private static final VIEW_EMPTY_CART:I = 0x2

.field private static final VIEW_MEAL_DETAILS:I = 0x0

.field private static final VIEW_TOTAL_PRICE_MEAL:I = 0x1


# instance fields
.field private mAreFieldsDisabpled:Z

.field private mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

.field private mContext:Landroid/content/Context;

.field private mIsTablet:Z

.field private mListener:Lcom/yopeso/lieferando/callback/ShoppingCartCallback;


# direct methods
.method public constructor <init>(Lcom/yopeso/lieferando/model/cart/ShoppingCart;Landroid/content/Context;)V
    .locals 1
    .param p1, "cart"    # Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 54
    iput-boolean v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mIsTablet:Z

    .line 60
    iput-boolean v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mAreFieldsDisabpled:Z

    .line 63
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    .line 64
    iput-object p2, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mContext:Landroid/content/Context;

    .line 65
    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;)Lcom/yopeso/lieferando/callback/ShoppingCartCallback;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mListener:Lcom/yopeso/lieferando/callback/ShoppingCartCallback;

    return-object v0
.end method

.method static synthetic access$1(Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;)Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    return-object v0
.end method

.method static synthetic access$2(Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private setFeeValue(ILjava/lang/String;Landroid/view/View;)V
    .locals 9
    .param p1, "fee"    # I
    .param p2, "payment"    # Ljava/lang/String;
    .param p3, "convertView"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    .line 531
    if-eqz p1, :cond_0

    .line 535
    sget v0, Lcom/yopeso/lieferando/R$id;->ECValueLayout:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 536
    sget v0, Lcom/yopeso/lieferando/R$id;->ECTitle:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    sget v0, Lcom/yopeso/lieferando/R$id;->ECValue:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$string;->price:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 538
    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v4

    int-to-float v5, p1

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    float-to-double v6, v5

    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    .line 537
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 543
    :goto_0
    return-void

    .line 541
    :cond_0
    sget v0, Lcom/yopeso/lieferando/R$id;->ECValueLayout:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setFeeValue(Landroid/view/View;)V
    .locals 4
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    .line 497
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getPaymentType()Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    move-result-object v0

    .line 498
    .local v0, "payment":Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;
    sget-object v1, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->bar:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    if-ne v0, v1, :cond_1

    .line 499
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v1

    const-string v2, "bar"

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getPaymentFee(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->fee_cash:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, p1}, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->setFeeValue(ILjava/lang/String;Landroid/view/View;)V

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 502
    :cond_1
    sget-object v1, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->paypal:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    if-ne v0, v1, :cond_2

    .line 503
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v1

    const-string v2, "paypal"

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getPaymentFee(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->fee_paypal:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, p1}, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->setFeeValue(ILjava/lang/String;Landroid/view/View;)V

    goto :goto_0

    .line 506
    :cond_2
    sget-object v1, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->credit:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    if-ne v0, v1, :cond_3

    .line 507
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v1

    const-string v2, "credit"

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getPaymentFee(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->fee_creditcard:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, p1}, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->setFeeValue(ILjava/lang/String;Landroid/view/View;)V

    goto :goto_0

    .line 510
    :cond_3
    sget-object v1, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->ebanking:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    if-ne v0, v1, :cond_4

    .line 511
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v1

    const-string v2, "ebanking"

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getPaymentFee(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->fee_sofort:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, p1}, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->setFeeValue(ILjava/lang/String;Landroid/view/View;)V

    goto :goto_0

    .line 514
    :cond_4
    sget-object v1, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->clickandbuy:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    if-ne v0, v1, :cond_5

    .line 515
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v1

    const-string v2, "clickandbuy"

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getPaymentFee(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->fee_clickandbuy:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, p1}, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->setFeeValue(ILjava/lang/String;Landroid/view/View;)V

    goto :goto_0

    .line 518
    :cond_5
    sget-object v1, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->ec:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    if-ne v0, v1, :cond_0

    .line 519
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v1

    const-string v2, "ec"

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getPaymentFee(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->ec_payment:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, p1}, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->setFeeValue(ILjava/lang/String;Landroid/view/View;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public deleteItem(Lcom/yopeso/lieferando/model/cart/CartItem;)V
    .locals 1
    .param p1, "item"    # Lcom/yopeso/lieferando/model/cart/CartItem;

    .prologue
    .line 576
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 577
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mIsTablet:Z

    if-nez v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 71
    const/4 v0, 0x2

    .line 75
    :goto_0
    return v0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 86
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x1

    .line 556
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 557
    if-nez p1, :cond_0

    .line 558
    const/4 v0, 0x2

    .line 566
    :cond_0
    :goto_0
    return v0

    .line 563
    :cond_1
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 564
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 91
    if-eqz p2, :cond_0

    invoke-virtual/range {p0 .. p1}, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->getItemViewType(I)I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eq v9, v8, :cond_1

    .line 92
    :cond_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mContext:Landroid/content/Context;

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 93
    .local v4, "li":Landroid/view/LayoutInflater;
    invoke-virtual/range {p0 .. p1}, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->getItemViewType(I)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 109
    .end local v4    # "li":Landroid/view/LayoutInflater;
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->getItemViewType(I)I

    move-result v8

    packed-switch v8, :pswitch_data_1

    .line 493
    :cond_2
    :goto_1
    return-object p2

    .line 95
    .restart local v4    # "li":Landroid/view/LayoutInflater;
    :pswitch_0
    sget v8, Lcom/yopeso/lieferando/R$layout;->shopping_cart_row:I

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 96
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 99
    :pswitch_1
    sget v8, Lcom/yopeso/lieferando/R$layout;->shopping_cart_row_total:I

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 100
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 103
    :pswitch_2
    sget v8, Lcom/yopeso/lieferando/R$layout;->empty_cart_row:I

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 104
    sget v8, Lcom/yopeso/lieferando/R$id;->MinCostText:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mContext:Landroid/content/Context;

    sget v10, Lcom/yopeso/lieferando/R$string;->empty_cart_list_text:I

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v14}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getMinCost()I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x42c80000    # 100.0f

    div-float/2addr v14, v15

    float-to-double v14, v14

    invoke-virtual {v13, v14, v15}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 111
    .end local v4    # "li":Landroid/view/LayoutInflater;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getItem(I)Lcom/yopeso/lieferando/model/cart/CartItem;

    move-result-object v2

    .line 112
    .local v2, "item":Lcom/yopeso/lieferando/model/cart/CartItem;
    sget v8, Lcom/yopeso/lieferando/R$id;->numbersOfMeals:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/yopeso/lieferando/view/CustomEditText;

    .line 113
    .local v3, "itemCount":Lcom/yopeso/lieferando/view/CustomEditText;
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/yopeso/lieferando/view/CustomEditText;->setListener(Lcom/yopeso/lieferando/callback/CustomEditTextCallBack;)V

    .line 114
    invoke-virtual {v3, v2}, Lcom/yopeso/lieferando/view/CustomEditText;->setCartItem(Lcom/yopeso/lieferando/model/cart/CartItem;)V

    .line 115
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/CartItem;->getCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/yopeso/lieferando/view/CustomEditText;->setText(Ljava/lang/CharSequence;)V

    .line 116
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mAreFieldsDisabpled:Z

    if-eqz v8, :cond_4

    .line 117
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lcom/yopeso/lieferando/view/CustomEditText;->setFocusable(Z)V

    .line 217
    :goto_2
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/CartItem;->getMeal()Lcom/yopeso/lieferando/model/meal/Meal;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yopeso/lieferando/model/meal/Meal;->hasSingleSize()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 218
    sget v8, Lcom/yopeso/lieferando/R$id;->nameOfMeal:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/CartItem;->getMeal()Lcom/yopeso/lieferando/model/meal/Meal;

    move-result-object v9

    invoke-virtual {v9}, Lcom/yopeso/lieferando/model/meal/Meal;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    :goto_3
    sget v8, Lcom/yopeso/lieferando/R$id;->mealPrice:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mContext:Landroid/content/Context;

    sget v10, Lcom/yopeso/lieferando/R$string;->price:I

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v13

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/CartItem;->getItemCost()I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x42c80000    # 100.0f

    div-float/2addr v14, v15

    float-to-double v14, v14

    invoke-virtual {v13, v14, v15}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    sget v8, Lcom/yopeso/lieferando/R$id;->descriptionMeal:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/CartItem;->getDescriptionMeal()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/CartItem;->getMeal()Lcom/yopeso/lieferando/model/meal/Meal;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yopeso/lieferando/model/meal/Meal;->isExcludeFromMinCost()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 225
    sget v8, Lcom/yopeso/lieferando/R$id;->excludedFromMinCost:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 231
    :goto_4
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v8

    invoke-interface {v8}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v8

    if-nez v8, :cond_3

    .line 232
    sget v8, Lcom/yopeso/lieferando/R$id;->changeContentOfMeal:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    sget v9, Lcom/yopeso/lieferando/R$drawable;->button_green_selector:I

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 233
    sget v8, Lcom/yopeso/lieferando/R$id;->changeComment:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    sget v9, Lcom/yopeso/lieferando/R$drawable;->button_green_selector:I

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 234
    sget v8, Lcom/yopeso/lieferando/R$id;->changeContentOfMeal:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/yopeso/lieferando/model/SettingsContent;->getDynamicButtonFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 235
    sget v8, Lcom/yopeso/lieferando/R$id;->changeComment:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/yopeso/lieferando/model/SettingsContent;->getDynamicButtonFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 237
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/CartItem;->getMeal()Lcom/yopeso/lieferando/model/meal/Meal;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yopeso/lieferando/model/meal/Meal;->getPricePerUnit()Landroid/util/Pair;

    move-result-object v7

    .line 238
    .local v7, "pricePerUnit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz v7, :cond_7

    .line 239
    sget v8, Lcom/yopeso/lieferando/R$id;->PricePerUnit:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 240
    sget v8, Lcom/yopeso/lieferando/R$id;->PricePerUnit:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mContext:Landroid/content/Context;

    sget v12, Lcom/yopeso/lieferando/R$string;->price:I

    const/4 v9, 0x1

    new-array v13, v9, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v15

    iget-object v9, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-float v9, v9

    const/high16 v16, 0x42c80000    # 100.0f

    div-float v9, v9, v16

    float-to-double v0, v9

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v9, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    .end local v7    # "pricePerUnit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_3
    :goto_5
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/CartItem;->haveSizeAdditions()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 250
    sget v8, Lcom/yopeso/lieferando/R$id;->changeContentOfMeal:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 251
    sget v8, Lcom/yopeso/lieferando/R$id;->changeComment:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 252
    sget v8, Lcom/yopeso/lieferando/R$id;->contentMeal:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 253
    sget v8, Lcom/yopeso/lieferando/R$id;->contentMeal:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/CartItem;->getMealContent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    sget v8, Lcom/yopeso/lieferando/R$id;->commentMeal:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/CartItem;->getOptionalNotes()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mAreFieldsDisabpled:Z

    if-eqz v8, :cond_8

    .line 257
    sget v8, Lcom/yopeso/lieferando/R$id;->changeContentOfMeal:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mAreFieldsDisabpled:Z

    if-eqz v8, :cond_b

    .line 285
    sget v8, Lcom/yopeso/lieferando/R$id;->increaseButton:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    :goto_7
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/CartItem;->getMeal()Lcom/yopeso/lieferando/model/meal/Meal;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yopeso/lieferando/model/meal/Meal;->getmMaxAmount()I

    move-result v8

    if-lez v8, :cond_c

    .line 321
    sget v8, Lcom/yopeso/lieferando/R$id;->numbersOfMeals:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/yopeso/lieferando/view/CustomEditText;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/yopeso/lieferando/view/CustomEditText;->setEnabled(Z)V

    .line 328
    :goto_8
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/CartItem;->getCount()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_f

    .line 330
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v8, v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->maxAmountReached(Lcom/yopeso/lieferando/model/cart/CartItem;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 332
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/CartItem;->getMeal()Lcom/yopeso/lieferando/model/meal/Meal;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yopeso/lieferando/model/meal/Meal;->getmMaxAmount()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_d

    .line 333
    sget v8, Lcom/yopeso/lieferando/R$id;->increaseButton:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 343
    :goto_9
    sget v8, Lcom/yopeso/lieferando/R$id;->decreaseButton:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 344
    sget v8, Lcom/yopeso/lieferando/R$id;->decreaseButton1:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 368
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mAreFieldsDisabpled:Z

    if-eqz v8, :cond_10

    .line 369
    sget v8, Lcom/yopeso/lieferando/R$id;->decreaseButton:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    sget v8, Lcom/yopeso/lieferando/R$id;->decreaseButton1:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 119
    :cond_4
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Lcom/yopeso/lieferando/view/CustomEditText;->setFocusableInTouchMode(Z)V

    .line 120
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Lcom/yopeso/lieferando/view/CustomEditText;->setFocusable(Z)V

    .line 121
    new-instance v8, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v3, v2}, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$1;-><init>(Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;Lcom/yopeso/lieferando/view/CustomEditText;Lcom/yopeso/lieferando/model/cart/CartItem;)V

    invoke-virtual {v3, v8}, Lcom/yopeso/lieferando/view/CustomEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 158
    new-instance v8, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$2;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v3}, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$2;-><init>(Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;Lcom/yopeso/lieferando/view/CustomEditText;)V

    invoke-virtual {v3, v8}, Lcom/yopeso/lieferando/view/CustomEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_2

    .line 220
    :cond_5
    sget v8, Lcom/yopeso/lieferando/R$id;->nameOfMeal:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/CartItem;->getMeal()Lcom/yopeso/lieferando/model/meal/Meal;

    move-result-object v10

    invoke-virtual {v10}, Lcom/yopeso/lieferando/model/meal/Meal;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/CartItem;->getMeal()Lcom/yopeso/lieferando/model/meal/Meal;

    move-result-object v10

    invoke-virtual {v10}, Lcom/yopeso/lieferando/model/meal/Meal;->getSelectedSize()Lcom/yopeso/lieferando/model/meal/Size;

    move-result-object v10

    invoke-virtual {v10}, Lcom/yopeso/lieferando/model/meal/Size;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 227
    :cond_6
    sget v8, Lcom/yopeso/lieferando/R$id;->excludedFromMinCost:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 243
    .restart local v7    # "pricePerUnit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_7
    sget v8, Lcom/yopeso/lieferando/R$id;->PricePerUnit:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 259
    .end local v7    # "pricePerUnit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_8
    sget v8, Lcom/yopeso/lieferando/R$id;->changeContentOfMeal:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    new-instance v9, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$3;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v2}, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$3;-><init>(Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;Lcom/yopeso/lieferando/model/cart/CartItem;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_6

    .line 267
    :cond_9
    sget v8, Lcom/yopeso/lieferando/R$id;->commentMeal:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/CartItem;->getOptionalNotes()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    sget v8, Lcom/yopeso/lieferando/R$id;->contentMeal:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 269
    sget v8, Lcom/yopeso/lieferando/R$id;->changeContentOfMeal:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 270
    sget v8, Lcom/yopeso/lieferando/R$id;->changeComment:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 272
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mAreFieldsDisabpled:Z

    if-eqz v8, :cond_a

    .line 273
    sget v8, Lcom/yopeso/lieferando/R$id;->changeComment:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_6

    .line 275
    :cond_a
    sget v8, Lcom/yopeso/lieferando/R$id;->changeComment:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    new-instance v9, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$4;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v2}, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$4;-><init>(Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;Lcom/yopeso/lieferando/model/cart/CartItem;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_6

    .line 287
    :cond_b
    sget v8, Lcom/yopeso/lieferando/R$id;->increaseButton:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    new-instance v9, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$5;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v2, v3}, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$5;-><init>(Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;Lcom/yopeso/lieferando/model/cart/CartItem;Lcom/yopeso/lieferando/view/CustomEditText;)V

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_7

    .line 324
    :cond_c
    sget v8, Lcom/yopeso/lieferando/R$id;->numbersOfMeals:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/yopeso/lieferando/view/CustomEditText;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/yopeso/lieferando/view/CustomEditText;->setEnabled(Z)V

    goto/16 :goto_8

    .line 336
    :cond_d
    sget v8, Lcom/yopeso/lieferando/R$id;->increaseButton:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_9

    .line 340
    :cond_e
    sget v8, Lcom/yopeso/lieferando/R$id;->increaseButton:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_9

    .line 356
    :cond_f
    sget v8, Lcom/yopeso/lieferando/R$id;->decreaseButton:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 357
    sget v8, Lcom/yopeso/lieferando/R$id;->decreaseButton1:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_a

    .line 375
    :cond_10
    new-instance v4, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$6;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v2, v3}, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter$6;-><init>(Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;Lcom/yopeso/lieferando/model/cart/CartItem;Lcom/yopeso/lieferando/view/CustomEditText;)V

    .line 391
    .local v4, "li":Landroid/view/View$OnClickListener;
    sget v8, Lcom/yopeso/lieferando/R$id;->decreaseButton:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    sget v8, Lcom/yopeso/lieferando/R$id;->decreaseButton1:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 400
    .end local v2    # "item":Lcom/yopeso/lieferando/model/cart/CartItem;
    .end local v3    # "itemCount":Lcom/yopeso/lieferando/view/CustomEditText;
    .end local v4    # "li":Landroid/view/View$OnClickListener;
    :pswitch_4
    sget v8, Lcom/yopeso/lieferando/R$id;->orderTotal:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/yopeso/lieferando/R$string;->price:I

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    .line 401
    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v14}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getCostWithoutVoucher()I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x42c80000    # 100.0f

    div-float/2addr v14, v15

    float-to-double v14, v14

    invoke-virtual {v13, v14, v15}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 400
    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v8}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isVoucherUsed()Z

    move-result v8

    if-eqz v8, :cond_12

    .line 404
    sget v8, Lcom/yopeso/lieferando/R$id;->voucherValue:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/yopeso/lieferando/R$string;->price_minus:I

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    .line 405
    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v14}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getVoucher()Lcom/yopeso/lieferando/model/user/Voucher;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v15}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getCostWithoutVoucher()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getShippingCost()I

    move-result v16

    add-int v15, v15, v16

    invoke-virtual {v14, v15}, Lcom/yopeso/lieferando/model/user/Voucher;->getVoucherValue(I)I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x42c80000    # 100.0f

    div-float/2addr v14, v15

    float-to-double v14, v14

    invoke-virtual {v13, v14, v15}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 404
    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    sget v8, Lcom/yopeso/lieferando/R$id;->VoucherValueLayout:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 410
    :goto_b
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v8}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isRebateUsed()Z

    move-result v8

    if-eqz v8, :cond_18

    .line 411
    sget v8, Lcom/yopeso/lieferando/R$id;->StempelValueLayout:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 412
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v8}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v8

    if-eqz v8, :cond_17

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v8}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yopeso/lieferando/model/Stamp;->getFirstDiscount()Lcom/yopeso/lieferando/model/Discount;

    move-result-object v8

    if-eqz v8, :cond_17

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v8}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRebateDiscount()I

    move-result v8

    if-eqz v8, :cond_17

    .line 413
    const/4 v6, 0x0

    .line 414
    .local v6, "newMinCost":I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v8}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yopeso/lieferando/model/Stamp;->getFirstDiscount()Lcom/yopeso/lieferando/model/Discount;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yopeso/lieferando/model/Discount;->getmKind()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_13

    .line 415
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v8}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getMinCost()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v9}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRebateDiscount()I

    move-result v9

    add-int v6, v8, v9

    .line 420
    :goto_c
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v8}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getOrderCostReached()I

    move-result v8

    if-lt v8, v6, :cond_16

    .line 421
    sget v8, Lcom/yopeso/lieferando/R$id;->rebateValue:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/yopeso/lieferando/R$string;->price_minus:I

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    .line 422
    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v14}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRebateDiscount()I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x42c80000    # 100.0f

    div-float/2addr v14, v15

    float-to-double v14, v14

    invoke-virtual {v13, v14, v15}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 421
    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    const-string v5, ""

    .line 424
    .local v5, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v8}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yopeso/lieferando/model/Stamp;->getFirstDiscount()Lcom/yopeso/lieferando/model/Discount;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yopeso/lieferando/model/Discount;->getmKind()I

    move-result v8

    if-nez v8, :cond_11

    .line 425
    new-instance v8, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v9}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/yopeso/lieferando/model/Stamp;->getFirstDiscount()Lcom/yopeso/lieferando/model/Discount;

    move-result-object v9

    invoke-virtual {v9}, Lcom/yopeso/lieferando/model/Discount;->getmRabatt()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "% "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 427
    :cond_11
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v8}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yopeso/lieferando/model/Stamp;->getFirstDiscount()Lcom/yopeso/lieferando/model/Discount;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yopeso/lieferando/model/Discount;->ismNewCustomer()Z

    move-result v8

    if-eqz v8, :cond_15

    .line 429
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mContext:Landroid/content/Context;

    sget v10, Lcom/yopeso/lieferando/R$string;->new_customer_rebate_title:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 430
    sget v8, Lcom/yopeso/lieferando/R$id;->rebateTitle:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    :goto_d
    sget v8, Lcom/yopeso/lieferando/R$id;->RebateValueLayout:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 472
    .end local v5    # "msg":Ljava/lang/String;
    .end local v6    # "newMinCost":I
    :goto_e
    sget v8, Lcom/yopeso/lieferando/R$id;->deliveryValue:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/yopeso/lieferando/R$string;->price:I

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    .line 473
    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v14}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getShippingCost()I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x42c80000    # 100.0f

    div-float/2addr v14, v15

    float-to-double v14, v14

    invoke-virtual {v13, v14, v15}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 472
    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    sget v8, Lcom/yopeso/lieferando/R$id;->TotalPrice:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/yopeso/lieferando/R$string;->price:I

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    .line 476
    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v14}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getCostWithShipping()I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x42c80000    # 100.0f

    div-float/2addr v14, v15

    float-to-double v14, v14

    invoke-virtual {v13, v14, v15}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 475
    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 478
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v8

    invoke-interface {v8}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v8

    if-nez v8, :cond_2

    .line 479
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->setFeeValue(Landroid/view/View;)V

    goto/16 :goto_1

    .line 408
    :cond_12
    sget v8, Lcom/yopeso/lieferando/R$id;->VoucherValueLayout:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_b

    .line 418
    .restart local v6    # "newMinCost":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v8}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getMinCost()I

    move-result v8

    mul-int/lit8 v9, v8, 0x64

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v8}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yopeso/lieferando/model/Stamp;->getFirstDiscount()Lcom/yopeso/lieferando/model/Discount;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yopeso/lieferando/model/Discount;->getmRabatt()I

    move-result v8

    rsub-int/lit8 v8, v8, 0x64

    if-nez v8, :cond_14

    const/4 v8, 0x1

    :goto_f
    div-int v6, v9, v8

    goto/16 :goto_c

    :cond_14
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v8}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yopeso/lieferando/model/Stamp;->getFirstDiscount()Lcom/yopeso/lieferando/model/Discount;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yopeso/lieferando/model/Discount;->getmRabatt()I

    move-result v8

    rsub-int/lit8 v8, v8, 0x64

    goto :goto_f

    .line 433
    .restart local v5    # "msg":Ljava/lang/String;
    :cond_15
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mContext:Landroid/content/Context;

    sget v10, Lcom/yopeso/lieferando/R$string;->rebate_title:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 434
    sget v8, Lcom/yopeso/lieferando/R$id;->rebateTitle:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 439
    .end local v5    # "msg":Ljava/lang/String;
    :cond_16
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setRebateUsed(Z)V

    .line 440
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setStamp(Lcom/yopeso/lieferando/model/Stamp;)V

    .line 441
    sget v8, Lcom/yopeso/lieferando/R$id;->RebateValueLayout:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_e

    .line 445
    .end local v6    # "newMinCost":I
    :cond_17
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setRebateUsed(Z)V

    .line 446
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setStamp(Lcom/yopeso/lieferando/model/Stamp;)V

    .line 447
    sget v8, Lcom/yopeso/lieferando/R$id;->RebateValueLayout:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_e

    .line 451
    :cond_18
    sget v8, Lcom/yopeso/lieferando/R$id;->RebateValueLayout:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 453
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v8}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isStampleUsed()Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 454
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v8}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v8

    if-eqz v8, :cond_19

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v8}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getOrderCostReached()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v9}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getMinCost()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v10}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v10

    invoke-virtual {v10}, Lcom/yopeso/lieferando/model/Stamp;->getDiscountValue()I

    move-result v10

    add-int/2addr v9, v10

    if-lt v8, v9, :cond_19

    .line 455
    sget v8, Lcom/yopeso/lieferando/R$id;->stempelValue:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/yopeso/lieferando/R$string;->price_minus:I

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    .line 456
    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v14}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v14

    invoke-virtual {v14}, Lcom/yopeso/lieferando/model/Stamp;->getDiscountValue()I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x42c80000    # 100.0f

    div-float/2addr v14, v15

    float-to-double v14, v14

    invoke-virtual {v13, v14, v15}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 455
    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    sget v8, Lcom/yopeso/lieferando/R$id;->StempelValueLayout:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_e

    .line 459
    :cond_19
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setStempleUsed(Z)V

    .line 460
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setStamp(Lcom/yopeso/lieferando/model/Stamp;)V

    .line 461
    sget v8, Lcom/yopeso/lieferando/R$id;->StempelValueLayout:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_e

    .line 466
    :cond_1a
    sget v8, Lcom/yopeso/lieferando/R$id;->StempelValueLayout:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 467
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setStempleUsed(Z)V

    .line 468
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setStamp(Lcom/yopeso/lieferando/model/Stamp;)V

    goto/16 :goto_e

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 109
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 551
    const/4 v0, 0x4

    return v0
.end method

.method public onBackPressedOnEditText(Landroid/widget/EditText;Lcom/yopeso/lieferando/model/cart/CartItem;)V
    .locals 4
    .param p1, "editText"    # Landroid/widget/EditText;
    .param p2, "cartItem"    # Lcom/yopeso/lieferando/model/cart/CartItem;

    .prologue
    const/16 v3, 0x32

    .line 581
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 582
    :cond_0
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mListener:Lcom/yopeso/lieferando/callback/ShoppingCartCallback;

    invoke-interface {v1, p2}, Lcom/yopeso/lieferando/callback/ShoppingCartCallback;->deleteItemFromCart(Lcom/yopeso/lieferando/model/cart/CartItem;)V

    .line 592
    :goto_0
    return-void

    .line 585
    :cond_1
    const/16 v1, 0x32

    :try_start_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/yopeso/lieferando/model/cart/CartItem;->setCount(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    :goto_1
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mListener:Lcom/yopeso/lieferando/callback/ShoppingCartCallback;

    invoke-interface {v1}, Lcom/yopeso/lieferando/callback/ShoppingCartCallback;->notifyShoppingCartListAdapter()V

    goto :goto_0

    .line 586
    :catch_0
    move-exception v0

    .line 587
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p2, v3}, Lcom/yopeso/lieferando/model/cart/CartItem;->setCount(I)V

    .line 588
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/cart/CartItem;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setIsTablet(Z)V
    .locals 0
    .param p1, "isTablet"    # Z

    .prologue
    .line 595
    iput-boolean p1, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mIsTablet:Z

    .line 596
    return-void
.end method

.method public setListener(Lcom/yopeso/lieferando/callback/ShoppingCartCallback;)V
    .locals 0
    .param p1, "listener"    # Lcom/yopeso/lieferando/callback/ShoppingCartCallback;

    .prologue
    .line 572
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mListener:Lcom/yopeso/lieferando/callback/ShoppingCartCallback;

    .line 573
    return-void
.end method

.method public setReadOnly(Z)V
    .locals 0
    .param p1, "readOnly"    # Z

    .prologue
    .line 546
    iput-boolean p1, p0, Lcom/yopeso/lieferando/adapters/restaurant/ShoppingCartAdapter;->mAreFieldsDisabpled:Z

    .line 547
    return-void
.end method
