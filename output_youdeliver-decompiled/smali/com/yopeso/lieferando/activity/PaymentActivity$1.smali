.class Lcom/yopeso/lieferando/activity/PaymentActivity$1;
.super Landroid/webkit/WebChromeClient;
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
    iput-object p1, p0, Lcom/yopeso/lieferando/activity/PaymentActivity$1;->this$0:Lcom/yopeso/lieferando/activity/PaymentActivity;

    .line 124
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "progress"    # I

    .prologue
    .line 126
    const-class v0, Lcom/yopeso/lieferando/activity/PaymentActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Progress:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/PaymentActivity$1;->this$0:Lcom/yopeso/lieferando/activity/PaymentActivity;

    sget v1, Lcom/yopeso/lieferando/R$id;->webLoadingIndicator:I

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/activity/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/PaymentActivity$1;->this$0:Lcom/yopeso/lieferando/activity/PaymentActivity;

    sget v1, Lcom/yopeso/lieferando/R$id;->webLoadingIndicator:I

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/activity/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/PaymentActivity$1;->this$0:Lcom/yopeso/lieferando/activity/PaymentActivity;

    mul-int/lit16 v1, p2, 0x3e8

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/activity/PaymentActivity;->setProgress(I)V

    .line 133
    return-void
.end method
