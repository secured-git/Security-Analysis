.class public Lcom/yopeso/lieferando/adapters/restaurant/MapsInfoWindowAdapter;
.super Ljava/lang/Object;
.source "MapsInfoWindowAdapter.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;


# instance fields
.field private image_urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mRestaurants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/Restaurant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/Restaurant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p2, "restaurants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Restaurant;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/restaurant/MapsInfoWindowAdapter;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/yopeso/lieferando/adapters/restaurant/MapsInfoWindowAdapter;->mRestaurants:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/MapsInfoWindowAdapter;->image_urls:Ljava/util/List;

    .line 50
    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/adapters/restaurant/MapsInfoWindowAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/MapsInfoWindowAdapter;->image_urls:Ljava/util/List;

    return-object v0
.end method

.method private static varargs appearViews([Landroid/view/View;)V
    .locals 4
    .param p0, "v"    # [Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 517
    array-length v3, p0

    move v1, v2

    :goto_0
    if-lt v1, v3, :cond_0

    .line 520
    return-void

    .line 517
    :cond_0
    aget-object v0, p0, v1

    .line 518
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 517
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getDistanceText(F)Ljava/lang/String;
    .locals 5
    .param p0, "distanceInMeters"    # F
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 535
    const v1, 0x4415c000    # 599.0f

    cmpg-float v1, p0, v1

    if-gtz v1, :cond_0

    .line 536
    const-string v1, "%.0f m"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 543
    :goto_0
    return-object v0

    .line 538
    :cond_0
    const-string v1, "%.1f"

    new-array v2, v2, [Ljava/lang/Object;

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float v3, p0, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 539
    .local v0, "result":Ljava/lang/String;
    const-string v1, ".0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 540
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 542
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " km"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 543
    goto :goto_0
.end method

.method public static getSchedulesAsString(Ljava/util/List;Landroid/content/Context;)Ljava/lang/String;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/Opening;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "schedules":Ljava/util/List;, "Ljava/util/List<Lcom/yopeso/lieferando/model/restaurant/Opening;>;"
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 555
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_0

    .line 579
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 556
    :cond_0
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yopeso/lieferando/model/restaurant/Opening;

    .line 558
    .local v3, "schedule":Lcom/yopeso/lieferando/model/restaurant/Opening;
    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/restaurant/Opening;->isPastMidnight()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 559
    sget-object v4, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/restaurant/Opening;->getCloseHours()Ljava/util/Date;

    move-result-object v5

    invoke-static {v4, v5, v9}, Lcom/yopeso/lieferando/util/OpeningUtils;->compareHours(Ljava/util/Date;Ljava/util/Date;Z)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/restaurant/Opening;->getCloseHours()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getDay()I

    move-result v4

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/restaurant/Opening;->getOpenHours()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getDay()I

    move-result v5

    if-le v4, v5, :cond_3

    .line 560
    :cond_1
    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getTimeFormatter()Ljava/text/SimpleDateFormat;

    move-result-object v4

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/restaurant/Opening;->getCloseHours()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 561
    .local v1, "closeH":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->opening_hours:I

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getTimeFormatter()Ljava/text/SimpleDateFormat;

    move-result-object v7

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/restaurant/Opening;->getOpenHours()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    .line 562
    const-string v7, "00:00"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v1, "24:00"

    .end local v1    # "closeH":Ljava/lang/String;
    :cond_2
    aput-object v1, v6, v9

    .line 561
    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v2, v4, :cond_3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v9, :cond_3

    .line 564
    sget v4, Lcom/yopeso/lieferando/R$string;->opening_separator:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 568
    :cond_4
    sget-object v4, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/restaurant/Opening;->getCloseHours()Ljava/util/Date;

    move-result-object v5

    invoke-static {v4, v5, v9}, Lcom/yopeso/lieferando/util/OpeningUtils;->compareHours(Ljava/util/Date;Ljava/util/Date;Z)I

    move-result v4

    if-eq v4, v9, :cond_3

    .line 569
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->opening_hours:I

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getTimeFormatter()Ljava/text/SimpleDateFormat;

    move-result-object v7

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/restaurant/Opening;->getOpenHours()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    .line 570
    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getTimeFormatter()Ljava/text/SimpleDateFormat;

    move-result-object v7

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/restaurant/Opening;->getCloseHours()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 569
    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v2, v4, :cond_3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v9, :cond_3

    .line 573
    sget v4, Lcom/yopeso/lieferando/R$string;->opening_separator:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static hasOrderInRestaurant(I)Z
    .locals 4
    .param p0, "restaurant_id"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 493
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 494
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/UserData;->getmRestaurantOrders()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 495
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/UserData;->getmRestaurantOrders()Ljava/util/List;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/yopeso/lieferando/model/user/UserData;->getStampsForRestaurant(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 501
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 495
    goto :goto_0

    .line 498
    :cond_2
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/yopeso/lieferando/model/user/UserData;->getStampsForRestaurant(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static varargs hideViews([Landroid/view/View;)V
    .locals 4
    .param p0, "v"    # [Landroid/view/View;

    .prologue
    .line 508
    array-length v2, p0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 511
    return-void

    .line 508
    :cond_0
    aget-object v0, p0, v1

    .line 509
    .local v0, "view":Landroid/view/View;
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 508
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static setFavourites(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Landroid/view/View;Landroid/content/Context;)V
    .locals 2
    .param p0, "restaurant"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 523
    sget v1, Lcom/yopeso/lieferando/R$id;->heart:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 524
    .local v0, "heart":Landroid/widget/ImageView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 525
    invoke-static {p0}, Lcom/yopeso/lieferando/util/UserStore;->isFavorite(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 526
    sget v1, Lcom/yopeso/lieferando/R$drawable;->heart_selected:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 530
    :goto_0
    return-void

    .line 528
    :cond_0
    sget v1, Lcom/yopeso/lieferando/R$drawable;->heart:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public displayRestaurantInView(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Landroid/view/View;Landroid/content/Context;Lcom/google/android/gms/maps/model/Marker;)V
    .locals 46
    .param p1, "restaurant"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 98
    sget v37, Lcom/yopeso/lieferando/R$id;->RestaurantLogo:I

    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    .line 99
    .local v20, "logo":Landroid/widget/ImageView;
    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getTagFactory()Lcom/novoda/imageloader/core/model/ImageTagFactory;

    move-result-object v37

    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getImgUrl()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/util/ImageUtils;->getOptimizedLogoUrl(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->build(Ljava/lang/String;Landroid/content/Context;)Lcom/novoda/imageloader/core/model/ImageTag;

    move-result-object v37

    move-object/from16 v0, v20

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 116
    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getImageLoader()Lcom/novoda/imageloader/core/loader/Loader;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/novoda/imageloader/core/loader/Loader;->load(Landroid/widget/ImageView;)V

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yopeso/lieferando/adapters/restaurant/MapsInfoWindowAdapter;->image_urls:Ljava/util/List;

    move-object/from16 v37, v0

    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getImgUrl()Ljava/lang/String;

    move-result-object v38

    invoke-interface/range {v37 .. v38}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_0

    .line 120
    new-instance v37, Lcom/yopeso/lieferando/adapters/restaurant/MapsInfoWindowAdapter$1;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/yopeso/lieferando/adapters/restaurant/MapsInfoWindowAdapter$1;-><init>(Lcom/yopeso/lieferando/adapters/restaurant/MapsInfoWindowAdapter;Lcom/google/android/gms/maps/model/Marker;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    .line 138
    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getImgUrl()Ljava/lang/String;

    move-result-object v40

    aput-object v40, v38, v39

    move-object/from16 v0, v37

    instance-of v0, v0, Landroid/os/AsyncTask;

    move/from16 v39, v0

    if-nez v39, :cond_a

    invoke-virtual/range {v37 .. v38}, Lcom/yopeso/lieferando/adapters/restaurant/MapsInfoWindowAdapter$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 142
    :cond_0
    :goto_0
    sget v37, Lcom/yopeso/lieferando/R$id;->newLabel:I

    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .line 143
    .local v23, "newLogo":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isNew()Z

    move-result v37

    if-eqz v37, :cond_b

    .line 144
    const/16 v37, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 150
    :goto_1
    sget v37, Lcom/yopeso/lieferando/R$id;->RestaurantName:I

    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getName()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v39, "                                   "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    sget v37, Lcom/yopeso/lieferando/R$id;->RestaurantDistance:I

    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 153
    .local v11, "distance":Landroid/widget/TextView;
    sget-object v37, Lcom/yopeso/lieferando/LieferandoApplication;->sUserLocation:Landroid/location/Location;

    if-eqz v37, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getLatitude()D

    move-result-wide v38

    const-wide/16 v40, 0x0

    cmpl-double v37, v38, v40

    if-eqz v37, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getLongitude()D

    move-result-wide v38

    const-wide/16 v40, 0x0

    cmpl-double v37, v38, v40

    if-eqz v37, :cond_c

    .line 154
    new-instance v19, Landroid/location/Location;

    const-string v37, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 155
    .local v19, "location":Landroid/location/Location;
    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getLatitude()D

    move-result-wide v38

    move-object/from16 v0, v19

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 156
    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getLongitude()D

    move-result-wide v38

    move-object/from16 v0, v19

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 157
    sget-object v37, Lcom/yopeso/lieferando/LieferandoApplication;->sUserLocation:Landroid/location/Location;

    move-object/from16 v0, v37

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v12

    .line 158
    .local v12, "distanceInMeters":F
    const/16 v37, 0x0

    move/from16 v0, v37

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    invoke-static {v12}, Lcom/yopeso/lieferando/adapters/restaurant/MapsInfoWindowAdapter;->getDistanceText(F)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    sget v37, Lcom/yopeso/lieferando/R$id;->RestaurantDistanceDiv:I

    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    const/16 v38, 0x0

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    .end local v12    # "distanceInMeters":F
    .end local v19    # "location":Landroid/location/Location;
    :goto_2
    sget v37, Lcom/yopeso/lieferando/R$id;->RestaurantDetails:I

    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getCategory()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getMinCost()I

    move-result v22

    .line 169
    .local v22, "minCost":I
    if-gez v22, :cond_d

    .line 170
    sget v37, Lcom/yopeso/lieferando/R$id;->MinimumOrder:I

    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    const/16 v38, 0x8

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    :goto_3
    sget v37, Lcom/yopeso/lieferando/R$id;->RestaurantSchedule:I

    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    .local v30, "scheduleTextView":Landroid/widget/TextView;
    move-object/from16 v37, p3

    .line 181
    check-cast v37, Landroid/app/Activity;

    invoke-virtual/range {v37 .. v37}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v6

    check-cast v6, Lcom/yopeso/lieferando/LieferandoApplication;

    .line 183
    .local v6, "app":Lcom/yopeso/lieferando/LieferandoApplication;
    sget-object v37, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getScheduleMerged(Ljava/util/Date;)Ljava/util/ArrayList;

    move-result-object v31

    .line 185
    .local v31, "schedules":Ljava/util/List;, "Ljava/util/List<Lcom/yopeso/lieferando/model/restaurant/Opening;>;"
    sget-object v37, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen(Ljava/util/Date;)Z

    move-result v37

    if-eqz v37, :cond_10

    .line 186
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    sget v38, Lcom/yopeso/lieferando/R$color;->text_green:I

    invoke-virtual/range {v37 .. v38}, Landroid/content/res/Resources;->getColor(I)I

    move-result v37

    move-object/from16 v0, v30

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 187
    sget v37, Lcom/yopeso/lieferando/R$drawable;->icon_green_watch:I

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v39

    move/from16 v4, v40

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 189
    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v37

    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v38

    move/from16 v0, v37

    move/from16 v1, v38

    invoke-virtual {v6, v0, v1}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v37

    if-nez v37, :cond_e

    .line 190
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    sget v38, Lcom/yopeso/lieferando/R$color;->text_red:I

    invoke-virtual/range {v37 .. v38}, Landroid/content/res/Resources;->getColor(I)I

    move-result v37

    move-object/from16 v0, v30

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 191
    sget v37, Lcom/yopeso/lieferando/R$drawable;->icon_red_watch:I

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v39

    move/from16 v4, v40

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 192
    sget v37, Lcom/yopeso/lieferando/R$string;->printer_offline:I

    move-object/from16 v0, v30

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 227
    :goto_4
    sget v37, Lcom/yopeso/lieferando/R$id;->DeliveryCost:I

    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 228
    .local v9, "deliveryCostTV":Landroid/widget/TextView;
    if-eqz v9, :cond_1

    .line 229
    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getDeliverCost()I

    move-result v37

    if-gez v37, :cond_14

    .line 230
    const/16 v37, 0x8

    move/from16 v0, v37

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 244
    :cond_1
    :goto_5
    sget v37, Lcom/yopeso/lieferando/R$id;->LogoRL:I

    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/RelativeLayout;

    .line 245
    .local v21, "logoRL":Landroid/widget/RelativeLayout;
    if-eqz v21, :cond_2

    .line 246
    const/16 v37, 0x0

    const/16 v38, 0x14

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v39

    move/from16 v4, v40

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 253
    :cond_2
    invoke-static/range {p1 .. p3}, Lcom/yopeso/lieferando/adapters/restaurant/MapsInfoWindowAdapter;->setFavourites(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Landroid/view/View;Landroid/content/Context;)V

    .line 256
    sget v37, Lcom/yopeso/lieferando/R$id;->RestaurantRating:I

    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/RatingBar;

    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getRatingAverage()F

    move-result v38

    invoke-virtual/range {v37 .. v38}, Landroid/widget/RatingBar;->setRating(F)V

    .line 257
    sget v37, Lcom/yopeso/lieferando/R$id;->RestaurantRatingDetails:I

    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    sget v38, Lcom/yopeso/lieferando/R$string;->rating_details:I

    const/16 v39, 0x1

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getRatingsCount()I

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    aput-object v41, v39, v40

    move-object/from16 v0, p3

    move/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    sget v37, Lcom/yopeso/lieferando/R$id;->AvailablePayments:I

    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    if-eqz v37, :cond_4

    .line 260
    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->getInstance(Lcom/yopeso/lieferando/model/SettingsContent;)Lcom/yopeso/lieferando/util/PaymentSettingsUtil;

    move-result-object v26

    .line 261
    .local v26, "paymentSettings":Lcom/yopeso/lieferando/util/PaymentSettingsUtil;
    sget v37, Lcom/yopeso/lieferando/R$id;->PaymentCash:I

    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v38

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->isCashAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v37

    if-eqz v37, :cond_16

    const/16 v37, 0x0

    :goto_6
    move-object/from16 v0, v38

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 262
    sget v37, Lcom/yopeso/lieferando/R$id;->OnlinePayment:I

    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v38

    .line 263
    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->isPaypalAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v37

    if-nez v37, :cond_3

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->isClickAndBuyAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v37

    if-nez v37, :cond_3

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->isCreditAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v37

    if-nez v37, :cond_3

    .line 264
    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->isEbankingAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v37

    if-eqz v37, :cond_17

    :cond_3
    const/16 v37, 0x0

    .line 262
    :goto_7
    move-object/from16 v0, v38

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 266
    .end local v26    # "paymentSettings":Lcom/yopeso/lieferando/util/PaymentSettingsUtil;
    :cond_4
    sget v37, Lcom/yopeso/lieferando/R$id;->SmsMsg:I

    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v38

    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v37

    if-eqz v37, :cond_18

    const/16 v37, 0x0

    :goto_8
    move-object/from16 v0, v38

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 268
    sget v37, Lcom/yopeso/lieferando/R$id;->clockIcon1:I

    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 269
    .local v7, "clock1":Landroid/widget/ImageView;
    const/16 v37, 0x8

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 270
    sget v37, Lcom/yopeso/lieferando/R$id;->clockIcon2:I

    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 271
    .local v8, "clock2":Landroid/widget/ImageView;
    const/16 v37, 0x8

    move/from16 v0, v37

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 273
    sget v37, Lcom/yopeso/lieferando/R$id;->StampCard:I

    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/TextView;

    .line 274
    .local v33, "stamp":Landroid/widget/TextView;
    sget v37, Lcom/yopeso/lieferando/R$id;->stamp_layout:I

    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/LinearLayout;

    .line 275
    .local v35, "stampLayout":Landroid/widget/LinearLayout;
    sget v37, Lcom/yopeso/lieferando/R$id;->StampCard2:I

    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/TextView;

    .line 276
    .local v34, "stamp2":Landroid/widget/TextView;
    sget v37, Lcom/yopeso/lieferando/R$id;->stamp_layout2:I

    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/LinearLayout;

    .line 279
    .local v36, "stampLayout2":Landroid/widget/LinearLayout;
    sget v37, Lcom/yopeso/lieferando/R$id;->LieferandoVoucher:I

    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 280
    .local v17, "lieferando_voucher":Landroid/widget/TextView;
    sget v37, Lcom/yopeso/lieferando/R$id;->lieferando_voucher_layout:I

    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    .line 281
    .local v18, "lieferando_voucherLL":Landroid/widget/LinearLayout;
    sget v37, Lcom/yopeso/lieferando/R$id;->PartnerRebate:I

    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 282
    .local v24, "partner_rebate":Landroid/widget/TextView;
    sget v37, Lcom/yopeso/lieferando/R$id;->partner_rebate_layout:I

    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/LinearLayout;

    .line 286
    .local v25, "partner_rebateLL":Landroid/widget/LinearLayout;
    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v37

    if-nez v37, :cond_5

    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v37

    if-eqz v37, :cond_35

    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v37

    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v38

    invoke-virtual/range {v37 .. v38}, Lcom/yopeso/lieferando/model/user/UserData;->getStampsForRestaurant(I)Ljava/util/ArrayList;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v37

    if-nez v37, :cond_35

    .line 288
    :cond_5
    const/16 v16, 0x0

    .line 291
    .local v16, "isValidDiscount":Z
    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v37

    if-eqz v37, :cond_24

    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lcom/yopeso/lieferando/model/Stamp;->getmDiscounts()Ljava/util/ArrayList;

    move-result-object v37

    if-eqz v37, :cond_24

    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lcom/yopeso/lieferando/model/Stamp;->getmDiscounts()Ljava/util/ArrayList;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v37

    if-nez v37, :cond_24

    sget-object v37, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen(Ljava/util/Date;)Z

    move-result v37

    if-eqz v37, :cond_24

    .line 292
    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v37

    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v38

    move/from16 v0, v37

    move/from16 v1, v38

    invoke-virtual {v6, v0, v1}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v37

    if-eqz v37, :cond_24

    .line 294
    const/4 v14, 0x0

    .line 295
    .local v14, "hasActivePartnerDiscout":Z
    const/4 v13, 0x0

    .line 296
    .local v13, "hasActiveNewCustomerDiscount":Z
    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lcom/yopeso/lieferando/model/Stamp;->getmDiscounts()Ljava/util/ArrayList;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v37

    :cond_6
    :goto_9
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-nez v38, :cond_19

    .line 375
    .end local v13    # "hasActiveNewCustomerDiscount":Z
    .end local v14    # "hasActivePartnerDiscout":Z
    :goto_a
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v37

    if-nez v37, :cond_26

    .line 376
    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lcom/yopeso/lieferando/model/Stamp;->hasStampcardCampain()Z

    move-result v37

    if-eqz v37, :cond_25

    sget-object v37, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen(Ljava/util/Date;)Z

    move-result v37

    if-eqz v37, :cond_25

    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v37

    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v38

    move/from16 v0, v37

    move/from16 v1, v38

    invoke-virtual {v6, v0, v1}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v37

    if-eqz v37, :cond_25

    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    .line 379
    aput-object v33, v37, v38

    const/16 v38, 0x1

    aput-object v35, v37, v38

    invoke-static/range {v37 .. v37}, Lcom/yopeso/lieferando/adapters/restaurant/MapsInfoWindowAdapter;->appearViews([Landroid/view/View;)V

    .line 380
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    sget v38, Lcom/yopeso/lieferando/R$string;->stamp_not_logged_in:I

    const/16 v39, 0x1

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    aput-object v41, v39, v40

    invoke-virtual/range {v37 .. v39}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v33

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v37

    if-nez v37, :cond_7

    .line 382
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    sget v38, Lcom/yopeso/lieferando/R$color;->stamp_background_orange:I

    invoke-virtual/range {v37 .. v38}, Landroid/content/res/Resources;->getColor(I)I

    move-result v37

    move-object/from16 v0, v33

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 383
    :cond_7
    sget v37, Lcom/yopeso/lieferando/R$drawable;->dotted_orange:I

    move-object/from16 v0, v35

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 386
    :goto_b
    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    .line 388
    aput-object v34, v37, v38

    const/16 v38, 0x1

    aput-object v36, v37, v38

    invoke-static/range {v37 .. v37}, Lcom/yopeso/lieferando/adapters/restaurant/MapsInfoWindowAdapter;->hideViews([Landroid/view/View;)V

    .line 483
    .end local v16    # "isValidDiscount":Z
    :cond_8
    :goto_c
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v37

    if-eqz v37, :cond_9

    .line 484
    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lcom/yopeso/lieferando/model/SettingsContent;->isStampcardActive()Z

    move-result v37

    if-nez v37, :cond_9

    const/16 v37, 0x4

    move/from16 v0, v37

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    .line 486
    aput-object v33, v37, v38

    const/16 v38, 0x1

    aput-object v35, v37, v38

    const/16 v38, 0x2

    aput-object v34, v37, v38

    const/16 v38, 0x3

    aput-object v36, v37, v38

    invoke-static/range {v37 .. v37}, Lcom/yopeso/lieferando/adapters/restaurant/MapsInfoWindowAdapter;->hideViews([Landroid/view/View;)V

    .line 490
    :cond_9
    return-void

    .line 138
    .end local v6    # "app":Lcom/yopeso/lieferando/LieferandoApplication;
    .end local v7    # "clock1":Landroid/widget/ImageView;
    .end local v8    # "clock2":Landroid/widget/ImageView;
    .end local v9    # "deliveryCostTV":Landroid/widget/TextView;
    .end local v11    # "distance":Landroid/widget/TextView;
    .end local v17    # "lieferando_voucher":Landroid/widget/TextView;
    .end local v18    # "lieferando_voucherLL":Landroid/widget/LinearLayout;
    .end local v21    # "logoRL":Landroid/widget/RelativeLayout;
    .end local v22    # "minCost":I
    .end local v23    # "newLogo":Landroid/view/View;
    .end local v24    # "partner_rebate":Landroid/widget/TextView;
    .end local v25    # "partner_rebateLL":Landroid/widget/LinearLayout;
    .end local v30    # "scheduleTextView":Landroid/widget/TextView;
    .end local v31    # "schedules":Ljava/util/List;, "Ljava/util/List<Lcom/yopeso/lieferando/model/restaurant/Opening;>;"
    .end local v33    # "stamp":Landroid/widget/TextView;
    .end local v34    # "stamp2":Landroid/widget/TextView;
    .end local v35    # "stampLayout":Landroid/widget/LinearLayout;
    .end local v36    # "stampLayout2":Landroid/widget/LinearLayout;
    :cond_a
    check-cast v37, Landroid/os/AsyncTask;

    invoke-static/range {v37 .. v38}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 147
    .restart local v23    # "newLogo":Landroid/view/View;
    :cond_b
    const/16 v37, 0x8

    move-object/from16 v0, v23

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 162
    .restart local v11    # "distance":Landroid/widget/TextView;
    :cond_c
    const/16 v37, 0x8

    move/from16 v0, v37

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    sget v37, Lcom/yopeso/lieferando/R$id;->RestaurantDistanceDiv:I

    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    const/16 v38, 0x8

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 173
    .restart local v22    # "minCost":I
    :cond_d
    sget v37, Lcom/yopeso/lieferando/R$id;->MinimumOrder:I

    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    const/16 v38, 0x0

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    sget v37, Lcom/yopeso/lieferando/R$id;->MinimumOrder:I

    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    sget v39, Lcom/yopeso/lieferando/R$string;->minimum_order:I

    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v42

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v43, v0

    const/high16 v44, 0x42c80000    # 100.0f

    div-float v43, v43, v44

    move/from16 v0, v43

    float-to-double v0, v0

    move-wide/from16 v44, v0

    move-object/from16 v0, v42

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v42

    aput-object v42, v40, v41

    invoke-virtual/range {v38 .. v40}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 195
    .restart local v6    # "app":Lcom/yopeso/lieferando/LieferandoApplication;
    .restart local v30    # "scheduleTextView":Landroid/widget/TextView;
    .restart local v31    # "schedules":Ljava/util/List;, "Ljava/util/List<Lcom/yopeso/lieferando/model/restaurant/Opening;>;"
    :cond_e
    if-eqz v31, :cond_f

    .line 196
    move-object/from16 v0, v31

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/adapters/restaurant/MapsInfoWindowAdapter;->getSchedulesAsString(Ljava/util/List;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v30

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 200
    :cond_f
    sget v37, Lcom/yopeso/lieferando/R$string;->open:I

    move-object/from16 v0, v30

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    .line 204
    :cond_10
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    sget v38, Lcom/yopeso/lieferando/R$color;->text_red:I

    invoke-virtual/range {v37 .. v38}, Landroid/content/res/Resources;->getColor(I)I

    move-result v37

    move-object/from16 v0, v30

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 205
    sget v37, Lcom/yopeso/lieferando/R$drawable;->icon_red_watch:I

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v39

    move/from16 v4, v40

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 207
    if-eqz v31, :cond_13

    .line 208
    move-object/from16 v0, v31

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/adapters/restaurant/MapsInfoWindowAdapter;->getSchedulesAsString(Ljava/util/List;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v29

    .line 210
    .local v29, "scheduleText":Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v37

    if-nez v37, :cond_11

    .line 211
    sget v37, Lcom/yopeso/lieferando/R$string;->closed_today:I

    move-object/from16 v0, v30

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    .line 213
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v37

    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v38

    move/from16 v0, v37

    move/from16 v1, v38

    invoke-virtual {v6, v0, v1}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v37

    if-nez v37, :cond_12

    .line 214
    sget v37, Lcom/yopeso/lieferando/R$string;->printer_offline:I

    move-object/from16 v0, v30

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    .line 216
    :cond_12
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 221
    .end local v29    # "scheduleText":Ljava/lang/String;
    :cond_13
    sget v37, Lcom/yopeso/lieferando/R$string;->closed_today:I

    move-object/from16 v0, v30

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    .line 233
    .restart local v9    # "deliveryCostTV":Landroid/widget/TextView;
    :cond_14
    const/16 v37, 0x0

    move/from16 v0, v37

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getDeliverCost()I

    move-result v37

    if-nez v37, :cond_15

    .line 235
    sget v37, Lcom/yopeso/lieferando/R$string;->freeDelivery:I

    move/from16 v0, v37

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_5

    .line 238
    :cond_15
    new-instance v37, Ljava/lang/StringBuilder;

    sget v38, Lcom/yopeso/lieferando/R$string;->delivery_value:I

    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v38, " "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v38

    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getDeliverCost()I

    move-result v39

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    const/high16 v40, 0x42c80000    # 100.0f

    div-float v39, v39, v40

    move/from16 v0, v39

    float-to-double v0, v0

    move-wide/from16 v40, v0

    move-object/from16 v0, v38

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    sget v38, Lcom/yopeso/lieferando/R$string;->currency:I

    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 261
    .restart local v21    # "logoRL":Landroid/widget/RelativeLayout;
    .restart local v26    # "paymentSettings":Lcom/yopeso/lieferando/util/PaymentSettingsUtil;
    :cond_16
    const/16 v37, 0x8

    goto/16 :goto_6

    .line 264
    :cond_17
    const/16 v37, 0x8

    goto/16 :goto_7

    .line 266
    .end local v26    # "paymentSettings":Lcom/yopeso/lieferando/util/PaymentSettingsUtil;
    :cond_18
    const/16 v37, 0x8

    goto/16 :goto_8

    .line 296
    .restart local v7    # "clock1":Landroid/widget/ImageView;
    .restart local v8    # "clock2":Landroid/widget/ImageView;
    .restart local v13    # "hasActiveNewCustomerDiscount":Z
    .restart local v14    # "hasActivePartnerDiscout":Z
    .restart local v16    # "isValidDiscount":Z
    .restart local v17    # "lieferando_voucher":Landroid/widget/TextView;
    .restart local v18    # "lieferando_voucherLL":Landroid/widget/LinearLayout;
    .restart local v24    # "partner_rebate":Landroid/widget/TextView;
    .restart local v25    # "partner_rebateLL":Landroid/widget/LinearLayout;
    .restart local v33    # "stamp":Landroid/widget/TextView;
    .restart local v34    # "stamp2":Landroid/widget/TextView;
    .restart local v35    # "stampLayout":Landroid/widget/LinearLayout;
    .restart local v36    # "stampLayout2":Landroid/widget/LinearLayout;
    :cond_19
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/yopeso/lieferando/model/Discount;

    .line 301
    .local v10, "discount":Lcom/yopeso/lieferando/model/Discount;
    invoke-virtual {v10}, Lcom/yopeso/lieferando/model/Discount;->ismNewCustomer()Z

    move-result v38

    if-eqz v38, :cond_1f

    .line 303
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v38

    if-eqz v38, :cond_1b

    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v38

    invoke-static/range {v38 .. v38}, Lcom/yopeso/lieferando/adapters/restaurant/MapsInfoWindowAdapter;->hasOrderInRestaurant(I)Z

    move-result v38

    if-eqz v38, :cond_1b

    .line 305
    if-nez v13, :cond_1a

    const/16 v38, 0x2

    move/from16 v0, v38

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    .line 306
    aput-object v24, v38, v39

    const/16 v39, 0x1

    aput-object v25, v38, v39

    invoke-static/range {v38 .. v38}, Lcom/yopeso/lieferando/adapters/restaurant/MapsInfoWindowAdapter;->hideViews([Landroid/view/View;)V

    .line 332
    :cond_1a
    :goto_d
    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Lcom/yopeso/lieferando/model/Stamp;->getmDiscounts()Ljava/util/ArrayList;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->size()I

    move-result v38

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_6

    const/16 v38, 0x2

    move/from16 v0, v38

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    .line 334
    aput-object v17, v38, v39

    const/16 v39, 0x1

    aput-object v18, v38, v39

    invoke-static/range {v38 .. v38}, Lcom/yopeso/lieferando/adapters/restaurant/MapsInfoWindowAdapter;->hideViews([Landroid/view/View;)V

    goto/16 :goto_9

    .line 310
    :cond_1b
    sget-object v38, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    move-object/from16 v0, v38

    invoke-virtual {v10, v0}, Lcom/yopeso/lieferando/model/Discount;->isActive(Ljava/util/Date;)Z

    move-result v38

    if-eqz v38, :cond_1e

    .line 311
    const/16 v16, 0x1

    .line 312
    const/4 v13, 0x1

    const/16 v38, 0x2

    move/from16 v0, v38

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    .line 313
    aput-object v24, v38, v39

    const/16 v39, 0x1

    aput-object v25, v38, v39

    invoke-static/range {v38 .. v38}, Lcom/yopeso/lieferando/adapters/restaurant/MapsInfoWindowAdapter;->appearViews([Landroid/view/View;)V

    .line 314
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v38

    if-nez v38, :cond_1c

    .line 315
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    sget v39, Lcom/yopeso/lieferando/R$color;->stamp_background_blue:I

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getColor(I)I

    move-result v38

    move-object/from16 v0, v24

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 316
    :cond_1c
    sget v38, Lcom/yopeso/lieferando/R$drawable;->dotted_blue:I

    move-object/from16 v0, v25

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 317
    invoke-virtual {v10}, Lcom/yopeso/lieferando/model/Discount;->getmKind()I

    move-result v38

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_1d

    .line 319
    sget v38, Lcom/yopeso/lieferando/R$string;->discount_price:I

    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v38

    const/16 v39, 0x1

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v41

    invoke-virtual {v10}, Lcom/yopeso/lieferando/model/Discount;->getmRabatt()I

    move-result v42

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    const/high16 v43, 0x42c80000    # 100.0f

    div-float v42, v42, v43

    move/from16 v0, v42

    float-to-double v0, v0

    move-wide/from16 v42, v0

    invoke-virtual/range {v41 .. v43}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v41

    aput-object v41, v39, v40

    invoke-static/range {v38 .. v39}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v24

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 323
    :cond_1d
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/yopeso/lieferando/model/Discount;->getmRabatt()I

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v39, " %"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v24

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 327
    :cond_1e
    if-nez v13, :cond_1a

    const/16 v38, 0x2

    move/from16 v0, v38

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    .line 328
    aput-object v24, v38, v39

    const/16 v39, 0x1

    aput-object v25, v38, v39

    invoke-static/range {v38 .. v38}, Lcom/yopeso/lieferando/adapters/restaurant/MapsInfoWindowAdapter;->hideViews([Landroid/view/View;)V

    goto/16 :goto_d

    .line 341
    :cond_1f
    sget-object v38, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    move-object/from16 v0, v38

    invoke-virtual {v10, v0}, Lcom/yopeso/lieferando/model/Discount;->isActive(Ljava/util/Date;)Z

    move-result v38

    if-eqz v38, :cond_23

    .line 342
    const/4 v14, 0x1

    .line 343
    const/16 v16, 0x1

    const/16 v38, 0x2

    move/from16 v0, v38

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    .line 344
    aput-object v17, v38, v39

    const/16 v39, 0x1

    aput-object v18, v38, v39

    invoke-static/range {v38 .. v38}, Lcom/yopeso/lieferando/adapters/restaurant/MapsInfoWindowAdapter;->appearViews([Landroid/view/View;)V

    .line 345
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v38

    if-nez v38, :cond_20

    .line 346
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    sget v39, Lcom/yopeso/lieferando/R$color;->stamp_background_red:I

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getColor(I)I

    move-result v38

    move-object/from16 v0, v17

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 347
    :cond_20
    sget v38, Lcom/yopeso/lieferando/R$drawable;->dotted_red:I

    move-object/from16 v0, v18

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 348
    invoke-virtual {v10}, Lcom/yopeso/lieferando/model/Discount;->getmKind()I

    move-result v38

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_22

    .line 350
    sget v38, Lcom/yopeso/lieferando/R$string;->discount_price:I

    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v38

    const/16 v39, 0x1

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v41

    invoke-virtual {v10}, Lcom/yopeso/lieferando/model/Discount;->getmRabatt()I

    move-result v42

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    const/high16 v43, 0x42c80000    # 100.0f

    div-float v42, v42, v43

    move/from16 v0, v42

    float-to-double v0, v0

    move-wide/from16 v42, v0

    invoke-virtual/range {v41 .. v43}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v41

    aput-object v41, v39, v40

    invoke-static/range {v38 .. v39}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v17

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    :cond_21
    :goto_e
    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Lcom/yopeso/lieferando/model/Stamp;->getmDiscounts()Ljava/util/ArrayList;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->size()I

    move-result v38

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_6

    const/16 v38, 0x2

    move/from16 v0, v38

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    .line 364
    aput-object v24, v38, v39

    const/16 v39, 0x1

    aput-object v25, v38, v39

    invoke-static/range {v38 .. v38}, Lcom/yopeso/lieferando/adapters/restaurant/MapsInfoWindowAdapter;->hideViews([Landroid/view/View;)V

    goto/16 :goto_9

    .line 354
    :cond_22
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/yopeso/lieferando/model/Discount;->getmRabatt()I

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v39, " %"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v17

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e

    .line 358
    :cond_23
    if-nez v14, :cond_21

    const/16 v38, 0x2

    move/from16 v0, v38

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    .line 359
    aput-object v17, v38, v39

    const/16 v39, 0x1

    aput-object v18, v38, v39

    invoke-static/range {v38 .. v38}, Lcom/yopeso/lieferando/adapters/restaurant/MapsInfoWindowAdapter;->hideViews([Landroid/view/View;)V

    goto :goto_e

    .line 370
    .end local v10    # "discount":Lcom/yopeso/lieferando/model/Discount;
    .end local v13    # "hasActiveNewCustomerDiscount":Z
    .end local v14    # "hasActivePartnerDiscout":Z
    :cond_24
    const/16 v37, 0x4

    move/from16 v0, v37

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    .line 372
    aput-object v17, v37, v38

    const/16 v38, 0x1

    aput-object v18, v37, v38

    const/16 v38, 0x2

    aput-object v24, v37, v38

    const/16 v38, 0x3

    aput-object v25, v37, v38

    invoke-static/range {v37 .. v37}, Lcom/yopeso/lieferando/adapters/restaurant/MapsInfoWindowAdapter;->hideViews([Landroid/view/View;)V

    goto/16 :goto_a

    .line 385
    :cond_25
    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    .line 386
    aput-object v33, v37, v38

    const/16 v38, 0x1

    aput-object v35, v37, v38

    invoke-static/range {v37 .. v37}, Lcom/yopeso/lieferando/adapters/restaurant/MapsInfoWindowAdapter;->hideViews([Landroid/view/View;)V

    goto/16 :goto_b

    .line 391
    :cond_26
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v37

    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v38

    invoke-virtual/range {v37 .. v38}, Lcom/yopeso/lieferando/model/user/UserData;->getStampsForRestaurant(I)Ljava/util/ArrayList;

    move-result-object v27

    .line 393
    .local v27, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/Stamp;>;"
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v37

    if-nez v37, :cond_33

    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    .line 395
    aput-object v33, v37, v38

    const/16 v38, 0x1

    aput-object v35, v37, v38

    invoke-static/range {v37 .. v37}, Lcom/yopeso/lieferando/adapters/restaurant/MapsInfoWindowAdapter;->appearViews([Landroid/view/View;)V

    .line 396
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v37

    if-nez v37, :cond_27

    .line 397
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    sget v38, Lcom/yopeso/lieferando/R$color;->stamp_background_orange:I

    invoke-virtual/range {v37 .. v38}, Landroid/content/res/Resources;->getColor(I)I

    move-result v37

    move-object/from16 v0, v33

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 398
    :cond_27
    sget v37, Lcom/yopeso/lieferando/R$drawable;->dotted_orange:I

    move-object/from16 v0, v35

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 399
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v37

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_2b

    .line 401
    const/16 v37, 0x8

    invoke-virtual/range {v36 .. v37}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 402
    const/16 v37, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/yopeso/lieferando/model/Stamp;

    .line 403
    .local v28, "rs":Lcom/yopeso/lieferando/model/Stamp;
    invoke-virtual/range {v28 .. v28}, Lcom/yopeso/lieferando/model/Stamp;->isFull()Z

    move-result v37

    if-eqz v37, :cond_29

    .line 404
    invoke-virtual/range {v28 .. v28}, Lcom/yopeso/lieferando/model/Stamp;->isPending()Z

    move-result v37

    if-eqz v37, :cond_28

    .line 405
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-virtual/range {v28 .. v28}, Lcom/yopeso/lieferando/model/Stamp;->getUserStamps()I

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v38

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v38, " / "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v28 .. v28}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v33

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    :goto_f
    invoke-virtual/range {v28 .. v28}, Lcom/yopeso/lieferando/model/Stamp;->isPending()Z

    move-result v37

    if-eqz v37, :cond_8

    .line 417
    const/16 v37, 0x0

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_c

    .line 407
    :cond_28
    sget v37, Lcom/yopeso/lieferando/R$string;->discount_price:I

    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v40

    invoke-virtual/range {v28 .. v28}, Lcom/yopeso/lieferando/model/Stamp;->getDiscountValue()I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    const/high16 v42, 0x42c80000    # 100.0f

    div-float v41, v41, v42

    move/from16 v0, v41

    float-to-double v0, v0

    move-wide/from16 v42, v0

    move-object/from16 v0, v40

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v40

    aput-object v40, v38, v39

    invoke-static/range {v37 .. v38}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v33

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 410
    :cond_29
    invoke-virtual/range {v28 .. v28}, Lcom/yopeso/lieferando/model/Stamp;->getUserStamps()I

    move-result v37

    invoke-virtual/range {v28 .. v28}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v38

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_2a

    .line 411
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-virtual/range {v28 .. v28}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v38

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v38, " / "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v28 .. v28}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v33

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 413
    :cond_2a
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-virtual/range {v28 .. v28}, Lcom/yopeso/lieferando/model/Stamp;->getUserStamps()I

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v38

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v38, " / "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v28 .. v28}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v33

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 421
    .end local v28    # "rs":Lcom/yopeso/lieferando/model/Stamp;
    :cond_2b
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v37

    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v38

    invoke-virtual/range {v37 .. v38}, Lcom/yopeso/lieferando/model/user/UserData;->getHighestValue(I)Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v15

    .line 422
    .local v15, "highestStamp":Lcom/yopeso/lieferando/model/Stamp;
    invoke-virtual {v15}, Lcom/yopeso/lieferando/model/Stamp;->isPending()Z

    move-result v37

    if-eqz v37, :cond_2f

    .line 423
    invoke-virtual {v15}, Lcom/yopeso/lieferando/model/Stamp;->getUserStamps()I

    move-result v37

    invoke-virtual {v15}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v38

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_2e

    .line 424
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v38

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v38, " / "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual {v15}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v33

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    :goto_10
    const/16 v37, 0x0

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 433
    :goto_11
    if-nez v16, :cond_32

    .line 434
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v37

    :goto_12
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_8

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/yopeso/lieferando/model/Stamp;

    .line 435
    .local v32, "st":Lcom/yopeso/lieferando/model/Stamp;
    invoke-virtual/range {v32 .. v32}, Lcom/yopeso/lieferando/model/Stamp;->isFull()Z

    move-result v38

    if-nez v38, :cond_31

    .line 436
    invoke-virtual/range {v32 .. v32}, Lcom/yopeso/lieferando/model/Stamp;->getUserStamps()I

    move-result v38

    invoke-virtual/range {v32 .. v32}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v39

    move/from16 v0, v38

    move/from16 v1, v39

    if-le v0, v1, :cond_30

    .line 437
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-virtual/range {v32 .. v32}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v39, " / "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v32 .. v32}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    :goto_13
    invoke-virtual/range {v32 .. v32}, Lcom/yopeso/lieferando/model/Stamp;->isPending()Z

    move-result v38

    if-eqz v38, :cond_2c

    .line 442
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 444
    :cond_2c
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v38

    if-nez v38, :cond_2d

    .line 445
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    sget v39, Lcom/yopeso/lieferando/R$color;->stamp_background_orange:I

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getColor(I)I

    move-result v38

    move-object/from16 v0, v34

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 446
    :cond_2d
    sget v38, Lcom/yopeso/lieferando/R$drawable;->dotted_orange:I

    move-object/from16 v0, v36

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const/16 v38, 0x2

    move/from16 v0, v38

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    .line 447
    aput-object v36, v38, v39

    const/16 v39, 0x1

    aput-object v34, v38, v39

    invoke-static/range {v38 .. v38}, Lcom/yopeso/lieferando/adapters/restaurant/MapsInfoWindowAdapter;->appearViews([Landroid/view/View;)V

    goto/16 :goto_12

    .line 426
    .end local v32    # "st":Lcom/yopeso/lieferando/model/Stamp;
    :cond_2e
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/yopeso/lieferando/model/Stamp;->getUserStamps()I

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v38

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v38, " / "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual {v15}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v33

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    .line 431
    :cond_2f
    sget v37, Lcom/yopeso/lieferando/R$string;->discount_price:I

    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v40

    invoke-virtual {v15}, Lcom/yopeso/lieferando/model/Stamp;->getDiscountValue()I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    const/high16 v42, 0x42c80000    # 100.0f

    div-float v41, v41, v42

    move/from16 v0, v41

    float-to-double v0, v0

    move-wide/from16 v42, v0

    move-object/from16 v0, v40

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v40

    aput-object v40, v38, v39

    invoke-static/range {v37 .. v38}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v33

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_11

    .line 439
    .restart local v32    # "st":Lcom/yopeso/lieferando/model/Stamp;
    :cond_30
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-virtual/range {v32 .. v32}, Lcom/yopeso/lieferando/model/Stamp;->getUserStamps()I

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v39, " / "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v32 .. v32}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_13

    .line 448
    :cond_31
    const/16 v38, 0x3

    move/from16 v0, v38

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    .line 450
    aput-object v34, v38, v39

    const/16 v39, 0x1

    aput-object v36, v38, v39

    const/16 v39, 0x2

    aput-object v8, v38, v39

    invoke-static/range {v38 .. v38}, Lcom/yopeso/lieferando/adapters/restaurant/MapsInfoWindowAdapter;->hideViews([Landroid/view/View;)V

    goto/16 :goto_12

    .line 454
    .end local v32    # "st":Lcom/yopeso/lieferando/model/Stamp;
    :cond_32
    const/16 v37, 0x3

    move/from16 v0, v37

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    .line 457
    aput-object v34, v37, v38

    const/16 v38, 0x1

    aput-object v36, v37, v38

    const/16 v38, 0x2

    aput-object v8, v37, v38

    invoke-static/range {v37 .. v37}, Lcom/yopeso/lieferando/adapters/restaurant/MapsInfoWindowAdapter;->hideViews([Landroid/view/View;)V

    goto/16 :goto_c

    .line 461
    .end local v15    # "highestStamp":Lcom/yopeso/lieferando/model/Stamp;
    :cond_33
    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    .line 463
    aput-object v34, v37, v38

    const/16 v38, 0x1

    aput-object v36, v37, v38

    invoke-static/range {v37 .. v37}, Lcom/yopeso/lieferando/adapters/restaurant/MapsInfoWindowAdapter;->hideViews([Landroid/view/View;)V

    .line 465
    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lcom/yopeso/lieferando/model/Stamp;->hasStampcardCampain()Z

    move-result v37

    if-eqz v37, :cond_34

    sget-object v37, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen(Ljava/util/Date;)Z

    move-result v37

    if-eqz v37, :cond_34

    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v37

    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v38

    move/from16 v0, v37

    move/from16 v1, v38

    invoke-virtual {v6, v0, v1}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v37

    if-eqz v37, :cond_34

    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    .line 466
    aput-object v33, v37, v38

    const/16 v38, 0x1

    aput-object v35, v37, v38

    invoke-static/range {v37 .. v37}, Lcom/yopeso/lieferando/adapters/restaurant/MapsInfoWindowAdapter;->appearViews([Landroid/view/View;)V

    .line 467
    new-instance v37, Ljava/lang/StringBuilder;

    const-string v38, "0/"

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v33

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 471
    :cond_34
    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    .line 473
    aput-object v33, v37, v38

    const/16 v38, 0x1

    aput-object v35, v37, v38

    invoke-static/range {v37 .. v37}, Lcom/yopeso/lieferando/adapters/restaurant/MapsInfoWindowAdapter;->hideViews([Landroid/view/View;)V

    goto/16 :goto_c

    .line 479
    .end local v16    # "isValidDiscount":Z
    .end local v27    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/Stamp;>;"
    :cond_35
    const/16 v37, 0x8

    move/from16 v0, v37

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    .line 480
    aput-object v33, v37, v38

    const/16 v38, 0x1

    aput-object v35, v37, v38

    const/16 v38, 0x2

    aput-object v34, v37, v38

    const/16 v38, 0x3

    aput-object v36, v37, v38

    const/16 v38, 0x4

    aput-object v17, v37, v38

    const/16 v38, 0x5

    aput-object v18, v37, v38

    const/16 v38, 0x6

    aput-object v24, v37, v38

    const/16 v38, 0x7

    aput-object v25, v37, v38

    invoke-static/range {v37 .. v37}, Lcom/yopeso/lieferando/adapters/restaurant/MapsInfoWindowAdapter;->hideViews([Landroid/view/View;)V

    goto/16 :goto_c
.end method

.method public getInfoContents(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
    .locals 1
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInfoWindow(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
    .locals 6
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 63
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/MapsInfoWindowAdapter;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 64
    .local v1, "li":Landroid/view/LayoutInflater;
    sget v3, Lcom/yopeso/lieferando/R$layout;->restaurants_infowindow_item:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 65
    .local v0, "convertView":Landroid/view/View;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 66
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/MapsInfoWindowAdapter;->mRestaurants:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 74
    :goto_0
    return-object v0

    .line 66
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .line 68
    .local v2, "restaurant":Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 69
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/MapsInfoWindowAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, v0, v3, p1}, Lcom/yopeso/lieferando/adapters/restaurant/MapsInfoWindowAdapter;->displayRestaurantInView(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Landroid/view/View;Landroid/content/Context;Lcom/google/android/gms/maps/model/Marker;)V

    goto :goto_0
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
    .line 53
    .local p1, "restaurants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Restaurant;>;"
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/restaurant/MapsInfoWindowAdapter;->mRestaurants:Ljava/util/ArrayList;

    .line 54
    return-void
.end method
