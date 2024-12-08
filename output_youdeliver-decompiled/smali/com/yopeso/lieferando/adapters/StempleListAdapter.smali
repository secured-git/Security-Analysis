.class public Lcom/yopeso/lieferando/adapters/StempleListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "StempleListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/yopeso/lieferando/model/Stamp;",
        ">;"
    }
.end annotation


# static fields
.field private static mRequestQueue:Lcom/android/volley/RequestQueue;


# instance fields
.field protected mCallback:Lcom/yopeso/lieferando/callback/StempelRestaurantCallback;

.field private mContext:Landroid/content/Context;

.field mStamps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/Stamp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;Lcom/yopeso/lieferando/callback/StempelRestaurantCallback;Lcom/android/volley/RequestQueue;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p4, "callback"    # Lcom/yopeso/lieferando/callback/StempelRestaurantCallback;
    .param p5, "requestQueue"    # Lcom/android/volley/RequestQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/Stamp;",
            ">;",
            "Lcom/yopeso/lieferando/callback/StempelRestaurantCallback;",
            "Lcom/android/volley/RequestQueue;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    .local p3, "stamps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/Stamp;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/adapters/StempleListAdapter;->mStamps:Ljava/util/ArrayList;

    .line 46
    iput-object p3, p0, Lcom/yopeso/lieferando/adapters/StempleListAdapter;->mStamps:Ljava/util/ArrayList;

    .line 47
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/StempleListAdapter;->mContext:Landroid/content/Context;

    .line 48
    sput-object p5, Lcom/yopeso/lieferando/adapters/StempleListAdapter;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 49
    iput-object p4, p0, Lcom/yopeso/lieferando/adapters/StempleListAdapter;->mCallback:Lcom/yopeso/lieferando/callback/StempelRestaurantCallback;

    .line 50
    return-void
.end method

.method static synthetic access$0()Lcom/android/volley/RequestQueue;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/yopeso/lieferando/adapters/StempleListAdapter;->mRequestQueue:Lcom/android/volley/RequestQueue;

    return-object v0
.end method

