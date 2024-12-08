.class public Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MealsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/yopeso/lieferando/model/meal/Meal;",
        ">;"
    }
.end annotation


# instance fields
.field private mCallback:Lcom/yopeso/lieferando/callback/MealSelectedCallback;

.field private mContext:Landroid/content/Context;

.field private mMeals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/meal/Meal;",
            ">;"
        }
    .end annotation
.end field

.field private mRealMeals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/meal/Meal;",
            ">;"
        }
    .end annotation
.end field

.field private mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;Lcom/yopeso/lieferando/callback/MealSelectedCallback;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I
    .param p4, "callback"    # Lcom/yopeso/lieferando/callback/MealSelectedCallback;
    .param p5, "restaurant"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/meal/Meal;",
            ">;",
            "Lcom/yopeso/lieferando/callback/MealSelectedCallback;",
            "Lcom/yopeso/lieferando/model/restaurant/Restaurant;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    .local p3, "objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/meal/Meal;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 48
    iput-object p3, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;->mMeals:Ljava/util/ArrayList;

    .line 49
    iput-object p3, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;->mRealMeals:Ljava/util/ArrayList;

    .line 50
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;->mContext:Landroid/content/Context;

    .line 51
    iput-object p4, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;->mCallback:Lcom/yopeso/lieferando/callback/MealSelectedCallback;

    .line 52
    iput-object p5, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .line 53
    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;)Lcom/yopeso/lieferando/callback/MealSelectedCallback;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;->mCallback:Lcom/yopeso/lieferando/callback/MealSelectedCallback;

    return-object v0
.end method

