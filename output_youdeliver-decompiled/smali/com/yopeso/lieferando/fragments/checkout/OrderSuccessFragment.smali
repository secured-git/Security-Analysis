.class public Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;
.super Landroid/support/v4/app/LRDialogFragment;
.source "OrderSuccessFragment.java"


# static fields
.field private static final FIDELITY_KEY:Ljava/lang/String; = "fidelity_key"

.field private static final MISC_KEY:Ljava/lang/String; = "misc_key"

.field private static final STAMP_KEY:Ljava/lang/String; = "stamp_key"


# instance fields
.field private mCustomFontViews:[I

.field private mFidelity:Z

.field private mMisc:Ljava/lang/String;

.field private mShouldCollectStamp:Z

.field private progressBar:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/support/v4/app/LRDialogFragment;-><init>()V

    .line 54
    const/4 v0, 0x6

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/yopeso/lieferando/R$id;->RestName:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/yopeso/lieferando/R$id;->RestAddress:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/yopeso/lieferando/R$id;->RestPrice:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/yopeso/lieferando/R$id;->RestCity:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/yopeso/lieferando/R$id;->CallDetails:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcom/yopeso/lieferando/R$id;->CallNumber:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;->mCustomFontViews:[I

    .line 62
    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;->progressBar:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private displayAddView(Landroid/view/View;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 176
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/LieferandoApplication;

    .line 177
    .local v0, "app":Lcom/yopeso/lieferando/LieferandoApplication;
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/SettingsContent;->isAdsActive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/yopeso/lieferando/custom/LRActivity;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/custom/LRActivity;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v1

    .line 182
    .local v1, "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    sget v3, Lcom/yopeso/lieferando/R$id;->totalOrderCost:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    sget v3, Lcom/yopeso/lieferando/R$id;->totalOrderCost:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->total_cost:I

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v7

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getCostWithShipping()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v8, v9

    float-to-double v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    sget v3, Lcom/yopeso/lieferando/R$id;->WebAdd:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    .line 186
    .local v2, "webView":Landroid/webkit/WebView;
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 187
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 188
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 189
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 190
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 191
    const/high16 v3, 0x2000000

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 193
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isLive()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 194
    new-instance v3, Ljava/lang/StringBuilder;

    sget v4, Lcom/yopeso/lieferando/R$string;->add_url:I

    invoke-virtual {p0, v4}, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "device=android&miscellaneous="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;->mMisc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&inapp=true"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 201
    :goto_0
    new-instance v3, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment$2;

    invoke-direct {v3, p0, v2}, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment$2;-><init>(Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;Landroid/webkit/WebView;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 221
    .end local v1    # "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    .end local v2    # "webView":Landroid/webkit/WebView;
    :cond_1
    return-void

    .line 196
    .restart local v1    # "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    .restart local v2    # "webView":Landroid/webkit/WebView;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    sget v4, Lcom/yopeso/lieferando/R$string;->add_stage_url:I

    invoke-virtual {p0, v4}, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "device=android&miscellaneous="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;->mMisc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&inapp=true"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private displayOrderDetailsView(Landroid/view/View;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x0

    .line 230
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;->progressBar:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 231
    sget v3, Lcom/yopeso/lieferando/R$id;->RestOrderDetails:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 232
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/yopeso/lieferando/custom/LRActivity;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/custom/LRActivity;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    .line 233
    .local v0, "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v2

    .line 234
    .local v2, "rest":Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    if-eqz v2, :cond_0

    .line 235
    sget v3, Lcom/yopeso/lieferando/R$id;->RestName:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    sget v3, Lcom/yopeso/lieferando/R$id;->RestAddress:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getAddressStreet()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getAddressNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    sget v3, Lcom/yopeso/lieferando/R$id;->RestCity:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getZipCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getCity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    sget v3, Lcom/yopeso/lieferando/R$id;->RestPrice:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->total_cost:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v7

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getCostWithShipping()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v8, v9

    float-to-double v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    sget v3, Lcom/yopeso/lieferando/R$id;->RestaurantLogo:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 241
    .local v1, "logo":Landroid/widget/ImageView;
    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getTagFactory()Lcom/novoda/imageloader/core/model/ImageTagFactory;

    move-result-object v3

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getImgUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/yopeso/lieferando/util/ImageUtils;->getOptimizedLogoUrl(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->build(Ljava/lang/String;Landroid/content/Context;)Lcom/novoda/imageloader/core/model/ImageTag;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 242
    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getImageLoader()Lcom/novoda/imageloader/core/loader/Loader;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/novoda/imageloader/core/loader/Loader;->load(Landroid/widget/ImageView;)V

    .line 244
    .end local v1    # "logo":Landroid/widget/ImageView;
    :cond_0
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;->setUpCustomFont(Landroid/view/View;)V

    .line 245
    return-void
.end method

.method public static newInstance(ZZLjava/lang/String;)Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;
    .locals 3
    .param p0, "fidelity"    # Z
    .param p1, "shouldCollectStamp"    # Z
    .param p2, "misc"    # Ljava/lang/String;

    .prologue
    .line 65
    new-instance v1, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;

    invoke-direct {v1}, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;-><init>()V

    .line 66
    .local v1, "dialog":Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 67
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "fidelity_key"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 68
    const-string v2, "stamp_key"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 69
    if-eqz p1, :cond_0

    .line 70
    invoke-static {}, Lcom/yopeso/lieferando/util/TrackingUtils;->stampCollectedKahuna()V

    .line 72
    :cond_0
    const-string v2, "misc_key"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v1, v0}, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;->setArguments(Landroid/os/Bundle;)V

    .line 74
    return-object v1
.end method

.method private setUpCustomFont(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "fonts/helvetica.tff"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 255
    .local v0, "font":Landroid/graphics/Typeface;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;->mCustomFontViews:[I

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 258
    return-void

    .line 256
    :cond_0
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;->mCustomFontViews:[I

    aget v2, v2, v1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 255
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 249
    invoke-super {p0, p1}, Landroid/support/v4/app/LRDialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 250
    invoke-static {p1}, Lcom/yopeso/lieferando/util/IntentNavUtils;->startSyncUser(Landroid/content/Context;)V

    .line 251
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 79
    invoke-super {p0, p1}, Landroid/support/v4/app/LRDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "fidelity_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;->mFidelity:Z

    .line 81
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "stamp_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;->mShouldCollectStamp:Z

    .line 83
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/SettingsContent;->isFidelityPointsActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iput-boolean v2, p0, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;->mFidelity:Z

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/SettingsContent;->isStampcardActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    iput-boolean v2, p0, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;->mShouldCollectStamp:Z

    .line 95
    :cond_1
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/support/v4/app/LRDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 100
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 101
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 106
    sget v3, Lcom/yopeso/lieferando/R$layout;->order_success_frag:I

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 108
    .local v2, "view":Landroid/view/View;
    sget v3, Lcom/yopeso/lieferando/R$id;->RestWaiting:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;->progressBar:Landroid/widget/RelativeLayout;

    .line 110
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/yopeso/lieferando/custom/LRActivity;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/custom/LRActivity;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    .line 111
    .local v0, "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v1

    .line 113
    .local v1, "rest":Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getTelephone()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getTelephone()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 114
    sget v3, Lcom/yopeso/lieferando/R$id;->CallNumber:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    sget v3, Lcom/yopeso/lieferando/R$id;->CallDetails:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    sget v3, Lcom/yopeso/lieferando/R$id;->CallNumber:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getTelephone()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    :goto_0
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 122
    invoke-direct {p0, v2}, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;->displayOrderDetailsView(Landroid/view/View;)V

    .line 164
    :cond_0
    :goto_1
    return-object v2

    .line 118
    :cond_1
    sget v3, Lcom/yopeso/lieferando/R$id;->CallDetails:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    sget v3, Lcom/yopeso/lieferando/R$id;->CallNumber:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 125
    :cond_2
    sget v3, Lcom/yopeso/lieferando/R$id;->tweeterLL:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 126
    sget v3, Lcom/yopeso/lieferando/R$id;->twitterButton:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    new-instance v4, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment$1;

    invoke-direct {v4, p0, v1}, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment$1;-><init>(Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;->mMisc:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 155
    invoke-direct {p0, v2}, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;->displayAddView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 262
    invoke-super {p0}, Landroid/support/v4/app/LRDialogFragment;->onDestroy()V

    .line 264
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/custom/LRActivity;

    .line 265
    .local v0, "activity":Lcom/yopeso/lieferando/custom/LRActivity;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/custom/LRActivity;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v1

    .line 266
    .local v1, "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->clear()V

    .line 267
    invoke-virtual {v1, v5}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setRestaurant(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    .line 268
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->clearDeliveryAddress()V

    .line 272
    :try_start_0
    iget-boolean v4, p0, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;->mFidelity:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;->mShouldCollectStamp:Z

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v4

    invoke-interface {v4}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v4

    if-nez v4, :cond_1

    .line 273
    const/16 v4, 0xa

    sget v5, Lcom/yopeso/lieferando/R$string;->orderSuccessMsg:I

    invoke-virtual {p0, v5}, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, p0, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;->mFidelity:Z

    iget-boolean v7, p0, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;->mShouldCollectStamp:Z

    invoke-static {v4, v5, v6, v7}, Lcom/yopeso/lieferando/dialogs/FidelityDialog;->newInstance(ILjava/lang/String;ZZ)Lcom/yopeso/lieferando/dialogs/FidelityDialog;

    move-result-object v3

    .line 274
    .local v3, "fidelityDialog":Lcom/yopeso/lieferando/dialogs/FidelityDialog;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/yopeso/lieferando/dialogs/FidelityDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    .end local v3    # "fidelityDialog":Lcom/yopeso/lieferando/dialogs/FidelityDialog;
    :cond_1
    :goto_0
    return-void

    .line 276
    :catch_0
    move-exception v2

    .line 277
    .local v2, "e":Ljava/lang/Exception;
    const-class v4, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onDestroy:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
