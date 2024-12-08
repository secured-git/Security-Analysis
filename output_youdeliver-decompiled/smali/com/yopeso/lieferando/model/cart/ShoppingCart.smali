.class public Lcom/yopeso/lieferando/model/cart/ShoppingCart;
.super Ljava/lang/Object;
.source "ShoppingCart.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yopeso/lieferando/model/cart/ShoppingCart;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX_ITEM_NO:I = 0x32

.field private static final serialVersionUID:J = 0x7040c130b445L


# instance fields
.field private mDeliverNow:Z

.field private mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deliveryArea"
    .end annotation
.end field

.field private mDeliveryTime:Ljava/util/Date;

.field public mInitialDeliveryTime:Ljava/util/Date;

.field private mItems:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cartItems"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/cart/CartItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMisc:Ljava/lang/String;

.field private mOrderId:Ljava/lang/String;

.field private mPaymentType:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

.field private mRebateUsed:Z

.field private mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "restaurant"
    .end annotation
.end field

.field private mShoppingCartChanged:Z

.field private mStamp:Lcom/yopeso/lieferando/model/Stamp;

.field private mStempleUsed:Z

.field private mVoucher:Lcom/yopeso/lieferando/model/user/Voucher;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "voucher"
    .end annotation
.end field

.field private mVoucherUsed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 758
    new-instance v0, Lcom/yopeso/lieferando/model/cart/ShoppingCart$1;

    invoke-direct {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart$1;-><init>()V

    sput-object v0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 766
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mItems:Ljava/util/ArrayList;

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliverNow:Z

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mShoppingCartChanged:Z

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mItems:Ljava/util/ArrayList;

    .line 109
    iput-boolean v1, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliverNow:Z

    .line 116
    iput-boolean v2, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mShoppingCartChanged:Z

    .line 129
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mItems:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mItems:Ljava/util/ArrayList;

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mItems:Ljava/util/ArrayList;

    sget-object v3, Lcom/yopeso/lieferando/model/cart/CartItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 133
    const-class v0, Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/user/Location;

    iput-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    .line 134
    const-class v0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    iput-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .line 135
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryTime:Ljava/util/Date;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliverNow:Z

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mMisc:Ljava/lang/String;

    .line 138
    return-void

    :cond_1
    move v0, v2

    .line 136
    goto :goto_0
.end method


# virtual methods
.method public addItem(Lcom/yopeso/lieferando/model/cart/CartItem;)V
    .locals 4
    .param p1, "ci"    # Lcom/yopeso/lieferando/model/cart/CartItem;

    .prologue
    .line 260
    const/4 v0, 0x0

    .line 261
    .local v0, "exist":Z
    iget-object v2, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 268
    :goto_0
    if-nez v0, :cond_1

    .line 269
    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_1
    return-void

    .line 261
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/model/cart/CartItem;

    .line 262
    .local v1, "item":Lcom/yopeso/lieferando/model/cart/CartItem;
    invoke-virtual {v1, p1}, Lcom/yopeso/lieferando/model/cart/CartItem;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 263
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/CartItem;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x32

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/cart/CartItem;->setCount(I)V

    .line 264
    const/4 v0, 0x1

    .line 265
    goto :goto_0
.end method

.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 422
    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 423
    iput-object v1, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mVoucher:Lcom/yopeso/lieferando/model/user/Voucher;

    .line 424
    iput-object v1, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryTime:Ljava/util/Date;

    .line 425
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliverNow:Z

    .line 426
    iput-object v1, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mPaymentType:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    .line 427
    iput-boolean v2, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mVoucherUsed:Z

    .line 428
    iput-boolean v2, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mStempleUsed:Z

    .line 429
    iput-boolean v2, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mRebateUsed:Z

    .line 430
    iput-object v1, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .line 431
    iput-object v1, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mInitialDeliveryTime:Ljava/util/Date;

    .line 432
    return-void
.end method

.method public clearDeliveryAddress()V
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Location;->clearLocationAddress()V

    .line 438
    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 640
    const/4 v0, 0x0

    return v0
.end method

.method public displayInView(Landroid/view/View;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v3, 0x8

    const/4 v10, 0x1

    const/high16 v9, 0x42c80000    # 100.0f

    const/4 v8, 0x0

    .line 469
    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 470
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 506
    :goto_0
    return-void

    .line 472
    :cond_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getMinCost()I

    move-result v0

    .line 473
    .local v0, "minCost":I
    invoke-virtual {p1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 474
    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getOrderCostReached()I

    move-result v1

    if-lt v1, v0, :cond_1

    .line 476
    sget v1, Lcom/yopeso/lieferando/R$id;->CartBackground:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$color;->cart_valid_bg:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 486
    sget v1, Lcom/yopeso/lieferando/R$id;->CartText:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 504
    :goto_1
    sget v1, Lcom/yopeso/lieferando/R$id;->CartButton:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->cart_cost_details:I

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v5

    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getTotalCost()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v9

    float-to-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 488
    :cond_1
    sget v1, Lcom/yopeso/lieferando/R$id;->CartBackground:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$color;->cart_invalid_bg:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 489
    sget v1, Lcom/yopeso/lieferando/R$id;->CartText:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->minimum_order_not_reached:I

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v5

    int-to-float v6, v0

    div-float/2addr v6, v9

    float-to-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    sget v1, Lcom/yopeso/lieferando/R$id;->CartText:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public getCostWithShipping()I
    .locals 5

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getCostWithoutVoucher()I

    move-result v1

    .line 209
    .local v1, "cost":I
    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getShippingCost()I

    move-result v3

    add-int/2addr v1, v3

    .line 210
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mPaymentType:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    if-eqz v3, :cond_0

    .line 212
    iget-object v3, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    iget-object v4, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mPaymentType:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getPaymentFee(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v1, v3

    .line 218
    :cond_0
    iget-object v3, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mVoucher:Lcom/yopeso/lieferando/model/user/Voucher;

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mVoucherUsed:Z

    if-eqz v3, :cond_2

    .line 219
    iget-object v3, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mVoucher:Lcom/yopeso/lieferando/model/user/Voucher;

    invoke-virtual {v3, v1}, Lcom/yopeso/lieferando/model/user/Voucher;->computeDiscount(I)I

    move-result v1

    .line 234
    .end local v1    # "cost":I
    :cond_1
    :goto_0
    return v1

    .line 220
    .restart local v1    # "cost":I
    :cond_2
    iget-object v3, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mStamp:Lcom/yopeso/lieferando/model/Stamp;

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mStempleUsed:Z

    if-eqz v3, :cond_3

    .line 221
    iget-object v3, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mStamp:Lcom/yopeso/lieferando/model/Stamp;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/Stamp;->getDiscountValue()I

    move-result v3

    sub-int/2addr v1, v3

    goto :goto_0

    .line 223
    :cond_3
    iget-object v3, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mStamp:Lcom/yopeso/lieferando/model/Stamp;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mStamp:Lcom/yopeso/lieferando/model/Stamp;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/Stamp;->getmDiscounts()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mRebateUsed:Z

    if-eqz v3, :cond_1

    .line 224
    iget-object v3, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mStamp:Lcom/yopeso/lieferando/model/Stamp;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/Stamp;->getmDiscounts()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/model/Discount;

    .line 225
    .local v2, "discount":Lcom/yopeso/lieferando/model/Discount;
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Discount;->getmKind()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 226
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Discount;->getmRabatt()I

    move-result v3

    sub-int/2addr v1, v3

    goto :goto_0

    .line 229
    :cond_4
    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getCostWithoutVoucher()I

    move-result v3

    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getShippingCost()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Discount;->getmRabatt()I

    move-result v4

    mul-int/2addr v3, v4

    div-int/lit8 v0, v3, 0x64

    .line 230
    .local v0, "calculated_rebate":I
    sub-int/2addr v1, v0

    goto :goto_0
.end method

.method public getCostWithoutVoucher()I
    .locals 4

    .prologue
    .line 178
    const/4 v1, 0x0

    .line 179
    .local v1, "cost":I
    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 182
    return v1

    .line 179
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/cart/CartItem;

    .line 180
    .local v0, "ci":Lcom/yopeso/lieferando/model/cart/CartItem;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/CartItem;->getItemCost()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0
.end method

.method public getDeliveryAddress()Lcom/yopeso/lieferando/model/user/Location;
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    return-object v0
.end method

.method public getDeliveryTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryTime:Ljava/util/Date;

    return-object v0
.end method

.method public getInitialDeliveryTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mInitialDeliveryTime:Ljava/util/Date;

    return-object v0
.end method

.method public getItem(I)Lcom/yopeso/lieferando/model/cart/CartItem;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 393
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/cart/CartItem;

    return-object v0
.end method

.method public getItemById(J)Lcom/yopeso/lieferando/model/cart/CartItem;
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 460
    iget-object v1, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 465
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 460
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/cart/CartItem;

    .line 461
    .local v0, "c":Lcom/yopeso/lieferando/model/cart/CartItem;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/CartItem;->getMeal()Lcom/yopeso/lieferando/model/meal/Meal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/meal/Meal;->getId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method public getItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/cart/CartItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 456
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMaxPossibleAmount(Lcom/yopeso/lieferando/model/meal/Meal;)I
    .locals 4
    .param p1, "meal"    # Lcom/yopeso/lieferando/model/meal/Meal;

    .prologue
    .line 299
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/Meal;->getmMaxAmount()I

    move-result v2

    if-nez v2, :cond_0

    .line 300
    const/16 v2, 0x32

    .line 308
    :goto_0
    return v2

    .line 302
    :cond_0
    const/4 v1, 0x0

    .line 303
    .local v1, "realAmount":I
    iget-object v2, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 308
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/Meal;->getmMaxAmount()I

    move-result v2

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 303
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/cart/CartItem;

    .line 304
    .local v0, "item":Lcom/yopeso/lieferando/model/cart/CartItem;
    invoke-virtual {v0, p1}, Lcom/yopeso/lieferando/model/cart/CartItem;->equalToMeal(Lcom/yopeso/lieferando/model/meal/Meal;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 305
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/CartItem;->getCount()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_1
.end method

.method public getMinCost()I
    .locals 2

    .prologue
    .line 441
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    if-eqz v0, :cond_1

    .line 442
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getMinCost()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 443
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getMinCost()I

    move-result v0

    .line 448
    :goto_0
    return v0

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    if-eqz v0, :cond_1

    .line 445
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    iget-object v1, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/Location;->getCityId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getMinCostForCity(I)I

    move-result v0

    goto :goto_0

    .line 448
    :cond_1
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method public getMisc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mMisc:Ljava/lang/String;

    return-object v0
.end method

.method public getNoCostAbove()I
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getNoDeliverCostAbove()I

    move-result v0

    .line 672
    :goto_0
    return v0

    :cond_0
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method public getOrderCostReached()I
    .locals 4

    .prologue
    .line 245
    const/4 v1, 0x0

    .line 246
    .local v1, "cost":I
    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 249
    return v1

    .line 246
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/cart/CartItem;

    .line 247
    .local v0, "ci":Lcom/yopeso/lieferando/model/cart/CartItem;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/CartItem;->getCostForMinOrder()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentType()Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;
    .locals 1

    .prologue
    .line 739
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mPaymentType:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    return-object v0
.end method

.method public getProperAmount(Lcom/yopeso/lieferando/model/meal/Meal;I)I
    .locals 7
    .param p1, "meal"    # Lcom/yopeso/lieferando/model/meal/Meal;
    .param p2, "count"    # I

    .prologue
    const/4 v3, 0x1

    .line 312
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/Meal;->getmMaxAmount()I

    move-result v4

    if-nez v4, :cond_1

    .line 340
    .end local p2    # "count":I
    :cond_0
    :goto_0
    return p2

    .line 315
    .restart local p2    # "count":I
    :cond_1
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/Meal;->getmMaxAmount()I

    move-result v4

    if-ne v4, v3, :cond_2

    move p2, v3

    .line 316
    goto :goto_0

    .line 318
    :cond_2
    const/4 v1, 0x0

    .line 319
    .local v1, "items":I
    const/4 v2, 0x0

    .line 320
    .local v2, "realAmount":I
    iget-object v4, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_5

    .line 326
    const-class v4, Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getProperAmount: realAmount"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "meal.getmMaxAmount():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/Meal;->getmMaxAmount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " count:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    if-ne v1, v3, :cond_6

    .line 329
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/Meal;->getmMaxAmount()I

    move-result v3

    sub-int/2addr v3, v2

    if-ltz v3, :cond_4

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/Meal;->getmMaxAmount()I

    move-result v3

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    if-le p2, v3, :cond_0

    .line 335
    :cond_4
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/Meal;->getmMaxAmount()I

    move-result v3

    sub-int/2addr v3, v2

    add-int/lit8 p2, v3, 0x1

    goto :goto_0

    .line 320
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/cart/CartItem;

    .line 321
    .local v0, "item":Lcom/yopeso/lieferando/model/cart/CartItem;
    invoke-virtual {v0, p1}, Lcom/yopeso/lieferando/model/cart/CartItem;->equalToMeal(Lcom/yopeso/lieferando/model/meal/Meal;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 322
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/CartItem;->getCount()I

    move-result v5

    add-int/2addr v2, v5

    .line 323
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 340
    .end local v0    # "item":Lcom/yopeso/lieferando/model/cart/CartItem;
    :cond_6
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/Meal;->getmMaxAmount()I

    move-result v3

    sub-int/2addr v3, v2

    add-int/lit8 p2, v3, 0x1

    goto :goto_0
.end method

.method public getRebateDiscount()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 189
    iget-object v2, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mStamp:Lcom/yopeso/lieferando/model/Stamp;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mStamp:Lcom/yopeso/lieferando/model/Stamp;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Stamp;->getmDiscounts()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mStamp:Lcom/yopeso/lieferando/model/Stamp;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Stamp;->getmDiscounts()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 190
    iget-object v2, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mStamp:Lcom/yopeso/lieferando/model/Stamp;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Stamp;->getmDiscounts()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/Discount;

    .line 191
    .local v0, "discount":Lcom/yopeso/lieferando/model/Discount;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/Discount;->getmKind()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 192
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/Discount;->getmRabatt()I

    move-result v1

    .line 198
    .end local v0    # "discount":Lcom/yopeso/lieferando/model/Discount;
    :cond_0
    :goto_0
    return v1

    .line 195
    .restart local v0    # "discount":Lcom/yopeso/lieferando/model/Discount;
    :cond_1
    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getCostWithoutVoucher()I

    move-result v1

    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getShippingCost()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/Discount;->getmRabatt()I

    move-result v2

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    goto :goto_0
.end method

.method public getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    return-object v0
.end method

.method public getShippingCost()I
    .locals 2

    .prologue
    .line 650
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    if-eqz v0, :cond_1

    .line 652
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getNoDeliverCostAbove()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getCostWithoutVoucher()I

    move-result v0

    iget-object v1, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getNoDeliverCostAbove()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 653
    const/4 v0, 0x0

    .line 658
    :goto_0
    return v0

    .line 655
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getDeliverCost()I

    move-result v0

    goto :goto_0

    .line 658
    :cond_1
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method public getStamp()Lcom/yopeso/lieferando/model/Stamp;
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mStamp:Lcom/yopeso/lieferando/model/Stamp;

    return-object v0
.end method

.method public getTotalCost()I
    .locals 4

    .prologue
    .line 157
    const/4 v1, 0x0

    .line 158
    .local v1, "cost":I
    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 161
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mPaymentType:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    sget-object v3, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->ec:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    if-ne v2, v3, :cond_0

    .line 162
    iget-object v2, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getECPaymentFee()I

    move-result v2

    add-int/2addr v1, v2

    .line 164
    :cond_0
    iget-object v2, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mVoucher:Lcom/yopeso/lieferando/model/user/Voucher;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mVoucherUsed:Z

    if-eqz v2, :cond_1

    .line 165
    iget-object v2, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mVoucher:Lcom/yopeso/lieferando/model/user/Voucher;

    invoke-virtual {v2, v1}, Lcom/yopeso/lieferando/model/user/Voucher;->computeDiscount(I)I

    move-result v1

    .line 167
    .end local v1    # "cost":I
    :cond_1
    return v1

    .line 158
    .restart local v1    # "cost":I
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/cart/CartItem;

    .line 159
    .local v0, "ci":Lcom/yopeso/lieferando/model/cart/CartItem;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/CartItem;->getItemCost()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0
.end method

.method public getUnavalibleDishes(Ljava/util/Date;Z)Ljava/util/ArrayList;
    .locals 4
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "isHoliday"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/cart/CartItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 824
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 826
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/cart/CartItem;>;"
    iget-object v2, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 832
    return-object v1

    .line 826
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/cart/CartItem;

    .line 827
    .local v0, "c":Lcom/yopeso/lieferando/model/cart/CartItem;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/CartItem;->getMeal()Lcom/yopeso/lieferando/model/meal/Meal;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/CartItem;->getMeal()Lcom/yopeso/lieferando/model/meal/Meal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/meal/Meal;->getDish()Lcom/yopeso/lieferando/model/meal/DishCategory;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/CartItem;->getMeal()Lcom/yopeso/lieferando/model/meal/Meal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/meal/Meal;->getDish()Lcom/yopeso/lieferando/model/meal/DishCategory;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/yopeso/lieferando/model/meal/DishCategory;->isOpen(Ljava/util/Date;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 828
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getVoucher()Lcom/yopeso/lieferando/model/user/Voucher;
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mVoucher:Lcom/yopeso/lieferando/model/user/Voucher;

    return-object v0
.end method

.method public initDeliveryForUser(Lcom/yopeso/lieferando/model/user/UserData;)V
    .locals 2
    .param p1, "user"    # Lcom/yopeso/lieferando/model/user/UserData;

    .prologue
    .line 628
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    if-nez v0, :cond_0

    .line 629
    new-instance v0, Lcom/yopeso/lieferando/model/user/Location;

    invoke-direct {v0}, Lcom/yopeso/lieferando/model/user/Location;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/UserData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setName(Ljava/lang/String;)V

    .line 632
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/UserData;->getPreName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setPreName(Ljava/lang/String;)V

    .line 633
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/UserData;->getTelephone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setPhone(Ljava/lang/String;)V

    .line 634
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/UserData;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setEmail(Ljava/lang/String;)V

    .line 635
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setAgb(Z)V

    .line 636
    return-void
.end method

.method public isDeliverNow()Z
    .locals 1

    .prologue
    .line 551
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliverNow:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRebateUsed()Z
    .locals 1

    .prologue
    .line 703
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mRebateUsed:Z

    return v0
.end method

.method public isShoppingCartChanged()Z
    .locals 1

    .prologue
    .line 751
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mShoppingCartChanged:Z

    return v0
.end method

.method public isStampleUsed()Z
    .locals 1

    .prologue
    .line 699
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mStempleUsed:Z

    return v0
.end method

.method public isVoucherUsed()Z
    .locals 1

    .prologue
    .line 695
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mVoucherUsed:Z

    return v0
.end method

.method public maxAmountReached(Lcom/yopeso/lieferando/model/cart/CartItem;)Z
    .locals 5
    .param p1, "ci"    # Lcom/yopeso/lieferando/model/cart/CartItem;

    .prologue
    const/4 v2, 0x0

    .line 274
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/cart/CartItem;->getMeal()Lcom/yopeso/lieferando/model/meal/Meal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/meal/Meal;->getmMaxAmount()I

    move-result v3

    if-nez v3, :cond_1

    .line 283
    :cond_0
    :goto_0
    return v2

    .line 277
    :cond_1
    const/4 v0, 0x0

    .line 278
    .local v0, "amount":I
    iget-object v3, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 283
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/cart/CartItem;->getMeal()Lcom/yopeso/lieferando/model/meal/Meal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/meal/Meal;->getmMaxAmount()I

    move-result v3

    if-lt v0, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 278
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/model/cart/CartItem;

    .line 279
    .local v1, "item":Lcom/yopeso/lieferando/model/cart/CartItem;
    invoke-virtual {v1, p1}, Lcom/yopeso/lieferando/model/cart/CartItem;->equalIds(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 280
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/CartItem;->getCount()I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1
.end method

.method public maxAmountReached(Lcom/yopeso/lieferando/model/meal/Meal;)Z
    .locals 5
    .param p1, "meal"    # Lcom/yopeso/lieferando/model/meal/Meal;

    .prologue
    const/4 v2, 0x0

    .line 286
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/Meal;->getmMaxAmount()I

    move-result v3

    if-nez v3, :cond_1

    .line 295
    :cond_0
    :goto_0
    return v2

    .line 289
    :cond_1
    const/4 v0, 0x0

    .line 290
    .local v0, "amount":I
    iget-object v3, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 295
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/Meal;->getmMaxAmount()I

    move-result v3

    if-lt v0, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 290
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/model/cart/CartItem;

    .line 291
    .local v1, "item":Lcom/yopeso/lieferando/model/cart/CartItem;
    invoke-virtual {v1, p1}, Lcom/yopeso/lieferando/model/cart/CartItem;->equalToMeal(Lcom/yopeso/lieferando/model/meal/Meal;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 292
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/CartItem;->getCount()I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1
.end method

.method public removeItem(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 397
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 398
    return-void
.end method

.method public removeItem(Lcom/yopeso/lieferando/model/cart/CartItem;)V
    .locals 1
    .param p1, "item"    # Lcom/yopeso/lieferando/model/cart/CartItem;

    .prologue
    .line 401
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 402
    return-void
.end method

.method public replaceItem(Lcom/yopeso/lieferando/model/cart/CartItem;Lcom/yopeso/lieferando/model/cart/CartItem;)V
    .locals 4
    .param p1, "ci"    # Lcom/yopeso/lieferando/model/cart/CartItem;
    .param p2, "initialCartItem"    # Lcom/yopeso/lieferando/model/cart/CartItem;

    .prologue
    .line 367
    const/4 v0, 0x0

    .line 369
    .local v0, "exist":Z
    invoke-virtual {p1, p2}, Lcom/yopeso/lieferando/model/cart/CartItem;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 370
    iget-object v2, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 380
    :goto_0
    if-nez v0, :cond_2

    .line 381
    iget-object v2, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 390
    :cond_2
    :goto_1
    return-void

    .line 370
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/model/cart/CartItem;

    .line 371
    .local v1, "item":Lcom/yopeso/lieferando/model/cart/CartItem;
    invoke-virtual {v1, p1}, Lcom/yopeso/lieferando/model/cart/CartItem;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 372
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/CartItem;->getCount()I

    move-result v2

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/cart/CartItem;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    const/16 v3, 0x32

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/cart/CartItem;->setCount(I)V

    .line 373
    const/4 v0, 0x1

    .line 374
    iget-object v2, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 375
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mShoppingCartChanged:Z

    goto :goto_0

    .line 381
    .end local v1    # "item":Lcom/yopeso/lieferando/model/cart/CartItem;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/model/cart/CartItem;

    .line 382
    .restart local v1    # "item":Lcom/yopeso/lieferando/model/cart/CartItem;
    invoke-virtual {v1, p2}, Lcom/yopeso/lieferando/model/cart/CartItem;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 383
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/cart/CartItem;->getMeal()Lcom/yopeso/lieferando/model/meal/Meal;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/cart/CartItem;->setMeal(Lcom/yopeso/lieferando/model/meal/Meal;)V

    .line 384
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/cart/CartItem;->getOptionalNotes()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/cart/CartItem;->setOptionalNotes(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setAddressAtLocation(Lcom/yopeso/lieferando/model/LocationSuggestion;)V
    .locals 3
    .param p1, "ls"    # Lcom/yopeso/lieferando/model/LocationSuggestion;

    .prologue
    const/4 v2, 0x0

    .line 584
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    if-nez v0, :cond_0

    .line 585
    new-instance v0, Lcom/yopeso/lieferando/model/user/Location;

    invoke-direct {v0}, Lcom/yopeso/lieferando/model/user/Location;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getCityId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setCityId(I)V

    .line 588
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setCityName(Ljava/lang/String;)V

    .line 589
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getPlz()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setPlz(Ljava/lang/String;)V

    .line 590
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getStreetName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yopeso/lieferando/util/StringUtils;->getStringOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setStreet(Ljava/lang/String;)V

    .line 591
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getHouseNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yopeso/lieferando/util/StringUtils;->getStringOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setHnr(Ljava/lang/String;)V

    .line 592
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getEtag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yopeso/lieferando/util/StringUtils;->getStringOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setEtage(Ljava/lang/String;)V

    .line 593
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getComment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yopeso/lieferando/util/StringUtils;->getStringOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setComment(Ljava/lang/String;)V

    .line 594
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getCompany()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yopeso/lieferando/util/StringUtils;->getStringOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setCompany(Ljava/lang/String;)V

    .line 595
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getLastName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getPreName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 596
    :cond_1
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 597
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/UserData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setName(Ljava/lang/String;)V

    .line 598
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/UserData;->getPreName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setPreName(Ljava/lang/String;)V

    .line 607
    :goto_0
    const-string v0, ""

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yopeso/lieferando/util/StringUtils;->getStringOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 609
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/UserData;->getTelephone()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 610
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/UserData;->getTelephone()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yopeso/lieferando/util/StringUtils;->getStringOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setPhone(Ljava/lang/String;)V

    .line 616
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v0, v2}, Lcom/yopeso/lieferando/model/user/Location;->setHouseNumberEdited(Z)V

    .line 617
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v0, v2}, Lcom/yopeso/lieferando/model/user/Location;->setStreetEdited(Z)V

    .line 618
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getmEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setEmail(Ljava/lang/String;)V

    .line 619
    return-void

    .line 600
    :cond_3
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setName(Ljava/lang/String;)V

    .line 601
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setPreName(Ljava/lang/String;)V

    goto :goto_0

    .line 604
    :cond_4
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getLastName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setName(Ljava/lang/String;)V

    .line 605
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getPreName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setPreName(Ljava/lang/String;)V

    goto :goto_0

    .line 614
    :cond_5
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yopeso/lieferando/util/StringUtils;->getStringOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setPhone(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setDeliverNow(Z)V
    .locals 0
    .param p1, "deliverNow"    # Z

    .prologue
    .line 547
    iput-boolean p1, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliverNow:Z

    .line 548
    return-void
.end method

.method public setDeliveryAddress(Lcom/yopeso/lieferando/model/user/Location;)V
    .locals 3
    .param p1, "da"    # Lcom/yopeso/lieferando/model/user/Location;

    .prologue
    const/4 v2, 0x0

    .line 509
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    if-nez v0, :cond_0

    .line 510
    new-instance v0, Lcom/yopeso/lieferando/model/user/Location;

    invoke-direct {v0}, Lcom/yopeso/lieferando/model/user/Location;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/Location;->getCityId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setCityId(I)V

    .line 513
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/Location;->getCityName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setCityName(Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/Location;->getPlz()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setPlz(Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/Location;->getStreet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setStreet(Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/Location;->getHnr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setHnr(Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/Location;->getEtage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yopeso/lieferando/util/StringUtils;->getStringOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setEtage(Ljava/lang/String;)V

    .line 518
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/Location;->getComment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yopeso/lieferando/util/StringUtils;->getStringOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setComment(Ljava/lang/String;)V

    .line 519
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/Location;->getCompany()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yopeso/lieferando/util/StringUtils;->getStringOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setCompany(Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/Location;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yopeso/lieferando/util/StringUtils;->getStringOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setPhone(Ljava/lang/String;)V

    .line 523
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v0, v2}, Lcom/yopeso/lieferando/model/user/Location;->setHouseNumberEdited(Z)V

    .line 524
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v0, v2}, Lcom/yopeso/lieferando/model/user/Location;->setStreetEdited(Z)V

    .line 528
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/Location;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setName(Ljava/lang/String;)V

    .line 529
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/Location;->getPreName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setPreName(Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/Location;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setEmail(Ljava/lang/String;)V

    .line 531
    return-void
.end method

.method public setDeliveryArea(Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;)V
    .locals 3
    .param p1, "da"    # Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;

    .prologue
    const/4 v2, 0x0

    .line 567
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    if-nez v0, :cond_0

    .line 568
    new-instance v0, Lcom/yopeso/lieferando/model/user/Location;

    invoke-direct {v0}, Lcom/yopeso/lieferando/model/user/Location;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;->getCityId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setCityId(I)V

    .line 571
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;->getPlz()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setPlz(Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;->getCityName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setCityName(Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v0, v2}, Lcom/yopeso/lieferando/model/user/Location;->setHouseNumberEdited(Z)V

    .line 574
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v0, v2}, Lcom/yopeso/lieferando/model/user/Location;->setStreetEdited(Z)V

    .line 575
    return-void
.end method

.method public setDeliveryTime(Ljava/util/Date;)V
    .locals 1
    .param p1, "deliveryTime"    # Ljava/util/Date;

    .prologue
    .line 538
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliverNow:Z

    .line 539
    iput-object p1, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryTime:Ljava/util/Date;

    .line 540
    return-void
.end method

.method public setItems(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/cart/CartItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 452
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/cart/CartItem;>;"
    iput-object p1, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mItems:Ljava/util/ArrayList;

    .line 453
    return-void
.end method

.method public setMisc(Ljava/lang/String;)V
    .locals 0
    .param p1, "misc"    # Ljava/lang/String;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mMisc:Ljava/lang/String;

    .line 410
    return-void
.end method

.method public setOrderId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mOrderId"    # Ljava/lang/String;

    .prologue
    .line 732
    iput-object p1, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mOrderId:Ljava/lang/String;

    .line 733
    return-void
.end method

.method public setPaymentType(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;)V
    .locals 0
    .param p1, "paymentType"    # Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    .prologue
    .line 747
    iput-object p1, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mPaymentType:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    .line 748
    return-void
.end method

.method public setRebateUsed(Z)V
    .locals 2
    .param p1, "rebateUsed"    # Z

    .prologue
    .line 707
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/events/CartChangedEvent;

    invoke-direct {v1}, Lcom/yopeso/lieferando/events/CartChangedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 708
    iput-boolean p1, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mRebateUsed:Z

    .line 709
    return-void
.end method

.method public setRestaurant(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 0
    .param p1, "restaurant"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 555
    iput-object p1, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .line 556
    return-void
.end method

.method public setShoppingCartChanged(Z)V
    .locals 0
    .param p1, "shoppingCartChanged"    # Z

    .prologue
    .line 755
    iput-boolean p1, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mShoppingCartChanged:Z

    .line 756
    return-void
.end method

.method public setStamp(Lcom/yopeso/lieferando/model/Stamp;)V
    .locals 0
    .param p1, "stamp"    # Lcom/yopeso/lieferando/model/Stamp;

    .prologue
    .line 688
    iput-object p1, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mStamp:Lcom/yopeso/lieferando/model/Stamp;

    .line 689
    return-void
.end method

.method public setStempleUsed(Z)V
    .locals 2
    .param p1, "stempleUsed"    # Z

    .prologue
    .line 712
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/events/CartChangedEvent;

    invoke-direct {v1}, Lcom/yopeso/lieferando/events/CartChangedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 713
    iput-boolean p1, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mStempleUsed:Z

    .line 714
    return-void
.end method

.method public setVoucher(Lcom/yopeso/lieferando/model/user/Voucher;)V
    .locals 0
    .param p1, "voucher"    # Lcom/yopeso/lieferando/model/user/Voucher;

    .prologue
    .line 676
    iput-object p1, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mVoucher:Lcom/yopeso/lieferando/model/user/Voucher;

    .line 677
    return-void
.end method

.method public setVoucherUsed(Z)V
    .locals 2
    .param p1, "voucherUsed"    # Z

    .prologue
    .line 723
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/events/CartChangedEvent;

    invoke-direct {v1}, Lcom/yopeso/lieferando/events/CartChangedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 724
    iput-boolean p1, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mVoucherUsed:Z

    .line 725
    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 7

    .prologue
    .line 769
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 771
    .local v1, "cart":Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "email"

    iget-object v5, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/user/Location;->getEmail()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 772
    const-string v4, "prename"

    iget-object v5, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/user/Location;->getPreName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 773
    const-string v4, "name"

    iget-object v5, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/user/Location;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 774
    const-string v4, "tel"

    iget-object v5, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/user/Location;->getPhone()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 775
    const-string v4, "cityId"

    iget-object v5, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/user/Location;->getCityId()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 776
    const-string v4, "street"

    iget-object v5, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/user/Location;->getStreet()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 777
    const-string v4, "number"

    iget-object v5, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/user/Location;->getHnr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 778
    const-string v4, "plz"

    iget-object v5, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/user/Location;->getPlz()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 779
    const-string v4, "level"

    iget-object v5, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/user/Location;->getEtage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 780
    const-string v4, "companyName"

    iget-object v5, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/user/Location;->getCompany()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 782
    iget-boolean v4, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliverNow:Z

    if-eqz v4, :cond_0

    .line 783
    const-string v4, "delivertime"

    const-string v5, "now"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 785
    const-string v4, "deliverday"

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getSimpleDateFormatterReverse()Ljava/text/SimpleDateFormat;

    move-result-object v5

    sget-object v6, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 790
    :goto_0
    const-string v4, "restaurantId"

    iget-object v5, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 792
    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getCostWithoutVoucher()I

    move-result v4

    iget-object v5, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getNoDeliverCostAbove()I

    move-result v5

    if-lt v4, v5, :cond_1

    iget-object v4, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getNoDeliverCostAbove()I

    move-result v4

    if-lez v4, :cond_1

    .line 793
    const-string v4, "delivercost"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 798
    :goto_1
    const-string v4, "restaurantName"

    iget-object v5, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 799
    const-string v4, "url"

    iget-object v5, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getServiceUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 801
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 802
    .local v2, "cartItems":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 805
    const-string v4, "cart"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 819
    .end local v2    # "cartItems":Lorg/json/JSONArray;
    :goto_3
    const-class v4, Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v4, "Cart:"

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    instance-of v4, v1, Lorg/json/JSONObject;

    if-nez v4, :cond_3

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_4
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    return-object v1

    .line 787
    :cond_0
    :try_start_1
    const-string v4, "delivertime"

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getTimeFormatter()Ljava/text/SimpleDateFormat;

    move-result-object v5

    iget-object v6, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryTime:Ljava/util/Date;

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 788
    const-string v4, "deliverday"

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getSimpleDateFormatterReverse()Ljava/text/SimpleDateFormat;

    move-result-object v5

    iget-object v6, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryTime:Ljava/util/Date;

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 816
    :catch_0
    move-exception v3

    .line 817
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 795
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_1
    :try_start_2
    const-string v4, "delivercost"

    iget-object v5, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getDeliverCost()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1

    .line 802
    .restart local v2    # "cartItems":Lorg/json/JSONArray;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/cart/CartItem;

    .line 803
    .local v0, "c":Lcom/yopeso/lieferando/model/cart/CartItem;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/CartItem;->toOrderJson()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .end local v0    # "c":Lcom/yopeso/lieferando/model/cart/CartItem;
    .end local v2    # "cartItems":Lorg/json/JSONArray;
    :cond_3
    move-object v4, v1

    .line 819
    check-cast v4, Lorg/json/JSONObject;

    invoke-static {v4}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    goto :goto_4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 142
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 143
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 144
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 145
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliveryTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 146
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mDeliverNow:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 147
    iget-object v0, p0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->mMisc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    return-void

    .line 146
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
