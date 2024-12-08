.class public Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;
.super Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;
.source "OrderMainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$RateOrderListener;
    }
.end annotation


# static fields
.field protected static final KEY_ORDER:Ljava/lang/String; = "key_order"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private deliverTimeValue:Landroid/widget/TextView;

.field private disreccomendIV:Landroid/widget/ImageView;

.field private mDeliveryRating:I

.field private mIndex:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMainView:Landroid/view/View;

.field private mMsg:Landroid/widget/TextView;

.field private mOrder:Lcom/yopeso/lieferando/model/user/Order;

.field private mQualityRating:I

.field private mRatingComment:Lcom/yopeso/lieferando/view/CommentEditText;

.field private mRatingTitle:Landroid/widget/EditText;

.field private mUserData:Lcom/yopeso/lieferando/model/user/UserData;

.field private mUserNick:Landroid/widget/EditText;

.field private msg:Ljava/lang/String;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private reccomendIV:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-class v0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->TAG:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x5

    .line 93
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;-><init>()V

    .line 78
    iput v0, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mDeliveryRating:I

    .line 79
    iput v0, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mQualityRating:I

    .line 94
    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;)Lcom/yopeso/lieferando/model/user/Order;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    return-object v0
.end method

.method static synthetic access$10(Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;I)V
    .locals 0

    .prologue
    .line 78
    iput p1, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mDeliveryRating:I

    return-void
.end method

.method static synthetic access$11(Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;I)V
    .locals 0

    .prologue
    .line 79
    iput p1, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mQualityRating:I

    return-void
.end method

.method static synthetic access$2(Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;)Z
    .locals 1

    .prologue
    .line 631
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->getAdviced()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;)V
    .locals 0

    .prologue
    .line 642
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->updateOrder()V

    return-void
.end method

.method static synthetic access$4(Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;)V
    .locals 0

    .prologue
    .line 390
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->hideRatingLayout()V

    return-void
.end method

