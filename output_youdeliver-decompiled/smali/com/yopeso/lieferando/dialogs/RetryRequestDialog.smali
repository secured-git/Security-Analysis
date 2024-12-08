.class public Lcom/yopeso/lieferando/dialogs/RetryRequestDialog;
.super Ljava/lang/Object;
.source "RetryRequestDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDialog(Landroid/os/AsyncTask;Landroid/content/Context;)Landroid/app/AlertDialog;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "+",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Landroid/app/AlertDialog;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;+Ljava/lang/Object;+Ljava/lang/Object;>;"
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 37
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v2, Lcom/yopeso/lieferando/R$string;->no_resp_try_again:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->yes:I

    new-instance v4, Lcom/yopeso/lieferando/dialogs/RetryRequestDialog$1;

    invoke-direct {v4, p0}, Lcom/yopeso/lieferando/dialogs/RetryRequestDialog$1;-><init>(Landroid/os/AsyncTask;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 44
    sget v3, Lcom/yopeso/lieferando/R$string;->cancel_button_text:I

    new-instance v4, Lcom/yopeso/lieferando/dialogs/RetryRequestDialog$2;

    invoke-direct {v4}, Lcom/yopeso/lieferando/dialogs/RetryRequestDialog$2;-><init>()V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 49
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 50
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 51
    .local v1, "dialog":Landroid/app/AlertDialog;
    return-object v1
.end method

.method public static getDialog(Landroid/os/AsyncTask;Landroid/support/v4/app/Fragment;)Landroid/app/AlertDialog;
    .locals 5
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "+",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/support/v4/app/Fragment;",
            ")",
            "Landroid/app/AlertDialog;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;+Ljava/lang/Object;+Ljava/lang/Object;>;"
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 56
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v2, Lcom/yopeso/lieferando/R$string;->no_resp_try_again:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->yes:I

    new-instance v4, Lcom/yopeso/lieferando/dialogs/RetryRequestDialog$3;

    invoke-direct {v4, p1, p0}, Lcom/yopeso/lieferando/dialogs/RetryRequestDialog$3;-><init>(Landroid/support/v4/app/Fragment;Landroid/os/AsyncTask;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 63
    sget v3, Lcom/yopeso/lieferando/R$string;->cancel_button_text:I

    new-instance v4, Lcom/yopeso/lieferando/dialogs/RetryRequestDialog$4;

    invoke-direct {v4}, Lcom/yopeso/lieferando/dialogs/RetryRequestDialog$4;-><init>()V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 68
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 69
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 70
    .local v1, "dialog":Landroid/app/AlertDialog;
    return-object v1
.end method