.method public static setFavourites(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Landroid/view/View;Landroid/content/Context;)V
    .locals 2
    .param p0, "restaurant"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 168
    sget v1, Lcom/yopeso/lieferando/R$id;->heart:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 170
    .local v0, "heart":Landroid/widget/ImageView;
    new-instance v1, Lcom/yopeso/lieferando/adapters/StempleListAdapter$2;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/adapters/StempleListAdapter$2;-><init>(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    invoke-static {p0}, Lcom/yopeso/lieferando/util/UserStore;->isFavorite(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    sget v1, Lcom/yopeso/lieferando/R$drawable;->heart_selected:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 195
    :goto_0
    return-void

    .line 192
    :cond_0
    sget v1, Lcom/yopeso/lieferando/R$drawable;->heart:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/StempleListAdapter;->mStamps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 54
    if-nez p2, :cond_0

    .line 55
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/yopeso/lieferando/adapters/StempleListAdapter;->mContext:Landroid/content/Context;

    const-string v12, "layout_inflater"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 56
    .local v3, "li":Landroid/view/LayoutInflater;
    sget v11, Lcom/yopeso/lieferando/R$layout;->stemp_list_element:I

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 59
    .end local v3    # "li":Landroid/view/LayoutInflater;
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/yopeso/lieferando/adapters/StempleListAdapter;->mStamps:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/yopeso/lieferando/model/Stamp;

    .line 61
    .local v7, "stamp":Lcom/yopeso/lieferando/model/Stamp;
    sget v11, Lcom/yopeso/lieferando/R$id;->sperator:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 62
    .local v6, "seperator":Landroid/widget/TextView;
    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/Stamp;->getHeaderText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_2

    .line 63
    const/16 v11, 0x8

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    :goto_0
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v11

    invoke-interface {v11}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v11

    if-nez v11, :cond_1

    .line 71
    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v11

    invoke-virtual {v11}, Lcom/yopeso/lieferando/model/SettingsContent;->getmButtonColor()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 74
    :cond_1
    sget v11, Lcom/yopeso/lieferando/R$id;->RestaurantLogo:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 75
    .local v4, "logo":Landroid/widget/ImageView;
    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getTagFactory()Lcom/novoda/imageloader/core/model/ImageTagFactory;

    move-result-object v11

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/Stamp;->getImageUrl()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/yopeso/lieferando/adapters/StempleListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v12, v13}, Lcom/yopeso/lieferando/util/ImageUtils;->getOptimizedLogoUrl(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/yopeso/lieferando/adapters/StempleListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v12, v13}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->build(Ljava/lang/String;Landroid/content/Context;)Lcom/novoda/imageloader/core/model/ImageTag;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 76
    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getImageLoader()Lcom/novoda/imageloader/core/loader/Loader;

    move-result-object v11

    invoke-interface {v11, v4}, Lcom/novoda/imageloader/core/loader/Loader;->load(Landroid/widget/ImageView;)V

    .line 78
    sget v11, Lcom/yopeso/lieferando/R$id;->RestaurantName:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/Stamp;->getRestaurantName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    sget v11, Lcom/yopeso/lieferando/R$id;->StampCard:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 81
    .local v10, "stampText":Landroid/widget/TextView;
    sget v11, Lcom/yopeso/lieferando/R$id;->stampDate:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 82
    .local v8, "stampDate":Landroid/widget/TextView;
    sget v11, Lcom/yopeso/lieferando/R$id;->stamp_layout:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 84
    .local v9, "stampLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/Stamp;->getExpirationDate()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_3

    .line 85
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/yopeso/lieferando/adapters/StempleListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/yopeso/lieferando/R$string;->stempel_valid_until:I

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/Stamp;->getExpirationDate()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    :goto_1
    sget v11, Lcom/yopeso/lieferando/R$id;->clockIcon:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 94
    .local v2, "clock":Landroid/widget/ImageView;
    const/16 v11, 0x8

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 96
    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/Stamp;->isFull()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/Stamp;->isExpired()Z

    move-result v11

    if-nez v11, :cond_7

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/Stamp;->isUsed()Z

    move-result v11

    if-nez v11, :cond_7

    .line 97
    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/Stamp;->isPending()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 98
    sget v11, Lcom/yopeso/lieferando/R$drawable;->dotted_orange:I

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 100
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/yopeso/lieferando/adapters/StempleListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x106000d

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 101
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/Stamp;->getUserStamps()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, " / "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/yopeso/lieferando/adapters/StempleListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/yopeso/lieferando/R$string;->stempel_can_be_used_at:I

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/Stamp;->getValidFromDate()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/Stamp;->getValidFromHour()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 151
    :goto_2
    new-instance v5, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-direct {v5}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;-><init>()V

    .line 152
    .local v5, "res":Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/Stamp;->getRestaurantId()I

    move-result v11

    invoke-virtual {v5, v11}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->setId(I)V

    .line 153
    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/Stamp;->getUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->setServiceUrl(Ljava/lang/String;)V

    .line 155
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/yopeso/lieferando/adapters/StempleListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-static {v5, v0, v11}, Lcom/yopeso/lieferando/adapters/StempleListAdapter;->setFavourites(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Landroid/view/View;Landroid/content/Context;)V

    .line 157
    new-instance v11, Lcom/yopeso/lieferando/adapters/StempleListAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v5}, Lcom/yopeso/lieferando/adapters/StempleListAdapter$1;-><init>(Lcom/yopeso/lieferando/adapters/StempleListAdapter;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    return-object p2

    .line 65
    .end local v2    # "clock":Landroid/widget/ImageView;
    .end local v4    # "logo":Landroid/widget/ImageView;
    .end local v5    # "res":Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    .end local v8    # "stampDate":Landroid/widget/TextView;
    .end local v9    # "stampLayout":Landroid/widget/LinearLayout;
    .end local v10    # "stampText":Landroid/widget/TextView;
    :cond_2
    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/Stamp;->getHeaderText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 87
    .restart local v4    # "logo":Landroid/widget/ImageView;
    .restart local v8    # "stampDate":Landroid/widget/TextView;
    .restart local v9    # "stampLayout":Landroid/widget/LinearLayout;
    .restart local v10    # "stampText":Landroid/widget/TextView;
    :cond_3
    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/Stamp;->getUsedDate()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_4

    .line 88
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/yopeso/lieferando/adapters/StempleListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/yopeso/lieferando/R$string;->stempel_used_at:I

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/Stamp;->getUsedDate()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 91
    :cond_4
    const/16 v11, 0x8

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 106
    .restart local v2    # "clock":Landroid/widget/ImageView;
    :cond_5
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 107
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v11

    invoke-interface {v11}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v11

    if-nez v11, :cond_6

    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v11

    invoke-interface {v11}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v11

    if-nez v11, :cond_6

    .line 108
    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v11

    invoke-virtual {v11}, Lcom/yopeso/lieferando/model/SettingsContent;->getmButtonColor()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 113
    :goto_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/yopeso/lieferando/adapters/StempleListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/yopeso/lieferando/R$string;->stempel_make_order:I

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v15

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/Stamp;->getDiscountValue()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x42c80000    # 100.0f

    div-float v16, v16, v17

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 111
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/yopeso/lieferando/adapters/StempleListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/yopeso/lieferando/R$color;->stamp_background_green:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_3

    .line 116
    :cond_7
    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/Stamp;->isExpired()Z

    move-result v11

    if-nez v11, :cond_a

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/Stamp;->isUsed()Z

    move-result v11

    if-nez v11, :cond_a

    .line 117
    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/Stamp;->isPending()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 118
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/yopeso/lieferando/adapters/StempleListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x106000d

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 122
    sget v11, Lcom/yopeso/lieferando/R$drawable;->dotted_orange:I

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 123
    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/Stamp;->getUserStamps()I

    move-result v11

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v12

    if-le v11, v12, :cond_9

    .line 124
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, " / "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/yopeso/lieferando/adapters/StempleListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/yopeso/lieferando/R$string;->stemp_can_not_be_used_now:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 128
    :cond_9
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/Stamp;->getUserStamps()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, " / "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 134
    :cond_a
    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/Stamp;->isUsed()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 135
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v12

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/Stamp;->getDiscountValue()I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x42c80000    # 100.0f

    div-float/2addr v13, v14

    float-to-double v14, v13

    invoke-virtual {v12, v14, v15}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/yopeso/lieferando/adapters/StempleListAdapter;->mContext:Landroid/content/Context;

    sget v13, Lcom/yopeso/lieferando/R$string;->currency:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 137
    :cond_b
    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/Stamp;->getDiscountValue()I

    move-result v11

    if-eqz v11, :cond_c

    .line 138
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v12

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/Stamp;->getDiscountValue()I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x42c80000    # 100.0f

    div-float/2addr v13, v14

    float-to-double v14, v13

    invoke-virtual {v12, v14, v15}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/yopeso/lieferando/adapters/StempleListAdapter;->mContext:Landroid/content/Context;

    sget v13, Lcom/yopeso/lieferando/R$string;->currency:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    :goto_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/yopeso/lieferando/adapters/StempleListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/yopeso/lieferando/R$string;->stempel_expired_at:I

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/Stamp;->getExpirationDate()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    sget v11, Lcom/yopeso/lieferando/R$drawable;->dotted_grey:I

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 146
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/yopeso/lieferando/adapters/StempleListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/yopeso/lieferando/R$color;->stamp_background_gray:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto/16 :goto_2

    .line 140
    :cond_c
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/Stamp;->getUserStamps()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, " / "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method
