.class public Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;
.super Landroid/widget/LinearLayout;
.source "FiltersWidgetGroup.java"

# interfaces
.implements Lcom/yopeso/lieferando/view/RangeSeekBar$OnRangeSeekBarChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Lcom/yopeso/lieferando/view/RangeSeekBar$OnRangeSeekBarChangeListener",
        "<",
        "Ljava/lang/Float;",
        ">;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private mAlphabeticSort:Landroid/widget/CheckBox;

.field private mClear:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mDeliveryCostBar:Lcom/yopeso/lieferando/widget/FiltersWidget;

.field private mDistanceSort:Landroid/widget/CheckBox;

.field private mMinOrderBar:Lcom/yopeso/lieferando/widget/FiltersWidget;

.field private mNewCustomer:Landroid/widget/ToggleButton;

.field private mNewCustomerRebateSort:Landroid/widget/CheckBox;

.field private mOnline:Landroid/widget/TextView;

.field private mOnlyOnline:Landroid/widget/ToggleButton;

.field private mOnlyOpened:Landroid/widget/ToggleButton;

.field private mOnlyStempel:Landroid/widget/ToggleButton;

.field private mOpen:Landroid/widget/TextView;

.field private mRatingSort:Landroid/widget/CheckBox;

.field private mRebateSort:Landroid/widget/CheckBox;

.field private mReviewsSort:Landroid/widget/CheckBox;

.field private mStampCardSort:Landroid/widget/CheckBox;

.field private mStample:Landroid/widget/TextView;

.field private mVoucher:Landroid/widget/ToggleButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    iput-object p1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mContext:Landroid/content/Context;

    .line 69
    invoke-direct {p0}, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->createView()V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    iput-object p1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mContext:Landroid/content/Context;

    .line 63
    invoke-direct {p0}, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->createView()V

    .line 64
    return-void
.end method

