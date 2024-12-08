.class public Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "RestaurantsListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/yopeso/lieferando/model/restaurant/Restaurant;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field public static final STRING_LENGTH_REGEX:Ljava/lang/String; = ".{3,50}"

.field protected static final VIEW_TYPE_BOTTOM_BUTTON:I = 0x1

.field protected static final VIEW_TYPE_CLOSED_RESTAURANTS:I = 0x2

.field protected static final VIEW_TYPE_RESTAURANT:I


# instance fields
.field private dataset_changed:Z

.field private first_closed_restaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

.field protected mCallback:Lcom/yopeso/lieferando/callback/IRestaurantListCallback;

.field private mComment:Landroid/widget/EditText;

.field protected mContext:Landroid/content/Context;

.field private mEmail:Landroid/widget/EditText;

.field private mHauseNr:Landroid/widget/EditText;

.field protected mIsBottomButtonViewShown:Z

.field private mOrt:Landroid/widget/EditText;

.field protected mRealRestaurants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/Restaurant;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestQueue:Lcom/android/volley/RequestQueue;

.field protected mRestaurants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/Restaurant;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Landroid/widget/EditText;

.field private mStreet:Landroid/widget/EditText;

.field private mSubmitButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;Lcom/yopeso/lieferando/callback/IRestaurantListCallback;Lcom/android/volley/RequestQueue;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewResourceId"    # I
    .param p4, "callback"    # Lcom/yopeso/lieferando/callback/IRestaurantListCallback;
    .param p5, "requestQueue"    # Lcom/android/volley/RequestQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
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
    .local p3, "objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Restaurant;>;"
    const/4 v0, 0x1

    .line 103
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 82
    iput-boolean v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mIsBottomButtonViewShown:Z

    .line 83
    iput-boolean v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->dataset_changed:Z

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->first_closed_restaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .line 104
    iput-object p3, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mRestaurants:Ljava/util/ArrayList;

    .line 105
    iput-object p3, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mRealRestaurants:Ljava/util/ArrayList;

    .line 106
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mContext:Landroid/content/Context;

    .line 107
    iput-object p4, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mCallback:Lcom/yopeso/lieferando/callback/IRestaurantListCallback;

    .line 108
    iput-object p5, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 109
    return-void
.end method

.method static synthetic access$1(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;)Z
    .locals 1

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->isFormValid()Z

    move-result v0

    return v0
.end method

