.class public Lcom/yopeso/lieferando/adapters/VoucherListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "VoucherListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/yopeso/lieferando/model/user/BonusVoucher;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mVouchers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yopeso/lieferando/model/user/BonusVoucher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/yopeso/lieferando/model/user/BonusVoucher;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p2, "vouchers":Ljava/util/List;, "Ljava/util/List<Lcom/yopeso/lieferando/model/user/BonusVoucher;>;"
    sget v0, Lcom/yopeso/lieferando/R$layout;->voucher_item:I

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/adapters/VoucherListAdapter;->mVouchers:Ljava/util/List;

    .line 36
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/VoucherListAdapter;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/yopeso/lieferando/adapters/VoucherListAdapter;->mVouchers:Ljava/util/List;

    .line 38
    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/adapters/VoucherListAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/VoucherListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/yopeso/lieferando/adapters/VoucherListAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/VoucherListAdapter;->mVouchers:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 42
    if-nez p2, :cond_0

    .line 43
    iget-object v4, p0, Lcom/yopeso/lieferando/adapters/VoucherListAdapter;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 44
    .local v2, "li":Landroid/view/LayoutInflater;
    sget v4, Lcom/yopeso/lieferando/R$layout;->voucher_item:I

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 47
    .end local v2    # "li":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v4, p0, Lcom/yopeso/lieferando/adapters/VoucherListAdapter;->mVouchers:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yopeso/lieferando/model/user/BonusVoucher;

    .line 48
    .local v3, "voucher":Lcom/yopeso/lieferando/model/user/BonusVoucher;
    sget v4, Lcom/yopeso/lieferando/R$id;->VoucherValue:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/BonusVoucher;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    sget v4, Lcom/yopeso/lieferando/R$id;->VoucherCode:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/BonusVoucher;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getSimpleDateFormatterReverse()Ljava/text/SimpleDateFormat;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/BonusVoucher;->getExpiration()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "date":Ljava/lang/String;
    sget v4, Lcom/yopeso/lieferando/R$id;->VoucherExpiration:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/adapters/VoucherListAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/yopeso/lieferando/R$string;->voucherExpiration:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    sget v4, Lcom/yopeso/lieferando/R$id;->clearButton:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 55
    .local v0, "clear":Landroid/widget/ImageView;
    new-instance v4, Lcom/yopeso/lieferando/adapters/VoucherListAdapter$1;

    invoke-direct {v4, p0, v3}, Lcom/yopeso/lieferando/adapters/VoucherListAdapter$1;-><init>(Lcom/yopeso/lieferando/adapters/VoucherListAdapter;Lcom/yopeso/lieferando/model/user/BonusVoucher;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    return-object p2
.end method