.method static synthetic access$5(Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;Lcom/android/volley/VolleyError;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->handleNetworkError(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method static synthetic access$6(Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->reccomendIV:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->disreccomendIV:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;)Z
    .locals 1

    .prologue
    .line 597
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->validateFields()Z

    move-result v0

    return v0
.end method

.method static synthetic access$9(Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 611
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->prepareRating()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private getAdditions(Lcom/yopeso/lieferando/model/meal/Meal;)Ljava/lang/String;
    .locals 12
    .param p1, "meal"    # Lcom/yopeso/lieferando/model/meal/Meal;

    .prologue
    .line 543
    const-string v2, ""

    .line 544
    .local v2, "res":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/Meal;->getAdditions()Ljava/util/ArrayList;

    move-result-object v1

    .line 545
    .local v1, "additions":Ljava/util/List;, "Ljava/util/List<Lcom/yopeso/lieferando/model/meal/Addition;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 546
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 555
    :cond_0
    return-object v2

    .line 546
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/meal/Addition;

    .line 547
    .local v0, "addition":Lcom/yopeso/lieferando/model/meal/Addition;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/meal/Addition;->getTotal()I

    move-result v4

    if-nez v4, :cond_2

    .line 548
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/meal/Addition;->getAmount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/meal/Addition;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 549
    goto :goto_0

    .line 550
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/meal/Addition;->getAmount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/meal/Addition;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/yopeso/lieferando/R$string;->dish_cost:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v9

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/meal/Addition;->getTotal()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/meal/Addition;->getAmount()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    const/high16 v11, 0x42c80000    # 100.0f

    div-float/2addr v10, v11

    float-to-double v10, v10

    invoke-virtual {v9, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " )\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method

.method private getAdviced()Z
    .locals 2

    .prologue
    .line 632
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->reccomendIV:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Lcom/yopeso/lieferando/R$drawable;->img_rating_thumbup:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNetPrice()F
    .locals 4

    .prologue
    .line 521
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Order;->getTotal()I

    move-result v0

    .line 522
    .local v0, "netPrice":I
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Order;->getTaxes()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 525
    int-to-float v2, v0

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    return v2

    .line 522
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/model/user/Tax;

    .line 523
    .local v1, "tax":Lcom/yopeso/lieferando/model/user/Tax;
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/Tax;->getAmount()I

    move-result v3

    sub-int/2addr v0, v3

    goto :goto_0
.end method

.method private hideRatingLayout()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    const/16 v12, 0x8

    const/4 v11, 0x0

    .line 394
    iget-object v9, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v9}, Lcom/yopeso/lieferando/model/user/Order;->isRated()Z

    move-result v9

    if-nez v9, :cond_1

    .line 395
    iget-object v9, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMainView:Landroid/view/View;

    sget v10, Lcom/yopeso/lieferando/R$id;->RatingLayout:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/view/View;->setVisibility(I)V

    .line 423
    :goto_0
    iget-object v9, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMainView:Landroid/view/View;

    sget v10, Lcom/yopeso/lieferando/R$id;->RatingButton:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 424
    .local v7, "rating":Landroid/widget/Button;
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v9

    invoke-interface {v9}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v9

    if-nez v9, :cond_0

    .line 425
    invoke-virtual {v7}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v10

    invoke-virtual {v10}, Lcom/yopeso/lieferando/model/SettingsContent;->getDynamicButtonFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 428
    :cond_0
    invoke-virtual {v7, v11}, Landroid/widget/Button;->setEnabled(Z)V

    .line 431
    const/16 v0, 0x6e

    .line 432
    .local v0, "alpha":I
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/yopeso/lieferando/R$drawable;->megaphone:I

    invoke-static {v9, v10}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 433
    .local v4, "megaphone":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v9

    if-eqz v9, :cond_8

    move-object v5, v4

    .line 434
    .local v5, "mutableBitmap":Landroid/graphics/Bitmap;
    :goto_1
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 435
    .local v1, "canvas":Landroid/graphics/Canvas;
    const/high16 v2, 0x6e000000

    .line 436
    .local v2, "colour":I
    sget-object v9, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v9}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 438
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {v8, v9, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 440
    .local v8, "transparentMegaphone":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7, v8, v13, v13, v13}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 443
    iget-object v9, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMainView:Landroid/view/View;

    sget v10, Lcom/yopeso/lieferando/R$id;->RatingDeliveryLayout:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 444
    .local v3, "deliveryRatingLayout":Landroid/widget/LinearLayout;
    iget-object v9, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMainView:Landroid/view/View;

    sget v10, Lcom/yopeso/lieferando/R$id;->RatingQualityLayout:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 447
    .local v6, "qualityRatingLayout":Landroid/widget/LinearLayout;
    iget-object v9, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v9}, Lcom/yopeso/lieferando/model/user/Order;->getDeliveryRating()I

    move-result v9

    iput v9, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mDeliveryRating:I

    .line 448
    iget-object v9, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v9}, Lcom/yopeso/lieferando/model/user/Order;->getQualityRating()I

    move-result v9

    iput v9, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mQualityRating:I

    .line 450
    invoke-direct {p0, v6, v11}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->setRatingButtons(Landroid/widget/LinearLayout;Z)V

    .line 451
    invoke-direct {p0, v3, v14}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->setRatingButtons(Landroid/widget/LinearLayout;Z)V

    .line 455
    iget-object v9, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->reccomendIV:Landroid/widget/ImageView;

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 456
    iget-object v9, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->disreccomendIV:Landroid/widget/ImageView;

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 458
    return-void

    .line 397
    .end local v0    # "alpha":I
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "colour":I
    .end local v3    # "deliveryRatingLayout":Landroid/widget/LinearLayout;
    .end local v4    # "megaphone":Landroid/graphics/Bitmap;
    .end local v5    # "mutableBitmap":Landroid/graphics/Bitmap;
    .end local v6    # "qualityRatingLayout":Landroid/widget/LinearLayout;
    .end local v7    # "rating":Landroid/widget/Button;
    .end local v8    # "transparentMegaphone":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v9, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMainView:Landroid/view/View;

    sget v10, Lcom/yopeso/lieferando/R$id;->RatingLayout:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 398
    iget-object v9, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v9}, Lcom/yopeso/lieferando/model/user/Order;->getRatingTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v9}, Lcom/yopeso/lieferando/model/user/Order;->getRatingComment()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_5

    .line 399
    :cond_2
    iget-object v9, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v9}, Lcom/yopeso/lieferando/model/user/Order;->getRatingAuthor()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v9}, Lcom/yopeso/lieferando/model/user/Order;->getRatingAuthor()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_4

    .line 400
    :cond_3
    iget-object v9, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mUserNick:Landroid/widget/EditText;

    iget-object v10, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v10}, Lcom/yopeso/lieferando/model/user/UserData;->getNickName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 404
    :goto_2
    iget-object v9, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mUserNick:Landroid/widget/EditText;

    invoke-virtual {v9, v11}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 409
    :goto_3
    iget-object v9, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v9}, Lcom/yopeso/lieferando/model/user/Order;->getRatingTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_6

    .line 410
    iget-object v9, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mRatingTitle:Landroid/widget/EditText;

    iget-object v10, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v10}, Lcom/yopeso/lieferando/model/user/Order;->getRatingTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 411
    iget-object v9, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mRatingTitle:Landroid/widget/EditText;

    invoke-virtual {v9, v11}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 415
    :goto_4
    iget-object v9, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v9}, Lcom/yopeso/lieferando/model/user/Order;->getRatingComment()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_7

    .line 416
    iget-object v9, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mRatingComment:Lcom/yopeso/lieferando/view/CommentEditText;

    iget-object v10, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v10}, Lcom/yopeso/lieferando/model/user/Order;->getRatingComment()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/yopeso/lieferando/view/CommentEditText;->setText(Ljava/lang/CharSequence;)V

    .line 417
    iget-object v9, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mRatingComment:Lcom/yopeso/lieferando/view/CommentEditText;

    invoke-virtual {v9, v11}, Lcom/yopeso/lieferando/view/CommentEditText;->setEnabled(Z)V

    goto/16 :goto_0

    .line 402
    :cond_4
    iget-object v9, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mUserNick:Landroid/widget/EditText;

    iget-object v10, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v10}, Lcom/yopeso/lieferando/model/user/Order;->getRatingAuthor()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 406
    :cond_5
    iget-object v9, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mUserNick:Landroid/widget/EditText;

    invoke-virtual {v9, v12}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_3

    .line 413
    :cond_6
    iget-object v9, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mRatingTitle:Landroid/widget/EditText;

    invoke-virtual {v9, v12}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_4

    .line 419
    :cond_7
    iget-object v9, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mRatingComment:Lcom/yopeso/lieferando/view/CommentEditText;

    invoke-virtual {v9, v12}, Lcom/yopeso/lieferando/view/CommentEditText;->setVisibility(I)V

    goto/16 :goto_0

    .line 433
    .restart local v0    # "alpha":I
    .restart local v4    # "megaphone":Landroid/graphics/Bitmap;
    .restart local v7    # "rating":Landroid/widget/Button;
    :cond_8
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v4, v9, v14}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    goto/16 :goto_1
.end method

