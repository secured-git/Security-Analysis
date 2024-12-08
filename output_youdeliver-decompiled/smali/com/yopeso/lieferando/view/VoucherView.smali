.class public Lcom/yopeso/lieferando/view/VoucherView;
.super Landroid/widget/LinearLayout;
.source "VoucherView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private mCallback:Lcom/yopeso/lieferando/callback/VoucherListCallback;

.field private mCheckButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mDeleteButton:Landroid/view/View;

.field private mDialog:Landroid/app/Dialog;

.field private mInfo:Landroid/widget/TextView;

.field private mPickVoucherBtn:Landroid/view/View;

.field private mVoucherEditText:Lcom/yopeso/lieferando/view/CustomEditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    iput-object p1, p0, Lcom/yopeso/lieferando/view/VoucherView;->mContext:Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Lcom/yopeso/lieferando/view/VoucherView;->createView()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    iput-object p1, p0, Lcom/yopeso/lieferando/view/VoucherView;->mContext:Landroid/content/Context;

    .line 34
    invoke-direct {p0}, Lcom/yopeso/lieferando/view/VoucherView;->createView()V

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/view/VoucherView;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/yopeso/lieferando/view/VoucherView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/yopeso/lieferando/view/VoucherView;)Lcom/yopeso/lieferando/callback/VoucherListCallback;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/yopeso/lieferando/view/VoucherView;->mCallback:Lcom/yopeso/lieferando/callback/VoucherListCallback;

    return-object v0
.end method

