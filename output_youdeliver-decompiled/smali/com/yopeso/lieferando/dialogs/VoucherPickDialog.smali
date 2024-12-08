.class public Lcom/yopeso/lieferando/dialogs/VoucherPickDialog;
.super Ljava/lang/Object;
.source "VoucherPickDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDialog(Landroid/content/Context;Lcom/yopeso/lieferando/callback/VoucherListCallback;)Landroid/app/Dialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/yopeso/lieferando/callback/VoucherListCallback;

    .prologue
    .line 31
    invoke-static {p0}, Lcom/yopeso/lieferando/util/VoucherStore;->getInstance(Landroid/content/Context;)Lcom/yopeso/lieferando/util/VoucherStore;

    move-result-object v2

    .line 32
    .local v2, "voucherStore":Lcom/yopeso/lieferando/util/VoucherStore;
    invoke-virtual {v2}, Lcom/yopeso/lieferando/util/VoucherStore;->getAllVouchers()Ljava/util/List;

    move-result-object v3

    .line 34
    .local v3, "vouchers":Ljava/util/List;, "Ljava/util/List<Lcom/yopeso/lieferando/model/user/BonusVoucher;>;"
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 35
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    sget v4, Lcom/yopeso/lieferando/R$string;->pick_voucher_dialog_title:I

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 36
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 37
    sget v4, Lcom/yopeso/lieferando/R$string;->noVouchersAvailable:I

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 48
    :goto_0
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 49
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 39
    :cond_0
    new-instance v0, Lcom/yopeso/lieferando/adapters/VoucherListAdapter;

    invoke-direct {v0, p0, v3}, Lcom/yopeso/lieferando/adapters/VoucherListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 40
    .local v0, "adapter":Lcom/yopeso/lieferando/adapters/VoucherListAdapter;
    const/4 v4, -0x1

    new-instance v5, Lcom/yopeso/lieferando/dialogs/VoucherPickDialog$1;

    invoke-direct {v5, p1, v3}, Lcom/yopeso/lieferando/dialogs/VoucherPickDialog$1;-><init>(Lcom/yopeso/lieferando/callback/VoucherListCallback;Ljava/util/List;)V

    invoke-virtual {v1, v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
