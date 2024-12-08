.class Lcom/yopeso/lieferando/dialogs/VoucherPickDialog$1;
.super Ljava/lang/Object;
.source "VoucherPickDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/dialogs/VoucherPickDialog;->getDialog(Landroid/content/Context;Lcom/yopeso/lieferando/callback/VoucherListCallback;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$callback:Lcom/yopeso/lieferando/callback/VoucherListCallback;

.field private final synthetic val$vouchers:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/callback/VoucherListCallback;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/dialogs/VoucherPickDialog$1;->val$callback:Lcom/yopeso/lieferando/callback/VoucherListCallback;

    iput-object p2, p0, Lcom/yopeso/lieferando/dialogs/VoucherPickDialog$1;->val$vouchers:Ljava/util/List;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 43
    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/VoucherPickDialog$1;->val$callback:Lcom/yopeso/lieferando/callback/VoucherListCallback;

    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/VoucherPickDialog$1;->val$vouchers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/user/BonusVoucher;

    invoke-interface {v1, v0}, Lcom/yopeso/lieferando/callback/VoucherListCallback;->onVoucherSelected(Lcom/yopeso/lieferando/model/user/BonusVoucher;)V

    .line 44
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 45
    return-void
.end method
