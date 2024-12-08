.class Lcom/yopeso/lieferando/activity/PaymentActivity$2$1;
.super Ljava/lang/Object;
.source "PaymentActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/activity/PaymentActivity$2;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yopeso/lieferando/activity/PaymentActivity$2;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/activity/PaymentActivity$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/activity/PaymentActivity$2$1;->this$1:Lcom/yopeso/lieferando/activity/PaymentActivity$2;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 148
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/PaymentActivity$2$1;->this$1:Lcom/yopeso/lieferando/activity/PaymentActivity$2;

    invoke-static {v0}, Lcom/yopeso/lieferando/activity/PaymentActivity$2;->access$0(Lcom/yopeso/lieferando/activity/PaymentActivity$2;)Lcom/yopeso/lieferando/activity/PaymentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/activity/PaymentActivity;->finish()V

    .line 149
    return-void
.end method
