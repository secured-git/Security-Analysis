.class public Lcom/yopeso/lieferando/adapters/OrdersAdapter;
.super Landroid/widget/ArrayAdapter;
.source "OrdersAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/yopeso/lieferando/model/user/Order;",
        ">;"
    }
.end annotation


# static fields
.field private static final TYPE_VIEW:I = 0x0

.field private static final TYPE_VIEW_BUTTON:I = 0x1

.field private static mRequestQueue:Lcom/android/volley/RequestQueue;

.field private static mResourceId:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Landroid/view/View$OnClickListener;

.field private mLoadMoreButton:Landroid/widget/Button;

.field private mLoadMoreButtonIsShown:Z

.field private mOrders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yopeso/lieferando/model/user/Order;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, -0x1

    sput v0, Lcom/yopeso/lieferando/adapters/OrdersAdapter;->mResourceId:I

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Lcom/android/volley/RequestQueue;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewResourceId"    # I
    .param p4, "requestQueue"    # Lcom/android/volley/RequestQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/yopeso/lieferando/model/user/Order;",
            ">;",
            "Lcom/android/volley/RequestQueue;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/yopeso/lieferando/model/user/Order;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yopeso/lieferando/adapters/OrdersAdapter;->mLoadMoreButtonIsShown:Z

    .line 61
    iput-object p3, p0, Lcom/yopeso/lieferando/adapters/OrdersAdapter;->mOrders:Ljava/util/List;

    .line 62
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/OrdersAdapter;->mContext:Landroid/content/Context;

    .line 63
    sput p2, Lcom/yopeso/lieferando/adapters/OrdersAdapter;->mResourceId:I

    .line 64
    sput-object p4, Lcom/yopeso/lieferando/adapters/OrdersAdapter;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 66
    return-void
.end method

.method static synthetic access$0()Lcom/android/volley/RequestQueue;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/yopeso/lieferando/adapters/OrdersAdapter;->mRequestQueue:Lcom/android/volley/RequestQueue;

    return-object v0
.end method