.method static synthetic access$2(Lcom/yopeso/lieferando/view/VoucherView;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/yopeso/lieferando/view/VoucherView;->mDialog:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic access$3(Lcom/yopeso/lieferando/view/VoucherView;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/yopeso/lieferando/view/VoucherView;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method private createView()V
    .locals 3

    .prologue
    .line 48
    iget-object v1, p0, Lcom/yopeso/lieferando/view/VoucherView;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 49
    .local v0, "li":Landroid/view/LayoutInflater;
    sget v1, Lcom/yopeso/lieferando/R$layout;->voucher_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 50
    sget v1, Lcom/yopeso/lieferando/R$id;->VoucherCodeEditText:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/view/VoucherView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/view/CustomEditText;

    iput-object v1, p0, Lcom/yopeso/lieferando/view/VoucherView;->mVoucherEditText:Lcom/yopeso/lieferando/view/CustomEditText;

    .line 51
    sget v1, Lcom/yopeso/lieferando/R$id;->CheckVoucherButton:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/view/VoucherView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/yopeso/lieferando/view/VoucherView;->mCheckButton:Landroid/widget/Button;

    .line 52
    sget v1, Lcom/yopeso/lieferando/R$id;->VoucherInfoTextView:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/view/VoucherView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/yopeso/lieferando/view/VoucherView;->mInfo:Landroid/widget/TextView;

    .line 53
    sget v1, Lcom/yopeso/lieferando/R$id;->clearButton:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/view/VoucherView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/yopeso/lieferando/view/VoucherView;->mDeleteButton:Landroid/view/View;

    .line 55
    sget v1, Lcom/yopeso/lieferando/R$id;->VoucherListBtn:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/view/VoucherView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/yopeso/lieferando/view/VoucherView;->mPickVoucherBtn:Landroid/view/View;

    .line 57
    iget-object v1, p0, Lcom/yopeso/lieferando/view/VoucherView;->mPickVoucherBtn:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 59
    iget-object v1, p0, Lcom/yopeso/lieferando/view/VoucherView;->mPickVoucherBtn:Landroid/view/View;

    new-instance v2, Lcom/yopeso/lieferando/view/VoucherView$1;

    invoke-direct {v2, p0}, Lcom/yopeso/lieferando/view/VoucherView$1;-><init>(Lcom/yopeso/lieferando/view/VoucherView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method


# virtual methods
.method public closeDialog()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/yopeso/lieferando/view/VoucherView;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yopeso/lieferando/view/VoucherView;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/yopeso/lieferando/view/VoucherView;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 186
    :cond_0
    return-void
.end method

.method public disableVoucherText(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 131
    const-string v0, ""

    const-string v1, "setFocusable(false)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/yopeso/lieferando/view/VoucherView;->mVoucherEditText:Lcom/yopeso/lieferando/view/CustomEditText;

    invoke-virtual {v0, v2}, Lcom/yopeso/lieferando/view/CustomEditText;->setEnabled(Z)V

    .line 133
    iget-object v0, p0, Lcom/yopeso/lieferando/view/VoucherView;->mVoucherEditText:Lcom/yopeso/lieferando/view/CustomEditText;

    invoke-virtual {v0, v2}, Lcom/yopeso/lieferando/view/CustomEditText;->setFocusable(Z)V

    .line 134
    iget-object v0, p0, Lcom/yopeso/lieferando/view/VoucherView;->mVoucherEditText:Lcom/yopeso/lieferando/view/CustomEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomEditText;->setText(Ljava/lang/CharSequence;)V

    .line 135
    if-nez p1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/yopeso/lieferando/view/VoucherView;->mInfo:Landroid/widget/TextView;

    sget v1, Lcom/yopeso/lieferando/R$string;->voucher_text_default:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 140
    :goto_0
    iget-object v0, p0, Lcom/yopeso/lieferando/view/VoucherView;->mCheckButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/yopeso/lieferando/view/VoucherView;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/yopeso/lieferando/view/VoucherView;->mInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 143
    iget-object v0, p0, Lcom/yopeso/lieferando/view/VoucherView;->mPickVoucherBtn:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 144
    sget v0, Lcom/yopeso/lieferando/R$id;->VoucherTextLayout:I

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/view/VoucherView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$drawable;->voucher_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 151
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/view/VoucherView;->mInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public displayEmptyState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 101
    sget v0, Lcom/yopeso/lieferando/R$id;->VoucherTextLayout:I

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/view/VoucherView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$drawable;->voucher_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 109
    sget v0, Lcom/yopeso/lieferando/R$id;->clearButton:I

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/view/VoucherView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/yopeso/lieferando/view/VoucherView;->mCheckButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/yopeso/lieferando/view/VoucherView;->mVoucherEditText:Lcom/yopeso/lieferando/view/CustomEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomEditText;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/yopeso/lieferando/view/VoucherView;->mInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 113
    iget-object v0, p0, Lcom/yopeso/lieferando/view/VoucherView;->mInfo:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    return-void
.end method

.method public enableVoucherText()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 159
    const-string v0, ""

    const-string v1, "setFocusable(true)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/yopeso/lieferando/view/VoucherView;->mVoucherEditText:Lcom/yopeso/lieferando/view/CustomEditText;

    invoke-virtual {v0, v2}, Lcom/yopeso/lieferando/view/CustomEditText;->setEnabled(Z)V

    .line 161
    iget-object v0, p0, Lcom/yopeso/lieferando/view/VoucherView;->mVoucherEditText:Lcom/yopeso/lieferando/view/CustomEditText;

    invoke-virtual {v0, v2}, Lcom/yopeso/lieferando/view/CustomEditText;->setFocusable(Z)V

    .line 162
    iget-object v0, p0, Lcom/yopeso/lieferando/view/VoucherView;->mVoucherEditText:Lcom/yopeso/lieferando/view/CustomEditText;

    invoke-virtual {v0, v2}, Lcom/yopeso/lieferando/view/CustomEditText;->setFocusableInTouchMode(Z)V

    .line 163
    iget-object v0, p0, Lcom/yopeso/lieferando/view/VoucherView;->mInfo:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v0, p0, Lcom/yopeso/lieferando/view/VoucherView;->mCheckButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/yopeso/lieferando/view/VoucherView;->mPickVoucherBtn:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 166
    return-void
.end method

.method public getVoucherText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/yopeso/lieferando/view/VoucherView;->mVoucherEditText:Lcom/yopeso/lieferando/view/CustomEditText;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resetVoucher()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 169
    iget-object v0, p0, Lcom/yopeso/lieferando/view/VoucherView;->mCheckButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/yopeso/lieferando/view/VoucherView;->mInfo:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p0, Lcom/yopeso/lieferando/view/VoucherView;->mDeleteButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 172
    sget v0, Lcom/yopeso/lieferando/R$id;->VoucherTextLayout:I

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/view/VoucherView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$drawable;->voucher_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 179
    iget-object v0, p0, Lcom/yopeso/lieferando/view/VoucherView;->mInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 180
    return-void
.end method

.method public setListener(Lcom/yopeso/lieferando/callback/VoucherListCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/yopeso/lieferando/callback/VoucherListCallback;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/yopeso/lieferando/view/VoucherView;->mCallback:Lcom/yopeso/lieferando/callback/VoucherListCallback;

    .line 45
    return-void
.end method

.method public setTextForResult(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "price"    # Ljava/lang/String;
    .param p2, "valid"    # Z

    .prologue
    const/4 v3, 0x0

    .line 76
    if-eqz p2, :cond_0

    .line 77
    iget-object v0, p0, Lcom/yopeso/lieferando/view/VoucherView;->mInfo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/VoucherView;->mContext:Landroid/content/Context;

    sget v2, Lcom/yopeso/lieferando/R$string;->voucher_valid_text:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/yopeso/lieferando/view/VoucherView;->mInfo:Landroid/widget/TextView;

    sget v1, Lcom/yopeso/lieferando/R$drawable;->v:I

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 79
    iget-object v0, p0, Lcom/yopeso/lieferando/view/VoucherView;->mInfo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/VoucherView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    sget v0, Lcom/yopeso/lieferando/R$id;->VoucherTextLayout:I

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/view/VoucherView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$drawable;->voucher_valid_bkg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 92
    :goto_0
    iget-object v0, p0, Lcom/yopeso/lieferando/view/VoucherView;->mCheckButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 93
    sget v0, Lcom/yopeso/lieferando/R$id;->clearButton:I

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/view/VoucherView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 94
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/view/VoucherView;->mInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 83
    invoke-static {p1}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/yopeso/lieferando/view/VoucherView;->mInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :goto_1
    iget-object v0, p0, Lcom/yopeso/lieferando/view/VoucherView;->mInfo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/VoucherView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$color;->red:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 90
    sget v0, Lcom/yopeso/lieferando/R$id;->VoucherTextLayout:I

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/view/VoucherView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$drawable;->voucher_error_bkg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/yopeso/lieferando/view/VoucherView;->mInfo:Landroid/widget/TextView;

    sget v1, Lcom/yopeso/lieferando/R$string;->voucher_invalid_text:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method public setVoucherText(Ljava/lang/String;)V
    .locals 1
    .param p1, "vocher"    # Ljava/lang/String;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/yopeso/lieferando/view/VoucherView;->mVoucherEditText:Lcom/yopeso/lieferando/view/CustomEditText;

    invoke-virtual {v0, p1}, Lcom/yopeso/lieferando/view/CustomEditText;->setText(Ljava/lang/CharSequence;)V

    .line 118
    return-void
.end method