.method private createView()V
    .locals 3

    .prologue
    .line 73
    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 74
    .local v0, "li":Landroid/view/LayoutInflater;
    sget v1, Lcom/yopeso/lieferando/R$layout;->filters_group:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 76
    sget v1, Lcom/yopeso/lieferando/R$id;->minOrderBar:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/widget/FiltersWidget;

    iput-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mMinOrderBar:Lcom/yopeso/lieferando/widget/FiltersWidget;

    .line 77
    sget v1, Lcom/yopeso/lieferando/R$id;->deliveryCostBar:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/widget/FiltersWidget;

    iput-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mDeliveryCostBar:Lcom/yopeso/lieferando/widget/FiltersWidget;

    .line 79
    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mMinOrderBar:Lcom/yopeso/lieferando/widget/FiltersWidget;

    sget v2, Lcom/yopeso/lieferando/R$id;->minOrderBar:I

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/widget/FiltersWidget;->setBarId(I)V

    .line 80
    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mDeliveryCostBar:Lcom/yopeso/lieferando/widget/FiltersWidget;

    sget v2, Lcom/yopeso/lieferando/R$id;->deliveryCostBar:I

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/widget/FiltersWidget;->setBarId(I)V

    .line 82
    sget v1, Lcom/yopeso/lieferando/R$id;->alphabetic:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mAlphabeticSort:Landroid/widget/CheckBox;

    .line 83
    sget v1, Lcom/yopeso/lieferando/R$id;->rating:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mRatingSort:Landroid/widget/CheckBox;

    .line 84
    sget v1, Lcom/yopeso/lieferando/R$id;->reviews:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mReviewsSort:Landroid/widget/CheckBox;

    .line 85
    sget v1, Lcom/yopeso/lieferando/R$id;->distance:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mDistanceSort:Landroid/widget/CheckBox;

    .line 86
    sget v1, Lcom/yopeso/lieferando/R$id;->newCustomer:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mNewCustomerRebateSort:Landroid/widget/CheckBox;

    .line 87
    sget v1, Lcom/yopeso/lieferando/R$id;->rebate:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mRebateSort:Landroid/widget/CheckBox;

    .line 89
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mRebateSort:Landroid/widget/CheckBox;

    sget v2, Lcom/yopeso/lieferando/R$string;->discount_filter_pl:I

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setText(I)V

    .line 93
    :cond_0
    sget v1, Lcom/yopeso/lieferando/R$id;->stampCard:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mStampCardSort:Landroid/widget/CheckBox;

    .line 95
    sget v1, Lcom/yopeso/lieferando/R$id;->filter_only_online_text:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mOnline:Landroid/widget/TextView;

    .line 96
    sget v1, Lcom/yopeso/lieferando/R$id;->filter_only_opened_text:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mOpen:Landroid/widget/TextView;

    .line 97
    sget v1, Lcom/yopeso/lieferando/R$id;->filter_only_stample_text:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mStample:Landroid/widget/TextView;

    .line 98
    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mOpen:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mOnline:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mStample:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    sget v1, Lcom/yopeso/lieferando/R$id;->resetFilter:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mClear:Landroid/widget/Button;

    .line 103
    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mClear:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mAlphabeticSort:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 106
    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mRatingSort:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 107
    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mReviewsSort:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 108
    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mDistanceSort:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 109
    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mNewCustomerRebateSort:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 110
    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mRebateSort:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 111
    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mStampCardSort:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 113
    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mMinOrderBar:Lcom/yopeso/lieferando/widget/FiltersWidget;

    invoke-virtual {v1, p0}, Lcom/yopeso/lieferando/widget/FiltersWidget;->setSeekListener(Lcom/yopeso/lieferando/view/RangeSeekBar$OnRangeSeekBarChangeListener;)V

    .line 114
    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mDeliveryCostBar:Lcom/yopeso/lieferando/widget/FiltersWidget;

    invoke-virtual {v1, p0}, Lcom/yopeso/lieferando/widget/FiltersWidget;->setSeekListener(Lcom/yopeso/lieferando/view/RangeSeekBar$OnRangeSeekBarChangeListener;)V

    .line 116
    sget v1, Lcom/yopeso/lieferando/R$id;->OnlyOpenedCheckBox:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mOnlyOpened:Landroid/widget/ToggleButton;

    .line 117
    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mOnlyOpened:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 118
    sget v1, Lcom/yopeso/lieferando/R$id;->OnlyOnlineCheckBox:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mOnlyOnline:Landroid/widget/ToggleButton;

    .line 119
    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mOnlyOnline:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 120
    sget v1, Lcom/yopeso/lieferando/R$id;->StampelCheckBox:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mOnlyStempel:Landroid/widget/ToggleButton;

    .line 121
    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mOnlyStempel:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 123
    sget v1, Lcom/yopeso/lieferando/R$id;->newCustomerCheckBox:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mNewCustomer:Landroid/widget/ToggleButton;

    .line 124
    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mNewCustomer:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 125
    sget v1, Lcom/yopeso/lieferando/R$id;->voucherCheckBox:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mVoucher:Landroid/widget/ToggleButton;

    .line 126
    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mVoucher:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 127
    invoke-virtual {p0}, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->showHideMyStamps()V

    .line 128
    invoke-direct {p0}, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->drawValues()V

    .line 129
    return-void
.end method

