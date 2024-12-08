.class public Lcom/yopeso/lieferando/dialogs/CartNotEmptyDialog;
.super Ljava/lang/Object;
.source "CartNotEmptyDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDialog(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .locals 6
    .param p0, "r"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "positive"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "negative"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 30
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 31
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v2, Lcom/yopeso/lieferando/R$string;->cartNotEmptyForRestaurant:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->discard:I

    invoke-virtual {v2, v3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 32
    sget v3, Lcom/yopeso/lieferando/R$string;->switch_back_restaurant:I

    invoke-virtual {v2, v3, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->cancel_button_text:I

    new-instance v4, Lcom/yopeso/lieferando/dialogs/CartNotEmptyDialog$1;

    invoke-direct {v4}, Lcom/yopeso/lieferando/dialogs/CartNotEmptyDialog$1;-><init>()V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 39
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 40
    .local v1, "dialog":Landroid/app/AlertDialog;
    new-instance v2, Lcom/yopeso/lieferando/view/OnShowListenerWithButtonAlign;

    invoke-direct {v2}, Lcom/yopeso/lieferando/view/OnShowListenerWithButtonAlign;-><init>()V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 41
    return-object v1
.end method
