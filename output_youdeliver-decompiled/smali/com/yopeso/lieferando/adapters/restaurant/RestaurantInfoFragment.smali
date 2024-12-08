.class public Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;
.super Lcom/yopeso/lieferando/custom/LRFragment;
.source "RestaurantInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment$RestaurantListener;
    }
.end annotation


# static fields
.field private static final RESTAURANT_KEY:Ljava/lang/String; = "restaurant_key"


# instance fields
.field private mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/yopeso/lieferando/custom/LRFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    return-void
.end method

.method static synthetic access$1(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;)Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    return-object v0
.end method

.method static synthetic access$2(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;Lcom/android/volley/VolleyError;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->handleNetworkError(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public static newInstance(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;
    .locals 3
    .param p0, "r"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 34
    new-instance v1, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;

    invoke-direct {v1}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;-><init>()V

    .line 35
    .local v1, "frg":Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 36
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "restaurant_key"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 37
    invoke-virtual {v1, v0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->setArguments(Landroid/os/Bundle;)V

    .line 38
    return-object v1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 17
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super/range {p0 .. p1}, Lcom/yopeso/lieferando/custom/LRFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->openingInfo:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getOpeningsForWeek(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getPreorderOffset()I

    move-result v2

    const/16 v3, 0x1c20

    if-lt v2, v3, :cond_11

    .line 60
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getPreorderOffset()I

    move-result v2

    div-int/lit16 v10, v2, 0xe10

    .line 61
    .local v10, "hours":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getPreorderOffset()I

    move-result v2

    mul-int/lit16 v3, v10, 0xe10

    sub-int/2addr v2, v3

    div-int/lit8 v12, v2, 0x3c

    .line 63
    .local v12, "minutes":I
    if-nez v12, :cond_10

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->preorderinginfo:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$string;->preorderingOffsetValueHour:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    .end local v10    # "hours":I
    .end local v12    # "minutes":I
    :goto_0
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->addressInfo:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$string;->restaurnat_address:I

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v15}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getAddressStreet()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v15}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getAddressNumber()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v6

    const/4 v6, 0x2

    .line 76
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v15}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getZipCode()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v6

    const/4 v6, 0x3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v15}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getCity()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v6

    .line 75
    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v2

    invoke-static {v2}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->getInstance(Lcom/yopeso/lieferando/model/SettingsContent;)Lcom/yopeso/lieferando/util/PaymentSettingsUtil;

    move-result-object v14

    .line 86
    .local v14, "paymentSettings":Lcom/yopeso/lieferando/util/PaymentSettingsUtil;
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->PaymentCashBlack:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v14, v2}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->isCashAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->PaymentSofortblack:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v14, v2}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->isEbankingAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->PaymentPayUblack:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v14, v2}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->isPayUAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->paymentsOnlineInfo:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v14, v2}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->isPaypalAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v14, v2}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->isCreditAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_0
    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 91
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v2

    if-nez v2, :cond_2

    .line 93
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->ECPayment:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v14, v2}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->isECAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v2, 0x0

    :goto_6
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 96
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->textView1:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 97
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getDescription()Ljava/lang/String;

    move-result-object v11

    .line 98
    .local v11, "mInfoHtml":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 99
    const-string v2, "\n"

    const-string v3, "<BR>"

    invoke-virtual {v11, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 100
    const-string v8, ""

    .line 101
    .local v8, "css":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->InfoWebView:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    .line 103
    .local v1, "body":Landroid/webkit/WebView;
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 104
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 105
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 108
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "text/html"

    const-string v5, "UTF-8"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    new-instance v2, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment$1;-><init>(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 119
    .end local v1    # "body":Landroid/webkit/WebView;
    .end local v8    # "css":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v2

    if-nez v2, :cond_f

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    new-instance v3, Lcom/yopeso/lieferando/net/requests/RestaurantRequest;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getServiceUrl()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment$RestaurantListener;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment$RestaurantListener;-><init>(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;)V

    invoke-direct {v3, v4, v5}, Lcom/yopeso/lieferando/net/requests/RestaurantRequest;-><init>(Ljava/lang/String;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v2, v3}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getmCorporateName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->companyInfo:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->companyLabel:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getmCorporateName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->addressInfoImprint:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->restaurnat_addressHeader:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->restaurnat_address_imprint:I

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getAddressStreet()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getAddressNumber()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v15

    const/4 v15, 0x2

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getZipCode()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v15

    const/4 v15, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getCity()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v15

    .line 124
    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getTelephone()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->PhoneInfoImprint:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->phone:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getTelephone()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getmFax()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->FaxInfoImprint:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->fax:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getmFax()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getmEmail()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->EmailInfoImprint:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->e_mail:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getmEmail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getmContact()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->OwnerInfoImprint:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->owner:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getmContact()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getmTradeOffice()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->tradeOfficeInfoImprint:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->tradeOffice:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getmTradeOffice()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getmRegisterCourt()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->registerCourtInfoImprint:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getmRegisterCourt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getmRegisterCourtNr()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->registerCourtNrImprint:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getmRegisterCourtNr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getmTaxIdNr()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->taxIdNrNrImprint:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->ust_nr:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getmTaxIdNr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getmAdditionalContacts()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    .line 146
    const-string v9, ""

    .line 147
    .local v9, "email2":Ljava/lang/String;
    const-string v13, ""

    .line 148
    .local v13, "owner2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getmAdditionalContacts()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_18

    .line 164
    invoke-static {v13}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->OwnerInfoImprint2:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->OwnerInfoImprint2:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    :cond_e
    invoke-static {v9}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->EmailInfoImprint2:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->EmailInfoImprint2:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    .end local v9    # "email2":Ljava/lang/String;
    .end local v13    # "owner2":Ljava/lang/String;
    :cond_f
    return-void

    .line 67
    .end local v11    # "mInfoHtml":Ljava/lang/String;
    .end local v14    # "paymentSettings":Lcom/yopeso/lieferando/util/PaymentSettingsUtil;
    .restart local v10    # "hours":I
    .restart local v12    # "minutes":I
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->preorderinginfo:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$string;->preorderingOffsetValueMin:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v5, v6

    const/4 v6, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 71
    .end local v10    # "hours":I
    .end local v12    # "minutes":I
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->preorderingInfoHeader:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->preorderinginfo:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 79
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->addressInfo:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getAddressStreet()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getAddressNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->addressInfo2:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getZipCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getCity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 86
    .restart local v14    # "paymentSettings":Lcom/yopeso/lieferando/util/PaymentSettingsUtil;
    :cond_13
    const/16 v2, 0x8

    goto/16 :goto_2

    .line 87
    :cond_14
    const/16 v2, 0x8

    goto/16 :goto_3

    .line 88
    :cond_15
    const/16 v2, 0x8

    goto/16 :goto_4

    .line 89
    :cond_16
    const/16 v2, 0x8

    goto/16 :goto_5

    .line 93
    :cond_17
    const/16 v2, 0x8

    goto/16 :goto_6

    .line 148
    .restart local v9    # "email2":Ljava/lang/String;
    .restart local v11    # "mInfoHtml":Ljava/lang/String;
    .restart local v13    # "owner2":Ljava/lang/String;
    :cond_18
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/yopeso/lieferando/model/restaurant/Restaurant$AdditionalContactDto;

    .line 149
    .local v7, "adc":Lcom/yopeso/lieferando/model/restaurant/Restaurant$AdditionalContactDto;
    invoke-static {v9}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 153
    :cond_19
    invoke-static {v13}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 157
    :cond_1a
    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/restaurant/Restaurant$AdditionalContactDto;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 158
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->e_mail:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/restaurant/Restaurant$AdditionalContactDto;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 160
    :cond_1b
    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/restaurant/Restaurant$AdditionalContactDto;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 161
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->owner:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/restaurant/Restaurant$AdditionalContactDto;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/LRFragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const-string v0, "info"

    invoke-static {v0}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackView(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "restaurant_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    iput-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .line 46
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    sget v0, Lcom/yopeso/lieferando/R$layout;->restaurant_info_dialog:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
