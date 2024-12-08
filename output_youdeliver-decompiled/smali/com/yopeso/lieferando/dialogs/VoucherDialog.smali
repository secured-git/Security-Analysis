.class public Lcom/yopeso/lieferando/dialogs/VoucherDialog;
.super Landroid/support/v4/app/LRDialogFragment;
.source "VoucherDialog.java"


# static fields
.field private static final VOUCHER_KEY:Ljava/lang/String; = "voucher_key"


# instance fields
.field private mVoucher:Lcom/yopeso/lieferando/model/user/BonusVoucher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v4/app/LRDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/yopeso/lieferando/model/user/BonusVoucher;)Lcom/yopeso/lieferando/dialogs/VoucherDialog;
    .locals 3
    .param p0, "voucherReceived"    # Lcom/yopeso/lieferando/model/user/BonusVoucher;

    .prologue
    .line 37
    new-instance v1, Lcom/yopeso/lieferando/dialogs/VoucherDialog;

    invoke-direct {v1}, Lcom/yopeso/lieferando/dialogs/VoucherDialog;-><init>()V

    .line 38
    .local v1, "dialog":Lcom/yopeso/lieferando/dialogs/VoucherDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 39
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "voucher_key"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 40
    invoke-virtual {v1, v0}, Lcom/yopeso/lieferando/dialogs/VoucherDialog;->setArguments(Landroid/os/Bundle;)V

    .line 41
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/support/v4/app/LRDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/VoucherDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "voucher_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/user/BonusVoucher;

    iput-object v0, p0, Lcom/yopeso/lieferando/dialogs/VoucherDialog;->mVoucher:Lcom/yopeso/lieferando/model/user/BonusVoucher;

    .line 48
    const/4 v0, 0x1

    const v1, 0x103000b

    invoke-virtual {p0, v0, v1}, Lcom/yopeso/lieferando/dialogs/VoucherDialog;->setStyle(II)V

    .line 49
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 53
    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/VoucherDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$layout;->voucher_dialog:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 55
    .local v1, "v":Landroid/view/View;
    sget v2, Lcom/yopeso/lieferando/R$id;->VoucherMsg:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/VoucherDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$string;->voucherMsgDialog:I

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/yopeso/lieferando/dialogs/VoucherDialog;->mVoucher:Lcom/yopeso/lieferando/model/user/BonusVoucher;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/user/BonusVoucher;->getText()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    sget v2, Lcom/yopeso/lieferando/R$id;->VoucherValue:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/yopeso/lieferando/dialogs/VoucherDialog;->mVoucher:Lcom/yopeso/lieferando/model/user/BonusVoucher;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/BonusVoucher;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getSimpleDateFormatterReverse()Ljava/text/SimpleDateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    iget-object v4, p0, Lcom/yopeso/lieferando/dialogs/VoucherDialog;->mVoucher:Lcom/yopeso/lieferando/model/user/BonusVoucher;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/BonusVoucher;->getExpiration()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "expiration":Ljava/lang/String;
    sget v2, Lcom/yopeso/lieferando/R$id;->VoucherExpiration:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/VoucherDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$string;->voucherExpiration:I

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v0, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    sget v2, Lcom/yopeso/lieferando/R$id;->VoucherCode:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/yopeso/lieferando/dialogs/VoucherDialog;->mVoucher:Lcom/yopeso/lieferando/model/user/BonusVoucher;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/BonusVoucher;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/VoucherDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/yopeso/lieferando/util/VoucherStore;->getInstance(Landroid/content/Context;)Lcom/yopeso/lieferando/util/VoucherStore;

    move-result-object v2

    iget-object v3, p0, Lcom/yopeso/lieferando/dialogs/VoucherDialog;->mVoucher:Lcom/yopeso/lieferando/model/user/BonusVoucher;

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/util/VoucherStore;->addVoucher(Lcom/yopeso/lieferando/model/user/BonusVoucher;)V

    .line 63
    return-object v1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/support/v4/app/LRDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 75
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 68
    invoke-super {p0}, Landroid/support/v4/app/LRDialogFragment;->onResume()V

    .line 69
    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/VoucherDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    return-void
.end method
