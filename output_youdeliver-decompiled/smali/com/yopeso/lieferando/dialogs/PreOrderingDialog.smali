.class public Lcom/yopeso/lieferando/dialogs/PreOrderingDialog;
.super Ljava/lang/Object;
.source "PreOrderingDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDialog(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "r"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/yopeso/lieferando/dialogs/PreOrderingDialog;->getDialog(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Landroid/content/Context;ZLandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static getDialog(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Landroid/content/Context;ZLandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .locals 10
    .param p0, "r"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "catering"    # Z
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 30
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 31
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isPreoderEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/yopeso/lieferando/R$string;->restaurant_closed_details:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 33
    .local v4, "msg":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getPreorderOffset()I

    move-result v5

    div-int/lit16 v2, v5, 0xe10

    .line 35
    .local v2, "hours":I
    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getPreorderOffset()I

    move-result v5

    mul-int/lit16 v6, v2, 0xe10

    sub-int/2addr v5, v6

    div-int/lit8 v3, v5, 0x3c

    .line 37
    .local v3, "minutes":I
    if-nez v3, :cond_1

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/yopeso/lieferando/R$string;->catering_preordering_no_Min:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 44
    .end local v2    # "hours":I
    .end local v3    # "minutes":I
    :cond_0
    :goto_0
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    sget v6, Lcom/yopeso/lieferando/R$string;->pre_order:I

    invoke-virtual {v5, v6, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    sget v6, Lcom/yopeso/lieferando/R$string;->no:I

    new-instance v7, Lcom/yopeso/lieferando/dialogs/PreOrderingDialog$1;

    invoke-direct {v7}, Lcom/yopeso/lieferando/dialogs/PreOrderingDialog$1;-><init>()V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 61
    :goto_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 62
    .local v1, "dialog":Landroid/app/AlertDialog;
    return-object v1

    .line 40
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    .restart local v2    # "hours":I
    .restart local v3    # "minutes":I
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/yopeso/lieferando/R$string;->catering_preordering:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 54
    .end local v2    # "hours":I
    .end local v3    # "minutes":I
    .end local v4    # "msg":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/yopeso/lieferando/R$string;->restaurant_closed:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 55
    .restart local v4    # "msg":Ljava/lang/String;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    sget v6, Lcom/yopeso/lieferando/R$string;->ok_button_text:I

    new-instance v7, Lcom/yopeso/lieferando/dialogs/PreOrderingDialog$2;

    invoke-direct {v7}, Lcom/yopeso/lieferando/dialogs/PreOrderingDialog$2;-><init>()V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method