.method public static displayOrderInView(Lcom/yopeso/lieferando/model/user/Order;Landroid/view/View;Landroid/content/Context;Z)V
    .locals 9
    .param p0, "order"    # Lcom/yopeso/lieferando/model/user/Order;
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "isList"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 113
    sget v2, Lcom/yopeso/lieferando/R$id;->RestaurantLogo:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 114
    .local v0, "logo":Landroid/widget/ImageView;
    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getTagFactory()Lcom/novoda/imageloader/core/model/ImageTagFactory;

    move-result-object v2

    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/user/Order;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getImgUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/yopeso/lieferando/util/ImageUtils;->getOptimizedLogoUrl(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->build(Ljava/lang/String;Landroid/content/Context;)Lcom/novoda/imageloader/core/model/ImageTag;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 115
    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getImageLoader()Lcom/novoda/imageloader/core/loader/Loader;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/novoda/imageloader/core/loader/Loader;->load(Landroid/widget/ImageView;)V

    .line 117
    sget v2, Lcom/yopeso/lieferando/R$id;->RestaurantName:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/user/Order;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    sget v2, Lcom/yopeso/lieferando/R$id;->OrderDate:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v3, Lcom/yopeso/lieferando/R$string;->order_date:I

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/user/Order;->getOrderDate()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    sget v2, Lcom/yopeso/lieferando/R$id;->OrderCost:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v3, Lcom/yopeso/lieferando/R$string;->order_cost:I

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v5

    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/user/Order;->getTotal()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    sget v2, Lcom/yopeso/lieferando/R$id;->RestaurantPhone:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/user/Order;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getTelephone()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    sget v2, Lcom/yopeso/lieferando/R$id;->RatedStatus:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 123
    .local v1, "ratings":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/user/Order;->isRated()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 124
    sget v2, Lcom/yopeso/lieferando/R$string;->was_rated:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$color;->text_grey:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    :goto_0
    sget v2, Lcom/yopeso/lieferando/adapters/OrdersAdapter;->mResourceId:I

    sget v3, Lcom/yopeso/lieferando/R$layout;->order_list_item:I

    if-ne v2, v3, :cond_1

    .line 135
    if-eqz p0, :cond_0

    .line 136
    sget v2, Lcom/yopeso/lieferando/R$id;->RestaurantRating1:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RatingBar;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/user/Order;->getRating()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setRating(F)V

    .line 139
    :cond_0
    if-nez p3, :cond_4

    .line 140
    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/user/Order;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lcom/yopeso/lieferando/adapters/OrdersAdapter;->setFavourites(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Landroid/view/View;Landroid/content/Context;)V

    .line 145
    :cond_1
    :goto_1
    return-void

    .line 126
    :cond_2
    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/user/Order;->isRateable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 127
    sget v2, Lcom/yopeso/lieferando/R$string;->can_be_rated:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$color;->text_green:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 130
    :cond_3
    sget v2, Lcom/yopeso/lieferando/R$string;->can_not_be_rated:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$color;->text_grey:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 142
    :cond_4
    sget v2, Lcom/yopeso/lieferando/R$id;->heart:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public static setFavourites(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Landroid/view/View;Landroid/content/Context;)V
    .locals 2
    .param p0, "restaurant"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 148
    sget v1, Lcom/yopeso/lieferando/R$id;->heart:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 150
    .local v0, "heart":Landroid/widget/ImageView;
    new-instance v1, Lcom/yopeso/lieferando/adapters/OrdersAdapter$1;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/adapters/OrdersAdapter$1;-><init>(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    invoke-static {p0}, Lcom/yopeso/lieferando/util/UserStore;->isFavorite(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    sget v1, Lcom/yopeso/lieferando/R$drawable;->heart_selected:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 175
    :goto_0
    return-void

    .line 172
    :cond_0
    sget v1, Lcom/yopeso/lieferando/R$drawable;->heart:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/OrdersAdapter;->mOrders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 189
    iget-boolean v0, p0, Lcom/yopeso/lieferando/adapters/OrdersAdapter;->mLoadMoreButtonIsShown:Z

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/OrdersAdapter;->mOrders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 194
    :goto_0
    return v0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/OrdersAdapter;->mOrders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 194
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/OrdersAdapter;->mOrders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 200
    const/4 v0, 0x0

    .line 202
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 70
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/adapters/OrdersAdapter;->getItemViewType(I)I

    move-result v2

    .line 71
    .local v2, "viewType":I
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 72
    :cond_0
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/OrdersAdapter;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 73
    .local v0, "li":Landroid/view/LayoutInflater;
    packed-switch v2, :pswitch_data_0

    .line 89
    .end local v0    # "li":Landroid/view/LayoutInflater;
    :cond_1
    :goto_0
    if-nez v2, :cond_4

    .line 90
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/OrdersAdapter;->mOrders:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/model/user/Order;

    .line 91
    .local v1, "order":Lcom/yopeso/lieferando/model/user/Order;
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/OrdersAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, p2, v3, v5}, Lcom/yopeso/lieferando/adapters/OrdersAdapter;->displayOrderInView(Lcom/yopeso/lieferando/model/user/Order;Landroid/view/View;Landroid/content/Context;Z)V

    .line 98
    .end local v1    # "order":Lcom/yopeso/lieferando/model/user/Order;
    :cond_2
    :goto_1
    return-object p2

    .line 75
    .restart local v0    # "li":Landroid/view/LayoutInflater;
    :pswitch_0
    sget v3, Lcom/yopeso/lieferando/adapters/OrdersAdapter;->mResourceId:I

    invoke-virtual {v0, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 76
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 79
    :pswitch_1
    sget v3, Lcom/yopeso/lieferando/R$layout;->search_frg_button:I

    invoke-virtual {v0, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 80
    sget v3, Lcom/yopeso/lieferando/R$id;->AddNewAddress:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/yopeso/lieferando/adapters/OrdersAdapter;->mLoadMoreButton:Landroid/widget/Button;

    .line 81
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v3

    if-nez v3, :cond_3

    .line 82
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/OrdersAdapter;->mLoadMoreButton:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/SettingsContent;->getDynamicButtonFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 84
    :cond_3
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/OrdersAdapter;->mLoadMoreButton:Landroid/widget/Button;

    sget v4, Lcom/yopeso/lieferando/R$string;->load_more_orders:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 85
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 92
    .end local v0    # "li":Landroid/view/LayoutInflater;
    :cond_4
    if-ne v2, v5, :cond_2

    .line 93
    sget v3, Lcom/yopeso/lieferando/R$id;->AddNewAddress:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/yopeso/lieferando/adapters/OrdersAdapter;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
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

    .line 95
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

    goto :goto_1

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/OrdersAdapter;->mOrders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 180
    const/4 v0, 0x1

    .line 182
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public setEnableLoadMoreButton(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 225
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/OrdersAdapter;->mLoadMoreButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/OrdersAdapter;->mLoadMoreButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 228
    :cond_0
    return-void
.end method

.method public setListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/OrdersAdapter;->mListener:Landroid/view/View$OnClickListener;

    .line 207
    return-void
.end method

.method public setLoadMoreButtonIsShown(Z)V
    .locals 0
    .param p1, "isShown"    # Z

    .prologue
    .line 215
    iput-boolean p1, p0, Lcom/yopeso/lieferando/adapters/OrdersAdapter;->mLoadMoreButtonIsShown:Z

    .line 216
    return-void
.end method
