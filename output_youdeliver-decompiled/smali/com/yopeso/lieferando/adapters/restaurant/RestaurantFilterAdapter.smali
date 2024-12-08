.class public Lcom/yopeso/lieferando/adapters/restaurant/RestaurantFilterAdapter;
.super Landroid/widget/ArrayAdapter;
.source "RestaurantFilterAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 22
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantFilterAdapter;->mContext:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 33
    if-nez p2, :cond_0

    .line 34
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantFilterAdapter;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 35
    .local v1, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lcom/yopeso/lieferando/R$layout;->filter_list_item:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 37
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantFilterAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;

    .line 38
    .local v0, "filter":Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;
    sget v3, Lcom/yopeso/lieferando/R$id;->FilterName:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 39
    .local v2, "tv":Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 41
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantFilterAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$color;->green_rating_recommended_background:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 42
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 43
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantFilterAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$color;->black:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53
    :goto_0
    return-object p2

    .line 46
    :cond_1
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantFilterAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$color;->text_green:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 49
    :cond_2
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantFilterAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$color;->bg_grey:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 50
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantFilterAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$color;->black:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public resetFilters()V
    .locals 3

    .prologue
    .line 26
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantFilterAdapter;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 29
    return-void

    .line 27
    :cond_0
    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantFilterAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;->setEnabled(Z)V

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
