.class public Lcom/yopeso/lieferando/adapters/restaurant/LogoRestaurantAdapter;
.super Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;
.source "LogoRestaurantAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILjava/util/ArrayList;Lcom/yopeso/lieferando/callback/IRestaurantListCallback;Lcom/android/volley/RequestQueue;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "textViewResourceId"    # I
    .param p4, "callback"    # Lcom/yopeso/lieferando/callback/IRestaurantListCallback;
    .param p5, "requestQueue"    # Lcom/android/volley/RequestQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/Restaurant;",
            ">;",
            "Lcom/yopeso/lieferando/callback/IRestaurantListCallback;",
            "Lcom/android/volley/RequestQueue;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    .local p3, "objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Restaurant;>;"
    invoke-direct/range {p0 .. p5}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Lcom/yopeso/lieferando/callback/IRestaurantListCallback;Lcom/android/volley/RequestQueue;)V

    .line 39
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/LogoRestaurantAdapter;->mRestaurants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/LogoRestaurantAdapter;->mRestaurants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/LogoRestaurantAdapter;->mRestaurants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 140
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 145
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/LogoRestaurantAdapter;->mRestaurants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/LogoRestaurantAdapter;->mRestaurants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    .line 146
    const/4 v0, 0x0

    .line 148
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 43
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/adapters/restaurant/LogoRestaurantAdapter;->getItemViewType(I)I

    move-result v11

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eq v11, v10, :cond_1

    .line 44
    :cond_0
    iget-object v10, p0, Lcom/yopeso/lieferando/adapters/restaurant/LogoRestaurantAdapter;->mContext:Landroid/content/Context;

    const-string v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 45
    .local v1, "li":Landroid/view/LayoutInflater;
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/adapters/restaurant/LogoRestaurantAdapter;->getItemViewType(I)I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 51
    sget v10, Lcom/yopeso/lieferando/R$layout;->restaurant_logo_line:I

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 52
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 56
    .end local v1    # "li":Landroid/view/LayoutInflater;
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/adapters/restaurant/LogoRestaurantAdapter;->getItemViewType(I)I

    move-result v10

    packed-switch v10, :pswitch_data_1

    .line 64
    iget-object v10, p0, Lcom/yopeso/lieferando/adapters/restaurant/LogoRestaurantAdapter;->mRestaurants:Ljava/util/ArrayList;

    mul-int/lit8 v11, p1, 0x2

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .line 65
    .local v6, "restaurant1":Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    sget v10, Lcom/yopeso/lieferando/R$id;->RestaurantColumn1:I

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 66
    .local v8, "restaurantView1":Landroid/view/View;
    sget v10, Lcom/yopeso/lieferando/R$id;->RestaurantLogo:I

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 67
    .local v2, "logo1":Landroid/widget/ImageView;
    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getTagFactory()Lcom/novoda/imageloader/core/model/ImageTagFactory;

    move-result-object v10

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getImgUrl()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/yopeso/lieferando/adapters/restaurant/LogoRestaurantAdapter;->mContext:Landroid/content/Context;

    invoke-static {v11, v12}, Lcom/yopeso/lieferando/util/ImageUtils;->getOptimizedLogoUrl(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/yopeso/lieferando/adapters/restaurant/LogoRestaurantAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v11, v12}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->build(Ljava/lang/String;Landroid/content/Context;)Lcom/novoda/imageloader/core/model/ImageTag;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 68
    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getImageLoader()Lcom/novoda/imageloader/core/loader/Loader;

    move-result-object v10

    invoke-interface {v10, v2}, Lcom/novoda/imageloader/core/loader/Loader;->load(Landroid/widget/ImageView;)V

    .line 71
    sget v10, Lcom/yopeso/lieferando/R$id;->newLabel:I

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 72
    .local v4, "newLogo":Landroid/view/View;
    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isNew()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 74
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 81
    :goto_1
    sget v10, Lcom/yopeso/lieferando/R$id;->RestaurantName:I

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    new-instance v10, Lcom/yopeso/lieferando/adapters/restaurant/LogoRestaurantAdapter$1;

    invoke-direct {v10, p0, v6}, Lcom/yopeso/lieferando/adapters/restaurant/LogoRestaurantAdapter$1;-><init>(Lcom/yopeso/lieferando/adapters/restaurant/LogoRestaurantAdapter;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    invoke-virtual {v8, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    :try_start_0
    iget-object v10, p0, Lcom/yopeso/lieferando/adapters/restaurant/LogoRestaurantAdapter;->mRestaurants:Ljava/util/ArrayList;

    mul-int/lit8 v11, p1, 0x2

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .line 91
    .local v7, "restaurant2":Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    sget v10, Lcom/yopeso/lieferando/R$id;->RestaurantColumn2:I

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 92
    .local v9, "restaurantView2":Landroid/view/View;
    sget v10, Lcom/yopeso/lieferando/R$id;->RestaurantLogo:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 93
    .local v3, "logo2":Landroid/widget/ImageView;
    sget v10, Lcom/yopeso/lieferando/R$id;->RestaurantColumn2:I

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    sget v11, Lcom/yopeso/lieferando/R$id;->RestaurantLogo:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 94
    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getTagFactory()Lcom/novoda/imageloader/core/model/ImageTagFactory;

    move-result-object v10

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getImgUrl()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/yopeso/lieferando/adapters/restaurant/LogoRestaurantAdapter;->mContext:Landroid/content/Context;

    invoke-static {v11, v12}, Lcom/yopeso/lieferando/util/ImageUtils;->getOptimizedLogoUrl(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/yopeso/lieferando/adapters/restaurant/LogoRestaurantAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v11, v12}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->build(Ljava/lang/String;Landroid/content/Context;)Lcom/novoda/imageloader/core/model/ImageTag;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 95
    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getImageLoader()Lcom/novoda/imageloader/core/loader/Loader;

    move-result-object v10

    invoke-interface {v10, v3}, Lcom/novoda/imageloader/core/loader/Loader;->load(Landroid/widget/ImageView;)V

    .line 98
    sget v10, Lcom/yopeso/lieferando/R$id;->newLabel:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 99
    .local v5, "newLogo2":Landroid/view/View;
    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isNew()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 101
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 108
    :goto_2
    sget v10, Lcom/yopeso/lieferando/R$id;->RestaurantName:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    new-instance v10, Lcom/yopeso/lieferando/adapters/restaurant/LogoRestaurantAdapter$2;

    invoke-direct {v10, p0, v7}, Lcom/yopeso/lieferando/adapters/restaurant/LogoRestaurantAdapter$2;-><init>(Lcom/yopeso/lieferando/adapters/restaurant/LogoRestaurantAdapter;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v2    # "logo1":Landroid/widget/ImageView;
    .end local v3    # "logo2":Landroid/widget/ImageView;
    .end local v4    # "newLogo":Landroid/view/View;
    .end local v5    # "newLogo2":Landroid/view/View;
    .end local v6    # "restaurant1":Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    .end local v7    # "restaurant2":Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    .end local v8    # "restaurantView1":Landroid/view/View;
    .end local v9    # "restaurantView2":Landroid/view/View;
    :cond_2
    :goto_3
    return-object p2

    .line 47
    .restart local v1    # "li":Landroid/view/LayoutInflater;
    :pswitch_0
    sget v10, Lcom/yopeso/lieferando/R$layout;->restaurants_bottom_propose:I

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 48
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 58
    .end local v1    # "li":Landroid/view/LayoutInflater;
    :pswitch_1
    sget v10, Lcom/yopeso/lieferando/R$id;->LieferservicePropose:I

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v10

    invoke-interface {v10}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v10

    if-nez v10, :cond_2

    .line 60
    sget v10, Lcom/yopeso/lieferando/R$id;->LieferservicePropose:I

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v11

    invoke-virtual {v11}, Lcom/yopeso/lieferando/model/SettingsContent;->getDynamicButtonFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_3

    .line 78
    .restart local v2    # "logo1":Landroid/widget/ImageView;
    .restart local v4    # "newLogo":Landroid/view/View;
    .restart local v6    # "restaurant1":Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    .restart local v8    # "restaurantView1":Landroid/view/View;
    :cond_3
    const/16 v10, 0x8

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 105
    .restart local v3    # "logo2":Landroid/widget/ImageView;
    .restart local v5    # "newLogo2":Landroid/view/View;
    .restart local v7    # "restaurant2":Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    .restart local v9    # "restaurantView2":Landroid/view/View;
    :cond_4
    const/16 v10, 0x8

    :try_start_1
    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 115
    .end local v3    # "logo2":Landroid/widget/ImageView;
    .end local v5    # "newLogo2":Landroid/view/View;
    .end local v7    # "restaurant2":Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    .end local v9    # "restaurantView2":Landroid/view/View;
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 117
    sget v10, Lcom/yopeso/lieferando/R$id;->RestaurantColumn2:I

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    sget v11, Lcom/yopeso/lieferando/R$id;->RestaurantLogo:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 118
    sget v10, Lcom/yopeso/lieferando/R$id;->RestaurantColumn2:I

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    sget v11, Lcom/yopeso/lieferando/R$id;->RestaurantName:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 45
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 56
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/LogoRestaurantAdapter;->mRestaurants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 129
    const/4 v0, 0x3

    .line 131
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 153
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 154
    .local v0, "id":I
    sget v1, Lcom/yopeso/lieferando/R$id;->LieferservicePropose:I

    if-ne v0, v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/LogoRestaurantAdapter;->mCallback:Lcom/yopeso/lieferando/callback/IRestaurantListCallback;

    invoke-interface {v1}, Lcom/yopeso/lieferando/callback/IRestaurantListCallback;->onProposeClick()V

    .line 157
    :cond_0
    return-void
.end method
