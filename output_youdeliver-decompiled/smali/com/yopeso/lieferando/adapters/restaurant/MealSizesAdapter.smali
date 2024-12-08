.class public Lcom/yopeso/lieferando/adapters/restaurant/MealSizesAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MealSizesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/yopeso/lieferando/model/meal/Size;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSizes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/meal/Size;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/meal/Size;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p3, "objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/meal/Size;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 34
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealSizesAdapter;->mContext:Landroid/content/Context;

    .line 35
    iput-object p3, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealSizesAdapter;->mSizes:Ljava/util/ArrayList;

    .line 36
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 40
    if-nez p2, :cond_0

    .line 41
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealSizesAdapter;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 42
    .local v0, "li":Landroid/view/LayoutInflater;
    sget v2, Lcom/yopeso/lieferando/R$layout;->size_list_item:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 44
    .end local v0    # "li":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealSizesAdapter;->mSizes:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/model/meal/Size;

    .line 45
    .local v1, "size":Lcom/yopeso/lieferando/model/meal/Size;
    sget v2, Lcom/yopeso/lieferando/R$id;->SizeDetails:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/meal/Size;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v2

    if-nez v2, :cond_1

    .line 50
    sget v2, Lcom/yopeso/lieferando/R$id;->SizeDetails:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/SettingsContent;->getmButtonColor()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    sget v2, Lcom/yopeso/lieferando/R$id;->MealPriceRL:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    sget v3, Lcom/yopeso/lieferando/R$drawable;->button_green_selector:I

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 52
    sget v2, Lcom/yopeso/lieferando/R$id;->MealPriceRL:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/SettingsContent;->getDynamicButtonFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 54
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/meal/Size;->getmUnit()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/meal/Size;->getmPricePerUnit()I

    move-result v2

    if-eqz v2, :cond_1

    .line 55
    sget v2, Lcom/yopeso/lieferando/R$id;->PricePerUnit:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealSizesAdapter;->mContext:Landroid/content/Context;

    sget v5, Lcom/yopeso/lieferando/R$string;->price:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v8

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/meal/Size;->getmPricePerUnit()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x42c80000    # 100.0f

    div-float/2addr v9, v10

    float-to-double v10, v9

    invoke-virtual {v8, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/meal/Size;->getmUnit()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :cond_1
    sget v2, Lcom/yopeso/lieferando/R$id;->SizeCost:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealSizesAdapter;->mContext:Landroid/content/Context;

    sget v4, Lcom/yopeso/lieferando/R$string;->price:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v7

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/meal/Size;->getCost()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v8, v9

    float-to-double v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    return-object p2
.end method
