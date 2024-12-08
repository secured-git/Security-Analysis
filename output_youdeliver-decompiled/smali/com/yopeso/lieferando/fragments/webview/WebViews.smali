.class public Lcom/yopeso/lieferando/fragments/webview/WebViews;
.super Lcom/yopeso/lieferando/custom/LRFragment;
.source "WebViews.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "WebViews"


# instance fields
.field private data:Ljava/lang/String;

.field private title:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/yopeso/lieferando/custom/LRFragment;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method protected getTitle()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/yopeso/lieferando/fragments/webview/WebViews;->title:I

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/LRFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/webview/WebViews;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/webview/WebViews;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->webViewAnleitung:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 58
    .local v0, "webViewAnleitung":Landroid/webkit/WebView;
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/webview/WebViews;->data:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 61
    .end local v0    # "webViewAnleitung":Landroid/webkit/WebView;
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    sget v2, Lcom/yopeso/lieferando/R$layout;->anleitung_fragment:I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 31
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/webview/WebViews;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 32
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/yopeso/lieferando/fragments/webview/WebViews;->title:I

    .line 34
    iget v2, p0, Lcom/yopeso/lieferando/fragments/webview/WebViews;->title:I

    sget v3, Lcom/yopeso/lieferando/R$string;->help_text:I

    if-ne v2, v3, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/webview/WebViews;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/SettingsContent;->getDynamicFaqHTML()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/webview/WebViews;->data:Ljava/lang/String;

    .line 44
    :goto_0
    return-object v1

    .line 36
    :cond_0
    iget v2, p0, Lcom/yopeso/lieferando/fragments/webview/WebViews;->title:I

    sget v3, Lcom/yopeso/lieferando/R$string;->impressions:I

    if-ne v2, v3, :cond_1

    .line 37
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/webview/WebViews;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/SettingsContent;->getSitenotice()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/webview/WebViews;->data:Ljava/lang/String;

    goto :goto_0

    .line 38
    :cond_1
    iget v2, p0, Lcom/yopeso/lieferando/fragments/webview/WebViews;->title:I

    sget v3, Lcom/yopeso/lieferando/R$string;->instructions_text:I

    if-ne v2, v3, :cond_2

    .line 39
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/webview/WebViews;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/SettingsContent;->getDynamicManualHTML()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/webview/WebViews;->data:Ljava/lang/String;

    goto :goto_0

    .line 41
    :cond_2
    const-string v2, ""

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/webview/WebViews;->data:Ljava/lang/String;

    goto :goto_0
.end method
