.class Lcom/yopeso/lieferando/dialogs/WebAdDialog$1;
.super Landroid/webkit/WebChromeClient;
.source "WebAdDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/dialogs/WebAdDialog;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/dialogs/WebAdDialog;

.field private final synthetic val$webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/dialogs/WebAdDialog;Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/dialogs/WebAdDialog$1;->this$0:Lcom/yopeso/lieferando/dialogs/WebAdDialog;

    iput-object p2, p0, Lcom/yopeso/lieferando/dialogs/WebAdDialog$1;->val$webView:Landroid/webkit/WebView;

    .line 83
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 86
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 87
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/WebAdDialog$1;->this$0:Lcom/yopeso/lieferando/dialogs/WebAdDialog;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/dialogs/WebAdDialog;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->webLoadingIndicator:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/WebAdDialog$1;->val$webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 91
    :cond_0
    return-void
.end method