.method private initViews()V
    .locals 14

    .prologue
    const/high16 v13, 0x42c80000    # 100.0f

    const/4 v12, 0x1

    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 239
    sget-object v3, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->TAG:Ljava/lang/String;

    const-string v4, "initViews"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->msg:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 241
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMsg:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->msg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    :cond_0
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMainView:Landroid/view/View;

    sget v4, Lcom/yopeso/lieferando/R$id;->ClientName:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/Order;->getLocation()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/Location;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/Order;->getLocation()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/Location;->getPreName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    :cond_1
    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/UserData;->getFullName()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMainView:Landroid/view/View;

    sget v4, Lcom/yopeso/lieferando/R$id;->ClientTel:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/Order;->getLocation()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/Location;->getPhone()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMainView:Landroid/view/View;

    sget v4, Lcom/yopeso/lieferando/R$id;->ClientCity:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/user/Order;->getLocation()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/user/Location;->getPlz()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/user/Order;->getLocation()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/user/Location;->getCityName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMainView:Landroid/view/View;

    sget v4, Lcom/yopeso/lieferando/R$id;->ClientStreet:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/user/Order;->getLocation()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/user/Location;->getStreet()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/user/Order;->getLocation()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/user/Location;->getHnr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/Order;->getComment()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 250
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMainView:Landroid/view/View;

    sget v4, Lcom/yopeso/lieferando/R$id;->DeliveryComment:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 251
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMainView:Landroid/view/View;

    sget v4, Lcom/yopeso/lieferando/R$id;->DeliveryComment:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/Order;->getComment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    :cond_2
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMainView:Landroid/view/View;

    sget v4, Lcom/yopeso/lieferando/R$id;->OrderSubTitle:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/Order;->getDeliveryDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMainView:Landroid/view/View;

    sget v4, Lcom/yopeso/lieferando/R$id;->OrderNrValue:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/Order;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    const-string v1, ""

    .line 258
    .local v1, "mPaymentMethod":Ljava/lang/String;
    const-class v3, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "PAYMENT:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/user/Order;->getPaymentMethod()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/Order;->getPaymentMethod()Ljava/lang/String;

    move-result-object v3

    const-string v4, "bar"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 261
    sget v3, Lcom/yopeso/lieferando/R$string;->cash:I

    invoke-virtual {p0, v3}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 275
    :goto_1
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMainView:Landroid/view/View;

    sget v4, Lcom/yopeso/lieferando/R$id;->OrderPayMethodValue:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/Order;->getDiscountCode()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    .line 278
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMainView:Landroid/view/View;

    sget v4, Lcom/yopeso/lieferando/R$id;->OrderDiscountValue:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 279
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMainView:Landroid/view/View;

    sget v4, Lcom/yopeso/lieferando/R$id;->OrderDiscountLabel:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 280
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMainView:Landroid/view/View;

    sget v4, Lcom/yopeso/lieferando/R$id;->OrderDiscountLayout:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 281
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMainView:Landroid/view/View;

    sget v4, Lcom/yopeso/lieferando/R$id;->OrderDiscountLine:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 291
    :goto_2
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/Order;->getDiscountType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/Order;->getDiscountType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "partnerstp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 292
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMainView:Landroid/view/View;

    sget v4, Lcom/yopeso/lieferando/R$id;->OrderStampLayout:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 293
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMainView:Landroid/view/View;

    sget v4, Lcom/yopeso/lieferando/R$id;->OrderDiscountLine:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 294
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMainView:Landroid/view/View;

    sget v4, Lcom/yopeso/lieferando/R$id;->OrderStampPrice:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget v4, Lcom/yopeso/lieferando/R$string;->price_minus:I

    new-array v5, v12, [Ljava/lang/Object;

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v6

    iget-object v7, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/user/Order;->getDiscountAmount()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v13

    float-to-double v8, v7

    invoke-virtual {v6, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {p0, v4, v5}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    :goto_3
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/Order;->getDeliveryCost()I

    move-result v3

    if-lez v3, :cond_a

    .line 301
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMainView:Landroid/view/View;

    sget v4, Lcom/yopeso/lieferando/R$id;->OrderDeliveryPrice:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget v4, Lcom/yopeso/lieferando/R$string;->price:I

    new-array v5, v12, [Ljava/lang/Object;

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v6

    iget-object v7, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/user/Order;->getDeliveryCost()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v13

    float-to-double v8, v7

    invoke-virtual {v6, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {p0, v4, v5}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    :goto_4
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->loadMeals()V

    .line 308
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->loadTaxes()V

    .line 310
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/Order;->isRated()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/Order;->isRateable()Z

    move-result v3

    if-nez v3, :cond_b

    .line 311
    :cond_3
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->hideRatingLayout()V

    .line 324
    :goto_5
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMainView:Landroid/view/View;

    sget v4, Lcom/yopeso/lieferando/R$id;->OrderTotalPriceValue:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->dish_cost:I

    new-array v6, v12, [Ljava/lang/Object;

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v7

    iget-object v8, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v8}, Lcom/yopeso/lieferando/model/user/Order;->getTotal()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v13

    float-to-double v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 326
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/Order;->getDiscountAmount()I

    move-result v3

    if-eqz v3, :cond_e

    .line 327
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMainView:Landroid/view/View;

    sget v4, Lcom/yopeso/lieferando/R$id;->TotalCostLL:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 329
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMainView:Landroid/view/View;

    sget v4, Lcom/yopeso/lieferando/R$id;->TotalCostPrice:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->dish_cost:I

    new-array v6, v12, [Ljava/lang/Object;

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v7

    iget-object v8, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v8}, Lcom/yopeso/lieferando/model/user/Order;->getTotal()I

    move-result v8

    iget-object v9, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v9}, Lcom/yopeso/lieferando/model/user/Order;->getDiscountAmount()I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    div-float/2addr v8, v13

    float-to-double v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    :cond_4
    :goto_6
    return-void

    .line 245
    .end local v1    # "mPaymentMethod":Ljava/lang/String;
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/user/Order;->getLocation()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/user/Location;->getPreName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/user/Order;->getLocation()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/user/Location;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 263
    .restart local v1    # "mPaymentMethod":Ljava/lang/String;
    :cond_6
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/Order;->getPaymentMethod()Ljava/lang/String;

    move-result-object v3

    const-string v4, "credit"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 265
    sget v3, Lcom/yopeso/lieferando/R$string;->credit_card:I

    invoke-virtual {p0, v3}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 266
    goto/16 :goto_1

    .line 267
    :cond_7
    sget v3, Lcom/yopeso/lieferando/R$string;->online_paymant:I

    invoke-virtual {p0, v3}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 283
    :cond_8
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMainView:Landroid/view/View;

    sget v4, Lcom/yopeso/lieferando/R$id;->OrderDiscountValue:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 284
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMainView:Landroid/view/View;

    sget v4, Lcom/yopeso/lieferando/R$id;->OrderDiscountLabel:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 285
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMainView:Landroid/view/View;

    sget v4, Lcom/yopeso/lieferando/R$id;->OrderDiscountValue:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/Order;->getDiscountCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMainView:Landroid/view/View;

    sget v4, Lcom/yopeso/lieferando/R$id;->OrderDiscountPrice:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 287
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMainView:Landroid/view/View;

    sget v4, Lcom/yopeso/lieferando/R$id;->OrderDiscountLine:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 288
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMainView:Landroid/view/View;

    sget v4, Lcom/yopeso/lieferando/R$id;->OrderDiscountPrice:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget v4, Lcom/yopeso/lieferando/R$string;->price_minus:I

    new-array v5, v12, [Ljava/lang/Object;

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v6

    iget-object v7, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/user/Order;->getDiscountAmount()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v13

    float-to-double v8, v7

    invoke-virtual {v6, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {p0, v4, v5}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 296
    :cond_9
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMainView:Landroid/view/View;

    sget v4, Lcom/yopeso/lieferando/R$id;->OrderDiscountLine:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 297
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMainView:Landroid/view/View;

    sget v4, Lcom/yopeso/lieferando/R$id;->OrderStampLayout:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 303
    :cond_a
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMainView:Landroid/view/View;

    sget v4, Lcom/yopeso/lieferando/R$id;->DeliveryCostLayout:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 304
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMainView:Landroid/view/View;

    sget v4, Lcom/yopeso/lieferando/R$id;->DeliveryCostLine:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 313
    :cond_b
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMainView:Landroid/view/View;

    sget v4, Lcom/yopeso/lieferando/R$id;->RatingLayout:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 314
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMainView:Landroid/view/View;

    sget v4, Lcom/yopeso/lieferando/R$id;->RatingDeliveryLayout:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 315
    .local v0, "deliveryRatingLayout":Landroid/widget/LinearLayout;
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMainView:Landroid/view/View;

    sget v4, Lcom/yopeso/lieferando/R$id;->RatingQualityLayout:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 316
    .local v2, "qualityRatingLayout":Landroid/widget/LinearLayout;
    invoke-direct {p0, v0, v12}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->prepareRatingButtons(Landroid/widget/LinearLayout;Z)V

    .line 317
    invoke-direct {p0, v2, v10}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->prepareRatingButtons(Landroid/widget/LinearLayout;Z)V

    .line 318
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    if-eqz v3, :cond_c

    .line 319
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMainView:Landroid/view/View;

    sget v4, Lcom/yopeso/lieferando/R$id;->RatingAuthor:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/UserData;->getNickName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/UserData;->getName()Ljava/lang/String;

    move-result-object v4

    :goto_7
    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 321
    :cond_c
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->loadRatingButton()V

    goto/16 :goto_5

    .line 319
    :cond_d
    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/UserData;->getNickName()Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    .line 333
    .end local v0    # "deliveryRatingLayout":Landroid/widget/LinearLayout;
    .end local v2    # "qualityRatingLayout":Landroid/widget/LinearLayout;
    :cond_e
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMainView:Landroid/view/View;

    sget v4, Lcom/yopeso/lieferando/R$id;->TotalCostLL:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_6
.end method

.method private loadMeals()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 529
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMainView:Landroid/view/View;

    sget v4, Lcom/yopeso/lieferando/R$id;->OrderReceiptMainLayout:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 530
    .local v2, "receiptLayout":Landroid/widget/LinearLayout;
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/Order;->getMeals()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 540
    return-void

    .line 530
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/meal/Meal;

    .line 531
    .local v0, "meal":Lcom/yopeso/lieferando/model/meal/Meal;
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mInflater:Landroid/view/LayoutInflater;

    sget v5, Lcom/yopeso/lieferando/R$layout;->order_dish_details:I

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 532
    .local v1, "mealView":Landroid/view/View;
    sget v3, Lcom/yopeso/lieferando/R$id;->OrderDishDetail:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/meal/Meal;->getCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "x "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/meal/Meal;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    sget v3, Lcom/yopeso/lieferando/R$id;->OrderPriceValue:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/yopeso/lieferando/R$string;->dish_cost:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 534
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v9

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/meal/Meal;->getTotal()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x42c80000    # 100.0f

    div-float/2addr v10, v11

    float-to-double v10, v10

    invoke-virtual {v9, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v12

    .line 533
    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 535
    sget v3, Lcom/yopeso/lieferando/R$id;->OrderDishExtras:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->getAdditions(Lcom/yopeso/lieferando/model/meal/Meal;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    sget v3, Lcom/yopeso/lieferando/R$id;->OrderDishComment:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/meal/Meal;->getComment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method private loadRatingButton()V
    .locals 3

    .prologue
    .line 372
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMainView:Landroid/view/View;

    sget v2, Lcom/yopeso/lieferando/R$id;->RatingButton:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 373
    .local v0, "ratingButton":Landroid/widget/Button;
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 374
    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/SettingsContent;->getDynamicButtonFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 377
    :cond_0
    new-instance v1, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$4;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$4;-><init>(Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    return-void
.end method

.method private loadTaxes()V
    .locals 14

    .prologue
    .line 339
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMainView:Landroid/view/View;

    sget v6, Lcom/yopeso/lieferando/R$id;->OrderNettoPriceValue:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/yopeso/lieferando/R$string;->dish_cost:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v11

    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->getNetPrice()F

    move-result v12

    float-to-double v12, v12

    invoke-virtual {v11, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMainView:Landroid/view/View;

    sget v6, Lcom/yopeso/lieferando/R$id;->OrderTotalPriceValue:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/yopeso/lieferando/R$string;->dish_cost:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v10

    iget-object v11, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v11}, Lcom/yopeso/lieferando/model/user/Order;->getTotal()I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v11, v12

    float-to-double v12, v11

    invoke-virtual {v10, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMainView:Landroid/view/View;

    sget v6, Lcom/yopeso/lieferando/R$id;->OrderTaxLayout:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TableLayout;

    .line 342
    .local v4, "taxesTable":Landroid/widget/TableLayout;
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v5

    invoke-interface {v5}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 344
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 369
    :cond_0
    return-void

    .line 347
    :cond_1
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/user/Order;->getTaxes()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/model/user/Tax;

    .line 348
    .local v1, "tax":Lcom/yopeso/lieferando/model/user/Tax;
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/Tax;->getType()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_2

    .line 352
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 353
    .local v2, "taxLabel":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/yopeso/lieferando/R$string;->order_tax:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/Tax;->getType()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/yopeso/lieferando/R$color;->text_grey:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 356
    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/yopeso/lieferando/R$dimen;->order_print_text_size:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {v2, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 357
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 358
    .local v3, "taxText":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/yopeso/lieferando/R$string;->dish_cost:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v11

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/Tax;->getAmount()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x42c80000    # 100.0f

    div-float/2addr v12, v13

    float-to-double v12, v12

    invoke-virtual {v11, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/yopeso/lieferando/R$color;->text_grey:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 360
    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/yopeso/lieferando/R$dimen;->order_print_text_size:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 361
    new-instance v0, Landroid/widget/TableRow;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 362
    .local v0, "row":Landroid/widget/TableRow;
    invoke-virtual {v0, v2}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 363
    invoke-virtual {v0, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 364
    invoke-virtual {v4, v0}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public static newInstance(Lcom/yopeso/lieferando/model/user/Order;)Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;
    .locals 3
    .param p0, "order"    # Lcom/yopeso/lieferando/model/user/Order;

    .prologue
    .line 97
    new-instance v1, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;

    invoke-direct {v1}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;-><init>()V

    .line 98
    .local v1, "frag":Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 99
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "key_order"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 100
    invoke-virtual {v1, v0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->setArguments(Landroid/os/Bundle;)V

    .line 101
    return-object v1
.end method

.method public static newInstance(Lcom/yopeso/lieferando/model/user/Order;Ljava/lang/String;)Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;
    .locals 3
    .param p0, "order"    # Lcom/yopeso/lieferando/model/user/Order;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 105
    new-instance v1, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;

    invoke-direct {v1}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;-><init>()V

    .line 106
    .local v1, "frag":Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 107
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "key_order"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 108
    const-string v2, "msg_key"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v1, v0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->setArguments(Landroid/os/Bundle;)V

    .line 110
    return-object v1
.end method

.method private prepareRating()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 612
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 615
    .local v1, "postRaing":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "hashtag"

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/Order;->getHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 616
    const-string v2, "quality"

    iget v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mQualityRating:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 617
    const-string v2, "delivery"

    iget v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mDeliveryRating:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 618
    const-string v2, "advice"

    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->getAdviced()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 620
    const-string v2, "mealrate"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 622
    const-string v2, "title"

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mRatingTitle:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yopeso/lieferando/util/StringUtils;->removeSpecialChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 623
    const-string v2, "comment"

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mRatingComment:Lcom/yopeso/lieferando/view/CommentEditText;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/view/CommentEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yopeso/lieferando/util/StringUtils;->removeSpecialChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 624
    const-string v2, "author"

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mUserNick:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yopeso/lieferando/util/StringUtils;->removeSpecialChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    :goto_0
    return-object v1

    .line 625
    :catch_0
    move-exception v0

    .line 626
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private prepareRatingButtons(Landroid/widget/LinearLayout;Z)V
    .locals 6
    .param p1, "layout"    # Landroid/widget/LinearLayout;
    .param p2, "isDelivery"    # Z

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x0

    .line 491
    new-array v1, v5, [Landroid/widget/Button;

    .line 493
    .local v1, "ratingButtons":[Landroid/widget/Button;
    sget v2, Lcom/yopeso/lieferando/R$id;->Star1:I

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    aput-object v2, v1, v4

    .line 494
    const/4 v3, 0x1

    sget v2, Lcom/yopeso/lieferando/R$id;->Star2:I

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    aput-object v2, v1, v3

    .line 495
    const/4 v3, 0x2

    sget v2, Lcom/yopeso/lieferando/R$id;->Star3:I

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    aput-object v2, v1, v3

    .line 496
    const/4 v3, 0x3

    sget v2, Lcom/yopeso/lieferando/R$id;->Star4:I

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    aput-object v2, v1, v3

    .line 497
    const/4 v3, 0x4

    sget v2, Lcom/yopeso/lieferando/R$id;->Star5:I

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    aput-object v2, v1, v3

    .line 499
    iput v4, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mIndex:I

    :goto_0
    iget v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mIndex:I

    if-lt v2, v5, :cond_0

    .line 518
    return-void

    .line 500
    :cond_0
    iget v0, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mIndex:I

    .line 501
    .local v0, "localIndex":I
    iget v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mIndex:I

    aget-object v2, v1, v2

    new-instance v3, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$5;

    invoke-direct {v3, p0, p2, v0, v1}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$5;-><init>(Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;ZI[Landroid/widget/Button;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 499
    iget v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mIndex:I

    goto :goto_0
.end method

.method private setRatingButtons(Landroid/widget/LinearLayout;Z)V
    .locals 7
    .param p1, "layout"    # Landroid/widget/LinearLayout;
    .param p2, "isDelivery"    # Z

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x0

    .line 461
    new-array v2, v6, [Landroid/widget/Button;

    .line 463
    .local v2, "ratingButtons":[Landroid/widget/Button;
    sget v3, Lcom/yopeso/lieferando/R$id;->Star1:I

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    aput-object v3, v2, v5

    .line 464
    const/4 v4, 0x1

    sget v3, Lcom/yopeso/lieferando/R$id;->Star2:I

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    aput-object v3, v2, v4

    .line 465
    const/4 v4, 0x2

    sget v3, Lcom/yopeso/lieferando/R$id;->Star3:I

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    aput-object v3, v2, v4

    .line 466
    const/4 v4, 0x3

    sget v3, Lcom/yopeso/lieferando/R$id;->Star4:I

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    aput-object v3, v2, v4

    .line 467
    const/4 v4, 0x4

    sget v3, Lcom/yopeso/lieferando/R$id;->Star5:I

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    aput-object v3, v2, v4

    .line 471
    if-eqz p2, :cond_0

    .line 472
    iget v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mDeliveryRating:I

    add-int/lit8 v1, v3, -0x1

    .line 477
    .local v1, "localIndex":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-le v0, v1, :cond_1

    .line 480
    add-int/lit8 v0, v1, 0x1

    :goto_2
    if-lt v0, v6, :cond_2

    .line 484
    const/4 v0, 0x0

    :goto_3
    if-lt v0, v6, :cond_3

    .line 488
    return-void

    .line 474
    .end local v0    # "i":I
    .end local v1    # "localIndex":I
    :cond_0
    iget v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mQualityRating:I

    add-int/lit8 v1, v3, -0x1

    .restart local v1    # "localIndex":I
    goto :goto_0

    .line 478
    .restart local v0    # "i":I
    :cond_1
    aget-object v3, v2, v0

    sget v4, Lcom/yopeso/lieferando/R$drawable;->rating_button_selector:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 477
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 481
    :cond_2
    aget-object v3, v2, v0

    sget v4, Lcom/yopeso/lieferando/R$drawable;->rating_button_disabled_selector:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 480
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 485
    :cond_3
    aget-object v3, v2, v0

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setClickable(Z)V

    .line 486
    aget-object v3, v2, v0

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 484
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method private updateOrder()V
    .locals 4

    .prologue
    .line 643
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mRatingTitle:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Order;->setRatingTitle(Ljava/lang/String;)V

    .line 644
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mRatingComment:Lcom/yopeso/lieferando/view/CommentEditText;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/view/CommentEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Order;->setRatingComment(Ljava/lang/String;)V

    .line 645
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Order;->setRateable(Z)V

    .line 646
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Order;->setRated(Z)V

    .line 647
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    iget v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mDeliveryRating:I

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Order;->setDeliveryRating(I)V

    .line 648
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    iget v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mQualityRating:I

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Order;->setQualityRating(I)V

    .line 649
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mUserNick:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Order;->setRatingAuthor(Ljava/lang/String;)V

    .line 650
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Order;->setRatingTime(Ljava/util/Date;)V

    .line 651
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    iget v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mDeliveryRating:I

    iget v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mQualityRating:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Order;->setRating(F)V

    .line 654
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMainView:Landroid/view/View;

    sget v2, Lcom/yopeso/lieferando/R$id;->RestaurantRating1:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RatingBar;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Order;->getRating()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RatingBar;->setRating(F)V

    .line 655
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMainView:Landroid/view/View;

    sget v2, Lcom/yopeso/lieferando/R$id;->RatedStatus:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 656
    .local v0, "ratings":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$string;->was_rated:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 657
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$color;->text_grey:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 664
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/yopeso/lieferando/util/DeviceUtils;->isHoneycombTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 665
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    new-instance v2, Lcom/yopeso/lieferando/net/requests/StatsRequest;

    new-instance v3, Lcom/yopeso/lieferando/net/listeners/StatsListener;

    invoke-direct {v3}, Lcom/yopeso/lieferando/net/listeners/StatsListener;-><init>()V

    invoke-direct {v2, v3}, Lcom/yopeso/lieferando/net/requests/StatsRequest;-><init>(Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v2}, Lcom/yopeso/lieferando/net/requests/StatsRequest;->withAuth()Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 668
    :cond_0
    return-void
.end method

.method private validateFields()Z
    .locals 3

    .prologue
    const/4 v2, 0x5

    const/4 v0, 0x0

    .line 599
    iget v1, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mQualityRating:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mQualityRating:I

    if-le v1, v2, :cond_1

    .line 600
    :cond_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$string;->noQualityRating:I

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 608
    :goto_0
    return v0

    .line 604
    :cond_1
    iget v1, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mDeliveryRating:I

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mDeliveryRating:I

    if-le v1, v2, :cond_3

    .line 605
    :cond_2
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$string;->noDeliveryRating:I

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 608
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected getTitle()I
    .locals 1

    .prologue
    .line 127
    sget v0, Lcom/yopeso/lieferando/R$string;->rate_order:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 672
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/yopeso/lieferando/R$id;->OrderButton:I

    if-ne v0, v1, :cond_0

    .line 673
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->remakeOrder(Lcom/yopeso/lieferando/model/user/Order;)V

    .line 677
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;->onCreate(Landroid/os/Bundle;)V

    .line 116
    const-string v0, "order"

    invoke-static {v0}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackView(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_order"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/user/Order;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    .line 118
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "msg_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "msg_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->msg:Ljava/lang/String;

    .line 121
    :cond_0
    const-class v0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OrderID:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Order;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const-class v0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MSG_KEY:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 132
    sget-object v2, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->TAG:Ljava/lang/String;

    const-string v3, "onCreateView"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v2

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    .line 134
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 136
    sget v2, Lcom/yopeso/lieferando/R$layout;->rating_details:I

    invoke-virtual {p1, v2, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMainView:Landroid/view/View;

    .line 137
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMainView:Landroid/view/View;

    sget v3, Lcom/yopeso/lieferando/R$id;->imageView2:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 139
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->progressDialog:Landroid/app/ProgressDialog;

    .line 140
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMainView:Landroid/view/View;

    sget v4, Lcom/yopeso/lieferando/R$id;->OrderView:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v2, v3, v4, v5}, Lcom/yopeso/lieferando/adapters/OrdersAdapter;->displayOrderInView(Lcom/yopeso/lieferando/model/user/Order;Landroid/view/View;Landroid/content/Context;Z)V

    .line 142
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMainView:Landroid/view/View;

    sget v3, Lcom/yopeso/lieferando/R$id;->RatingAuthor:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mUserNick:Landroid/widget/EditText;

    .line 143
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMainView:Landroid/view/View;

    sget v3, Lcom/yopeso/lieferando/R$id;->RatingTitle:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mRatingTitle:Landroid/widget/EditText;

    .line 144
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMainView:Landroid/view/View;

    sget v3, Lcom/yopeso/lieferando/R$id;->MSG:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMsg:Landroid/widget/TextView;

    .line 145
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMainView:Landroid/view/View;

    sget v3, Lcom/yopeso/lieferando/R$id;->RatingText:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/view/CommentEditText;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mRatingComment:Lcom/yopeso/lieferando/view/CommentEditText;

    .line 147
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mRatingComment:Lcom/yopeso/lieferando/view/CommentEditText;

    new-instance v3, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$1;

    invoke-direct {v3, p0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$1;-><init>(Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;)V

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/view/CommentEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 155
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMainView:Landroid/view/View;

    sget v3, Lcom/yopeso/lieferando/R$id;->OrderButton:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 156
    .local v1, "orderButton":Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 158
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v2

    if-nez v2, :cond_0

    .line 159
    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/SettingsContent;->getDynamicButtonFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 164
    :cond_0
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMainView:Landroid/view/View;

    sget v3, Lcom/yopeso/lieferando/R$id;->ReccomendIV:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->reccomendIV:Landroid/widget/ImageView;

    .line 165
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->reccomendIV:Landroid/widget/ImageView;

    sget v3, Lcom/yopeso/lieferando/R$drawable;->img_rating_thumbup:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 166
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->reccomendIV:Landroid/widget/ImageView;

    new-instance v3, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$2;

    invoke-direct {v3, p0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$2;-><init>(Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMainView:Landroid/view/View;

    sget v3, Lcom/yopeso/lieferando/R$id;->DisreccomendIV:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->disreccomendIV:Landroid/widget/ImageView;

    .line 190
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->disreccomendIV:Landroid/widget/ImageView;

    sget v3, Lcom/yopeso/lieferando/R$drawable;->img_rating_thumbdown_inactive:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 191
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->disreccomendIV:Landroid/widget/ImageView;

    new-instance v3, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$3;

    invoke-direct {v3, p0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$3;-><init>(Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMainView:Landroid/view/View;

    sget v3, Lcom/yopeso/lieferando/R$id;->DeliverTimeValue:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->deliverTimeValue:Landroid/widget/TextView;

    .line 217
    :try_start_0
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Order;->getDeliveryDay()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/Order;->getOrderDay()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Order;->getDeliveryTime()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/Order;->getOrderTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 219
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->deliverTimeValue:Landroid/widget/TextView;

    sget v3, Lcom/yopeso/lieferando/R$string;->order_immediately2:I

    invoke-virtual {p0, v3}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->initViews()V

    .line 235
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mMainView:Landroid/view/View;

    return-object v2

    .line 223
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->deliverTimeValue:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/Order;->getDeliveryDay()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->mOrder:Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/Order;->getDeliveryTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "exception in deliverTimeValue.setText"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onEvent(Lcom/yopeso/lieferando/events/AuthenticationEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/yopeso/lieferando/events/AuthenticationEvent;

    .prologue
    .line 680
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 682
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 684
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 697
    invoke-super {p0}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;->onPause()V

    .line 698
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 699
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 701
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 689
    invoke-super {p0}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;->onResume()V

    .line 690
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 691
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 693
    :cond_0
    return-void
.end method
