.class public Lcom/yopeso/lieferando/widget/FiltersWidget;
.super Landroid/widget/LinearLayout;
.source "FiltersWidget.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private mFilterBar:Lcom/yopeso/lieferando/view/RangeSeekBar;

.field private mFilterTitle:Landroid/widget/TextView;

.field private mMaxValue:Landroid/widget/TextView;

.field private mMinValue:Landroid/widget/TextView;

.field private mRange:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    sget-object v4, Lcom/yopeso/lieferando/R$styleable;->FiltersWidget:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 39
    .local v0, "arr":Landroid/content/res/TypedArray;
    sget v4, Lcom/yopeso/lieferando/R$styleable;->FiltersWidget_filterImage:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 40
    .local v1, "imageRes":I
    sget v4, Lcom/yopeso/lieferando/R$styleable;->FiltersWidget_filterTitle:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/widget/FiltersWidget;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$layout;->filter_bar:I

    invoke-static {v4, v5, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 44
    .local v3, "view":Landroid/view/View;
    sget v4, Lcom/yopeso/lieferando/R$id;->filterTite:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/yopeso/lieferando/widget/FiltersWidget;->mFilterTitle:Landroid/widget/TextView;

    .line 45
    sget v4, Lcom/yopeso/lieferando/R$id;->filterBar:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/yopeso/lieferando/view/RangeSeekBar;

    iput-object v4, p0, Lcom/yopeso/lieferando/widget/FiltersWidget;->mFilterBar:Lcom/yopeso/lieferando/view/RangeSeekBar;

    .line 46
    sget v4, Lcom/yopeso/lieferando/R$id;->minAbsoluteValue:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/yopeso/lieferando/widget/FiltersWidget;->mMinValue:Landroid/widget/TextView;

    .line 47
    sget v4, Lcom/yopeso/lieferando/R$id;->searchedValues:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/yopeso/lieferando/widget/FiltersWidget;->mRange:Landroid/widget/TextView;

    .line 48
    sget v4, Lcom/yopeso/lieferando/R$id;->maxAbsoluteValue:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/yopeso/lieferando/widget/FiltersWidget;->mMaxValue:Landroid/widget/TextView;

    .line 50
    iget-object v4, p0, Lcom/yopeso/lieferando/widget/FiltersWidget;->mFilterTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v1, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 51
    iget-object v4, p0, Lcom/yopeso/lieferando/widget/FiltersWidget;->mFilterTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v4, p0, Lcom/yopeso/lieferando/widget/FiltersWidget;->mMinValue:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "0.0"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yopeso/lieferando/widget/FiltersWidget;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/yopeso/lieferando/R$string;->currency:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method


# virtual methods
.method public getBarId()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/yopeso/lieferando/widget/FiltersWidget;->mFilterBar:Lcom/yopeso/lieferando/view/RangeSeekBar;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/RangeSeekBar;->getBarId()I

    move-result v0

    return v0
.end method

.method public getSeekBar()Lcom/yopeso/lieferando/view/RangeSeekBar;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/yopeso/lieferando/widget/FiltersWidget;->mFilterBar:Lcom/yopeso/lieferando/view/RangeSeekBar;

    return-object v0
.end method

.method public setAbsoluteMax(F)V
    .locals 6
    .param p1, "value"    # F

    .prologue
    .line 74
    iget-object v0, p0, Lcom/yopeso/lieferando/widget/FiltersWidget;->mFilterBar:Lcom/yopeso/lieferando/view/RangeSeekBar;

    invoke-virtual {v0, p1}, Lcom/yopeso/lieferando/view/RangeSeekBar;->setAbsoluteMaxValue(F)V

    .line 75
    iget-object v0, p0, Lcom/yopeso/lieferando/widget/FiltersWidget;->mMaxValue:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "%.2f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/high16 v5, 0x42c80000    # 100.0f

    div-float v5, p1, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yopeso/lieferando/widget/FiltersWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->currency:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    return-void
.end method

.method public setAbsoluteMaxPrice(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yopeso/lieferando/widget/FiltersWidget;->mFilterBar:Lcom/yopeso/lieferando/view/RangeSeekBar;

    invoke-virtual {v0, p1}, Lcom/yopeso/lieferando/view/RangeSeekBar;->setAbsoluteMaxValue(F)V

    .line 80
    iget-object v0, p0, Lcom/yopeso/lieferando/widget/FiltersWidget;->mMaxValue:Landroid/widget/TextView;

    const/high16 v1, 0x42c80000    # 100.0f

    div-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    return-void
.end method

.method public setBarId(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yopeso/lieferando/widget/FiltersWidget;->mFilterBar:Lcom/yopeso/lieferando/view/RangeSeekBar;

    invoke-virtual {v0, p1}, Lcom/yopeso/lieferando/view/RangeSeekBar;->setBarId(I)V

    .line 67
    return-void
.end method

.method public setMaxValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/yopeso/lieferando/widget/FiltersWidget;->mMaxValue:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    return-void
.end method

.method public setRange(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yopeso/lieferando/widget/FiltersWidget;->mRange:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    return-void
.end method

.method public setSeekListener(Lcom/yopeso/lieferando/view/RangeSeekBar$OnRangeSeekBarChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yopeso/lieferando/view/RangeSeekBar$OnRangeSeekBarChangeListener",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "listener":Lcom/yopeso/lieferando/view/RangeSeekBar$OnRangeSeekBarChangeListener;, "Lcom/yopeso/lieferando/view/RangeSeekBar$OnRangeSeekBarChangeListener<Ljava/lang/Float;>;"
    iget-object v0, p0, Lcom/yopeso/lieferando/widget/FiltersWidget;->mFilterBar:Lcom/yopeso/lieferando/view/RangeSeekBar;

    invoke-virtual {v0, p1}, Lcom/yopeso/lieferando/view/RangeSeekBar;->setOnRangeSeekBarChangeListener(Lcom/yopeso/lieferando/view/RangeSeekBar$OnRangeSeekBarChangeListener;)V

    .line 85
    return-void
.end method
