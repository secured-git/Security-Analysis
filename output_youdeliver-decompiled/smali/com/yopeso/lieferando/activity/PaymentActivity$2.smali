.class Lcom/yopeso/lieferando/activity/PaymentActivity$2;
.super Landroid/webkit/WebViewClient;
.source "PaymentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/activity/PaymentActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/activity/PaymentActivity;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/activity/PaymentActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/activity/PaymentActivity$2;->this$0:Lcom/yopeso/lieferando/activity/PaymentActivity;

    .line 136
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/activity/PaymentActivity$2;)Lcom/yopeso/lieferando/activity/PaymentActivity;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/PaymentActivity$2;->this$0:Lcom/yopeso/lieferando/activity/PaymentActivity;

    return-object v0
.end method


# virtual methods
.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 161
    const-class v0, Lcom/yopeso/lieferando/activity/PaymentActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPageStarted: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/PaymentActivity$2;->this$0:Lcom/yopeso/lieferando/activity/PaymentActivity;

    invoke-virtual {v0, p2}, Lcom/yopeso/lieferando/activity/PaymentActivity;->handleUrl(Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 140
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 141
    const-class v2, Lcom/yopeso/lieferando/activity/PaymentActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onReceivedSslError:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 144
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/yopeso/lieferando/activity/PaymentActivity$2;->this$0:Lcom/yopeso/lieferando/activity/PaymentActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 145
    .local v1, "sslDialog":Landroid/app/AlertDialog$Builder;
    sget v2, Lcom/yopeso/lieferando/R$string;->ssl_errror:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 146
    sget v2, Lcom/yopeso/lieferando/R$string;->ssl_error_message:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->yes:I

    new-instance v4, Lcom/yopeso/lieferando/activity/PaymentActivity$2$1;

    invoke-direct {v4, p0}, Lcom/yopeso/lieferando/activity/PaymentActivity$2$1;-><init>(Lcom/yopeso/lieferando/activity/PaymentActivity$2;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 152
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 153
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 154
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 171
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    const-class v0, Lcom/yopeso/lieferando/activity/PaymentActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "shouldOverrideUrlLoading: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/PaymentActivity$2;->this$0:Lcom/yopeso/lieferando/activity/PaymentActivity;

    iget-object v1, p0, Lcom/yopeso/lieferando/activity/PaymentActivity$2;->this$0:Lcom/yopeso/lieferando/activity/PaymentActivity;

    invoke-static {v1}, Lcom/yopeso/lieferando/activity/PaymentActivity;->access$0(Lcom/yopeso/lieferando/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/yopeso/lieferando/activity/PaymentActivity;->access$1(Lcom/yopeso/lieferando/activity/PaymentActivity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yopeso/lieferando/activity/PaymentActivity$2;->this$0:Lcom/yopeso/lieferando/activity/PaymentActivity;

    iget-object v1, p0, Lcom/yopeso/lieferando/activity/PaymentActivity$2;->this$0:Lcom/yopeso/lieferando/activity/PaymentActivity;

    invoke-static {v1}, Lcom/yopeso/lieferando/activity/PaymentActivity;->access$2(Lcom/yopeso/lieferando/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/yopeso/lieferando/activity/PaymentActivity;->access$1(Lcom/yopeso/lieferando/activity/PaymentActivity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/PaymentActivity$2;->this$0:Lcom/yopeso/lieferando/activity/PaymentActivity;

    invoke-virtual {v0, p2}, Lcom/yopeso/lieferando/activity/PaymentActivity;->handleUrl(Ljava/lang/String;)V

    .line 179
    const/4 v0, 0x1

    .line 182
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
