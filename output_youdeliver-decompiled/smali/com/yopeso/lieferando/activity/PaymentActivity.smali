.class public Lcom/yopeso/lieferando/activity/PaymentActivity;
.super Lcom/yopeso/lieferando/custom/LRActivity;
.source "PaymentActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yopeso/lieferando/activity/PaymentActivity$OrderPutListener;
    }
.end annotation


# static fields
.field public static final KEY_ORDER_RESPONSE:Ljava/lang/String; = "order_response"

.field public static final RESULT_FAILED:I = 0x63

.field public static final RESULT_FAILED_PAYU:I = 0x62


# instance fields
.field private firstResponse:Z

.field private mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

.field private mWebView:Landroid/webkit/WebView;

.field private payUFail:Ljava/lang/String;

.field private payUSuccess:Ljava/lang/String;

.field public post:Lcom/yopeso/lieferando/model/OrderResponse;

.field private postData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/yopeso/lieferando/custom/LRActivity;-><init>()V

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->firstResponse:Z

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->postData:Ljava/lang/String;

    .line 59
    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/activity/PaymentActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->payUFail:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/yopeso/lieferando/activity/PaymentActivity;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 317
    invoke-direct {p0, p1, p2}, Lcom/yopeso/lieferando/activity/PaymentActivity;->isPaymentURLMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/yopeso/lieferando/activity/PaymentActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->payUSuccess:Ljava/lang/String;

    return-object v0
.end method

.method private isPaymentURLMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "url_redirect"    # Ljava/lang/String;
    .param p2, "cdn_url"    # Ljava/lang/String;

    .prologue
    .line 318
    if-eqz p1, :cond_1

    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    if-eqz p2, :cond_0

    const-string v0, "https"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 342
    :goto_0
    return v0

    .line 325
    :cond_0
    const-string v0, "http"

    const-string v1, "https"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 326
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 330
    :cond_1
    if-eqz p1, :cond_3

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 332
    if-eqz p2, :cond_2

    const-string v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 333
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 337
    :cond_2
    const-string v0, "https"

    const-string v1, "http"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 338
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 342
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performGet()V
    .locals 3

    .prologue
    .line 360
    const-class v0, Lcom/yopeso/lieferando/activity/PaymentActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GET URL:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->post:Lcom/yopeso/lieferando/model/OrderResponse;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/OrderResponse;->getRedirectUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->postData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->postData:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_0

    .line 362
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->post:Lcom/yopeso/lieferando/model/OrderResponse;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/OrderResponse;->getRedirectUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->postData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 363
    const-class v0, Lcom/yopeso/lieferando/activity/PaymentActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "URL:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->post:Lcom/yopeso/lieferando/model/OrderResponse;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/OrderResponse;->getRedirectUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->postData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :goto_0
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->mWebView:Landroid/webkit/WebView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->requestFocus(I)Z

    .line 373
    return-void

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->post:Lcom/yopeso/lieferando/model/OrderResponse;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/OrderResponse;->getRedirectUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 366
    const-class v0, Lcom/yopeso/lieferando/activity/PaymentActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "URL:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->post:Lcom/yopeso/lieferando/model/OrderResponse;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/OrderResponse;->getRedirectUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private performPost()V
    .locals 4

    .prologue
    .line 379
    const-class v0, Lcom/yopeso/lieferando/activity/PaymentActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "POST URL:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->post:Lcom/yopeso/lieferando/model/OrderResponse;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/OrderResponse;->getRedirectUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->postData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->post:Lcom/yopeso/lieferando/model/OrderResponse;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/OrderResponse;->getRedirectUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->postData:Ljava/lang/String;

    const-string v3, "BASE64"

    invoke-static {v2, v3}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    .line 381
    return-void
.end method