.method static synthetic access$10(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z
    .locals 1

    .prologue
    .line 439
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->isRestaurantClosedToday(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$11(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;Lcom/yopeso/lieferando/model/restaurant/Restaurant;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)I
    .locals 1

    .prologue
    .line 1469
    invoke-direct {p0, p1, p2}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->compareRestaurantByBestStamps(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mEmail:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mService:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$4(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mOrt:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$5(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mStreet:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$6(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mHauseNr:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$7(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mComment:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$8(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;Ljava/lang/CharSequence;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 997
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->getFilteredResults(Ljava/lang/CharSequence;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;Lcom/yopeso/lieferando/model/restaurant/Restaurant;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)I
    .locals 1

    .prologue
    .line 1378
    invoke-direct {p0, p1, p2}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->compareRestaurantsByNew(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)I

    move-result v0

    return v0
.end method

.method private static varargs appearViews([Landroid/view/View;)V
    .locals 4
    .param p0, "v"    # [Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 879
    array-length v3, p0

    move v1, v2

    :goto_0
    if-lt v1, v3, :cond_0

    .line 882
    return-void

    .line 879
    :cond_0
    aget-object v0, p0, v1

    .line 880
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 879
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private compareDiscounts(Lcom/yopeso/lieferando/model/Discount;Lcom/yopeso/lieferando/model/Discount;)I
    .locals 2
    .param p1, "disL"    # Lcom/yopeso/lieferando/model/Discount;
    .param p2, "disR"    # Lcom/yopeso/lieferando/model/Discount;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1594
    if-nez p1, :cond_2

    .line 1595
    if-nez p2, :cond_1

    .line 1602
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1595
    goto :goto_0

    .line 1598
    :cond_2
    if-eqz p2, :cond_0

    .line 1602
    invoke-virtual {p1, p2}, Lcom/yopeso/lieferando/model/Discount;->isBetterDiscount(Lcom/yopeso/lieferando/model/Discount;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, -0x1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private compareRestaurantByBestStamps(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)I
    .locals 1
    .param p1, "lhs"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    .param p2, "rhs"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 1471
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1472
    invoke-direct {p0, p1, p2}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->compareRestaurantsByStamps(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)I

    move-result v0

    .line 1478
    :goto_0
    return v0

    .line 1473
    :cond_0
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1474
    const/4 v0, 0x1

    goto :goto_0

    .line 1475
    :cond_1
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1476
    const/4 v0, -0x1

    goto :goto_0

    .line 1478
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private compareRestaurantsByDiscouts(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)I
    .locals 6
    .param p1, "lhs"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    .param p2, "rhs"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 1407
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v5

    if-eqz v5, :cond_14

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v5

    if-eqz v5, :cond_14

    .line 1409
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->getBestOfferDiscount(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Lcom/yopeso/lieferando/model/Discount;

    move-result-object v0

    .line 1410
    .local v0, "disL":Lcom/yopeso/lieferando/model/Discount;
    invoke-direct {p0, p2}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->getBestOfferDiscount(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Lcom/yopeso/lieferando/model/Discount;

    move-result-object v1

    .line 1411
    .local v1, "disR":Lcom/yopeso/lieferando/model/Discount;
    if-eqz v0, :cond_c

    if-eqz v1, :cond_c

    .line 1415
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/Stamp;->isExclusive()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/Stamp;->isExclusive()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1417
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isNew()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isNew()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isNew()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isNew()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1419
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->compareDiscounts(Lcom/yopeso/lieferando/model/Discount;Lcom/yopeso/lieferando/model/Discount;)I

    move-result v2

    .line 1465
    .end local v0    # "disL":Lcom/yopeso/lieferando/model/Discount;
    .end local v1    # "disR":Lcom/yopeso/lieferando/model/Discount;
    :cond_2
    :goto_0
    return v2

    .line 1420
    .restart local v0    # "disL":Lcom/yopeso/lieferando/model/Discount;
    .restart local v1    # "disR":Lcom/yopeso/lieferando/model/Discount;
    :cond_3
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isNew()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isNew()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1422
    :cond_4
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isNew()Z

    move-result v2

    if-nez v2, :cond_13

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isNew()Z

    move-result v2

    if-eqz v2, :cond_13

    move v2, v3

    .line 1423
    goto :goto_0

    .line 1425
    :cond_5
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/Stamp;->isExclusive()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/Stamp;->isExclusive()Z

    move-result v5

    if-eqz v5, :cond_6

    move v2, v3

    .line 1426
    goto :goto_0

    .line 1427
    :cond_6
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/Stamp;->isExclusive()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/Stamp;->isExclusive()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1430
    :cond_7
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isNew()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isNew()Z

    move-result v5

    if-nez v5, :cond_9

    :cond_8
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isNew()Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isNew()Z

    move-result v5

    if-nez v5, :cond_a

    .line 1432
    :cond_9
    invoke-direct {p0, v0, v1}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->compareDiscounts(Lcom/yopeso/lieferando/model/Discount;Lcom/yopeso/lieferando/model/Discount;)I

    move-result v2

    goto :goto_0

    .line 1433
    :cond_a
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isNew()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isNew()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1435
    :cond_b
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isNew()Z

    move-result v2

    if-nez v2, :cond_13

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isNew()Z

    move-result v2

    if-eqz v2, :cond_13

    move v2, v3

    .line 1436
    goto :goto_0

    .line 1441
    :cond_c
    if-nez v0, :cond_11

    if-nez v1, :cond_11

    .line 1443
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isNew()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isNew()Z

    move-result v5

    if-nez v5, :cond_e

    :cond_d
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isNew()Z

    move-result v5

    if-nez v5, :cond_f

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isNew()Z

    move-result v5

    if-nez v5, :cond_f

    .line 1445
    :cond_e
    invoke-direct {p0, p1, p2}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->compareRestaurantByBestStamps(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)I

    move-result v2

    goto/16 :goto_0

    .line 1446
    :cond_f
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isNew()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isNew()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1448
    :cond_10
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isNew()Z

    move-result v2

    if-nez v2, :cond_13

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isNew()Z

    move-result v2

    if-eqz v2, :cond_13

    move v2, v3

    .line 1449
    goto/16 :goto_0

    .line 1451
    :cond_11
    if-nez v0, :cond_12

    if-eqz v1, :cond_12

    move v2, v3

    .line 1453
    goto/16 :goto_0

    .line 1454
    :cond_12
    if-eqz v0, :cond_13

    if-eqz v1, :cond_2

    :cond_13
    move v2, v4

    .line 1459
    goto/16 :goto_0

    .line 1460
    .end local v0    # "disL":Lcom/yopeso/lieferando/model/Discount;
    .end local v1    # "disR":Lcom/yopeso/lieferando/model/Discount;
    :cond_14
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v5

    if-nez v5, :cond_15

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v5

    if-eqz v5, :cond_15

    move v2, v3

    .line 1461
    goto/16 :goto_0

    .line 1462
    :cond_15
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v3

    if-eqz v3, :cond_16

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v3

    if-eqz v3, :cond_2

    :cond_16
    move v2, v4

    .line 1465
    goto/16 :goto_0
.end method

.method private compareRestaurantsByNew(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)I
    .locals 3
    .param p1, "lhs"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    .param p2, "rhs"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    const/4 v2, 0x0

    .line 1379
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isNew()Z

    move-result v0

    .line 1380
    .local v0, "lhs_new":Z
    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isNew()Z

    move-result v1

    .line 1381
    .local v1, "rhs_new":Z
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 1392
    :cond_1
    :goto_0
    return v2

    .line 1385
    :cond_2
    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    .line 1386
    const/4 v2, -0x1

    goto :goto_0

    .line 1388
    :cond_3
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 1389
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private compareRestaurantsByStamps(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)I
    .locals 12
    .param p1, "lhs"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    .param p2, "rhs"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x1

    .line 1484
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v3

    .line 1485
    .local v3, "lhStamp":Lcom/yopeso/lieferando/model/Stamp;
    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v5

    .line 1486
    .local v5, "rhStamp":Lcom/yopeso/lieferando/model/Stamp;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/LieferandoApplication;

    .line 1487
    .local v0, "app":Lcom/yopeso/lieferando/LieferandoApplication;
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v7

    if-nez v7, :cond_11

    .line 1488
    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {p1, v7}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen(Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v7

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v11

    invoke-virtual {v0, v7, v11}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1489
    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {p2, v7}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen(Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v7

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v11

    invoke-virtual {v0, v7, v11}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v8

    .line 1578
    :goto_0
    return v7

    .line 1491
    :cond_0
    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {p1, v7}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen(Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v7

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v11

    invoke-virtual {v0, v7, v11}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1492
    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v7

    if-eqz v7, :cond_2

    sget-object v7, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {p2, v7}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen(Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v7

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v11

    invoke-virtual {v0, v7, v11}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    move v7, v10

    .line 1493
    goto :goto_0

    .line 1494
    :cond_2
    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v7

    if-eqz v7, :cond_3

    sget-object v7, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {p1, v7}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen(Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v7

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v11

    invoke-virtual {v0, v7, v11}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1495
    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v7

    if-eqz v7, :cond_4

    sget-object v7, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {p2, v7}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen(Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v7

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v11

    invoke-virtual {v0, v7, v11}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    move v7, v10

    .line 1496
    goto :goto_0

    .line 1497
    :cond_4
    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v7

    if-eqz v7, :cond_5

    sget-object v7, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {p1, v7}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen(Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v7

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v11

    invoke-virtual {v0, v7, v11}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v7

    if-nez v7, :cond_6

    .line 1498
    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v7

    if-eqz v7, :cond_6

    sget-object v7, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {p2, v7}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen(Ljava/util/Date;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v7

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v11

    invoke-virtual {v0, v7, v11}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v7

    if-nez v7, :cond_6

    :cond_5
    move v7, v10

    .line 1499
    goto/16 :goto_0

    .line 1500
    :cond_6
    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v7

    if-eqz v7, :cond_7

    sget-object v7, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {p1, v7}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen(Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v7

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v11

    invoke-virtual {v0, v7, v11}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v7

    if-nez v7, :cond_8

    .line 1501
    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v7

    if-eqz v7, :cond_8

    sget-object v7, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {p2, v7}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen(Ljava/util/Date;)Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v7

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v11

    invoke-virtual {v0, v7, v11}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_7
    move v7, v10

    .line 1502
    goto/16 :goto_0

    .line 1503
    :cond_8
    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v7

    if-eqz v7, :cond_9

    sget-object v7, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {p2, v7}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen(Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v7

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v10

    invoke-virtual {v0, v7, v10}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v7

    if-nez v7, :cond_a

    .line 1504
    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v7

    if-eqz v7, :cond_a

    sget-object v7, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {p1, v7}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen(Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v7

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v10

    invoke-virtual {v0, v7, v10}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_9
    move v7, v9

    .line 1505
    goto/16 :goto_0

    .line 1506
    :cond_a
    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v7

    if-eqz v7, :cond_b

    sget-object v7, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {p2, v7}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen(Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v7

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v10

    invoke-virtual {v0, v7, v10}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v7

    if-nez v7, :cond_c

    .line 1507
    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v7

    if-eqz v7, :cond_c

    sget-object v7, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {p1, v7}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen(Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v7

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v10

    invoke-virtual {v0, v7, v10}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v7

    if-nez v7, :cond_c

    :cond_b
    move v7, v9

    .line 1508
    goto/16 :goto_0

    .line 1509
    :cond_c
    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v7

    if-eqz v7, :cond_d

    sget-object v7, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {p2, v7}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen(Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v7

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v10

    invoke-virtual {v0, v7, v10}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v7

    if-nez v7, :cond_e

    .line 1510
    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v7

    if-eqz v7, :cond_e

    sget-object v7, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {p1, v7}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen(Ljava/util/Date;)Z

    move-result v7

    if-nez v7, :cond_e

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v7

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v10

    invoke-virtual {v0, v7, v10}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v7

    if-nez v7, :cond_e

    :cond_d
    move v7, v9

    .line 1511
    goto/16 :goto_0

    .line 1512
    :cond_e
    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v7

    if-eqz v7, :cond_f

    sget-object v7, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {p2, v7}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen(Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v7

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v10

    invoke-virtual {v0, v7, v10}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v7

    if-nez v7, :cond_10

    .line 1513
    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v7

    if-eqz v7, :cond_10

    sget-object v7, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {p1, v7}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen(Ljava/util/Date;)Z

    move-result v7

    if-nez v7, :cond_10

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v7

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v10

    invoke-virtual {v0, v7, v10}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v7

    if-eqz v7, :cond_10

    :cond_f
    move v7, v9

    .line 1514
    goto/16 :goto_0

    :cond_10
    move v7, v8

    .line 1516
    goto/16 :goto_0

    .line 1520
    :cond_11
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v7

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v11

    invoke-virtual {v7, v11}, Lcom/yopeso/lieferando/model/user/UserData;->getStampsForRestaurant(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 1521
    .local v4, "lhStamps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/Stamp;>;"
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v7

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v11

    invoke-virtual {v7, v11}, Lcom/yopeso/lieferando/model/user/UserData;->getStampsForRestaurant(I)Ljava/util/ArrayList;

    move-result-object v6

    .line 1522
    .local v6, "rhStamps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/Stamp;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_12

    move v7, v8

    .line 1523
    goto/16 :goto_0

    .line 1524
    :cond_12
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_13

    move v7, v10

    .line 1525
    goto/16 :goto_0

    .line 1526
    :cond_13
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_14

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_14

    move v7, v9

    .line 1527
    goto/16 :goto_0

    .line 1531
    :cond_14
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v7

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v11

    invoke-virtual {v7, v11}, Lcom/yopeso/lieferando/model/user/UserData;->getHighestValue(I)Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v1

    .line 1532
    .local v1, "highestStampLHS":Lcom/yopeso/lieferando/model/Stamp;
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v7

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v11

    invoke-virtual {v7, v11}, Lcom/yopeso/lieferando/model/user/UserData;->getHighestValue(I)Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v2

    .line 1533
    .local v2, "highestStampRHS":Lcom/yopeso/lieferando/model/Stamp;
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/Stamp;->isFull()Z

    move-result v7

    if-eqz v7, :cond_1c

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Stamp;->isFull()Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 1535
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/Stamp;->isPending()Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Stamp;->isPending()Z

    move-result v7

    if-eqz v7, :cond_17

    .line 1537
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v7

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v11

    if-le v7, v11, :cond_15

    move v7, v9

    .line 1538
    goto/16 :goto_0

    .line 1539
    :cond_15
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v7

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v9

    if-ge v7, v9, :cond_16

    move v7, v10

    .line 1540
    goto/16 :goto_0

    :cond_16
    move v7, v8

    .line 1542
    goto/16 :goto_0

    .line 1546
    :cond_17
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/Stamp;->isPending()Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Stamp;->isPending()Z

    move-result v7

    if-nez v7, :cond_18

    move v7, v10

    .line 1547
    goto/16 :goto_0

    .line 1548
    :cond_18
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/Stamp;->isPending()Z

    move-result v7

    if-nez v7, :cond_19

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Stamp;->isPending()Z

    move-result v7

    if-eqz v7, :cond_19

    move v7, v10

    .line 1549
    goto/16 :goto_0

    .line 1552
    :cond_19
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Stamp;->getDiscountValue()I

    move-result v7

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/Stamp;->getDiscountValue()I

    move-result v11

    if-le v7, v11, :cond_1a

    move v7, v10

    .line 1553
    goto/16 :goto_0

    .line 1554
    :cond_1a
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Stamp;->getDiscountValue()I

    move-result v7

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/Stamp;->getDiscountValue()I

    move-result v10

    if-ge v7, v10, :cond_1b

    move v7, v9

    .line 1555
    goto/16 :goto_0

    :cond_1b
    move v7, v8

    .line 1557
    goto/16 :goto_0

    .line 1563
    :cond_1c
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/Stamp;->isFull()Z

    move-result v7

    if-eqz v7, :cond_1d

    move v7, v10

    .line 1564
    goto/16 :goto_0

    .line 1566
    :cond_1d
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/Stamp;->isFull()Z

    move-result v7

    if-eqz v7, :cond_1e

    move v7, v10

    .line 1567
    goto/16 :goto_0

    .line 1570
    :cond_1e
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v7

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v11

    if-le v7, v11, :cond_1f

    move v7, v9

    .line 1572
    goto/16 :goto_0

    .line 1573
    :cond_1f
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v7

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v9

    if-ge v7, v9, :cond_20

    move v7, v10

    .line 1575
    goto/16 :goto_0

    :cond_20
    move v7, v8

    .line 1578
    goto/16 :goto_0
.end method

.method public static displayRestaurantInView(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Landroid/view/View;Landroid/content/Context;ZLcom/android/volley/RequestQueue;)V
    .locals 46
    .param p0, "restaurant"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "fav"    # Z
    .param p4, "requestQueue"    # Lcom/android/volley/RequestQueue;

    .prologue
    .line 486
    sget v37, Lcom/yopeso/lieferando/R$id;->RestaurantLogo:I

    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    .line 487
    .local v20, "logo":Landroid/widget/ImageView;
    if-eqz v20, :cond_0

    .line 488
    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getTagFactory()Lcom/novoda/imageloader/core/model/ImageTagFactory;

    move-result-object v37

    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getImgUrl()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/util/ImageUtils;->getOptimizedLogoUrl(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->build(Ljava/lang/String;Landroid/content/Context;)Lcom/novoda/imageloader/core/model/ImageTag;

    move-result-object v37

    move-object/from16 v0, v20

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 489
    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getImageLoader()Lcom/novoda/imageloader/core/loader/Loader;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/novoda/imageloader/core/loader/Loader;->load(Landroid/widget/ImageView;)V

    .line 494
    :cond_0
    sget v37, Lcom/yopeso/lieferando/R$id;->newLabel:I

    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .line 495
    .local v23, "newLogo":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isNew()Z

    move-result v37

    if-eqz v37, :cond_c

    .line 496
    const/16 v37, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 502
    :goto_0
    sget v37, Lcom/yopeso/lieferando/R$id;->RestaurantName:I

    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getName()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    sget v37, Lcom/yopeso/lieferando/R$id;->RestaurantDistance:I

    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 505
    .local v11, "distance":Landroid/widget/TextView;
    sget-object v37, Lcom/yopeso/lieferando/LieferandoApplication;->sUserLocation:Landroid/location/Location;

    if-eqz v37, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getLatitude()D

    move-result-wide v38

    const-wide/16 v40, 0x0

    cmpl-double v37, v38, v40

    if-eqz v37, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getLongitude()D

    move-result-wide v38

    const-wide/16 v40, 0x0

    cmpl-double v37, v38, v40

    if-eqz v37, :cond_d

    .line 506
    new-instance v19, Landroid/location/Location;

    const-string v37, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 507
    .local v19, "location":Landroid/location/Location;
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getLatitude()D

    move-result-wide v38

    move-object/from16 v0, v19

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 508
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getLongitude()D

    move-result-wide v38

    move-object/from16 v0, v19

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 509
    sget-object v37, Lcom/yopeso/lieferando/LieferandoApplication;->sUserLocation:Landroid/location/Location;

    move-object/from16 v0, v37

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v12

    .line 510
    .local v12, "distanceInMeters":F
    const/16 v37, 0x0

    move/from16 v0, v37

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 511
    invoke-static {v12}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->getDistanceText(F)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    sget v37, Lcom/yopeso/lieferando/R$id;->RestaurantDistanceDiv:I

    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    const/16 v38, 0x0

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setVisibility(I)V

    .line 518
    .end local v12    # "distanceInMeters":F
    .end local v19    # "location":Landroid/location/Location;
    :goto_1
    sget v37, Lcom/yopeso/lieferando/R$id;->RestaurantDetails:I

    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getCategory()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 520
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getMinCost()I

    move-result v22

    .line 521
    .local v22, "minCost":I
    if-gez v22, :cond_e

    .line 522
    sget v37, Lcom/yopeso/lieferando/R$id;->MinimumOrder:I

    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    const/16 v38, 0x8

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setVisibility(I)V

    .line 529
    :goto_2
    sget v37, Lcom/yopeso/lieferando/R$id;->RestaurantSchedule:I

    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    .local v30, "scheduleTextView":Landroid/widget/TextView;
    move-object/from16 v37, p2

    .line 531
    check-cast v37, Landroid/app/Activity;

    invoke-virtual/range {v37 .. v37}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v6

    check-cast v6, Lcom/yopeso/lieferando/LieferandoApplication;

    .line 533
    .local v6, "app":Lcom/yopeso/lieferando/LieferandoApplication;
    sget-object v37, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getScheduleMerged(Ljava/util/Date;)Ljava/util/ArrayList;

    move-result-object v31

    .line 535
    .local v31, "schedules":Ljava/util/List;, "Ljava/util/List<Lcom/yopeso/lieferando/model/restaurant/Opening;>;"
    sget-object v37, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen(Ljava/util/Date;)Z

    move-result v37

    if-eqz v37, :cond_11

    .line 536
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    sget v38, Lcom/yopeso/lieferando/R$color;->text_green:I

    invoke-virtual/range {v37 .. v38}, Landroid/content/res/Resources;->getColor(I)I

    move-result v37

    move-object/from16 v0, v30

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 537
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

    .line 539
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v37

    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v38

    move/from16 v0, v37

    move/from16 v1, v38

    invoke-virtual {v6, v0, v1}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v37

    if-nez v37, :cond_f

    .line 540
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    sget v38, Lcom/yopeso/lieferando/R$color;->text_red:I

    invoke-virtual/range {v37 .. v38}, Landroid/content/res/Resources;->getColor(I)I

    move-result v37

    move-object/from16 v0, v30

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 541
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

    .line 542
    sget v37, Lcom/yopeso/lieferando/R$string;->printer_offline:I

    move-object/from16 v0, v30

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 576
    :goto_3
    sget v37, Lcom/yopeso/lieferando/R$id;->DeliveryCost:I

    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 577
    .local v9, "deliveryCostTV":Landroid/widget/TextView;
    if-eqz v9, :cond_1

    .line 578
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getDeliverCost()I

    move-result v37

    if-gez v37, :cond_15

    .line 579
    const/16 v37, 0x8

    move/from16 v0, v37

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 593
    :cond_1
    :goto_4
    sget v37, Lcom/yopeso/lieferando/R$id;->LogoRL:I

    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/RelativeLayout;

    .line 594
    .local v21, "logoRL":Landroid/widget/RelativeLayout;
    if-eqz v21, :cond_2

    .line 595
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

    .line 602
    :cond_2
    if-eqz p3, :cond_17

    .line 603
    invoke-static/range {p0 .. p2}, Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;->setFavourites(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Landroid/view/View;Landroid/content/Context;)V

    .line 608
    :goto_5
    sget v37, Lcom/yopeso/lieferando/R$id;->RestaurantRating:I

    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/RatingBar;

    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getRatingAverage()F

    move-result v38

    invoke-virtual/range {v37 .. v38}, Landroid/widget/RatingBar;->setRating(F)V

    .line 609
    sget v37, Lcom/yopeso/lieferando/R$id;->RestaurantRatingDetails:I

    move-object/from16 v0, p1

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

    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getRatingsCount()I

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    aput-object v41, v39, v40

    move-object/from16 v0, p2

    move/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 611
    sget v37, Lcom/yopeso/lieferando/R$id;->AvailablePayments:I

    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    if-eqz v37, :cond_4

    .line 612
    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->getInstance(Lcom/yopeso/lieferando/model/SettingsContent;)Lcom/yopeso/lieferando/util/PaymentSettingsUtil;

    move-result-object v26

    .line 613
    .local v26, "paymentSettings":Lcom/yopeso/lieferando/util/PaymentSettingsUtil;
    sget v37, Lcom/yopeso/lieferando/R$id;->PaymentCash:I

    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v38

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->isCashAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v37

    if-eqz v37, :cond_18

    const/16 v37, 0x0

    :goto_6
    move-object/from16 v0, v38

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 614
    sget v37, Lcom/yopeso/lieferando/R$id;->OnlinePayment:I

    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v38

    .line 615
    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->isPaypalAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v37

    if-nez v37, :cond_3

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->isClickAndBuyAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v37

    if-nez v37, :cond_3

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->isCreditAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v37

    if-nez v37, :cond_3

    .line 616
    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->isEbankingAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v37

    if-eqz v37, :cond_19

    :cond_3
    const/16 v37, 0x0

    .line 614
    :goto_7
    move-object/from16 v0, v38

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 619
    .end local v26    # "paymentSettings":Lcom/yopeso/lieferando/util/PaymentSettingsUtil;
    :cond_4
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v37

    if-nez v37, :cond_5

    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v37

    if-nez v37, :cond_6

    .line 621
    :cond_5
    sget v37, Lcom/yopeso/lieferando/R$id;->ECPayment:I

    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v38

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->getInstance(Lcom/yopeso/lieferando/model/SettingsContent;)Lcom/yopeso/lieferando/util/PaymentSettingsUtil;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->isECAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v37

    if-eqz v37, :cond_1a

    const/16 v37, 0x0

    :goto_8
    move-object/from16 v0, v38

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 624
    :cond_6
    sget v37, Lcom/yopeso/lieferando/R$id;->SmsMsg:I

    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v38

    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v37

    if-eqz v37, :cond_1b

    const/16 v37, 0x0

    :goto_9
    move-object/from16 v0, v38

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 626
    sget v37, Lcom/yopeso/lieferando/R$id;->clockIcon1:I

    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 627
    .local v7, "clock1":Landroid/widget/ImageView;
    const/16 v37, 0x8

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 628
    sget v37, Lcom/yopeso/lieferando/R$id;->clockIcon2:I

    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 629
    .local v8, "clock2":Landroid/widget/ImageView;
    const/16 v37, 0x8

    move/from16 v0, v37

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 631
    sget v37, Lcom/yopeso/lieferando/R$id;->StampCard:I

    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/TextView;

    .line 632
    .local v33, "stamp":Landroid/widget/TextView;
    sget v37, Lcom/yopeso/lieferando/R$id;->stamp_layout:I

    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/LinearLayout;

    .line 633
    .local v35, "stampLayout":Landroid/widget/LinearLayout;
    sget v37, Lcom/yopeso/lieferando/R$id;->StampCard2:I

    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/TextView;

    .line 634
    .local v34, "stamp2":Landroid/widget/TextView;
    sget v37, Lcom/yopeso/lieferando/R$id;->stamp_layout2:I

    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/LinearLayout;

    .line 637
    .local v36, "stampLayout2":Landroid/widget/LinearLayout;
    sget v37, Lcom/yopeso/lieferando/R$id;->LieferandoVoucher:I

    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 638
    .local v17, "lieferando_voucher":Landroid/widget/TextView;
    sget v37, Lcom/yopeso/lieferando/R$id;->lieferando_voucher_layout:I

    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    .line 639
    .local v18, "lieferando_voucherLL":Landroid/widget/LinearLayout;
    sget v37, Lcom/yopeso/lieferando/R$id;->PartnerRebate:I

    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 640
    .local v24, "partner_rebate":Landroid/widget/TextView;
    sget v37, Lcom/yopeso/lieferando/R$id;->partner_rebate_layout:I

    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/LinearLayout;

    .line 644
    .local v25, "partner_rebateLL":Landroid/widget/LinearLayout;
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v37

    if-nez v37, :cond_7

    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v37

    if-eqz v37, :cond_34

    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v37

    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v38

    invoke-virtual/range {v37 .. v38}, Lcom/yopeso/lieferando/model/user/UserData;->getStampsForRestaurant(I)Ljava/util/ArrayList;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v37

    if-nez v37, :cond_34

    .line 646
    :cond_7
    const/16 v16, 0x0

    .line 649
    .local v16, "isValidDiscount":Z
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v37

    if-eqz v37, :cond_25

    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lcom/yopeso/lieferando/model/Stamp;->getmDiscounts()Ljava/util/ArrayList;

    move-result-object v37

    if-eqz v37, :cond_25

    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lcom/yopeso/lieferando/model/Stamp;->getmDiscounts()Ljava/util/ArrayList;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v37

    if-nez v37, :cond_25

    sget-object v37, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen(Ljava/util/Date;)Z

    move-result v37

    if-eqz v37, :cond_25

    .line 650
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v37

    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v38

    move/from16 v0, v37

    move/from16 v1, v38

    invoke-virtual {v6, v0, v1}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v37

    if-eqz v37, :cond_25

    .line 652
    const/4 v14, 0x0

    .line 653
    .local v14, "hasActivePartnerDiscout":Z
    const/4 v13, 0x0

    .line 654
    .local v13, "hasActiveNewCustomerDiscount":Z
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lcom/yopeso/lieferando/model/Stamp;->getmDiscounts()Ljava/util/ArrayList;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v37

    :cond_8
    :goto_a
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-nez v38, :cond_1c

    .line 733
    .end local v13    # "hasActiveNewCustomerDiscount":Z
    .end local v14    # "hasActivePartnerDiscout":Z
    :goto_b
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v37

    if-nez v37, :cond_27

    .line 734
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lcom/yopeso/lieferando/model/Stamp;->hasStampcardCampain()Z

    move-result v37

    if-eqz v37, :cond_26

    sget-object v37, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen(Ljava/util/Date;)Z

    move-result v37

    if-eqz v37, :cond_26

    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v37

    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v38

    move/from16 v0, v37

    move/from16 v1, v38

    invoke-virtual {v6, v0, v1}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v37

    if-eqz v37, :cond_26

    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    .line 737
    aput-object v33, v37, v38

    const/16 v38, 0x1

    aput-object v35, v37, v38

    invoke-static/range {v37 .. v37}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->appearViews([Landroid/view/View;)V

    .line 738
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    sget v38, Lcom/yopeso/lieferando/R$string;->stamp_not_logged_in:I

    const/16 v39, 0x1

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

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

    .line 744
    :goto_c
    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    .line 746
    aput-object v34, v37, v38

    const/16 v38, 0x1

    aput-object v36, v37, v38

    invoke-static/range {v37 .. v37}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->hideViews([Landroid/view/View;)V

    .line 841
    .end local v16    # "isValidDiscount":Z
    :cond_9
    :goto_d
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v37

    if-eqz v37, :cond_a

    .line 842
    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lcom/yopeso/lieferando/model/SettingsContent;->isStampcardActive()Z

    move-result v37

    if-nez v37, :cond_a

    const/16 v37, 0x4

    move/from16 v0, v37

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    .line 844
    aput-object v33, v37, v38

    const/16 v38, 0x1

    aput-object v35, v37, v38

    const/16 v38, 0x2

    aput-object v34, v37, v38

    const/16 v38, 0x3

    aput-object v36, v37, v38

    invoke-static/range {v37 .. v37}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->hideViews([Landroid/view/View;)V

    .line 848
    :cond_a
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v37

    if-eqz v37, :cond_b

    const/16 v37, 0x4

    move/from16 v0, v37

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    .line 850
    aput-object v33, v37, v38

    const/16 v38, 0x1

    aput-object v35, v37, v38

    const/16 v38, 0x2

    aput-object v34, v37, v38

    const/16 v38, 0x3

    aput-object v36, v37, v38

    invoke-static/range {v37 .. v37}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->hideViews([Landroid/view/View;)V

    .line 852
    :cond_b
    return-void

    .line 499
    .end local v6    # "app":Lcom/yopeso/lieferando/LieferandoApplication;
    .end local v7    # "clock1":Landroid/widget/ImageView;
    .end local v8    # "clock2":Landroid/widget/ImageView;
    .end local v9    # "deliveryCostTV":Landroid/widget/TextView;
    .end local v11    # "distance":Landroid/widget/TextView;
    .end local v17    # "lieferando_voucher":Landroid/widget/TextView;
    .end local v18    # "lieferando_voucherLL":Landroid/widget/LinearLayout;
    .end local v21    # "logoRL":Landroid/widget/RelativeLayout;
    .end local v22    # "minCost":I
    .end local v24    # "partner_rebate":Landroid/widget/TextView;
    .end local v25    # "partner_rebateLL":Landroid/widget/LinearLayout;
    .end local v30    # "scheduleTextView":Landroid/widget/TextView;
    .end local v31    # "schedules":Ljava/util/List;, "Ljava/util/List<Lcom/yopeso/lieferando/model/restaurant/Opening;>;"
    .end local v33    # "stamp":Landroid/widget/TextView;
    .end local v34    # "stamp2":Landroid/widget/TextView;
    .end local v35    # "stampLayout":Landroid/widget/LinearLayout;
    .end local v36    # "stampLayout2":Landroid/widget/LinearLayout;
    :cond_c
    const/16 v37, 0x8

    move-object/from16 v0, v23

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 514
    .restart local v11    # "distance":Landroid/widget/TextView;
    :cond_d
    const/16 v37, 0x8

    move/from16 v0, v37

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 515
    sget v37, Lcom/yopeso/lieferando/R$id;->RestaurantDistanceDiv:I

    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    const/16 v38, 0x8

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 525
    .restart local v22    # "minCost":I
    :cond_e
    sget v37, Lcom/yopeso/lieferando/R$id;->MinimumOrder:I

    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    const/16 v38, 0x0

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setVisibility(I)V

    .line 526
    sget v37, Lcom/yopeso/lieferando/R$id;->MinimumOrder:I

    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

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

    goto/16 :goto_2

    .line 545
    .restart local v6    # "app":Lcom/yopeso/lieferando/LieferandoApplication;
    .restart local v30    # "scheduleTextView":Landroid/widget/TextView;
    .restart local v31    # "schedules":Ljava/util/List;, "Ljava/util/List<Lcom/yopeso/lieferando/model/restaurant/Opening;>;"
    :cond_f
    if-eqz v31, :cond_10

    .line 546
    move-object/from16 v0, v31

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->getSchedulesAsString(Ljava/util/List;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v30

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 549
    :cond_10
    sget v37, Lcom/yopeso/lieferando/R$string;->open:I

    move-object/from16 v0, v30

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 553
    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    sget v38, Lcom/yopeso/lieferando/R$color;->text_red:I

    invoke-virtual/range {v37 .. v38}, Landroid/content/res/Resources;->getColor(I)I

    move-result v37

    move-object/from16 v0, v30

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 554
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

    .line 556
    if-eqz v31, :cond_14

    .line 557
    move-object/from16 v0, v31

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->getSchedulesAsString(Ljava/util/List;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v29

    .line 559
    .local v29, "scheduleText":Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v37

    if-nez v37, :cond_12

    .line 560
    sget v37, Lcom/yopeso/lieferando/R$string;->closed_today:I

    move-object/from16 v0, v30

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 562
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v37

    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v38

    move/from16 v0, v37

    move/from16 v1, v38

    invoke-virtual {v6, v0, v1}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v37

    if-nez v37, :cond_13

    .line 563
    sget v37, Lcom/yopeso/lieferando/R$string;->printer_offline:I

    move-object/from16 v0, v30

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 565
    :cond_13
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 570
    .end local v29    # "scheduleText":Ljava/lang/String;
    :cond_14
    sget v37, Lcom/yopeso/lieferando/R$string;->closed_today:I

    move-object/from16 v0, v30

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 582
    .restart local v9    # "deliveryCostTV":Landroid/widget/TextView;
    :cond_15
    const/16 v37, 0x0

    move/from16 v0, v37

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 583
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getDeliverCost()I

    move-result v37

    if-nez v37, :cond_16

    .line 584
    sget v37, Lcom/yopeso/lieferando/R$string;->freeDelivery:I

    move/from16 v0, v37

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    .line 587
    :cond_16
    new-instance v37, Ljava/lang/StringBuilder;

    sget v38, Lcom/yopeso/lieferando/R$string;->delivery_value:I

    move-object/from16 v0, p2

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

    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getDeliverCost()I

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

    move-object/from16 v0, p2

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 605
    .restart local v21    # "logoRL":Landroid/widget/RelativeLayout;
    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-static {v0, v1, v2, v3}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->setFavourites(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Landroid/view/View;Landroid/content/Context;Lcom/android/volley/RequestQueue;)V

    goto/16 :goto_5

    .line 613
    .restart local v26    # "paymentSettings":Lcom/yopeso/lieferando/util/PaymentSettingsUtil;
    :cond_18
    const/16 v37, 0x8

    goto/16 :goto_6

    .line 616
    :cond_19
    const/16 v37, 0x8

    goto/16 :goto_7

    .line 621
    .end local v26    # "paymentSettings":Lcom/yopeso/lieferando/util/PaymentSettingsUtil;
    :cond_1a
    const/16 v37, 0x8

    goto/16 :goto_8

    .line 624
    :cond_1b
    const/16 v37, 0x8

    goto/16 :goto_9

    .line 654
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
    :cond_1c
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/yopeso/lieferando/model/Discount;

    .line 659
    .local v10, "discount":Lcom/yopeso/lieferando/model/Discount;
    invoke-virtual {v10}, Lcom/yopeso/lieferando/model/Discount;->ismNewCustomer()Z

    move-result v38

    if-eqz v38, :cond_21

    .line 661
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v38

    if-eqz v38, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v38

    invoke-static/range {v38 .. v38}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->hasOrderInRestaurant(I)Z

    move-result v38

    if-eqz v38, :cond_1e

    .line 663
    if-nez v13, :cond_1d

    const/16 v38, 0x2

    move/from16 v0, v38

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    .line 664
    aput-object v24, v38, v39

    const/16 v39, 0x1

    aput-object v25, v38, v39

    invoke-static/range {v38 .. v38}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->hideViews([Landroid/view/View;)V

    .line 690
    :cond_1d
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Lcom/yopeso/lieferando/model/Stamp;->getmDiscounts()Ljava/util/ArrayList;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->size()I

    move-result v38

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_8

    const/16 v38, 0x2

    move/from16 v0, v38

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    .line 692
    aput-object v17, v38, v39

    const/16 v39, 0x1

    aput-object v18, v38, v39

    invoke-static/range {v38 .. v38}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->hideViews([Landroid/view/View;)V

    goto/16 :goto_a

    .line 668
    :cond_1e
    sget-object v38, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    move-object/from16 v0, v38

    invoke-virtual {v10, v0}, Lcom/yopeso/lieferando/model/Discount;->isActive(Ljava/util/Date;)Z

    move-result v38

    if-eqz v38, :cond_20

    .line 669
    const/16 v16, 0x1

    .line 670
    const/4 v13, 0x1

    const/16 v38, 0x2

    move/from16 v0, v38

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    .line 671
    aput-object v24, v38, v39

    const/16 v39, 0x1

    aput-object v25, v38, v39

    invoke-static/range {v38 .. v38}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->appearViews([Landroid/view/View;)V

    .line 675
    invoke-virtual {v10}, Lcom/yopeso/lieferando/model/Discount;->getmKind()I

    move-result v38

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_1f

    .line 677
    sget v38, Lcom/yopeso/lieferando/R$string;->discount_price:I

    move-object/from16 v0, p2

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

    goto/16 :goto_e

    .line 681
    :cond_1f
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

    goto/16 :goto_e

    .line 685
    :cond_20
    if-nez v13, :cond_1d

    const/16 v38, 0x2

    move/from16 v0, v38

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    .line 686
    aput-object v24, v38, v39

    const/16 v39, 0x1

    aput-object v25, v38, v39

    invoke-static/range {v38 .. v38}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->hideViews([Landroid/view/View;)V

    goto/16 :goto_e

    .line 699
    :cond_21
    sget-object v38, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    move-object/from16 v0, v38

    invoke-virtual {v10, v0}, Lcom/yopeso/lieferando/model/Discount;->isActive(Ljava/util/Date;)Z

    move-result v38

    if-eqz v38, :cond_24

    .line 700
    const/4 v14, 0x1

    .line 701
    const/16 v16, 0x1

    const/16 v38, 0x2

    move/from16 v0, v38

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    .line 702
    aput-object v17, v38, v39

    const/16 v39, 0x1

    aput-object v18, v38, v39

    invoke-static/range {v38 .. v38}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->appearViews([Landroid/view/View;)V

    .line 706
    invoke-virtual {v10}, Lcom/yopeso/lieferando/model/Discount;->getmKind()I

    move-result v38

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_23

    .line 708
    sget v38, Lcom/yopeso/lieferando/R$string;->discount_price:I

    move-object/from16 v0, p2

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

    .line 720
    :cond_22
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Lcom/yopeso/lieferando/model/Stamp;->getmDiscounts()Ljava/util/ArrayList;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->size()I

    move-result v38

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_8

    const/16 v38, 0x2

    move/from16 v0, v38

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    .line 722
    aput-object v24, v38, v39

    const/16 v39, 0x1

    aput-object v25, v38, v39

    invoke-static/range {v38 .. v38}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->hideViews([Landroid/view/View;)V

    goto/16 :goto_a

    .line 712
    :cond_23
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

    goto :goto_f

    .line 716
    :cond_24
    if-nez v14, :cond_22

    const/16 v38, 0x2

    move/from16 v0, v38

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    .line 717
    aput-object v17, v38, v39

    const/16 v39, 0x1

    aput-object v18, v38, v39

    invoke-static/range {v38 .. v38}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->hideViews([Landroid/view/View;)V

    goto :goto_f

    .line 728
    .end local v10    # "discount":Lcom/yopeso/lieferando/model/Discount;
    .end local v13    # "hasActiveNewCustomerDiscount":Z
    .end local v14    # "hasActivePartnerDiscout":Z
    :cond_25
    const/16 v37, 0x4

    move/from16 v0, v37

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    .line 730
    aput-object v17, v37, v38

    const/16 v38, 0x1

    aput-object v18, v37, v38

    const/16 v38, 0x2

    aput-object v24, v37, v38

    const/16 v38, 0x3

    aput-object v25, v37, v38

    invoke-static/range {v37 .. v37}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->hideViews([Landroid/view/View;)V

    goto/16 :goto_b

    .line 743
    :cond_26
    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    .line 744
    aput-object v33, v37, v38

    const/16 v38, 0x1

    aput-object v35, v37, v38

    invoke-static/range {v37 .. v37}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->hideViews([Landroid/view/View;)V

    goto/16 :goto_c

    .line 749
    :cond_27
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v37

    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v38

    invoke-virtual/range {v37 .. v38}, Lcom/yopeso/lieferando/model/user/UserData;->getStampsForRestaurant(I)Ljava/util/ArrayList;

    move-result-object v27

    .line 751
    .local v27, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/Stamp;>;"
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v37

    if-nez v37, :cond_32

    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    .line 753
    aput-object v33, v37, v38

    const/16 v38, 0x1

    aput-object v35, v37, v38

    invoke-static/range {v37 .. v37}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->appearViews([Landroid/view/View;)V

    .line 757
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v37

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_2b

    .line 759
    const/16 v37, 0x8

    invoke-virtual/range {v36 .. v37}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 760
    const/16 v37, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/yopeso/lieferando/model/Stamp;

    .line 761
    .local v28, "rs":Lcom/yopeso/lieferando/model/Stamp;
    invoke-virtual/range {v28 .. v28}, Lcom/yopeso/lieferando/model/Stamp;->isFull()Z

    move-result v37

    if-eqz v37, :cond_29

    .line 762
    invoke-virtual/range {v28 .. v28}, Lcom/yopeso/lieferando/model/Stamp;->isPending()Z

    move-result v37

    if-eqz v37, :cond_28

    .line 763
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

    .line 774
    :goto_10
    invoke-virtual/range {v28 .. v28}, Lcom/yopeso/lieferando/model/Stamp;->isPending()Z

    move-result v37

    if-eqz v37, :cond_9

    .line 775
    const/16 v37, 0x0

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_d

    .line 765
    :cond_28
    sget v37, Lcom/yopeso/lieferando/R$string;->discount_price:I

    move-object/from16 v0, p2

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

    goto :goto_10

    .line 768
    :cond_29
    invoke-virtual/range {v28 .. v28}, Lcom/yopeso/lieferando/model/Stamp;->getUserStamps()I

    move-result v37

    invoke-virtual/range {v28 .. v28}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v38

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_2a

    .line 769
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

    goto/16 :goto_10

    .line 771
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

    goto/16 :goto_10

    .line 779
    .end local v28    # "rs":Lcom/yopeso/lieferando/model/Stamp;
    :cond_2b
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v37

    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v38

    invoke-virtual/range {v37 .. v38}, Lcom/yopeso/lieferando/model/user/UserData;->getHighestValue(I)Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v15

    .line 780
    .local v15, "highestStamp":Lcom/yopeso/lieferando/model/Stamp;
    invoke-virtual {v15}, Lcom/yopeso/lieferando/model/Stamp;->isPending()Z

    move-result v37

    if-eqz v37, :cond_2e

    .line 781
    invoke-virtual {v15}, Lcom/yopeso/lieferando/model/Stamp;->getUserStamps()I

    move-result v37

    invoke-virtual {v15}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v38

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_2d

    .line 782
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

    .line 786
    :goto_11
    const/16 v37, 0x0

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 791
    :goto_12
    if-nez v16, :cond_31

    .line 792
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v37

    :goto_13
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_9

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/yopeso/lieferando/model/Stamp;

    .line 793
    .local v32, "st":Lcom/yopeso/lieferando/model/Stamp;
    invoke-virtual/range {v32 .. v32}, Lcom/yopeso/lieferando/model/Stamp;->isFull()Z

    move-result v38

    if-nez v38, :cond_30

    .line 794
    invoke-virtual/range {v32 .. v32}, Lcom/yopeso/lieferando/model/Stamp;->getUserStamps()I

    move-result v38

    invoke-virtual/range {v32 .. v32}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v39

    move/from16 v0, v38

    move/from16 v1, v39

    if-le v0, v1, :cond_2f

    .line 795
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

    .line 799
    :goto_14
    invoke-virtual/range {v32 .. v32}, Lcom/yopeso/lieferando/model/Stamp;->isPending()Z

    move-result v38

    if-eqz v38, :cond_2c

    .line 800
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2c
    const/16 v38, 0x2

    move/from16 v0, v38

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    .line 805
    aput-object v36, v38, v39

    const/16 v39, 0x1

    aput-object v34, v38, v39

    invoke-static/range {v38 .. v38}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->appearViews([Landroid/view/View;)V

    goto :goto_13

    .line 784
    .end local v32    # "st":Lcom/yopeso/lieferando/model/Stamp;
    :cond_2d
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

    goto/16 :goto_11

    .line 789
    :cond_2e
    sget v37, Lcom/yopeso/lieferando/R$string;->discount_price:I

    move-object/from16 v0, p2

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

    goto/16 :goto_12

    .line 797
    .restart local v32    # "st":Lcom/yopeso/lieferando/model/Stamp;
    :cond_2f
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

    goto/16 :goto_14

    .line 806
    :cond_30
    const/16 v38, 0x3

    move/from16 v0, v38

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    .line 808
    aput-object v34, v38, v39

    const/16 v39, 0x1

    aput-object v36, v38, v39

    const/16 v39, 0x2

    aput-object v8, v38, v39

    invoke-static/range {v38 .. v38}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->hideViews([Landroid/view/View;)V

    goto/16 :goto_13

    .line 812
    .end local v32    # "st":Lcom/yopeso/lieferando/model/Stamp;
    :cond_31
    const/16 v37, 0x3

    move/from16 v0, v37

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    .line 815
    aput-object v34, v37, v38

    const/16 v38, 0x1

    aput-object v36, v37, v38

    const/16 v38, 0x2

    aput-object v8, v37, v38

    invoke-static/range {v37 .. v37}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->hideViews([Landroid/view/View;)V

    goto/16 :goto_d

    .line 819
    .end local v15    # "highestStamp":Lcom/yopeso/lieferando/model/Stamp;
    :cond_32
    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    .line 821
    aput-object v34, v37, v38

    const/16 v38, 0x1

    aput-object v36, v37, v38

    invoke-static/range {v37 .. v37}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->hideViews([Landroid/view/View;)V

    .line 823
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lcom/yopeso/lieferando/model/Stamp;->hasStampcardCampain()Z

    move-result v37

    if-eqz v37, :cond_33

    sget-object v37, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen(Ljava/util/Date;)Z

    move-result v37

    if-eqz v37, :cond_33

    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v37

    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v38

    move/from16 v0, v37

    move/from16 v1, v38

    invoke-virtual {v6, v0, v1}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v37

    if-eqz v37, :cond_33

    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    .line 824
    aput-object v33, v37, v38

    const/16 v38, 0x1

    aput-object v35, v37, v38

    invoke-static/range {v37 .. v37}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->appearViews([Landroid/view/View;)V

    .line 825
    new-instance v37, Ljava/lang/StringBuilder;

    const-string v38, "0/"

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

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

    goto/16 :goto_d

    .line 829
    :cond_33
    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    .line 831
    aput-object v33, v37, v38

    const/16 v38, 0x1

    aput-object v35, v37, v38

    invoke-static/range {v37 .. v37}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->hideViews([Landroid/view/View;)V

    goto/16 :goto_d

    .line 837
    .end local v16    # "isValidDiscount":Z
    .end local v27    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/Stamp;>;"
    :cond_34
    const/16 v37, 0x8

    move/from16 v0, v37

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    .line 838
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

    invoke-static/range {v37 .. v37}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->hideViews([Landroid/view/View;)V

    goto/16 :goto_d
.end method

.method private getBestOfferDiscount(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Lcom/yopeso/lieferando/model/Discount;
    .locals 4
    .param p1, "restaurant"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 1610
    const/4 v1, 0x0

    .line 1611
    .local v1, "discount":Lcom/yopeso/lieferando/model/Discount;
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Stamp;->getmDiscounts()Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1612
    const/4 v2, 0x0

    .line 1630
    :goto_0
    return-object v2

    .line 1614
    :cond_0
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Stamp;->getmDiscounts()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    move-object v2, v1

    .line 1630
    goto :goto_0

    .line 1614
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/Discount;

    .line 1615
    .local v0, "dis":Lcom/yopeso/lieferando/model/Discount;
    if-nez v1, :cond_3

    .line 1616
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->isValidDiscount(Lcom/yopeso/lieferando/model/Discount;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1617
    move-object v1, v0

    .line 1619
    goto :goto_1

    .line 1622
    :cond_3
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->isValidDiscount(Lcom/yopeso/lieferando/model/Discount;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1623
    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/Discount;->isBetterDiscount(Lcom/yopeso/lieferando/model/Discount;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1624
    move-object v1, v0

    goto :goto_1
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

    .line 928
    const v1, 0x4415c000    # 599.0f

    cmpg-float v1, p0, v1

    if-gtz v1, :cond_0

    .line 929
    const-string v1, "%.0f m"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 936
    :goto_0
    return-object v0

    .line 931
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

    .line 932
    .local v0, "result":Ljava/lang/String;
    const-string v1, ".0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 933
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 935
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

    .line 936
    goto :goto_0
.end method

.method private getFilteredResults(Ljava/lang/CharSequence;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/Restaurant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 998
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 999
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Restaurant;>;"
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mRealRestaurants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1004
    return-object v1

    .line 999
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .line 1000
    .local v0, "restaurant":Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1001
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getSchedulesAsString(Ljava/util/List;Landroid/content/Context;)Ljava/lang/String;
    .locals 13
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
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 948
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-lt v3, v5, :cond_0

    .line 973
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 949
    :cond_0
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yopeso/lieferando/model/restaurant/Opening;

    .line 951
    .local v4, "schedule":Lcom/yopeso/lieferando/model/restaurant/Opening;
    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/restaurant/Opening;->isPastMidnight()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 952
    sget-object v5, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/restaurant/Opening;->getCloseHours()Ljava/util/Date;

    move-result-object v6

    invoke-static {v5, v6, v10}, Lcom/yopeso/lieferando/util/OpeningUtils;->compareHours(Ljava/util/Date;Ljava/util/Date;Z)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/restaurant/Opening;->getCloseHours()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getDay()I

    move-result v5

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/restaurant/Opening;->getOpenHours()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getDay()I

    move-result v6

    if-le v5, v6, :cond_3

    .line 953
    :cond_1
    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getTimeFormatter()Ljava/text/SimpleDateFormat;

    move-result-object v5

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/restaurant/Opening;->getCloseHours()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 954
    .local v1, "closeH":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/yopeso/lieferando/R$string;->opening_hours:I

    new-array v7, v12, [Ljava/lang/Object;

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getTimeFormatter()Ljava/text/SimpleDateFormat;

    move-result-object v8

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/restaurant/Opening;->getOpenHours()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    .line 955
    const-string v8, "00:00"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v1, "24:00"

    .end local v1    # "closeH":Ljava/lang/String;
    :cond_2
    aput-object v1, v7, v10

    .line 954
    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 956
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq v3, v5, :cond_3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v10, :cond_3

    .line 957
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v6, Lcom/yopeso/lieferando/R$string;->opening_separator:I

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 948
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 961
    :cond_4
    sget-object v5, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/restaurant/Opening;->getCloseHours()Ljava/util/Date;

    move-result-object v6

    invoke-static {v5, v6, v10}, Lcom/yopeso/lieferando/util/OpeningUtils;->compareHours(Ljava/util/Date;Ljava/util/Date;Z)I

    move-result v5

    if-eq v5, v10, :cond_3

    .line 962
    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getTimeFormatter()Ljava/text/SimpleDateFormat;

    move-result-object v5

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/restaurant/Opening;->getCloseHours()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 963
    .local v2, "closeHr":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/yopeso/lieferando/R$string;->opening_hours:I

    new-array v7, v12, [Ljava/lang/Object;

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getTimeFormatter()Ljava/text/SimpleDateFormat;

    move-result-object v8

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/restaurant/Opening;->getOpenHours()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    .line 964
    const-string v8, "00:00"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v2, "24:00"

    .end local v2    # "closeHr":Ljava/lang/String;
    :cond_5
    aput-object v2, v7, v10

    .line 963
    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 966
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq v3, v5, :cond_3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v10, :cond_3

    .line 967
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v6, Lcom/yopeso/lieferando/R$string;->opening_separator:I

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static hasOrderInRestaurant(I)Z
    .locals 4
    .param p0, "restaurant_id"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 855
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 856
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/UserData;->getmRestaurantOrders()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 857
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

    .line 863
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 857
    goto :goto_0

    .line 860
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

.method private hasValidDiscount(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/Discount;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1714
    .local p1, "discounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/Discount;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1719
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 1714
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/Discount;

    .line 1715
    .local v0, "discount":Lcom/yopeso/lieferando/model/Discount;
    sget-object v2, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {v0, v2}, Lcom/yopeso/lieferando/model/Discount;->isActive(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/Discount;->ismNewCustomer()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1716
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private hasValidNewCustomerDiscount(Ljava/util/ArrayList;I)Z
    .locals 4
    .param p2, "restaurant_id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/Discount;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p1, "discounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/Discount;>;"
    const/4 v1, 0x1

    .line 1694
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1706
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    .line 1694
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/Discount;

    .line 1695
    .local v0, "discount":Lcom/yopeso/lieferando/model/Discount;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/Discount;->ismNewCustomer()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {v0, v3}, Lcom/yopeso/lieferando/model/Discount;->isActive(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1696
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1700
    invoke-static {p2}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->hasOrderInRestaurant(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0
.end method

.method private static varargs hideViews([Landroid/view/View;)V
    .locals 4
    .param p0, "v"    # [Landroid/view/View;

    .prologue
    .line 870
    array-length v2, p0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 873
    return-void

    .line 870
    :cond_0
    aget-object v0, p0, v1

    .line 871
    .local v0, "view":Landroid/view/View;
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 870
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private isFormValid()Z
    .locals 4

    .prologue
    .line 145
    const/4 v0, 0x1

    .line 147
    .local v0, "valid":Z
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mEmail:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/yopeso/lieferando/R$string;->required:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 150
    const/4 v0, 0x0

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mOrt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 154
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mOrt:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/yopeso/lieferando/R$string;->required:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mOrt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 156
    const/4 v0, 0x0

    .line 165
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mService:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 166
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mService:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/yopeso/lieferando/R$string;->required:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mService:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 168
    const/4 v0, 0x0

    .line 177
    :cond_2
    :goto_1
    return v0

    .line 158
    :cond_3
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mOrt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".{3,50}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mOrt:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/yopeso/lieferando/R$string;->required_length3_50_ort:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mOrt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 161
    const/4 v0, 0x0

    goto :goto_0

    .line 170
    :cond_4
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mService:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".{3,50}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 171
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mService:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/yopeso/lieferando/R$string;->required_length3_50_restaurant:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mService:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 173
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private isRestaurantClosedToday(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z
    .locals 4
    .param p1, "restaurant"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    const/4 v2, 0x1

    .line 441
    sget-object v3, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {p1, v3}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen(Ljava/util/Date;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 443
    sget-object v3, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {p1, v3}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getScheduleMerged(Ljava/util/Date;)Ljava/util/ArrayList;

    move-result-object v1

    .line 444
    .local v1, "schedules":Ljava/util/List;, "Ljava/util/List<Lcom/yopeso/lieferando/model/restaurant/Opening;>;"
    if-eqz v1, :cond_0

    .line 445
    invoke-virtual {p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->getSchedulesAsString(Ljava/util/List;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, "scheduleText":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 454
    .end local v0    # "scheduleText":Ljava/lang/String;
    .end local v1    # "schedules":Ljava/util/List;, "Ljava/util/List<Lcom/yopeso/lieferando/model/restaurant/Opening;>;"
    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isValidDiscount(Lcom/yopeso/lieferando/model/Discount;I)Z
    .locals 3
    .param p1, "discount"    # Lcom/yopeso/lieferando/model/Discount;
    .param p2, "restaurant_id"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1634
    sget-object v2, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {p1, v2}, Lcom/yopeso/lieferando/model/Discount;->isActive(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1635
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1636
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/Discount;->ismNewCustomer()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1637
    invoke-static {p2}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->hasOrderInRestaurant(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1647
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1637
    goto :goto_0

    :cond_2
    move v0, v1

    .line 1640
    goto :goto_0

    :cond_3
    move v0, v1

    .line 1644
    goto :goto_0
.end method

.method private loadNickname(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 133
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v1

    .line 134
    .local v1, "userData":Lcom/yopeso/lieferando/model/user/UserData;
    if-nez v1, :cond_1

    .line 135
    sget v2, Lcom/yopeso/lieferando/R$id;->ProposeEmail:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/UserData;->getEmail()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "email":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 139
    sget v2, Lcom/yopeso/lieferando/R$id;->ProposeEmail:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static setFavourites(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Landroid/view/View;Landroid/content/Context;Lcom/android/volley/RequestQueue;)V
    .locals 2
    .param p0, "restaurant"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "requestQueue"    # Lcom/android/volley/RequestQueue;

    .prologue
    .line 885
    sget v1, Lcom/yopeso/lieferando/R$id;->heart:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 886
    .local v0, "heart":Landroid/widget/ImageView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 887
    new-instance v1, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$3;

    invoke-direct {v1, p2, p0, v0, p3}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$3;-><init>(Landroid/content/Context;Lcom/yopeso/lieferando/model/restaurant/Restaurant;Landroid/widget/ImageView;Lcom/android/volley/RequestQueue;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 918
    invoke-static {p0}, Lcom/yopeso/lieferando/util/UserStore;->isFavorite(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 919
    sget v1, Lcom/yopeso/lieferando/R$drawable;->heart_selected:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 923
    :goto_0
    return-void

    .line 921
    :cond_0
    sget v1, Lcom/yopeso/lieferando/R$drawable;->heart:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private sortByDeliveryCost()V
    .locals 2

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mRestaurants:Ljava/util/ArrayList;

    new-instance v1, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$6;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$6;-><init>(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1194
    invoke-virtual {p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->sortByOpened()V

    .line 1195
    invoke-virtual {p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->notifyDataSetChanged()V

    .line 1196
    return-void
.end method

.method private sortByDistance()V
    .locals 3

    .prologue
    .line 1653
    sget-object v0, Lcom/yopeso/lieferando/LieferandoApplication;->sUserLocation:Landroid/location/Location;

    .line 1654
    .local v0, "loc":Landroid/location/Location;
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mRestaurants:Ljava/util/ArrayList;

    new-instance v2, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$14;

    invoke-direct {v2, p0, v0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$14;-><init>(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;Landroid/location/Location;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1684
    invoke-virtual {p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->sortByOpened()V

    .line 1685
    invoke-virtual {p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->notifyDataSetChanged()V

    .line 1686
    return-void
.end method

.method private sortByMinOrder()V
    .locals 2

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mRestaurants:Ljava/util/ArrayList;

    new-instance v1, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$7;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$7;-><init>(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1220
    invoke-virtual {p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->sortByOpened()V

    .line 1221
    invoke-virtual {p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->notifyDataSetChanged()V

    .line 1222
    return-void
.end method

.method private sortByName()V
    .locals 2

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mRestaurants:Ljava/util/ArrayList;

    new-instance v1, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$5;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$5;-><init>(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1168
    invoke-virtual {p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->sortByOpened()V

    .line 1169
    invoke-virtual {p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->notifyDataSetChanged()V

    .line 1170
    return-void
.end method

.method private sortByNameZA()V
    .locals 2

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mRestaurants:Ljava/util/ArrayList;

    new-instance v1, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$8;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$8;-><init>(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1235
    invoke-virtual {p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->sortByOpened()V

    .line 1236
    invoke-virtual {p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->notifyDataSetChanged()V

    .line 1237
    return-void
.end method

.method private sortByNewCustomerRebate()V
    .locals 6

    .prologue
    .line 1724
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1725
    .local v1, "removeRestaurants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Restaurant;>;"
    invoke-virtual {p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/LieferandoApplication;

    .line 1726
    .local v0, "app":Lcom/yopeso/lieferando/LieferandoApplication;
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mRestaurants:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1739
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mRestaurants:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1740
    invoke-virtual {p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->sortByDefault()V

    .line 1741
    invoke-virtual {p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->notifyDataSetChanged()V

    .line 1742
    return-void

    .line 1726
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .line 1727
    .local v2, "restaurant":Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/Stamp;->getmDiscounts()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/Stamp;->getmDiscounts()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {v2, v4}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1728
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v4

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1729
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/Stamp;->getmDiscounts()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->hasValidNewCustomerDiscount(Ljava/util/ArrayList;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1731
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1736
    :cond_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private sortByRatings()V
    .locals 2

    .prologue
    .line 1262
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mRestaurants:Ljava/util/ArrayList;

    new-instance v1, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$10;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$10;-><init>(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1273
    invoke-virtual {p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->sortByOpened()V

    .line 1274
    invoke-virtual {p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->notifyDataSetChanged()V

    .line 1275
    return-void
.end method

.method private sortByRebate()V
    .locals 6

    .prologue
    .line 1744
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1745
    .local v1, "removeRestaurants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Restaurant;>;"
    invoke-virtual {p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/LieferandoApplication;

    .line 1746
    .local v0, "app":Lcom/yopeso/lieferando/LieferandoApplication;
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mRestaurants:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1759
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mRestaurants:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1760
    invoke-virtual {p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->sortByDefault()V

    .line 1761
    invoke-virtual {p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->notifyDataSetChanged()V

    .line 1762
    return-void

    .line 1746
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .line 1747
    .local v2, "restaurant":Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/Stamp;->getmDiscounts()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/Stamp;->getmDiscounts()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {v2, v4}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1748
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v4

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1749
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/Stamp;->getmDiscounts()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->hasValidDiscount(Ljava/util/ArrayList;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1751
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1756
    :cond_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private sortByReviews()V
    .locals 2

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mRestaurants:Ljava/util/ArrayList;

    new-instance v1, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$9;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$9;-><init>(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1254
    invoke-virtual {p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->sortByOpened()V

    .line 1255
    invoke-virtual {p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->notifyDataSetChanged()V

    .line 1256
    return-void
.end method

.method private sortByStampCards()V
    .locals 6

    .prologue
    .line 1764
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1765
    .local v1, "removeRestaurants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Restaurant;>;"
    invoke-virtual {p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/LieferandoApplication;

    .line 1766
    .local v0, "app":Lcom/yopeso/lieferando/LieferandoApplication;
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mRestaurants:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1775
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mRestaurants:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1776
    invoke-virtual {p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->sortByDefault()V

    .line 1777
    invoke-virtual {p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->notifyDataSetChanged()V

    .line 1778
    return-void

    .line 1766
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .line 1767
    .local v2, "restaurant":Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v4

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/yopeso/lieferando/model/user/UserData;->getStampsForRestaurant(I)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    sget-object v4, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {v2, v4}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v4

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1772
    :cond_3
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public cleanupInput()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 181
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mService:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mService:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mOrt:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mOrt:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mStreet:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    .line 186
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mStreet:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 187
    :cond_2
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mHauseNr:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    .line 188
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mHauseNr:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 189
    :cond_3
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mComment:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    .line 190
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mComment:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 191
    :cond_4
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mOrt:Landroid/widget/EditText;

    if-eqz v0, :cond_5

    .line 192
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mOrt:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 193
    :cond_5
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mService:Landroid/widget/EditText;

    if-eqz v0, :cond_6

    .line 194
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mService:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 195
    :cond_6
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mRestaurants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 370
    iget-boolean v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mIsBottomButtonViewShown:Z

    if-nez v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mRestaurants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 375
    :goto_0
    return v0

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mRestaurants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 375
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->getFilter()Lcom/yopeso/lieferando/adapters/restaurant/CustomFilter;

    move-result-object v0

    return-object v0
.end method

.method public getFilter()Lcom/yopeso/lieferando/adapters/restaurant/CustomFilter;
    .locals 1

    .prologue
    .line 978
    new-instance v0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$4;

    invoke-direct {v0, p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$4;-><init>(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;)V

    return-object v0
.end method

.method public getFilteredRestaurants()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/Restaurant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mRestaurants:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 388
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mRestaurants:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 435
    :cond_0
    :goto_0
    return v0

    .line 391
    :cond_1
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mRestaurants:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_0

    .line 393
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->first_closed_restaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    if-nez v0, :cond_3

    .line 394
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mRestaurants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mRestaurants:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-direct {p0, v0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->isRestaurantClosedToday(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 395
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mRestaurants:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    iput-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->first_closed_restaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move v0, v1

    .line 396
    goto :goto_0

    :cond_2
    move v0, v2

    .line 399
    goto :goto_0

    .line 403
    :cond_3
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mRestaurants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_4

    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->first_closed_restaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v3

    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mRestaurants:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v0

    if-ne v3, v0, :cond_4

    move v0, v1

    .line 404
    goto :goto_0

    :cond_4
    move v0, v2

    .line 407
    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 200
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->getItemViewType(I)I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v3, v2, :cond_1

    .line 201
    :cond_0
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 202
    .local v0, "li":Landroid/view/LayoutInflater;
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->getItemViewType(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 214
    sget v2, Lcom/yopeso/lieferando/R$layout;->restaurant_list_item:I

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 215
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 220
    .end local v0    # "li":Landroid/view/LayoutInflater;
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->getItemViewType(I)I

    move-result v2

    if-ne v2, v6, :cond_3

    .line 222
    sget v2, Lcom/yopeso/lieferando/R$id;->ProposeEmail:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mEmail:Landroid/widget/EditText;

    .line 223
    sget v2, Lcom/yopeso/lieferando/R$id;->ProposeServiceName:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mService:Landroid/widget/EditText;

    .line 224
    sget v2, Lcom/yopeso/lieferando/R$id;->ProposeLocation:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mOrt:Landroid/widget/EditText;

    .line 225
    sget v2, Lcom/yopeso/lieferando/R$id;->ProposeStreet:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mStreet:Landroid/widget/EditText;

    .line 226
    sget v2, Lcom/yopeso/lieferando/R$id;->ProposeHouseNr:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mHauseNr:Landroid/widget/EditText;

    .line 227
    sget v2, Lcom/yopeso/lieferando/R$id;->ProposeComment:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mComment:Landroid/widget/EditText;

    .line 228
    sget v2, Lcom/yopeso/lieferando/R$id;->ProposeSubmitButton:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mSubmitButton:Landroid/widget/Button;

    .line 229
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v2

    if-nez v2, :cond_2

    .line 230
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mSubmitButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/SettingsContent;->getDynamicButtonFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 234
    :cond_2
    invoke-direct {p0, p2}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->loadNickname(Landroid/view/View;)V

    .line 237
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mSubmitButton:Landroid/widget/Button;

    new-instance v3, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$1;

    invoke-direct {v3, p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$1;-><init>(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    :goto_1
    return-object p2

    .line 204
    .restart local v0    # "li":Landroid/view/LayoutInflater;
    :pswitch_0
    sget v2, Lcom/yopeso/lieferando/R$layout;->restaurants_bottom_propose:I

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 205
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 208
    :pswitch_1
    sget v2, Lcom/yopeso/lieferando/R$layout;->restaurant_list_item:I

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 209
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 211
    sget v2, Lcom/yopeso/lieferando/R$id;->ClosedSectionRL:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 355
    .end local v0    # "li":Landroid/view/LayoutInflater;
    :cond_3
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mRestaurants:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .line 356
    .local v1, "restaurant":Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-static {v1, p2, v2, v4, v3}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->displayRestaurantInView(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Landroid/view/View;Landroid/content/Context;ZLcom/android/volley/RequestQueue;)V

    .line 357
    new-instance v2, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$2;

    invoke-direct {v2, p0, v1}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$2;-><init>(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 202
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mRestaurants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 381
    const/4 v0, 0x3

    .line 383
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isIsBottomViewShown()Z
    .locals 1

    .prologue
    .line 1150
    iget-boolean v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mIsBottomButtonViewShown:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 3

    .prologue
    .line 1783
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->first_closed_restaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .line 1784
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mRestaurants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1804
    :goto_0
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 1805
    return-void

    .line 1784
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .line 1786
    .local v0, "r":Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    invoke-direct {p0, v0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->isRestaurantClosedToday(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1787
    iput-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->first_closed_restaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 459
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 460
    .local v0, "id":I
    sget v1, Lcom/yopeso/lieferando/R$id;->LieferservicePropose:I

    if-ne v0, v1, :cond_0

    .line 461
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mCallback:Lcom/yopeso/lieferando/callback/IRestaurantListCallback;

    invoke-interface {v1}, Lcom/yopeso/lieferando/callback/IRestaurantListCallback;->onProposeClick()V

    .line 464
    :cond_0
    return-void
.end method

.method public performFiltering(Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;)V
    .locals 7
    .param p1, "criteria"    # Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    .prologue
    const/4 v6, 0x0

    .line 1008
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mRestaurants:Ljava/util/ArrayList;

    .line 1009
    .local v0, "prevRestos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Restaurant;>;"
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mRealRestaurants:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mRestaurants:Ljava/util/ArrayList;

    .line 1011
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v3

    sget-object v4, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->ALPHABETIC:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1012
    invoke-direct {p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->sortByName()V

    .line 1014
    :cond_0
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v3

    sget-object v4, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->ALPHABETIC_REVERSE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1015
    invoke-direct {p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->sortByNameZA()V

    .line 1017
    :cond_1
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v3

    sget-object v4, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->NONE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1018
    :cond_2
    invoke-virtual {p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->sortByDefault()V

    .line 1021
    :cond_3
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v3

    sget-object v4, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->REVIEWS:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1022
    invoke-direct {p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->sortByReviews()V

    .line 1025
    :cond_4
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v3

    sget-object v4, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->DELIVERY_COST:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1026
    invoke-direct {p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->sortByDeliveryCost()V

    .line 1029
    :cond_5
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v3

    sget-object v4, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->MINORDER:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1030
    invoke-direct {p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->sortByMinOrder()V

    .line 1033
    :cond_6
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v3

    sget-object v4, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->DISTANCE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1034
    invoke-direct {p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->sortByDistance()V

    .line 1039
    :cond_7
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v3

    sget-object v4, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->NEWCUSTOMER:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1041
    invoke-direct {p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->sortByNewCustomerRebate()V

    .line 1043
    :cond_8
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v3

    sget-object v4, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->REBATE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1045
    invoke-direct {p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->sortByRebate()V

    .line 1047
    :cond_9
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v3

    sget-object v4, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->STAMPCARD:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1049
    invoke-direct {p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->sortByStampCards()V

    .line 1052
    :cond_a
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v3

    sget-object v4, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->RATING:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1054
    invoke-direct {p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->sortByRatings()V

    .line 1096
    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1097
    .local v1, "removeRestaurants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Restaurant;>;"
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mRestaurants:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_e

    .line 1129
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mRestaurants:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1130
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mRestaurants:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v3, v4, :cond_d

    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mRestaurants:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 1131
    :cond_d
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->dataset_changed:Z

    .line 1136
    :goto_1
    const-class v3, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "dataset_changed:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->dataset_changed:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    const/4 v0, 0x0

    .line 1138
    invoke-virtual {p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->notifyDataSetChanged()V

    .line 1139
    return-void

    .line 1097
    :cond_e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .line 1099
    .local v2, "restaurant":Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getMatching()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_f

    .line 1101
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getMatching()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 1102
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1108
    :cond_f
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getMinOrderCost()F

    move-result v4

    cmpl-float v4, v4, v6

    if-nez v4, :cond_10

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getMaxOrderCost()F

    move-result v4

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getHighestMinCost()F

    move-result v5

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_12

    .line 1109
    :cond_10
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getMinCost()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getMinOrderCost()F

    move-result v5

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_11

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getMinCost()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getMaxOrderCost()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_12

    .line 1110
    :cond_11
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1116
    :cond_12
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getMinDeliveryCost()F

    move-result v4

    cmpl-float v4, v4, v6

    if-nez v4, :cond_13

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getMaxDeliveryCost()F

    move-result v4

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getHighestDeliveryCost()F

    move-result v5

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_15

    .line 1117
    :cond_13
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getDeliverCost()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getMinDeliveryCost()F

    move-result v5

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_14

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getDeliverCost()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getMaxDeliveryCost()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_15

    .line 1118
    :cond_14
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1123
    :cond_15
    invoke-virtual {v2, p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->matchesCriteria(Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 1124
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1134
    .end local v2    # "restaurant":Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    :cond_16
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->dataset_changed:Z

    goto/16 :goto_1
.end method

.method public restaurantsMarkerChanged()Z
    .locals 1

    .prologue
    .line 1146
    iget-boolean v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->dataset_changed:Z

    return v0
.end method

.method public setIsBottomViewShown(Z)V
    .locals 0
    .param p1, "isBottomViewShown"    # Z

    .prologue
    .line 1154
    iput-boolean p1, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mIsBottomButtonViewShown:Z

    .line 1155
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
    .line 112
    .local p1, "restaurants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Restaurant;>;"
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mRealRestaurants:Ljava/util/ArrayList;

    .line 113
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mRestaurants:Ljava/util/ArrayList;

    .line 114
    invoke-virtual {p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->trackOpenAndClosedRestaurant()V

    .line 115
    invoke-virtual {p0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->sortByDefault()V

    .line 116
    return-void
.end method

.method public sortByBestStampCards()V
    .locals 3

    .prologue
    .line 1351
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/LieferandoApplication;

    .line 1352
    .local v0, "app":Lcom/yopeso/lieferando/LieferandoApplication;
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mRestaurants:Ljava/util/ArrayList;

    new-instance v2, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$13;

    invoke-direct {v2, p0, v0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$13;-><init>(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;Lcom/yopeso/lieferando/LieferandoApplication;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1376
    return-void
.end method

.method public sortByDefault()V
    .locals 3

    .prologue
    .line 1314
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/LieferandoApplication;

    .line 1315
    .local v0, "app":Lcom/yopeso/lieferando/LieferandoApplication;
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mRestaurants:Ljava/util/ArrayList;

    new-instance v2, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$12;

    invoke-direct {v2, p0, v0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$12;-><init>(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;Lcom/yopeso/lieferando/LieferandoApplication;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1345
    return-void
.end method

.method public sortByOpened()V
    .locals 3

    .prologue
    .line 1282
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/LieferandoApplication;

    .line 1283
    .local v0, "app":Lcom/yopeso/lieferando/LieferandoApplication;
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mRestaurants:Ljava/util/ArrayList;

    new-instance v2, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$11;

    invoke-direct {v2, p0, v0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$11;-><init>(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;Lcom/yopeso/lieferando/LieferandoApplication;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1306
    return-void
.end method

.method protected trackOpenAndClosedRestaurant()V
    .locals 5

    .prologue
    .line 119
    const/4 v1, 0x0

    .line 120
    .local v1, "open":I
    const/4 v0, 0x0

    .line 121
    .local v0, "closed":I
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mRestaurants:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 128
    invoke-static {v1}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackOpenDeliveryServices(I)V

    .line 129
    invoke-static {v0}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackClosedDeliveryServices(I)V

    .line 130
    return-void

    .line 121
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .line 122
    .local v2, "r":Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 123
    add-int/lit8 v1, v1, 0x1

    .line 124
    goto :goto_0

    .line 125
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
