.class Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment$2;
.super Landroid/webkit/WebViewClient;
.source "OrderSuccessFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;->displayAddView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;

.field private final synthetic val$webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;

    iput-object p2, p0, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment$2;->val$webView:Landroid/webkit/WebView;

    .line 201
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;->access$0(Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment$2;->val$webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 206
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 210
    const-string v1, "&inapp=true"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 216
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 213
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 214
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;

    invoke-virtual {v1, v0}, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