.method private drawDeliveryCostRangeText()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x42c80000    # 100.0f

    .line 167
    iget-object v0, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mDeliveryCostBar:Lcom/yopeso/lieferando/widget/FiltersWidget;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "%.2f"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getMinDeliveryCost()F

    move-result v4

    div-float/2addr v4, v5

    invoke-direct {p0, v4}, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->roundCents(F)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->currency:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 168
    const-string v2, "%.2f"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getMaxDeliveryCost()F

    move-result v4

    div-float/2addr v4, v5

    invoke-direct {p0, v4}, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->roundCents(F)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->currency:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/widget/FiltersWidget;->setRange(Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method private drawOrderCostRangeText()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x42c80000    # 100.0f

    .line 163
    iget-object v0, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mMinOrderBar:Lcom/yopeso/lieferando/widget/FiltersWidget;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "%.2f"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getMinOrderCost()F

    move-result v4

    div-float/2addr v4, v5

    invoke-direct {p0, v4}, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->roundCents(F)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->currency:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%.2f"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getMaxOrderCost()F

    move-result v4

    div-float/2addr v4, v5

    invoke-direct {p0, v4}, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->roundCents(F)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->currency:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/widget/FiltersWidget;->setRange(Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method private drawValues()V
    .locals 2

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->drawOrderCostRangeText()V

    .line 133
    invoke-direct {p0}, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->drawDeliveryCostRangeText()V

    .line 135
    iget-object v0, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mDeliveryCostBar:Lcom/yopeso/lieferando/widget/FiltersWidget;

    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getHighestDeliveryCost()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/widget/FiltersWidget;->setAbsoluteMax(F)V

    .line 136
    iget-object v0, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mDeliveryCostBar:Lcom/yopeso/lieferando/widget/FiltersWidget;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/widget/FiltersWidget;->getSeekBar()Lcom/yopeso/lieferando/view/RangeSeekBar;

    move-result-object v0

    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getMaxDeliveryCost()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/RangeSeekBar;->setSelectedMaxValue(F)V

    .line 137
    iget-object v0, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mDeliveryCostBar:Lcom/yopeso/lieferando/widget/FiltersWidget;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/widget/FiltersWidget;->getSeekBar()Lcom/yopeso/lieferando/view/RangeSeekBar;

    move-result-object v0

    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getMinDeliveryCost()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/RangeSeekBar;->setSelectedMinValue(F)V

    .line 139
    iget-object v0, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mMinOrderBar:Lcom/yopeso/lieferando/widget/FiltersWidget;

    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getHighestMinCost()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/widget/FiltersWidget;->setAbsoluteMax(F)V

    .line 140
    iget-object v0, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mMinOrderBar:Lcom/yopeso/lieferando/widget/FiltersWidget;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/widget/FiltersWidget;->getSeekBar()Lcom/yopeso/lieferando/view/RangeSeekBar;

    move-result-object v0

    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getMaxOrderCost()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/RangeSeekBar;->setSelectedMaxValue(F)V

    .line 141
    iget-object v0, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mMinOrderBar:Lcom/yopeso/lieferando/widget/FiltersWidget;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/widget/FiltersWidget;->getSeekBar()Lcom/yopeso/lieferando/view/RangeSeekBar;

    move-result-object v0

    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getMinOrderCost()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/RangeSeekBar;->setSelectedMinValue(F)V

    .line 143
    iget-object v0, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mDeliveryCostBar:Lcom/yopeso/lieferando/widget/FiltersWidget;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/widget/FiltersWidget;->getSeekBar()Lcom/yopeso/lieferando/view/RangeSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/RangeSeekBar;->invalidate()V

    .line 144
    iget-object v0, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mMinOrderBar:Lcom/yopeso/lieferando/widget/FiltersWidget;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/widget/FiltersWidget;->getSeekBar()Lcom/yopeso/lieferando/view/RangeSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/RangeSeekBar;->invalidate()V

    .line 145
    return-void
.end method

.method private roundCents(F)F
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 176
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v1, 0x1

    .line 212
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    .line 213
    .local v0, "id":I
    sput-boolean v1, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->filterFragmentSelected:Z

    .line 214
    sput-boolean v1, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->filterSelected:Z

    .line 215
    if-eqz p2, :cond_8

    .line 216
    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mNewCustomerRebateSort:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getId()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mNewCustomer:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 217
    :cond_0
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->NEWCUSTOMER:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 240
    :cond_1
    :goto_0
    sget v1, Lcom/yopeso/lieferando/R$id;->OnlyOnlineCheckBox:I

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mOnlyOnline:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_f

    .line 241
    :cond_2
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->setOnlyOnline(Z)Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    .line 256
    :cond_3
    :goto_1
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v2, Lcom/yopeso/lieferando/events/FilterEvent;

    invoke-direct {v2}, Lcom/yopeso/lieferando/events/FilterEvent;-><init>()V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 257
    return-void

    .line 218
    :cond_4
    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mRebateSort:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getId()I

    move-result v1

    if-eq v0, v1, :cond_5

    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mVoucher:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 219
    :cond_5
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->REBATE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 220
    :cond_6
    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mStampCardSort:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getId()I

    move-result v1

    if-eq v0, v1, :cond_7

    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mOnlyStempel:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 221
    :cond_7
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->STAMPCARD:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 225
    :cond_8
    const-string v1, "FilterWidget"

    const-string v2, "deselect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mNewCustomerRebateSort:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getId()I

    move-result v1

    if-eq v0, v1, :cond_9

    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mNewCustomer:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 227
    :cond_9
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->NEWCUSTOMER:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 233
    :cond_a
    :goto_2
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 234
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->NONE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 228
    :cond_b
    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mRebateSort:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getId()I

    move-result v1

    if-eq v0, v1, :cond_c

    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mVoucher:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_d

    .line 229
    :cond_c
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->REBATE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 230
    :cond_d
    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mStampCardSort:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getId()I

    move-result v1

    if-eq v0, v1, :cond_e

    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mOnlyStempel:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_a

    .line 231
    :cond_e
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->STAMPCARD:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 245
    :cond_f
    sget v1, Lcom/yopeso/lieferando/R$id;->OnlyOpenedCheckBox:I

    if-eq v0, v1, :cond_10

    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mOnlyOpened:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_11

    .line 246
    :cond_10
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->setOnlyOpened(Z)Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    goto/16 :goto_1

    .line 250
    :cond_11
    sget v1, Lcom/yopeso/lieferando/R$id;->StampelCheckBox:I

    if-ne v0, v1, :cond_3

    .line 251
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->setOnlyStample(Z)Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    goto/16 :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 261
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 262
    .local v0, "id":I
    sget v1, Lcom/yopeso/lieferando/R$id;->filter_only_online_text:I

    if-ne v0, v1, :cond_1

    .line 263
    sput-boolean v3, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->filterFragmentSelected:Z

    .line 264
    sput-boolean v3, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->filterSelected:Z

    .line 265
    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mOnlyOnline:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mOnlyOnline:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 318
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mOnlyOnline:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0

    .line 270
    :cond_1
    sget v1, Lcom/yopeso/lieferando/R$id;->filter_only_opened_text:I

    if-ne v0, v1, :cond_3

    .line 271
    sput-boolean v3, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->filterFragmentSelected:Z

    .line 272
    sput-boolean v3, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->filterSelected:Z

    .line 273
    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mOnlyOpened:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 274
    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mOnlyOpened:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0

    .line 276
    :cond_2
    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mOnlyOpened:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0

    .line 278
    :cond_3
    sget v1, Lcom/yopeso/lieferando/R$id;->filter_only_stample_text:I

    if-ne v0, v1, :cond_5

    .line 279
    sput-boolean v3, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->filterFragmentSelected:Z

    .line 280
    sput-boolean v3, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->filterSelected:Z

    .line 281
    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mOnlyStempel:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 282
    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mOnlyStempel:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0

    .line 284
    :cond_4
    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mOnlyStempel:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0

    .line 289
    :cond_5
    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mAlphabeticSort:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 290
    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mRatingSort:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 291
    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mReviewsSort:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 292
    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mOnlyOpened:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 293
    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mOnlyOnline:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 294
    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mOnlyStempel:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 295
    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mDistanceSort:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 296
    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mNewCustomerRebateSort:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 297
    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mRebateSort:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 298
    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mStampCardSort:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 299
    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mNewCustomer:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 300
    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mVoucher:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 302
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->resetFilters()V

    .line 304
    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mMinOrderBar:Lcom/yopeso/lieferando/widget/FiltersWidget;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/widget/FiltersWidget;->getSeekBar()Lcom/yopeso/lieferando/view/RangeSeekBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/yopeso/lieferando/view/RangeSeekBar;->setSelectedMinValue(F)V

    .line 305
    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mMinOrderBar:Lcom/yopeso/lieferando/widget/FiltersWidget;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/widget/FiltersWidget;->getSeekBar()Lcom/yopeso/lieferando/view/RangeSeekBar;

    move-result-object v1

    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getHighestMinCost()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/view/RangeSeekBar;->setSelectedMaxValue(F)V

    .line 306
    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mDeliveryCostBar:Lcom/yopeso/lieferando/widget/FiltersWidget;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/widget/FiltersWidget;->getSeekBar()Lcom/yopeso/lieferando/view/RangeSeekBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/yopeso/lieferando/view/RangeSeekBar;->setSelectedMinValue(F)V

    .line 307
    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mDeliveryCostBar:Lcom/yopeso/lieferando/widget/FiltersWidget;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/widget/FiltersWidget;->getSeekBar()Lcom/yopeso/lieferando/view/RangeSeekBar;

    move-result-object v1

    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getHighestDeliveryCost()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/view/RangeSeekBar;->setSelectedMaxValue(F)V

    .line 309
    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mMinOrderBar:Lcom/yopeso/lieferando/widget/FiltersWidget;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/widget/FiltersWidget;->getSeekBar()Lcom/yopeso/lieferando/view/RangeSeekBar;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getHighestMinCost()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->onRangeSeekBarValuesChanged(Lcom/yopeso/lieferando/view/RangeSeekBar;Ljava/lang/Float;Ljava/lang/Float;)V

    .line 310
    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mDeliveryCostBar:Lcom/yopeso/lieferando/widget/FiltersWidget;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/widget/FiltersWidget;->getSeekBar()Lcom/yopeso/lieferando/view/RangeSeekBar;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getHighestDeliveryCost()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->onRangeSeekBarValuesChanged(Lcom/yopeso/lieferando/view/RangeSeekBar;Ljava/lang/Float;Ljava/lang/Float;)V

    .line 312
    iget-object v1, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/yopeso/lieferando/util/DeviceUtils;->isHoneycombTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 313
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v2, Lcom/yopeso/lieferando/events/ResetKichenTypes;

    invoke-direct {v2}, Lcom/yopeso/lieferando/events/ResetKichenTypes;-><init>()V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 315
    :cond_6
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v2, Lcom/yopeso/lieferando/events/FilterEvent;

    invoke-direct {v2}, Lcom/yopeso/lieferando/events/FilterEvent;-><init>()V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public onRangeSeekBarValuesChanged(Lcom/yopeso/lieferando/view/RangeSeekBar;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 4
    .param p1, "bar"    # Lcom/yopeso/lieferando/view/RangeSeekBar;
    .param p2, "minValue"    # Ljava/lang/Float;
    .param p3, "maxValue"    # Ljava/lang/Float;

    .prologue
    const/4 v1, 0x1

    .line 149
    sput-boolean v1, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->filterFragmentSelected:Z

    .line 150
    sput-boolean v1, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->filterSelected:Z

    .line 151
    invoke-virtual {p1}, Lcom/yopeso/lieferando/view/RangeSeekBar;->getBarId()I

    move-result v0

    .line 152
    .local v0, "id":I
    sget v1, Lcom/yopeso/lieferando/R$id;->minOrderBar:I

    if-ne v0, v1, :cond_1

    .line 153
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->setMinCost(FF)Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    .line 154
    invoke-direct {p0}, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->drawOrderCostRangeText()V

    .line 159
    :cond_0
    :goto_0
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v2, Lcom/yopeso/lieferando/events/FilterEvent;

    invoke-direct {v2}, Lcom/yopeso/lieferando/events/FilterEvent;-><init>()V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 160
    return-void

    .line 155
    :cond_1
    sget v1, Lcom/yopeso/lieferando/R$id;->deliveryCostBar:I

    if-ne v0, v1, :cond_0

    .line 156
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->setDeliveryCost(FF)Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    .line 157
    invoke-direct {p0}, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->drawDeliveryCostRangeText()V

    goto :goto_0
.end method

.method public bridge synthetic onRangeSeekBarValuesChanged(Lcom/yopeso/lieferando/view/RangeSeekBar;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p2, Ljava/lang/Float;

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->onRangeSeekBarValuesChanged(Lcom/yopeso/lieferando/view/RangeSeekBar;Ljava/lang/Float;Ljava/lang/Float;)V

    return-void
.end method

.method public setMaximumValues(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/Restaurant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, "restaurants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Restaurant;>;"
    const/4 v1, 0x0

    .line 181
    .local v1, "minCost":F
    const/4 v0, 0x0

    .line 182
    .local v0, "deliveryCost":F
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 191
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->setHighestMinCost(F)V

    .line 192
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->setHighestDeliveryCost(F)V

    .line 193
    iget-object v3, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mMinOrderBar:Lcom/yopeso/lieferando/widget/FiltersWidget;

    invoke-virtual {v3, v1}, Lcom/yopeso/lieferando/widget/FiltersWidget;->setAbsoluteMax(F)V

    .line 194
    iget-object v3, p0, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->mDeliveryCostBar:Lcom/yopeso/lieferando/widget/FiltersWidget;

    invoke-virtual {v3, v0}, Lcom/yopeso/lieferando/widget/FiltersWidget;->setAbsoluteMax(F)V

    .line 195
    invoke-direct {p0}, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->drawDeliveryCostRangeText()V

    .line 196
    invoke-direct {p0}, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->drawOrderCostRangeText()V

    .line 197
    return-void

    .line 182
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .line 183
    .local v2, "restaurant":Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getMinCost()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v4, v1

    if-lez v4, :cond_2

    .line 184
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getMinCost()I

    move-result v4

    int-to-float v1, v4

    .line 186
    :cond_2
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getDeliverCost()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v4, v0

    if-lez v4, :cond_0

    .line 187
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getDeliverCost()I

    move-result v4

    int-to-float v0, v4

    goto :goto_0
.end method

.method public showHideMyStamps()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 200
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    sget v0, Lcom/yopeso/lieferando/R$id;->StampelCheckBox:I

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 202
    sget v0, Lcom/yopeso/lieferando/R$id;->filter_only_stample_text:I

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 208
    :goto_0
    return-void

    .line 205
    :cond_0
    sget v0, Lcom/yopeso/lieferando/R$id;->StampelCheckBox:I

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 206
    sget v0, Lcom/yopeso/lieferando/R$id;->filter_only_stample_text:I

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/widget/FiltersWidgetGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
