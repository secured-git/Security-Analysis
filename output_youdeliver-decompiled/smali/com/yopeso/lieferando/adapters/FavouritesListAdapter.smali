.class public Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;
.super Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;
.source "FavouritesListAdapter.java"


# static fields
.field private static mRequestQueue:Lcom/android/volley/RequestQueue;


# instance fields
.field private mListener:Landroid/view/View$OnClickListener;

.field private mLoadMoreButton:Landroid/widget/Button;

.field private mResourceId:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILjava/util/ArrayList;Lcom/yopeso/lieferando/callback/IRestaurantListCallback;Lcom/android/volley/RequestQueue;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "viewResourceId"    # I
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
    .line 44
    .local p3, "objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Restaurant;>;"
    invoke-direct/range {p0 .. p5}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Lcom/yopeso/lieferando/callback/IRestaurantListCallback;Lcom/android/volley/RequestQueue;)V

    .line 45
    iput p2, p0, Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;->mResourceId:I

    .line 46
    sput-object p5, Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 47
    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;)Lcom/yopeso/lieferando/callback/IRestaurantListCallback;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;->mCallback:Lcom/yopeso/lieferando/callback/IRestaurantListCallback;

    return-object v0
.end method

.method static synthetic access$1()Lcom/android/volley/RequestQueue;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;->mRequestQueue:Lcom/android/volley/RequestQueue;

    return-object v0
.end method

.method public static setFavourites(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Landroid/view/View;Landroid/content/Context;)V
    .locals 2
    .param p0, "restaurant"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    sget v1, Lcom/yopeso/lieferando/R$id;->heart:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 135
    .local v0, "heart":Landroid/widget/ImageView;
    sget v1, Lcom/yopeso/lieferando/R$drawable;->heart_selected:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 136
    new-instance v1, Lcom/yopeso/lieferando/adapters/FavouritesListAdapter$2;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/adapters/FavouritesListAdapter$2;-><init>(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;->mRestaurants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 124
    iget-boolean v0, p0, Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;->mIsBottomButtonViewShown:Z

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;->mRestaurants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 129
    :goto_0
    return v0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;->mRestaurants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x1

    const/16 v5, 0x8

    .line 57
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;->getItemViewType(I)I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v4, v3, :cond_1

    .line 58
    :cond_0
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 59
    .local v0, "li":Landroid/view/LayoutInflater;
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;->getItemViewType(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 70
    iget v3, p0, Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;->mResourceId:I

    invoke-virtual {v0, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 71
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 76
    .end local v0    # "li":Landroid/view/LayoutInflater;
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;->getItemViewType(I)I

    move-result v3

    if-ne v3, v6, :cond_4

    .line 77
    sget v3, Lcom/yopeso/lieferando/R$id;->AddNewAddress:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v3

    if-nez v3, :cond_2

    .line 79
    sget v3, Lcom/yopeso/lieferando/R$id;->AddNewAddress:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/SettingsContent;->getDynamicButtonFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 114
    :cond_2
    :goto_1
    return-object p2

    .line 61
    .restart local v0    # "li":Landroid/view/LayoutInflater;
    :pswitch_0
    sget v3, Lcom/yopeso/lieferando/R$layout;->search_frg_button:I

    invoke-virtual {v0, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 62
    sget v3, Lcom/yopeso/lieferando/R$id;->AddNewAddress:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;->mLoadMoreButton:Landroid/widget/Button;

    .line 63
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v3

    if-nez v3, :cond_3

    .line 64
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;->mLoadMoreButton:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/SettingsContent;->getDynamicButtonFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 66
    :cond_3
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;->mLoadMoreButton:Landroid/widget/Button;

    sget v4, Lcom/yopeso/lieferando/R$string;->load_more_orders:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 67
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 82
    .end local v0    # "li":Landroid/view/LayoutInflater;
    :cond_4
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;->mRestaurants:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .line 83
    .local v2, "restaurant":Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    iget v3, p0, Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;->mResourceId:I

    sget v4, Lcom/yopeso/lieferando/R$layout;->restaurant_list_item:I

    if-ne v3, v4, :cond_5

    .line 84
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-static {v2, p2, v3, v6, v4}, Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;->displayRestaurantInView(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Landroid/view/View;Landroid/content/Context;ZLcom/android/volley/RequestQueue;)V

    .line 85
    sget v3, Lcom/yopeso/lieferando/R$id;->MinimumOrder:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    sget v3, Lcom/yopeso/lieferando/R$id;->RestaurantDistance:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    sget v3, Lcom/yopeso/lieferando/R$id;->RestaurantDistanceDiv:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    sget v3, Lcom/yopeso/lieferando/R$id;->DeliveryCost:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    sget v3, Lcom/yopeso/lieferando/R$id;->stamp_layout:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 92
    sget v3, Lcom/yopeso/lieferando/R$id;->stamp_layout2:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 94
    sget v3, Lcom/yopeso/lieferando/R$id;->RestaurantRatingDetails:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    sget v3, Lcom/yopeso/lieferando/R$id;->RestaurantRatingDetails:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;->mContext:Landroid/content/Context;

    sget v5, Lcom/yopeso/lieferando/R$string;->rating_details:I

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getRatingsCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    new-instance v3, Lcom/yopeso/lieferando/adapters/FavouritesListAdapter$1;

    invoke-direct {v3, p0, v2}, Lcom/yopeso/lieferando/adapters/FavouritesListAdapter$1;-><init>(Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 104
    :cond_5
    sget v3, Lcom/yopeso/lieferando/R$id;->RestaurantLogo:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 105
    .local v1, "logo":Landroid/widget/ImageView;
    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getTagFactory()Lcom/novoda/imageloader/core/model/ImageTagFactory;

    move-result-object v3

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getImgUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/yopeso/lieferando/util/ImageUtils;->getOptimizedLogoUrl(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v5}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->build(Ljava/lang/String;Landroid/content/Context;)Lcom/novoda/imageloader/core/model/ImageTag;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 106
    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getImageLoader()Lcom/novoda/imageloader/core/loader/Loader;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/novoda/imageloader/core/loader/Loader;->load(Landroid/widget/ImageView;)V

    .line 108
    sget v3, Lcom/yopeso/lieferando/R$id;->RestaurantName:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    sget v3, Lcom/yopeso/lieferando/R$id;->RestaurantDetails:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getCategory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    sget v3, Lcom/yopeso/lieferando/R$id;->RestaurantRating:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RatingBar;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getRatingAverage()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/RatingBar;->setRating(F)V

    .line 111
    sget v3, Lcom/yopeso/lieferando/R$id;->RestaurantRatingDetails:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;->mContext:Landroid/content/Context;

    sget v5, Lcom/yopeso/lieferando/R$string;->rating_details:I

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getRatingsCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;->mListener:Landroid/view/View$OnClickListener;

    .line 119
    return-void
.end method

.method public setRestaurants(Ljava/util/ArrayList;)V
    .locals 0
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
    .line 51
    .local p1, "restaurants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Restaurant;>;"
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;->mRealRestaurants:Ljava/util/ArrayList;

    .line 52
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;->mRestaurants:Ljava/util/ArrayList;

    .line 53
    return-void
.end method