.method static synthetic access$1(Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;->mMeals:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$2(Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;Ljava/lang/CharSequence;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;->getFilteredResults(Ljava/lang/CharSequence;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private getAdditives(Lcom/yopeso/lieferando/model/meal/Meal;)Ljava/lang/String;
    .locals 2
    .param p1, "meal"    # Lcom/yopeso/lieferando/model/meal/Meal;

    .prologue
    .line 65
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/Meal;->getmAdditives()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const-string v0, " *"

    .line 69
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/Meal;->getmAdditives()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yopeso/lieferando/util/StringUtils;->getHTMLSuperscriptFromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getAlcoholLevel(Lcom/yopeso/lieferando/model/meal/Meal;)Ljava/lang/String;
    .locals 8
    .param p1, "meal"    # Lcom/yopeso/lieferando/model/meal/Meal;

    .prologue
    .line 56
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/Meal;->getmAlcoholVolume()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 57
    const-string v0, ""

    .line 60
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcom/yopeso/lieferando/R$string;->alcohol_level:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/meal/Meal;->getmAlcoholVolume()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "."

    const-string v6, ","

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getFilteredResults(Ljava/lang/CharSequence;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/meal/Meal;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/meal/Meal;>;"
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;->mRealMeals:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 202
    return-object v1

    .line 197
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/meal/Meal;

    .line 198
    .local v0, "m":Lcom/yopeso/lieferando/model/meal/Meal;
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/yopeso/lieferando/model/meal/Meal;->matchesQuery(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 199
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;->mMeals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 178
    new-instance v0, Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter$2;

    invoke-direct {v0, p0}, Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter$2;-><init>(Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;)V

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 24
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 75
    if-nez p2, :cond_0

    .line 76
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;->mContext:Landroid/content/Context;

    const-string v14, "layout_inflater"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 77
    .local v9, "li":Landroid/view/LayoutInflater;
    sget v13, Lcom/yopeso/lieferando/R$layout;->meal_list_item:I

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 79
    .end local v9    # "li":Landroid/view/LayoutInflater;
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;->mMeals:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/yopeso/lieferando/model/meal/Meal;

    .line 80
    .local v10, "meal":Lcom/yopeso/lieferando/model/meal/Meal;
    const-class v13, Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Meal:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/yopeso/lieferando/model/meal/Meal;->getDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;->getAlcoholLevel(Lcom/yopeso/lieferando/model/meal/Meal;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;->getAdditives(Lcom/yopeso/lieferando/model/meal/Meal;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, "alhoholLevelAndAdditives":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v13}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->displayAdditives()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 83
    sget v13, Lcom/yopeso/lieferando/R$id;->MealName:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/yopeso/lieferando/model/meal/Meal;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :goto_0
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v13

    invoke-interface {v13}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v13

    if-nez v13, :cond_1

    .line 92
    sget v13, Lcom/yopeso/lieferando/R$id;->MealName:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v14

    invoke-virtual {v14}, Lcom/yopeso/lieferando/model/SettingsContent;->getmButtonColor()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    sget v13, Lcom/yopeso/lieferando/R$id;->MealPriceRL:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout;

    sget v14, Lcom/yopeso/lieferando/R$drawable;->button_green_selector:I

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 94
    sget v13, Lcom/yopeso/lieferando/R$id;->MealPriceRL:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout;

    invoke-virtual {v13}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v14

    invoke-virtual {v14}, Lcom/yopeso/lieferando/model/SettingsContent;->getDynamicButtonFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 96
    invoke-virtual {v10}, Lcom/yopeso/lieferando/model/meal/Meal;->getPricePerUnit()Landroid/util/Pair;

    move-result-object v12

    .line 97
    .local v12, "pricePerUnit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz v12, :cond_4

    .line 98
    sget v13, Lcom/yopeso/lieferando/R$id;->PricePerUnit:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    sget v13, Lcom/yopeso/lieferando/R$id;->PricePerUnit:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    sget v17, Lcom/yopeso/lieferando/R$string;->price:I

    const/4 v14, 0x1

    new-array v0, v14, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v20

    iget-object v14, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    int-to-float v14, v14

    const/high16 v21, 0x42c80000    # 100.0f

    div-float v14, v14, v21

    float-to-double v0, v14

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v18, v19

    invoke-virtual/range {v16 .. v18}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "/"

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v14, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    .end local v12    # "pricePerUnit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_1
    :goto_1
    invoke-virtual {v10}, Lcom/yopeso/lieferando/model/meal/Meal;->getDescription()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_5

    invoke-virtual {v10}, Lcom/yopeso/lieferando/model/meal/Meal;->getDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_5

    .line 108
    sget v13, Lcom/yopeso/lieferando/R$id;->MealDescription:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 109
    sget v13, Lcom/yopeso/lieferando/R$id;->MealDescription:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    invoke-virtual {v10}, Lcom/yopeso/lieferando/model/meal/Meal;->getDescription()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/yopeso/lieferando/util/StringUtils;->getHTMLSuperscript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    :goto_2
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v13

    invoke-interface {v13}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 117
    sget v13, Lcom/yopeso/lieferando/R$id;->MealPrice:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 118
    .local v8, "eurosPriceTV":Landroid/widget/TextView;
    sget v13, Lcom/yopeso/lieferando/R$id;->MealPriceCents:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 119
    .local v6, "centsPriceTV":Landroid/widget/TextView;
    invoke-virtual {v10}, Lcom/yopeso/lieferando/model/meal/Meal;->getSizes()Ljava/util/ArrayList;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/yopeso/lieferando/model/meal/Size;

    invoke-virtual {v13}, Lcom/yopeso/lieferando/model/meal/Size;->getCost()I

    move-result v13

    div-int/lit8 v7, v13, 0x64

    .line 120
    .local v7, "euros":I
    invoke-virtual {v10}, Lcom/yopeso/lieferando/model/meal/Meal;->getSizes()Ljava/util/ArrayList;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/yopeso/lieferando/model/meal/Size;

    invoke-virtual {v13}, Lcom/yopeso/lieferando/model/meal/Size;->getCost()I

    move-result v13

    mul-int/lit8 v14, v7, 0x64

    sub-int v5, v13, v14

    .line 121
    .local v5, "cents":I
    invoke-virtual {v10}, Lcom/yopeso/lieferando/model/meal/Meal;->getSizes()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_7

    .line 122
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;->mContext:Landroid/content/Context;

    sget v14, Lcom/yopeso/lieferando/R$string;->price_ta:I

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    const/16 v13, 0xa

    if-ge v5, v13, :cond_6

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "0"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_3
    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    .end local v5    # "cents":I
    .end local v6    # "centsPriceTV":Landroid/widget/TextView;
    .end local v7    # "euros":I
    .end local v8    # "eurosPriceTV":Landroid/widget/TextView;
    :goto_4
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v13

    invoke-interface {v13}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    sget-object v14, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {v13, v14}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen(Ljava/util/Date;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 141
    sget v13, Lcom/yopeso/lieferando/R$id;->MealPriceRL:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout;

    sget v14, Lcom/yopeso/lieferando/R$drawable;->meal_price_btn_disabled_selector:I

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 144
    :cond_2
    sget v13, Lcom/yopeso/lieferando/R$id;->MealLogo:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 145
    .local v11, "mealLogo":Landroid/widget/ImageView;
    invoke-virtual {v10}, Lcom/yopeso/lieferando/model/meal/Meal;->getImageUrl()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_b

    .line 146
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getTagFactoryNoAnim()Lcom/novoda/imageloader/core/model/ImageTagFactory;

    move-result-object v13

    invoke-virtual {v10}, Lcom/yopeso/lieferando/model/meal/Meal;->getImageUrl()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v14, v15}, Lcom/yopeso/lieferando/util/ImageUtils;->getOptimizedMealLogoUrl(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v14, v15}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->build(Ljava/lang/String;Landroid/content/Context;)Lcom/novoda/imageloader/core/model/ImageTag;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 148
    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getImageLoader()Lcom/novoda/imageloader/core/loader/Loader;

    move-result-object v13

    invoke-interface {v13, v11}, Lcom/novoda/imageloader/core/loader/Loader;->load(Landroid/widget/ImageView;)V

    .line 153
    :goto_5
    new-instance v13, Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v10}, Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter$1;-><init>(Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;Lcom/yopeso/lieferando/model/meal/Meal;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    return-object p2

    .line 86
    .end local v11    # "mealLogo":Landroid/widget/ImageView;
    :cond_3
    sget v13, Lcom/yopeso/lieferando/R$id;->MealName:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/yopeso/lieferando/model/meal/Meal;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 102
    .restart local v12    # "pricePerUnit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_4
    sget v13, Lcom/yopeso/lieferando/R$id;->PricePerUnit:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 112
    .end local v12    # "pricePerUnit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_5
    sget v13, Lcom/yopeso/lieferando/R$id;->MealDescription:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 123
    .restart local v5    # "cents":I
    .restart local v6    # "centsPriceTV":Landroid/widget/TextView;
    .restart local v7    # "euros":I
    .restart local v8    # "eurosPriceTV":Landroid/widget/TextView;
    :cond_6
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_3

    .line 126
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;->mContext:Landroid/content/Context;

    sget v14, Lcom/yopeso/lieferando/R$string;->price_from_ta:I

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    const/16 v13, 0xa

    if-ge v5, v13, :cond_8

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "0"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_6
    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_8
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_6

    .line 131
    .end local v5    # "cents":I
    .end local v6    # "centsPriceTV":Landroid/widget/TextView;
    .end local v7    # "euros":I
    .end local v8    # "eurosPriceTV":Landroid/widget/TextView;
    :cond_9
    invoke-virtual {v10}, Lcom/yopeso/lieferando/model/meal/Meal;->getSizes()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_a

    .line 132
    sget v13, Lcom/yopeso/lieferando/R$id;->MealPrice:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;->mContext:Landroid/content/Context;

    sget v16, Lcom/yopeso/lieferando/R$string;->price:I

    const/4 v14, 0x1

    new-array v0, v14, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v19

    invoke-virtual {v10}, Lcom/yopeso/lieferando/model/meal/Meal;->getSizes()Ljava/util/ArrayList;

    move-result-object v14

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/yopeso/lieferando/model/meal/Size;

    invoke-virtual {v14}, Lcom/yopeso/lieferando/model/meal/Size;->getCost()I

    move-result v14

    int-to-float v14, v14

    const/high16 v20, 0x42c80000    # 100.0f

    div-float v14, v14, v20

    float-to-double v0, v14

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v17, v18

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 135
    :cond_a
    sget v13, Lcom/yopeso/lieferando/R$id;->MealPrice:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;->mContext:Landroid/content/Context;

    sget v16, Lcom/yopeso/lieferando/R$string;->price_from:I

    const/4 v14, 0x1

    new-array v0, v14, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v19

    invoke-virtual {v10}, Lcom/yopeso/lieferando/model/meal/Meal;->getSizes()Ljava/util/ArrayList;

    move-result-object v14

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/yopeso/lieferando/model/meal/Size;

    invoke-virtual {v14}, Lcom/yopeso/lieferando/model/meal/Size;->getCost()I

    move-result v14

    int-to-float v14, v14

    const/high16 v20, 0x42c80000    # 100.0f

    div-float v14, v14, v20

    float-to-double v0, v14

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v17, v18

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 150
    .restart local v11    # "mealLogo":Landroid/widget/ImageView;
    :cond_b
    const/16 v13, 0x8

    invoke-virtual {v11, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5
.end method

.method public setMeals(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/meal/Meal;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, "meals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/meal/Meal;>;"
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;->mMeals:Ljava/util/ArrayList;

    .line 173
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;->mRealMeals:Ljava/util/ArrayList;

    .line 174
    return-void
.end method