# virtual methods
.method public handleUrl(Ljava/lang/String;)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 228
    if-eqz p1, :cond_7

    .line 229
    const-class v5, Lcom/yopeso/lieferando/activity/PaymentActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "handleUrl: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v5

    invoke-interface {v5}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 232
    iget-object v5, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->payUFail:Ljava/lang/String;

    invoke-direct {p0, p1, v5}, Lcom/yopeso/lieferando/activity/PaymentActivity;->isPaymentURLMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 233
    const/16 v5, 0x62

    invoke-virtual {p0, v5}, Lcom/yopeso/lieferando/activity/PaymentActivity;->setResult(I)V

    .line 234
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/PaymentActivity;->finish()V

    .line 238
    :cond_0
    const-string v5, "http://order-did-cancel984.com"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 239
    invoke-virtual {p0, v8}, Lcom/yopeso/lieferando/activity/PaymentActivity;->setResult(I)V

    .line 240
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/PaymentActivity;->finish()V

    .line 243
    :cond_1
    const-string v5, "http://order-did-fail1984.com"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 244
    const/16 v5, 0x63

    invoke-virtual {p0, v5}, Lcom/yopeso/lieferando/activity/PaymentActivity;->setResult(I)V

    .line 245
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/PaymentActivity;->finish()V

    .line 249
    :cond_2
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v5

    invoke-interface {v5}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "statusCode=SUCCESS"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 251
    iget-object v5, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v6, Lcom/yopeso/lieferando/activity/PaymentActivity$3;

    invoke-direct {v6, p0}, Lcom/yopeso/lieferando/activity/PaymentActivity$3;-><init>(Lcom/yopeso/lieferando/activity/PaymentActivity;)V

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 262
    :cond_3
    const-string v5, "http://order-did-success1984.com"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v5

    invoke-interface {v5}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->payUSuccess:Ljava/lang/String;

    invoke-direct {p0, p1, v5}, Lcom/yopeso/lieferando/activity/PaymentActivity;->isPaymentURLMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 263
    :cond_4
    iget-boolean v5, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->firstResponse:Z

    if-eqz v5, :cond_6

    .line 266
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 267
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 270
    .local v3, "obj":Lorg/json/JSONObject;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/yopeso/lieferando/util/HttpUtils;->getQueryMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 271
    if-eqz v1, :cond_5

    .line 272
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 273
    .local v2, "mapObj":Lorg/json/JSONObject;
    const-string v5, "paymentResult"

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 276
    .end local v2    # "mapObj":Lorg/json/JSONObject;
    :cond_5
    const-string v5, "id"

    iget-object v6, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->post:Lcom/yopeso/lieferando/model/OrderResponse;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/OrderResponse;->getOrderId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 278
    const-string v5, "failUrl"

    const-string v6, "http://order-did-fail1984.com"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 292
    :goto_0
    iget-object v5, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->mWebView:Landroid/webkit/WebView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 293
    iget-object v5, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v6, Lcom/yopeso/lieferando/activity/PaymentActivity$4;

    invoke-direct {v6, p0}, Lcom/yopeso/lieferando/activity/PaymentActivity$4;-><init>(Lcom/yopeso/lieferando/activity/PaymentActivity;)V

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 299
    sget v5, Lcom/yopeso/lieferando/R$layout;->paypal_main:I

    invoke-virtual {p0, v5}, Lcom/yopeso/lieferando/activity/PaymentActivity;->setContentView(I)V

    .line 302
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 303
    const-class v5, Lcom/yopeso/lieferando/activity/PaymentActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v5, "OrderPutRequest+Login:"

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    instance-of v5, v3, Lorg/json/JSONObject;

    if-nez v5, :cond_8

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    new-instance v5, Lcom/yopeso/lieferando/net/requests/OrderPutRequest;

    new-instance v6, Lcom/yopeso/lieferando/activity/PaymentActivity$OrderPutListener;

    invoke-direct {v6, p0}, Lcom/yopeso/lieferando/activity/PaymentActivity$OrderPutListener;-><init>(Lcom/yopeso/lieferando/activity/PaymentActivity;)V

    invoke-direct {v5, v3, v6}, Lcom/yopeso/lieferando/net/requests/OrderPutRequest;-><init>(Lorg/json/JSONObject;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v5}, Lcom/yopeso/lieferando/net/requests/OrderPutRequest;->withAuth()Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v4

    .line 305
    .local v4, "request":Lcom/yopeso/lieferando/net/requests/base/JsonRequest;, "Lcom/yopeso/lieferando/net/requests/base/JsonRequest<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/PaymentActivity;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 312
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "obj":Lorg/json/JSONObject;
    .end local v4    # "request":Lcom/yopeso/lieferando/net/requests/base/JsonRequest;, "Lcom/yopeso/lieferando/net/requests/base/JsonRequest<Ljava/lang/String;>;"
    :cond_6
    :goto_2
    iput-boolean v8, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->firstResponse:Z

    .line 315
    :cond_7
    return-void

    .line 284
    .restart local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 286
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 287
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 288
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v0

    .line 289
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/net/MalformedURLException;
    :cond_8
    move-object v5, v3

    .line 303
    check-cast v5, Lorg/json/JSONObject;

    invoke-static {v5}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 307
    :cond_9
    const-class v5, Lcom/yopeso/lieferando/activity/PaymentActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v5, "OrderPutRequest:"

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    instance-of v5, v3, Lorg/json/JSONObject;

    if-nez v5, :cond_a

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_3
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    new-instance v4, Lcom/yopeso/lieferando/net/requests/OrderPutRequest;

    new-instance v5, Lcom/yopeso/lieferando/activity/PaymentActivity$OrderPutListener;

    invoke-direct {v5, p0}, Lcom/yopeso/lieferando/activity/PaymentActivity$OrderPutListener;-><init>(Lcom/yopeso/lieferando/activity/PaymentActivity;)V

    invoke-direct {v4, v3, v5}, Lcom/yopeso/lieferando/net/requests/OrderPutRequest;-><init>(Lorg/json/JSONObject;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    .line 309
    .restart local v4    # "request":Lcom/yopeso/lieferando/net/requests/base/JsonRequest;, "Lcom/yopeso/lieferando/net/requests/base/JsonRequest<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/PaymentActivity;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_2

    .end local v4    # "request":Lcom/yopeso/lieferando/net/requests/base/JsonRequest;, "Lcom/yopeso/lieferando/net/requests/base/JsonRequest<Ljava/lang/String;>;"
    :cond_a
    move-object v5, v3

    .line 307
    check-cast v5, Lorg/json/JSONObject;

    invoke-static {v5}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getPaymentType()Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    move-result-object v0

    sget-object v1, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->payu:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getPaymentType()Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    move-result-object v0

    sget-object v1, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->credit:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    if-eq v0, v1, :cond_1

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 447
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 452
    :cond_1
    :goto_0
    return-void

    .line 449
    :cond_2
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 78
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/LRActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const-class v2, Lcom/yopeso/lieferando/activity/PaymentActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onCreate:start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/PaymentActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 81
    invoke-static {p0}, Lcom/yopeso/lieferando/util/DeviceUtils;->isHoneycombTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 82
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/yopeso/lieferando/activity/PaymentActivity;->setRequestedOrientation(I)V

    .line 87
    :goto_0
    sget v2, Lcom/yopeso/lieferando/R$layout;->payment_webview:I

    invoke-virtual {p0, v2}, Lcom/yopeso/lieferando/activity/PaymentActivity;->setContentView(I)V

    .line 88
    sget v2, Lcom/yopeso/lieferando/R$id;->WebPay:I

    invoke-virtual {p0, v2}, Lcom/yopeso/lieferando/activity/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->mWebView:Landroid/webkit/WebView;

    .line 89
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/PaymentActivity;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v2

    iput-object v2, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    .line 90
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/PaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "order_response"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/model/OrderResponse;

    iput-object v2, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->post:Lcom/yopeso/lieferando/model/OrderResponse;

    .line 92
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/PaymentActivity;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v2

    iget-object v3, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->post:Lcom/yopeso/lieferando/model/OrderResponse;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/OrderResponse;->getOrderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setOrderId(Ljava/lang/String;)V

    .line 95
    iget-object v2, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->post:Lcom/yopeso/lieferando/model/OrderResponse;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/OrderResponse;->getRedirectMethod()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->post:Lcom/yopeso/lieferando/model/OrderResponse;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/OrderResponse;->getRedirectUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/PaymentActivity;->finish()V

    .line 102
    :cond_1
    iget-object v2, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 103
    iget-object v2, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 105
    iget-object v2, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 110
    iget-object v2, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 111
    iget-object v2, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 113
    iget-object v2, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->mWebView:Landroid/webkit/WebView;

    const/high16 v3, 0x2000000

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 118
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/SettingsContent;->getmCdnURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getServiceUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?payuError"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->payUFail:Ljava/lang/String;

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/SettingsContent;->getmCdnURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/success"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->payUSuccess:Ljava/lang/String;

    .line 124
    :cond_2
    iget-object v2, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v3, Lcom/yopeso/lieferando/activity/PaymentActivity$1;

    invoke-direct {v3, p0}, Lcom/yopeso/lieferando/activity/PaymentActivity$1;-><init>(Lcom/yopeso/lieferando/activity/PaymentActivity;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 136
    iget-object v2, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v3, Lcom/yopeso/lieferando/activity/PaymentActivity$2;

    invoke-direct {v3, p0}, Lcom/yopeso/lieferando/activity/PaymentActivity$2;-><init>(Lcom/yopeso/lieferando/activity/PaymentActivity;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 203
    :try_start_0
    iget-object v2, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->post:Lcom/yopeso/lieferando/model/OrderResponse;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/OrderResponse;->getParams()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_4

    .line 219
    :goto_2
    iget-object v2, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->post:Lcom/yopeso/lieferando/model/OrderResponse;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/OrderResponse;->getRedirectMethod()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GET"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6

    .line 220
    invoke-direct {p0}, Lcom/yopeso/lieferando/activity/PaymentActivity;->performGet()V

    .line 224
    :goto_3
    const-class v2, Lcom/yopeso/lieferando/activity/PaymentActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onCreate:end"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return-void

    .line 84
    :cond_3
    invoke-virtual {p0, v4}, Lcom/yopeso/lieferando/activity/PaymentActivity;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 203
    :cond_4
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 204
    .local v1, "i":Ljava/lang/String;
    iget-object v2, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->postData:Ljava/lang/String;

    const-string v4, ""

    if-ne v2, v4, :cond_5

    .line 205
    iget-object v2, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->postData:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->post:Lcom/yopeso/lieferando/model/OrderResponse;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/OrderResponse;->getParams()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v2, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->postData:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 210
    .end local v1    # "i":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    .line 207
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v1    # "i":Ljava/lang/String;
    :cond_5
    :try_start_2
    iget-object v2, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->postData:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->post:Lcom/yopeso/lieferando/model/OrderResponse;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/OrderResponse;->getParams()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v2, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->postData:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 222
    .end local v1    # "i":Ljava/lang/String;
    :cond_6
    invoke-direct {p0}, Lcom/yopeso/lieferando/activity/PaymentActivity;->performPost()V

    goto/16 :goto_3
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 456
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRActivity;->onDestroy()V

    .line 457
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->mWebView:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 458
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 459
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 460
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/PaymentActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 461
    const-class v0, Lcom/yopeso/lieferando/activity/PaymentActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 347
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 353
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/LRActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 349
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/activity/PaymentActivity;->setResult(I)V

    .line 350
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/PaymentActivity;->finish()V

    .line 351
    const/4 v0, 0x1

    goto :goto_0

    .line 347
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
