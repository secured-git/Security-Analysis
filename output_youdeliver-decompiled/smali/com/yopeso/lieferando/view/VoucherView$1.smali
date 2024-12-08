.class Lcom/yopeso/lieferando/view/VoucherView$1;
.super Ljava/lang/Object;
.source "VoucherView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/view/VoucherView;->createView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/view/VoucherView;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/view/VoucherView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/view/VoucherView$1;->this$0:Lcom/yopeso/lieferando/view/VoucherView;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yopeso/lieferando/view/VoucherView$1;->this$0:Lcom/yopeso/lieferando/view/VoucherView;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/VoucherView$1;->this$0:Lcom/yopeso/lieferando/view/VoucherView;

    invoke-static {v1}, Lcom/yopeso/lieferando/view/VoucherView;->access$0(Lcom/yopeso/lieferando/view/VoucherView;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/view/VoucherView$1;->this$0:Lcom/yopeso/lieferando/view/VoucherView;

    invoke-static {v2}, Lcom/yopeso/lieferando/view/VoucherView;->access$1(Lcom/yopeso/lieferando/view/VoucherView;)Lcom/yopeso/lieferando/callback/VoucherListCallback;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yopeso/lieferando/dialogs/VoucherPickDialog;->getDialog(Landroid/content/Context;Lcom/yopeso/lieferando/callback/VoucherListCallback;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/view/VoucherView;->access$2(Lcom/yopeso/lieferando/view/VoucherView;Landroid/app/Dialog;)V

    .line 63
    iget-object v0, p0, Lcom/yopeso/lieferando/view/VoucherView$1;->this$0:Lcom/yopeso/lieferando/view/VoucherView;

    invoke-static {v0}, Lcom/yopeso/lieferando/view/VoucherView;->access$3(Lcom/yopeso/lieferando/view/VoucherView;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 64
    return-void
.end method
